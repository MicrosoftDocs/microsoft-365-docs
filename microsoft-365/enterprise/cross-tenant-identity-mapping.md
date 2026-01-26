---
title: Cross-Tenant Identity Mapping (preview)
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.date: 09/15/2025
recommendations: true
audience: ITPro
ms.topic: upgrade-and-migration-article
ms.service: microsoft-365-migration
ms.localizationpriority: medium
ms.collection: 
- M365-collaboration
- m365initiative-migratetom365
ms.custom: template-overview
search.appverid: MET150
description: "How to map identities across Microsoft 365 organizations when preparing for cross-tenant migrations."
---

# Cross-Tenant Identity Mapping (preview)

> [!IMPORTANT]
> Tenant-to-tenant migration is currently available in preview. Features and availability may change before general availability (GA).

Cross Tenant Identity Mapping (CTIM) is a Microsoft tool designed to simplify and automate the process of mapping user identities between source and target tenants. This mapping ensures data, permissions, and user experiences remain consistent throughout your migration journey. Running identity mapping is a required step for migrating user data using the orchestrated method. This step is optional when using standalone cross-tenant mailbox migration. Cross-Tenant Identity Mapping allows source users to be mapped one-to-one to target users. It edits the users' properties, so they can successfully migrate with the correct attributes. It also maintains a mapping file to ensure that data for the correct source users migrates to the correct target users.

> [!NOTE]
> Use CTIM after creating target users and before migrating data to ensure accuracy and avoid manual errors.

CTIM allows you to:

- Map users one-to-one between tenants, reducing manual errors and saving time.
- Automate property updates so migrated users have the correct attributes for a successful transition.
- Maintain a reliable mapping file to track and verify user migrations.

This article walks you through the prerequisites, installation, and configuration steps for CTIM, highlighting best practices and troubleshooting tips.

### Data-At-Rest

The Cross-Tenant Identity Mapping (CTIM) service stores data-at-rest in multiple locations depending on the data type. Review this list before moving forward using CTIM.

- Source Tenant reports: Stored within the source tenant's Exchange Online region.
- Target Tenant reports: Stored within the target tenant's Exchange Online region.
- Mapping file content: A temporary copy of the mapping file is stored within the European Union when uploaded. This copy is purged in 48 hours or less.
- Service Logs redacted of all identifiable info: The European Union.
- All other data-at-rest: Stored within the target tenant's Exchange Online region.

> [!NOTE]
> For Multi-Geo enabled tenants, the tenant's home geo is used whenever an EXO region is mentioned in this document.

### Network/Firewall Requirements

The Cross-Tenant Identity Mapping service uses a REST endpoint and encrypts all traffic between the customer and the service endpoint. This endpoint resides within the URL and IP address ranges under the Microsoft 365 Common and Office Online section of the published Office 365 URLs and IP Addresses guidance. If you allow access to these documented URLs and IP address ranges, there should be no problem connecting to the endpoint.

### On-premises Exchange Organizations

> [!NOTE]
> Target tenants only.

If the target tenant is a hybrid tenant with directory sync enabled and syncing MailUser objects into the target tenant, then you must have access to a Microsoft supported PowerShell method of managing on-premises objects synchronized into Microsoft 365.

An example of supported methods is any currently supported version of Exchange Server Management Shell, or the newer Exchange Server 2019 Management Tools. We don't support tenants using unsupported methods of managing and modifying on-premises objects. If all the MailUser objects you're working with in the target tenant are cloud-only objects not synchronized from on-premises, then you don't need a Microsoft-supported PowerShell method of managing on-premises objects synchronized into Microsoft 365.

### MailUser object examples

See the following example of an incorrectly configured MailUser (also known as a Mail Enabled User or an MEU) in the target tenant:

|Attribute | Value |
| --- | --- | 
| Name | Mikey MEU |
| ExternalEmailAddress | SMTP:mikey@sourcetenant.com |
| EmailAddresses | {smtp:mikey@targettenant.onmicrosoft.com, SMTP:mikey@sourcetenant.com} |
| PrimarySmtpAddress | mikey@sourcetenant.com |

Issues:

- EmailAddresses field has a nonaccepted domain address as primary SMTP
- PrimarySmtpAddress field also has a nonaccepted domain value

To correct this MailUser, the following example fixes the PrimarySmtpAddress and Email Addresses fields.

|Attribute | Value |
| --- | --- | 
| Name| Mikey MEU |
| ExternalEmailAddress | SMTP:mikey@sourcetenant.com |
| EmailAddresses | {smtp:mikey@targettenant.onmicrosoft.com} |
| PrimarySmtpAddress | mikey@targettenant.onmicrosoft.com |

### Confirmation of Proper User Attributes

After identity mapping completes, the source and target users should have specific attributes that link them to one another.
The target MailUser must have these attributes from the source mailbox or assigned with the new User object:

1. ExchangeGUID (direct flow from source to target): The mailbox GUID must match. The move process doesn't proceed if this attribute isn't present on the target object.
2. ArchiveGUID (direct flow from source to target): The archive GUID must match. The move process doesn't proceed if this attribute isn't present on the target object. (This attribute is only required if the source mailbox is Archive-enabled).
3. LegacyExchangeDN (flow as proxyAddress, `"x500:<LegacyExchangeDN>"`): The LegacyExchangeDN must be present on the target MailUser as x500: proxyAddress. All the x500 addresses from the source mailbox must be on the target mail user. The move process doesn't proceed if these x500 addresses aren't present on the target object. This step is important for enabling reply ability for emails sent before migration. The sender/recipient address in each email item and the autocomplete cache in Microsoft Outlook and in Microsoft Outlook Web App (OWA) use the value of the LegacyExchangeDN attribute. If a user can't be located using the LegacyExchangeDN value, the delivery of email messages may fail with a 5.1.1 NDR.
4. UserPrincipalName: UPN aligns to the user's ***new*** identity or target company (for example, user@target.onmicrosoft.com).
5. Primary SMTPAddress: Primary SMTP address aligns to the user's NEW company (for example, user@target.onmicrosoft.com).
6. TargetAddress/ExternalEmailAddress: MailUser references the user's current mailbox hosted in source tenant (for example user@source.onmicrosoft.com). When this value is assigned, confirm you're also assigning PrimarySMTPAddress. Otherwise, this value sets the PrimarySMTPAddress, which causes move failures.
7. You can't add legacy SMTP proxy addresses from the source mailbox to the target MailUser. For example, you can't maintain source.com on the MEU in target.onmicrosoft.com tenant objects. Domains are associated with one Microsoft Entra ID or Exchange Online tenant only.

To confirm the source user's attributes, run:

```powershell
Get-Mailbox <User Alias> | fl Name,ExchangeGuid
```

To confirm the target user's attributes, run:

```powershell
Get-MailUser AdeleV2 | fl Name,ExternalEmailAddress,EmailAddresses,PrimarySMTPAddress,ExchangeGuid
```

## Overview of the CTIM Process

- **Preparation**: Install required PowerShell modules and ensure you have the necessary admin roles.
- **Identity Mapping**: Run CTIM to map users and generate the mapping file. Review mapping results and resolve any issues before proceeding with data migration.

## Preparation

> [!IMPORTANT]
> Repeat Steps 1, 2, and 3 in both the source and target tenants. Complete all actions in the source tenant first, then repeat the same steps in the target tenant.

### Step 1: Prepare your environment

1. Ensure you have the necessary permissions:
    1. You must be a Global Administrator to grant CTIM application permission.
    2. Exchange Administrator or Microsoft Graph permissions are required for other steps.
2. Install required PowerShell modules. Open PowerShell and run:

    ```powershell
    Install-Module ExchangeOnlineManagement
    Install-Module Microsoft.Graph
    Install-Module Microsoft.Graph.Beta
    ```

### Step 2: Download and Install the CTIM module

Download and install the most recent [Cross-Tenant Identity Mapping PowerShell module](https://www.powershellgallery.com/packages/CrossTenantIdentityMapping/). You need to use the -AllowPrerelease switch when installing or updating this module during preview.

- Get the latest CTIM module:

  ```powershell
  Install-Module CrossTenantIdentityMapping -AllowPrerelease
  ```

- Use the -AllowPrerelease switch to install the preview version:

  > [!TIP]
  > If you see an error about the -AllowPrerelease switch, update PowerShellGet using the following command:
  > `Install-Module PowerShellGet -AllowClobber -Force `
  
> [!NOTE]
> If you previously used the Identity Mapping service, you should update the module with the following command to make sure it's the most recent version:
> `Update-Module CrossTenantIdentityMapping -AllowPrerelease`

### Step 3: Grant CTIM Application Permissions

The CTIM application runs within Microsoft 365 and requires permissions within your tenant to be able to read or write proper information. This access may be revoked later when you're no longer using CTIM. These steps require the user running the command to have the Global Administrator role.

> [!NOTE]
> A Global Administrator role is only required for the CTIM process for the addition or removal of CTIM application permissions.

The roles added are:

- Enable the Exchange Administrator RBAC role in Entra ID if needed.
- Grant the CTIM service principal the Exchange Administrator RBAC role in Entra ID.
- Grant the CTIM service principal the Exchange.ManageAsApp API Permissions.

Do the following steps:

1. Connect to Microsoft Graph as a Global Administrator:
  `Connect-MgGraph`

2. Import the CTIM module:
  `Import-Module CrossTenantIdentityMapping`

3. Add the CTIM service principal:
  `Add-CtimServicePrincipal`

If the command is successful, the output displays the following message:

'Successfully added Cross-Tenant Identity Mapping Service Principal and granted all necessary roles. Welcome to Microsoft Graph.'

> [!NOTE]
> We sometimes see a transient error saying the attempt failed. Typically, running the request a second time results in success.

## Perform Identity Mapping

We require source users to be mapped to target users using the Identity Mapping solution.

> [!NOTE]
> Identity Mapping must be run before applying workload licenses (for example, E5) to target users. This action ensures that target users don't have a mailbox provisioned, and that they become MailUsers rather than Mailbox objects.

There are five phases when using CTIM, and an extra step for hybrid target tenants.

CTIM workflow phases:

|Phase                   |Description                                                                 |
|------------------------|----------------------------------------------------------------------------|
|Scoping                 |Define which users to be migrated.                                          |
|Copying                 |Transfer user data from the source to the CTIM system in the target tenant. |
|Mapping                 |Establish 1:1 relationship between source and target user objects.          |
|Writing                 |Apply necessary attributes to target MailUser objects. </br>(Hybrid only) Confirm on-premises changes are synchronized to Microsoft 365. |
|Remove CTIM permissions |(Optional) When CTIM is no longer needed, remove the service principal.     |

> [!TIP]
> You can run Get-MgContext to make sure you're connected to the proper tenant when running these commands.

### Phase 1: Scoping objects

When creating your Organization Relationship, you defined one or more **Mail Enabled Security Group values** in the **MailboxMovePublishedScope** field. These values are your "scopes" and hold the objects to be migrated to the Target tenant.

You must also ensure no object is a member of more than one scope, or else you may risk overwriting information about the user.

### Phase 2: Copying objects

Once you scope the people to migrate, you must start a copy request. A copy request is sent to the Target tenant admin, who must accept or decline the request. After the Target tenant admin approves the request, each object's attributes is copied to the CTIM system and stored in the Target tenant.

#### Source tenant admin

1. Initiate a copy request:

    ```powershell
    New-CtimCopyRequest -SecurityGroupGuid <GUID> -TargetTenantGuid <GUID>
    ```

    The "SecurityGroupGuid" can be either the 'ExchangeObjectId' value or the 'ExternalDirectoryObjectid' value attribute of the group in the source tenant's MailboxMovePublishedScope. In the future, we may change this value to only allow ExternalDirectoryObjectId, so we recommend using this value moving forward.

    > [!TIP]
    > To get the Security Group Guid, you can run this command:
    >
    > `Get-DistributionGroup -Identity "Group Name" | fl ExchangeObjectId`

2. Share the resulting RequestID with the target tenant admin.

    > [!TIP]
    > Running a copy request for the same scope twice with -Overwrite resets previous mappings.

    > [!WARNING]
    > If the Target tenant admin uses the -Overwrite switch when accepting the copy request, running New-CtimCopyRequest for the same scope a second time with the same objects in it results in any previously completed mapping work being overwritten in the target tenant. Make sure the Target tenant admin knows you're executing a copy request for the same scope of objects, and a copy of the mapping file is saved, before accepting the new copy request. Even if using the -Overwrite switch is being done on purpose, having a copy of the mapping file downloaded before using it's a good safety net to have.
    >
    > There's no way to recover the data if you use -Overwrite without saving a mapping file first, and you have to start over from the beginning.

##### Target tenant admin

After the source tenant admin creates a copy request, they must provide the target tenant admin with the RequestID so you as the Target tenant admin can accept the request.

3. Accept the copy request.
    - First, check if the request is ready to be accepted or rejected.
      - Check request status: `Get-CtimRequest <RequestID>`
      - The PercentComplete is 10% as the percentage completion, based on finite steps in a multi-step process. If the **State** is **AwaitingTargetTenantApproval**, then you can accept the request.
    - Accept the request: `Accept-CtimCopyRequest -RequestID <RequestID> -SourceTenantGUID <GUID>`
    - If necessary, reject the request: `Reject-CtimCopyRequest`

Wait for the request to reach the **Completed** state before continuing to mapping.

If you need to start migrating another scope of users, run another copy request for the other scope.

> [!IMPORTANT]
> With module version v0.0.1-Preview9500 or later, accepting a copy request for the same scope containing identities previously copied shows a FailureResult of "Skipped this identity because the job was running without an overwrite flag". Any new identities are copied as expected. If you do want to overwrite the previously copied identities, then you must use the -Overwrite switch with Accept-CtimCopyRequest. If you already accepted the request without the -Overwrite switch, the source tenant admin needs to run New-CtimCopyRequest again so you can accept a new request with the -Overwrite switch.

> [!NOTE]
> The percentage complete doesn't move beyond 10% if you reject the request.

### Phase 3: Mapping objects (target tenant)

Once the copy request is complete, the next step is mapping the source tenant objects to objects in your target tenant. This mapping establishes a 1:1 relationship between the source and target objects, so we can populate attributes on the target tenant object correctly.

There are two ways to map source and target objects: PrimarySMTPAddress matching or a CSV Mapping File.

#### Automated Mapping using PrimarySMTPaddress matching (Recommended)

When you request the service to perform a mapping request, it searches the target tenant for MailUser objects with an email address matching a source user's PrimarySMTPAddress. We recommend you put the source users' PrimarySMTPAddress values in the ExternalEmailAddress attributes of the target tenant objects. If the system finds a match, it maps the two objects together. If it doesn't find a match, then the source object remains in an unmapped state. If you have objects with no match, you may edit an existing MailUser or create a new one with the appropriate source user's PrimarySMTPAddress value stored in the target MailUser's ExternalEmailAddress attribute. Then run the mapping process again.

**Target tenant admin**

- Initiate mapping request:

  `New-CtimMapRequest -SourceTenantGuid <GUID>`

  Wait until the job state is 'complete' to see the results.

- Checking for errors:

  If you have errors, you may want to use Get-CtimReport with the Source Tenant ID to look for any details on the errors encountered.

  `Get-CtimReport -SourceTenantGuid <GUID>`

- To get a full report of each user's state, use the following commands:

  `$report = Get-CtimReport -SourceTenantGuid <GUID> -RequestId <GUID>`
  `$report.Identities.Values`

Once all source user objects have a "Mapped" status, you can move to writing attributes.

You may want to restart because you have users who are incorrectly mapped, or you may want to remove a user from identity mapping. In either case, you need to remove the data stored in the identity mapping system on both tenants and restart the mapping process. You should begin by editing your security group and resending the object copy request:

**Target Tenant Admin**:

`Remove-CtimData -SourceTenantGuid <SrcTenantGuid>`

**Source Tenant Admin**:

`Remove-CtimData -TargetTenantGuid <TrgTenantGuid>`

> [!NOTE]
> If you remove a user who was mapped already, the user's properties edited during the identity process aren't changed again. This behavior shouldn't cause an issue with the migration.

##### Manual mapping (Optional)

If you successfully mapped all objects with the PrimarySMTPAddress matching option, then you may skip the optional mapping file steps and proceed to the Write Process steps.

An alternative approach to mapping source and target users is by using a CSV file. This file contains information about the objects in the source tenant. You can edit this file to map MailboxUsers in the source tenant with MailUser objects in the target tenant.

1. Download a CSV mapping file:
  `Download-CtimCopiedIdentities -SourceTenantGuid <GUID> -FilePath <path>`
1. Edit the mapping file:
    1. Populate the 'TargetExternalDirectoryObjectId' column, so each source tenant object is aligned with the correct MailUser object in the target tenant. This change is the only change needed to the file. Don't add more columns or include more information.
    1. This CSV file must use commas as the delimiter character. If your system uses semicolons, pipes, or any other delimiter character it fails when Upload-CtimMappingData tries to process the file. If you encounter errors when running Upload-CtimMappingData, open the file in a plain text editor and confirm commas are being used as the delimiter.
    1. The only changes you need to make in the file is populating TargetExternalDirectoryObjectId with the GUID of the MailUser object in the target tenant.
    1. If you don't want to map certain objects yet, for example, if the MailUser object isn't created for them yet, you may leave the TargetExternalDirectoryObjectId column empty. You can complete them later using the PrimarySMTPAddress matching method or the CSV method. Later steps may say "CompletedWithWarnings" if you leave objects with no value to map against.
1. Upload the edited file: Once your edits complete, you may upload the mapping file. Remember to close the file before attempting to upload it or else the file lock prevents uploading.

    ```powershell
    Upload-CtimMappingData -SourceTenantGuid <GUID> -MappingCsvFilePath <path>
    ```

    **Optional**: In PowerShell module 0.0.1-Preview9252 or later, you can use the -AutoProgress switch with Upload-CtimMappingData to upload the data and then automatically perform a CSV file mapping request, bypassing the need to run New-CtimMapRequest on your own.

4. Initiate mapping using CSV:
  
    ```powershell
    New-CtimMapRequest -SourceTenantGuid <GUID> -UseCsv
    ```

    If you didn't use the -AutoProgress switch with Upload-CtimMappingData, then you must manually execute a map request using the CSV file uploaded in the previous step. Confirm the CSV upload job reaches a **Completed** state before running the following command.

    > [!NOTE]
    > There's a -UseCsv switch you must use if you want to use a CSV file. Omitting this switch uses the PrimarySMTPAddress matching method of mapping.

5. Confirm the mapping is complete:
    You can use Get-CtimRequest with the RequestID to determine when the upload process is complete. You may use Get-CtimReport with the RequestID to look at more details, including any errors.

    > [!TIP]
    > Use commas as delimiters in the CSV file.

#### Phase 4: Writing attributes

After mapping identities, you must write mailbox attributes from the source tenant to the corresponding MailUser objects in the target tenant. This step ensures migration readiness and proper mail routing.

The cmdlet New-CtimWriteRequest is used with MailUser objects, which were created and are managed in the service. Don't use it with MailUser objects synchronized from on-premises. If you have any MailUser objects synchronized from on-premises target tenants for which you need to map source objects to, be aware of the special steps for hybrid target tenants. Those steps come into play after the mapping process.

You can determine if a MailUser object's source of authority is on-premises if the MailUser's IsDirSynced attribute is a value of $True. If the value is $True, proceed with the procedures designated for Hybrid mailUser objects.

The CTIMwrite command writes the following attributes from the mapped source mailbox user to the target MailUser object:

- SourceExternalDirectoryObjectId
- SourceUserPrincipalName
- PrimarySmtpAddress
- ArchiveGuid
- ExchangeGuid
- LegacyExchangeDN
- EmailAddresses (also known as proxyAddresses)

##### For Cloud-only MailUser Objects

1. Initiate the write request:

    ```powershell
    New-CtimWriteRequest -SourceTenantGuid <GUID>
    ```

##### For Hybrid (DirSynced) MailUser Objects

1. Download the mapping file containing required attribute data:

    ```PowerShell
    Download-CtimCopiedIdentities -SourceTenantGuid <GUID> -FilePath <path>
    ```

2. Connect to your on-premises environment (using Exchange Server Management Shell).
3. Write attributes on-premises:

    ```powershell
    Write-CtimIdentitiesInOnPremises -IdentitiesCsvFilepath <path> -ProgressOutputCsvFilePath <path>
    ```

   This command updates MailUser attributes in the on-premises Active Directory (AD).

4. Sync changes to Microsoft 365:
    1. Wait for Microsoft Entra Connect (Azure AD Connect) to synchronize changes to the cloud.
    1. You may manually trigger a sync for faster results.
5. Confirm attributes are correctly written:

    ```powershell
    Verify-CtimWrittenAttributes -SourceTenantGuid <GUID>
    ```

##### Validation

- Confirm all objects have a "Complete" status in CTIM before starting the mailbox migration:
  - `Get-CtimRequest -RequestId <ID>`
  - `Get-CtimReport -SourceTenantGuid <GUID> -RequestId <ID>`

If there are no errors, you can use Download-CtimCopiedIdentities one last time to check if all objects now have a MigrationStatus value of **Completed**. If all your changes from on-premises aren't synchronized to EXO when the verify cmdlet is run, you may have to run the verify step a handful of times until all the changes synchronize to EXO.

#### Phase 5: Remove CTIM permissions

When CTIM is no longer needed, remove the service principal:

```powershell
Remove-CtimServicePrincipal
```

- **Before the Write process**: MailUser objects have no ExchangeGuid or X500 addresses—only SMTP addresses.
- **After the Write process**: ExchangeGuid, ArchiveGuid (if applicable), and X500 proxy addresses are populated. All necessary attributes for migration and mail routing are present.

##### Troubleshooting and common issues

- **Copy Request Overwrites**: Always save a copy of the mapping file before accepting a new copy request with the -Overwrite switch.
- **CSV Delimiters**: Make sure your CSV mapping file uses commas as delimiters.
- **Mapping Errors**: Use Get-CtimReport to review errors and resolve issues.
