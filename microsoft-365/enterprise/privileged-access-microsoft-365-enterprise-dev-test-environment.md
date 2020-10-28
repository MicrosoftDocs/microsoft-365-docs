---
title: "Privileged access management for your Microsoft 365 for enterprise test environment"
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
description: Use this Test Lab Guide to enable privileged access management your Microsoft 365 for enterprise test environment.
---

# Privileged access management for your Microsoft 365 for enterprise test environment

*This Test Lab Guide can be used for both Microsoft 365 for enterprise and Office 365 Enterprise test environments.*

This article describes how to configure privileged access management to increase security in your Microsoft 365 for enterprise test environment.

Configuring priviledged access management involves three phases:
- [Phase 1: Build out your Microsoft 365 for enterprise test environment](#phase-1-build-out-your-microsoft-365-for-enterprise-test-environment)
- [Phase 2: Configure privileged access management](#phase-2-configure-privileged-access-management)
- [Phase 3: Verify that approval is required for elevated and privileged tasks](#phase-3-verify-that-approval-is-required-for-elevated-and-privileged-tasks)

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, go to [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).
  
## Phase 1: Build out your Microsoft 365 for enterprise test environment

If you want to configure privileged access management in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure privileged access management in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
>[!NOTE]
>Testing privileged access management doesn't require the simulated enterprise test environment, which includes a simulated intranet connected to the internet and directory synchronization for an Active Directory Domain Services forest. It's provided here as an option so that you can test privileged access management and experiment with it in an environment that represents a typical organization.

## Phase 2: Configure privileged access management

In this phase, configure an approvers group and enable privileged access management for your Microsoft 365 for enterprise test environment. For additional details and an overview of privileged access management, see [Privileged access management](../compliance/privileged-access-management-overview.md).

To set up and use privileged access in your organization, perform the following steps.

#### [Step 1: Create an approver's group](../compliance/privileged-access-management-configuration.md#step-1-create-an-approvers-group)

Before you start using privileged access, determine who will have approval authority for incoming requests for access to elevated and privileged tasks. All users who are part of the Approvers’ group can approve access requests. To use privileged access, you must create a mail-enabled security group in Microsoft 365. In your test environment, name the new security group "Privileged Access Approvers" and add the "User 3" that was previously created in previous test lab guide steps.

#### [Step 2: Enable privileged access](../compliance/privileged-access-management-configuration.md#step-2-enable-privileged-access)

Privileged access needs to be explicitly turned on in Microsoft 365 with the default approver group, and it must include a set of system accounts that you want excluded from the privileged access management access control. Be sure to enable privileged access in your organization before starting Phase 3 of this guide.

## Phase 3: Verify that approval is required for elevated and privileged tasks

In this phase, verify that the privileged access policy is working and that users require approval to execute defined elevated and privileged tasks.

### Test the ability to execute a task NOT defined in a privileged access policy

First, connect to Exchange Management PowerShell with the credentials of a user configured as a Global Administrator in your test environment and attempt to create a new Journal rule. The [New-JournalRule](https://docs.microsoft.com/powershell/module/exchange/new-journalrule) task is not currently defined in a privileged access policy for your organization.

1. On your local computer, open and sign in to the Exchange Online Remote PowerShell Module at **Microsoft Corporation** > **Microsoft Exchange Online Remote PowerShell Module** using the Global Admin account for your test environment.

1. In Exchange Management PowerShell, create a new Journal rule for your organization:

   ```ExchangeManagementPowerShell
   New-JournalRule -Name "JournalRule1" -Recipient joe@contoso.onmicrosoft.com -JournalEmailAddress barbara@adatum.com -Scope Global -Enabled $true
   ```

1. View that the new Journal Rule was successfully created in Exchange Management PowerShell.

### Create a new privileged access policy for the New-JournalRule task

>[!NOTE]
>If you haven't already completed the Steps 1 and 2 from Phase 2 of this guide, be sure follow the steps to create an approver's group named "Privilege Access Approvers" to enable privileged access in your test environment.

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) using credentials the Global Admin account for your test environment.

2. In the Admin Center, go to **Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select **Configure policies**, and then select **Add a policy**.

5. From the drop-down fields, select or enter the following values:

    **Policy type**: Task

    **Policy scope**: Exchange

    **Policy name**: New Journal Rule

    **Approval type**: Manual

    **Approval group**: Privileged Access Approvers

6. Select **Create**, and then select **Close**. It may take a few minutes for the policy to be fully configured and enabled. Be sure to allow time for the policy to be fully enabled before testing the approval requirement in the next step.

### Test approval requirement for the New-JournalRule task defined in a privileged access policy

1. On your local computer, open and sign in to the Exchange Online Remote PowerShell Module at **Microsoft Corporation** > **Microsoft Exchange Online Remote PowerShell Module** using an using the Global Admin account for your test environment.

2. In Exchange Management PowerShell, create a new Journal rule for your organization:

   ```ExchangeManagementPowerShell
   New-JournalRule -Name "JournalRule2" -Recipient user1@<your subscription domain> -JournalEmailAddress user1@<your subscription domain> -Scope Global -Enabled $true
   ```

3. View the "Insufficient permissions" error in Exchange Management PowerShell:

   ```ExchangeManagementPowerShell
   Insufficient permissions. Please raise an elevated access request for this task.
       + CategoryInfo          : NotSpecified: (:) [], LocalizedException
       + FullyQualifiedErrorId : [Server=CY1PR00MB0220,RequestId=7b8c7470-ddd0-4528-a01e-5e20ecc9bd54,TimeStamp=9/19/2018
       7:38:34 PM] [FailureCategory=Cmdlet-LocalizedException] 882BD051
       + PSComputerName        : outlook.office365.com
   ```

### Request access to create a new Journal Rule using the New-JournalRule task

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) using the Global Admin account for your test environment.

2. In the Admin Center, go to **Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select **New request**. From the drop-down fields, select the appropriate values for your organization:

    **Request type**: Task

    **Request scope**: Exchange

    **Request for**: New Journal Rule

    **Duration (hours)**: 2

    **Comments**: Request permission to create a new Journal Rule

5. Select **Save**, and then select **Close**. Your request will be sent to the approver's group via email.

### Approve privileged access request for the creation of a new Journal Rule

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) using the credentials for User 3 in your test environment (member of the "Privileged Access Approvers" security group in your test environment).

2. In the Admin Center, go to **Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select the pending request, and then select **Approve** to grant access to the Global Admin account to create a new Journal Rule. The Global Admin account (the requesting user) will receive an email confirmation that approval was granted.

### Test creating a new Journal Rule with privileged access approved for the New-JournalRule task

1. On your local computer, open and sign in to the Exchange Online Remote PowerShell Module at **Microsoft Corporation** > **Microsoft Exchange Online Remote PowerShell Module** using the Global Admin account for your test environment.

1. In Exchange Management PowerShell, create a new Journal rule for your organization:

   ```ExchangeManagementPowerShell
   New-JournalRule -Name "JournalRule2" -Recipient user1@<your subscription domain> -JournalEmailAddress user1@<your subscription domain> -Scope Global -Enabled $true
   ```

1. View that the new Journal Rule was successfully created in Exchange Management PowerShell.

## Next step

Explore additional [information protection](m365-enterprise-test-lab-guides.md#information-protection) features and capabilities in your test environment.

## See also

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)
