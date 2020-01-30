---
title: "Privileged access management for your Microsoft 365 Enterprise test environment"
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
- M365-security-compliance
ms.custom: Ent_TLGs
description: Use this Test Lab Guide to enable privileged access management your Microsoft 365 Enterprise test environment.
---

# Privileged access management for your Microsoft 365 Enterprise test environment

*This Test Lab Guide can be used for both Microsoft 365 Enterprise and Office 365 Enterprise test environments.*

With the instructions in this article, you configure privileged access management to increase security in your Microsoft 365 Enterprise test environment.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

>[!TIP]
>Click [here](media/m365-enterprise-test-lab-guides/Microsoft365EnterpriseTLGStack.pdf) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.
  
## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to configure privileged access management in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure privileged access management in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
>[!NOTE]
>Testing privileged access management does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for an AD DS forest. It is provided here as an option so that you can test privileged access management and experiment with it in an environment that represents a typical organization. 

## Phase 2: Configure privileged access management

In this phase, you configure an approvers group and enable privileged access management for your Microsoft 365 Enterprise test environment. For additional details and an overview of privileged access management, see [Privileged access management in Office 365](https://docs.microsoft.com/office365/securitycompliance/privileged-access-management-overview).

Follow these steps to set up and use privileged access in your Office 365 organization:

- [Step 1: Create an approver's group](https://docs.microsoft.com/microsoft-365/compliance/privileged-access-management-configuration#step-1-create-an-approvers-group)

    Before you start using privilege access, determine who will have approval authority for incoming requests for access to elevated and privileged tasks. Any user who is part of the Approvers’ group will be able to approve access requests. This is enabled by creating a mail-enabled security group in Office 365. Create a new security group named "Privileged Access Approvers" in your test environment and add the "User 3" previously created in prior test lab guide steps.

- [Step 2: Enable privileged access](https://docs.microsoft.com/microsoft-365/compliance/privileged-access-management-configuration#step-2-enable-privileged-access)

    Privileged access needs to be explicitly turned on in Office 365 with the default approver group and including a set of system accounts that you’d want to be excluded from the privileged access management access control. Be sure to enable privileged access in your Office 365 organization before starting Phase 3 of this guide.

## Phase 3: Verify that approval is required for elevated and privileged tasks

In this phase, you verify that the privileged access policy is working and users require approval to execute defined elevated and privileged tasks.

### Test ability to execute a task NOT defined in a privileged access policy

First, connect to Exchange Management PowerShell with the credentials of a user configured as a Global Administrator in your test environment and attempt to create a new Journal rule. The [New-JournalRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/new-journalrule?view=exchange-ps) task is not currently defined in a privileged access policy for your organization.

1. On your local computer, open and sign into the Exchange Online Remote PowerShell Module at **Microsoft Corporation** > **Microsoft Exchange Online Remote PowerShell Module** using the Global Admin account for your test environment.

2. In Exchange Management PowerShell, create a new Journal rule for your organization:

```ExchangeManagementPowerShell
New-JournalRule -Name "JournalRule1" -Recipient joe@contoso.onmicrosoft.com -JournalEmailAddress barbara@adatum.com -Scope Global -Enabled $true
```

4. View that the new Journal Rule was successfully created in Exchange Management PowerShell.

### Create a new privileged access policy for the New-JournalRule task

>[!NOTE]
>If you haven't already completed the Steps 1 and 2 from Phase 2 of this guide, be sure follow the steps to create an approver's group named "Privilege Access Approvers" and to enable privileged access in your test environment.

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com) using credentials the Global Admin account for your test environment.

2. In the Admin Center, go to **Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select **Configure policies** and select **Add a policy**.

5. From the drop-down fields, select or enter the following values:

    **Policy type**: Task

    **Policy scope**: Exchange

    **Policy name**: New Journal Rule

    **Approval type**: Manual

    **Approval group**: Privileged Access Approvers

6. Select **Create** and then **Close**. It may take a few minutes for the policy to be fully configured and enabled. Be sure to allow time for the policy to be fully enabled before testing the approval requirement in the next step.

### Test approval requirement for the New-JournalRule task defined in a privileged access policy

1. On your local computer, open and sign into the Exchange Online Remote PowerShell Module at **Microsoft Corporation** > **Microsoft Exchange Online Remote PowerShell Module** using an using the Global Admin account for your test environment.

2. In Exchange Management PowerShell, create a new Journal rule for your organization:

```ExchangeManagementPowerShell
New-JournalRule -Name "JournalRule2" -Recipient user1@<your subscription domain> -JournalEmailAddress user1@<your subscription domain> -Scope Global -Enabled $true
```

3. View "Insufficient permissions" error in Exchange Management PowerShell:

```ExchangeManagementPowerShell
Insufficient permissions. Please raise an elevated access request for this task.
    + CategoryInfo          : NotSpecified: (:) [], LocalizedException
    + FullyQualifiedErrorId : [Server=CY1PR00MB0220,RequestId=7b8c7470-ddd0-4528-a01e-5e20ecc9bd54,TimeStamp=9/19/2018
    7:38:34 PM] [FailureCategory=Cmdlet-LocalizedException] 882BD051
    + PSComputerName        : outlook.office365.com
```

### Request access to create a new Journal Rule using the New-JournalRule task

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com) using the Global Admin account for your test environment.

2. In the Admin Center, go to **Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select **New request**. From the drop-down fields, select the appropriate values for your organization:

    **Request type**: Task

    **Request scope**: Exchange

    **Request for**: New Journal Rule

    **Duration (hours)**: 2

    **Comments**: Request permission to create a new Journal Rule

5. Select **Save** and then **Close**. Your request will be sent to the approver's group via email.

### Approve privileged access request for the creation of a new Journal Rule

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com) using the credentials for User 3 in your test environment (member of the "Privileged Access Approvers" security group in your test environment).

2. In the Admin Center, go to **Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select the pending request and select **Approve** to grant access to the Global Admin account to create a new Journal Rule. A notification email confirming that approval has been granted will be sent to the Global Admin account (the requesting user).  

### Test creating a new Journal Rule with privileged access approved for the New-JournalRule task

1. On your local computer, open and sign into the Exchange Online Remote PowerShell Module at **Microsoft Corporation** > **Microsoft Exchange Online Remote PowerShell Module** using the Global Admin account for your test environment.

2. In Exchange Management PowerShell, create a new Journal rule for your organization:

```ExchangeManagementPowerShell
New-JournalRule -Name "JournalRule2" -Recipient user1@<your subscription domain> -JournalEmailAddress user1@<your subscription domain> -Scope Global -Enabled $true
```

3. View that the new Journal Rule was successfully created in Exchange Management PowerShell.

## Next step

Explore additional [information protection](m365-enterprise-test-lab-guides.md#information-protection) features and capabilities in your test environment.

## See also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)