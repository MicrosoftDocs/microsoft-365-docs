---
title: Inventory for scheduled prompts
description: Learn how to inventory scheduled prompts in Microsoft 365 Copilot using PowerShell. View, list, and delete scheduled prompts efficiently.
#customer intent: As an admin, I want to inventory scheduled prompts in my organization so that I can manage them efficiently.
f1.keywords:
- NOCSH
ms.author: scotv
author: scotv
manager: scotv
ms.date: 10/23/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
- operations-pod
---

# Inventory for scheduled prompts

Use PowerShell to inventory scheduled prompts that users create in your Microsoft 365 Copilot organization. These instructions help you connect to an admin account and efficiently view, list, or delete scheduled prompts.

## Prerequisites

To take inventory of scheduled prompts that users create in your organization, you need the following prerequisites:

- Assign the **Power Platform Administrator** role to your user in the Azure portal for the tenant on which you want to perform operations.
- Use [PowerShell v7.0](/powershell/scripting/install/installing-powershell) or later.
- Install the `Az.Accounts` and `Microsoft.PowerApps.Administration.PowerShell` modules. For more information, see [Install-Module](/powershell/module/powershellget/install-module).
- Store and run all scripts in the same folder.

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

To get the System Administrator role on the Copilot scheduled prompts environment, follow these steps:

- Go to the [Power Platform admin center](https://admin.powerplatform.microsoft.com/environments).
- Select the **Microsoft 365** environment. This value is the default name for the Copilot scheduled prompts environment. Your tenant might use a different name.
- Select **Membership**.
- To add the System Administrator role to your user, select **Add me**. It might take around 30 minutes for the role to be reflected everywhere.

For more information, see [Manage high privileged admin roles](/power-platform/admin/manage-high-privileged-admin-roles).

## Connect to your Azure account

Before you run any of the following PowerShell commands, sign in to your administrator account. To sign in, use the **[Connect-AzAccount](/powershell/module/az.accounts/connect-azaccount)** cmdlet.

## General operations

1. To get the environment name for Copilot scheduled prompts, use the **[Get-AdminPowerAppEnvironment](/powershell/module/microsoft.powerapps.administration.powershell/get-adminpowerappenvironment)** cmdlet. If requested, connect with the admin account.

    ```powershell
    Get-AdminPowerAppEnvironment 'Microsoft 365'
    ```

    Specify your display name. By default, the display name is `Microsoft 365`. Alternatively, use the `EnvironmentName` parameter to specify your environment name.

1. You can also identify a user ID with the following Microsoft Entra cmdlets:

    ```powershell
    Connect-Entra

    Get-EntraUser -UserId 'user@domain.com'
    ```

    Use the appropriate user ID, such as `user@domain.com`. Note the `Id` value in the output, which indicates the user's ID.

## Save PowerShell scripts

The following scripts help you inventory Copilot scheduled prompts. The provided script names match the scripts referenced in the rest of this article. Save and run the scripts in the same folder.

### `Get-CopilotActions.ps1`

```powershell
Param(

    [Parameter(Mandatory=$true)]

    [string]$EnvironmentId,

    [Parameter(Mandatory=$false)]

    [string]$UserId
)

Begin {

    $ErrorActionPreference = "Stop"

    # Retrieve the environment URL using the environment ID

    $environment = Get-AdminPowerAppEnvironment -EnvironmentName $EnvironmentId

    if (-not $environment) {

        throw "Environment with ID '$EnvironmentId' not found."
    }

    $environmentUrl = $environment.Internal.properties.linkedEnvironmentMetadata.instanceUrl

    # Retrieve the access token

    $secureToken = (Get-AzAccessToken -AsSecureString -ResourceUrl $environmentUrl).Token

    $plainTextToken  = ConvertFrom-SecureString -SecureString $secureToken -AsPlainText

    $headers = @{

        "Authorization" = "Bearer $plainTextToken"

        "OData-MaxVersion" = "4.0"

        "OData-Version" = "4.0"

        "Accept" = "application/json"

        "Content-Type" = "application/json; charset=utf-8"

        "Prefer" = 'odata.include-annotations="*"'
    }
}

Process {

    # Convert UserId to systemuserid if UserId is provided

    if ($UserId) {

        $userQueryUri = "${environmentUrl}api/data/v9.1/systemusers?`$filter=azureactivedirectoryobjectid eq '$UserId'"

        try {

            Write-Verbose "Retrieving systemuserid for UserId $UserId from $userQueryUri"

            $userResponse = Invoke-RestMethod -Uri $userQueryUri -Headers $headers -Method Get

            if ($userResponse.value.Count -eq 0) {

                throw "No system user found for UserId '$UserId'."
            }

            $systemUserId = $userResponse.value[0].systemuserid

            Write-Verbose "Successfully retrieved systemuserid: $systemUserId"

        }

        catch {

            Write-Error "Failed to retrieve systemuserid for UserId '$UserId': $_"

            throw
        }

        $requestUri = "${environmentUrl}api/data/v9.1/crb73_copilotactions?`$filter=_createdby_value eq $systemUserId"

    } else {

        $requestUri = "${environmentUrl}api/data/v9.1/crb73_copilotactions"
    }

    try {

        Write-Verbose "Retrieving Copilot Actions from $requestUri"

        $response = Invoke-RestMethod -Uri $requestUri -Headers $headers -Method Get

        $records = $response.value | ForEach-Object {

            [PSCustomObject]@{

                DataverseId = $_.crb73_copilotactionid

                Name = $_.crb73_name

                CreatedOn = $_.createdon

                ModifiedOn = $_.modifiedon

                BotType = $_.crb73_bottype

                CreatedById = $_._createdby_value

                CreatedByFullName = $_.'_createdby_value@OData.Community.Display.V1.FormattedValue'

                Status = $_.crb73_status

                EnvironmentId = $EnvironmentId
            }
        }

        # Ensure $records is treated as an array

        if ($null -ne $records) {

            if ($records -isnot [System.Collections.IEnumerable]) {

                $records = @($records)
            }
        } else {
            $records = @()
        }

        Write-Verbose "Successfully retrieved $($records.Count) Copilot Actions"

        $records | Write-Output
    }

    catch {

        Write-Error "Failed to retrieve records from Dataverse: $_"

        throw
    }
}
```

### `Remove-CopilotActions.ps1`

```powershell
Param(

    [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]

    [string]$EnvironmentId,

    [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]

    [string]$DataverseId

)

Begin {

    $ErrorActionPreference = "Stop"

    $environmentInformation = @{}
}

Process {

    # Retrieve the environment URL using the EnvironmentId

    if (-not $environmentInformation.ContainsKey($EnvironmentId)) {

        $environment = Get-AdminPowerAppEnvironment -EnvironmentName $EnvironmentId

        if (-not $environment) {

            Write-Error "Environment with ID '$EnvironmentId' not found."

            return
        }

        $environmentUrl = $environment.Internal.properties.linkedEnvironmentMetadata.instanceUrl

        # Retrieve and store the access token for the environment

        $secureToken = (Get-AzAccessToken -AsSecureString -ResourceUrl $environmentUrl).Token

        $plainTextToken = ConvertFrom-SecureString -SecureString $secureToken -AsPlainText

        $environmentInformation[$EnvironmentId] = @{

            Url    = $environmentUrl

            Token  = $plainTextToken
        }
    }

    $environmentUrl = $environmentInformation[$EnvironmentId].Url

    $plainTextToken = $environmentInformation[$EnvironmentId].Token

    $headers = @{

        "Authorization" = "Bearer $plainTextToken"

        "OData-MaxVersion" = "4.0"

        "OData-Version" = "4.0"

        "Accept" = "application/json"

        "Content-Type" = "application/json; charset=utf-8"

    }

    # Construct the delete URI

    $deleteUri = "${environmentUrl}api/data/v9.1/crb73_copilotactions($DataverseId)"

    try {

        Write-Verbose "Deleting Copilot Action with DataverseId: $DataverseId using URI: $deleteUri"

        Invoke-RestMethod -Uri $deleteUri -Headers $headers -Method Delete

        Write-Host "Successfully deleted Copilot Action with DataverseId: $DataverseId"
    }

    catch {

        Write-Error "Failed to delete Copilot Action with DataverseId: $DataverseId. Error: $_"
    }
}
```

### `Clear-CopilotActions.ps1`

```powershell
Param(

    [Parameter(Mandatory=$true)]

    [string]$EnvironmentId,

    [Parameter(Mandatory=$true)]

    [string]$UserId
)

Process {

    # Retrieve and pipe Copilot Actions for the specified user into Remove-CopilotAction.ps1

    Write-Verbose "Retrieving and deleting Copilot Actions for UserId: $UserId"

    ./Get-CopilotActions.ps1 -EnvironmentId $EnvironmentId -UserId $UserId | ./Remove-CopilotAction.ps1
}
```

## List Copilot scheduled prompts

You can run a script in different ways to list scheduled prompts you created in your tenant.

### Get a list of Copilot scheduled prompts for the whole tenant

1. Use the **Get-AdminPowerAppEnvironment** cmdlet to get the `EnvironmentId`. For more information, see [General operations](#general-operations).

1. Run the [`Get-CopilotActions.ps1`](#get-copilotactionsps1) script and specify your `EnvironmentId`. If prompted, sign in with the admin account. For example:

    ```powershell
    .\Get-CopilotActions.ps1 -EnvironmentId abc123-a100-xyz000-12345
    ```

    The console output displays the list of Copilot scheduled prompts.

### Get a list of Copilot scheduled prompts for a single user

1. Use the **Get-AdminPowerAppEnvironment** and **Get-EntraUser** cmdlets to get the `EnvironmentId` and `UserId`. For more information, see [General operations](#general-operations).

1. Run the [`Get-CopilotActions.ps1`](#get-copilotactionsps1) script with your `EnvironmentId` and `UserId`. If prompted, sign in with the admin account. For example:

    ```powershell
    .\Get-CopilotActions.ps1 -EnvironmentId abc123-a100-xyz000-12345 -UserId abc123-a100-xyz000-12345
    ```

    The console output displays the list of Copilot scheduled prompts belonging to the specified user.

### Export the list

To export the list to a CSV file, start with either of the previous options to [get a list](#list-copilot-scheduled-prompts). Then pipe the output to the **[Export-Csv](/powershell/module/microsoft.powershell.utility/export-csv)** cmdlet. For example:

```powershell
.\Get-CopilotActions.ps1 -EnvironmentId abc123-a100-xyz000-12345 | Export-Csv -Path C:\temp\resultFile.csv
```

## Delete Copilot scheduled prompts

### Delete a single Copilot scheduled prompt

1. Use one of the previous options to [get a list of scheduled prompts](#list-copilot-scheduled-prompts). In the output, note the `DataverseId` of the scheduled prompt you want to delete.

1. Use the **Get-AdminPowerAppEnvironment** cmdlet to get the `EnvironmentId`. For more information, see [General operations](#general-operations).

1. Run the [`Remove-CopilotActions.ps1`](#remove-copilotactionsps1) script with the appropriate `EnvironmentId` and `DataverseId` values. If prompted, sign in with the admin account. For example:

    ```powershell
    .\Remove-CopilotAction.ps1 -EnvironmentId abc123-a100-xyz000-12345 -DataverseId abc123-a100-xyz000-12345
    ```

### Delete multiple Copilot scheduled prompts from a single user

1. Get the `EnvironmentId` and `UserId` values as described in [General operations](#general-operations).

1. Run the [`Clear-CopilotActions.ps1`](#clear-copilotactionsps1) script with the appropriate `EnvironmentId` and `UserId` values. If prompted, sign in with the admin account. For example:

    ```powershell
    .\Clear-CopilotActions.ps1 -EnvironmentId abc123-a100-xyz000-12345 -UserId abc123-a100-xyz000-12345
    ```

## Related content

- [Manage scheduled prompts for Microsoft 365 Copilot](scheduled-prompts.md)

- [Microsoft 365 environment for scheduled prompts](scheduled-prompts-environment.md)
