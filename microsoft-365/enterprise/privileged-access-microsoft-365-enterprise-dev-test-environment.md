---
title: "Privileged access management for your Microsoft 365 Enterprise test environment"
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 09/16/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom: Ent_TLGs
description: Use this Test Lab Guide to enable privileged access management your Microsoft 365 Enterprise test environment.
---

# Privileged access management for your Microsoft 365 Enterprise test environment

With the instructions in this article, you configure privileged access management to increase security in your Microsoft 365 Enterprise test environment.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> Click [here](https://aka.ms/m365etlgstack) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.
  
## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to configure privileged access management in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure privileged access management in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing automated licensing and group membership does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for a Windows Server AD forest. It is provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization. 

## Phase 2: Configure privileged access management

In this phase, you enable privileged access management for your Microsoft 365 Enterprise test environment. For additional details and an overview of privileged access management, see [Privileged access management in Office 365](https://docs.microsoft.com/office365/securitycompliance/privileged-access-management-overview).

Follow these steps to set up and use privileged access in your Office 365 organization:

- [Step 1: Create an approver's group](https://docs.microsoft.com/office365/securitycompliance/privileged-access-management-configuration#step-1---create-an-approvers-group)

    Before you start using privilege access, determine who will have approval authority for incoming requests for access to elevated and privileged tasks. Any user who is part of the Approvers’ group will be able to approve access requests. This is enabled by creating a mail-enabled security group in Office 365.

- [Step 2: Enable privileged access](https://docs.microsoft.com/office365/securitycompliance/privileged-access-management-configuration#step-2---enable-privileged-access)

    Privileged access needs to be explicitly turned on in Office 365 with the default approver group and including a set of system accounts that you’d want to be excluded from the privileged access management access control.

- [Step 3: Create an access policy](https://docs.microsoft.com/office365/securitycompliance/privileged-access-management-configuration#step-3---create-an-access-policy)

    Creating an approval policy allows you to define the specific approval requirements scoped at individual tasks. The approval type options are Auto or Manual.

- [Step 4: Submit/approve privileged access requests](https://docs.microsoft.com/office365/securitycompliance/privileged-access-management-configuration#step-4-submitapprove-privileged-access-requests)

    Once enabled, privileged access requires approvals for executing any task that has an associated approval policy defined. Users needing to execute tasks included in the an approval policy must request and be granted access approval in order to have permissions necessary to execute the task.

## Phase 3: Verify that approval is required for elevated and privileged tasks

In this phase, you verify that the privileged access policy is working and users require approval to execute defined elevated and privileged tasks.

### Test approval requirement for a task NOT defined in a privileged access policy

First, connect to Exchange Management PowerShell with the credentials of a user configured as a Global Administrator and attempt to create a new Journal rule. The [New-JournalRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/new-journalrule?view=exchange-ps) task is NOT currently defined in a privileged access policy for your organization.

1. If needed, install the Exchange Online Remote PowerShell Module on your computer. To install, open Internet Explorer or Edge and open the Exchange admin center (EAC) for your Exchange Online organization to download the module. For more information, see [Connect to Exchange Online PowerShell using multi-factor authentication](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/mfa-connect-to-exchange-online-powershell?view=exchange-ps).

2. On your local computer, open and sign into the the Exchange Online Remote PowerShell Module at **Microsoft Corporation** > **Microsoft Exchange Online Remote PowerShell Module** using an account and credentials for a user configured as a Global Administrator.

3. In Exchange Management Powershell, create a new Journal rule for your organization:

```
New-JournalRule -Name "JournalRule1" -Recipient joe@contoso.onmicrosoft.com -JournalEmailAddress barbara@adatum.com -Scope Global -Enabled $true
```
4. View "Insuffient permissions" error in Exchange Management PowerShell:

```
Insufficient permissions. Please raise an elevated access request for this task.
    + CategoryInfo          : NotSpecified: (:) [], LocalizedException
    + FullyQualifiedErrorId : [Server=CY1PR00MB0220,RequestId=7b8c7470-ddd0-4528-a01e-5e20ecc9bd54,TimeStamp=9/19/2018
    7:38:34 PM] [FailureCategory=Cmdlet-LocalizedException] 882BD051
    + PSComputerName        : outlook.office365.com
```

### Create a new privileged access policy for the New-JournalRule task

1. If you haven't already, follow the steps to create an approver's group and to enable privileged access in your Office 365 organization.

2. Sign into the [Microsoft 365 Admin Center](https://portal.office.com) using credentials for an admin account in your organization.

3. In the Admin Center, go to **Settings** > **Security & Privacy** > **Privileged access**.

4. Select **Manage access policies and requests**.

5. Select **Configure policies** and select **Add a policy**.

6. From the drop-down fields, select the appropriate values for your organization:
    
    **Policy type**: Task

    **Policy scope**: Exchange

    **Policy name**: New Journal Rule

    **Approval type**: Manual

    **Approval group**: Privileged Access Approvers

7. Select **Create** and then **Close**. It may take a few minutes for the policy to be fully configured and enabled.

### Request access to create a new Journal Rule using the New-JournalRule task

1. Sign into the [Microsoft 365 Admin Center](https://portal.office.com) using your credentials.

2. In the Admin Center, go to **Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select **New request**. From the drop-down fields, select the appropriate values for your organization:

    **Request type**: Task

    **Request scope**: Exchange

    **Request for**: New Journal Rule

    **Duration (hours)**: 2

    **Comments**: Request permission to create a new Journal Rule

5. Select **Save** and then **Close**. Your request will be sent to the approver's group via email.

### Approve privileged access request for the creation of a new Journal Rule.

1. Sign into the [Microsoft 365 Admin Center](https://portal.office.com) using the credentials for a user in the "Privileged Access Approvers" security group.

2. In the Admin Center, go to **Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select the pending request and select **Apprive**. An notification email confirming that approval has been granted will be sent to the requesting user.  

### Test creating a new Journal Rule with privileged access configured for the New-JournalRule task

2. On your local computer, open and sign into the the Exchange Online Remote PowerShell Module at **Microsoft Corporation** > **Microsoft Exchange Online Remote PowerShell Module** using an account and credentials for the same user you tested with earlier.

3. In Exchange Management Powershell, create a new Journal rule for your organization:

```
New-JournalRule -Name "JournalRule1" -Recipient joe@contoso.onmicrosoft.com -JournalEmailAddress barbara@adatum.com -Scope Global -Enabled $true
```
4. View that the new Journal Rule was successfully created in Exchange Management PowerShell.

## Next step

Explore additional [information protection](m365-enterprise-test-lab-guides.md#information-protection) features and capabilities in your test environment.

## See also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)