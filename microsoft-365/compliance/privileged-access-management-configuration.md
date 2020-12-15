---
title: "Get started with privileged access management"
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- m365-security-compliance
- m365solution-insiderrisk
- m365initiative-compliance
ms.custom: 
 - Ent_Solutions
 - seo-marvel-apr2020
ms.assetid: 
description: Use this article to learn more about enabling and configuring privileged access management in Office 365.
---

# Get started with privileged access management

This topic guides you through enabling and configuring privileged access management in your organization. You can use either the Microsoft 365 admin center or Exchange Management PowerShell to manage and use privileged access.

## Before you begin

Before you get started with privileged access management, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) and any add-ons. To access and use privileged access management, your organization must have one of the following subscriptions or add-ons:

- Microsoft 365 E5 subscription (paid or trial version)
- Microsoft 365 E3 subscription (or Office 365 E3 subscription + Enterprise Mobility and Security E3 subscription) + the Microsoft 365 E5 Compliance add-on
- Any Microsoft 365, Office 365, Exchange, SharePoint, or OneDrive for Business subscription + the Microsoft 365 E5 Insider Risk Management add-on  
- Microsoft 365 A5 subscription (paid or trial version)
- Microsoft 365 A3 subscription (or Office 365 A3 subscription + Enterprise Mobility and Security A3 subscription) + the Microsoft A5 Compliance add-on
- Any Microsoft 365, Office 365, Exchange, SharePoint, or OneDrive for Education subscription + the Microsoft 365 A5 Insider Risk Management add-on
- Office 365 Enterprise E5 subscription (paid or trial version)
- Office 365 Enterprise E3 subscription + the Office 365 Advanced Compliance add-on (no longer available for new subscriptions, see note)

Users submitting and responding to privileged access management requests must be assigned one of the licenses above.

>[!IMPORTANT]
>Office 365 Advanced Compliance is no longer sold as a standalone subscription. When current subscriptions expire, customers should transition to one of the subscriptions above, which contain the same or additional compliance features.

If you don't have an existing Office 365 Enterprise E5 plan and want to try privileged access management, you can [add Microsoft 365](https://docs.microsoft.com/office365/admin/try-or-buy-microsoft-365) to your existing Office 365 subscription or [sign up for a trial](https://www.microsoft.com/microsoft-365/enterprise) of Microsoft 365 Enterprise E5.

## Enable and configure privileged access management

Follow these steps to set up and use privileged access in your organization:

- [Step 1: Create an approver's group](privileged-access-management-configuration.md#step1)

    Before you start using privilege access, determine who needs approval authority for incoming requests for access to elevated and privileged tasks. Any user who is part of the Approvers' group is able to approve access requests. This group is enabled by creating a mail-enabled security group in Office 365.

- [Step 2: Enable privileged access](privileged-access-management-configuration.md#step2)

    Privileged access must be explicitly enabled in Office 365 with the default approver group, including a set of system accounts that you want excluded from the privileged access management access control.

- [Step 3: Create an access policy](privileged-access-management-configuration.md#step3)

    Creating an approval policy allows you to define the specific approval requirements scoped at individual tasks. The approval type options are **Auto** or **Manual**.

- [Step 4: Submit/approve privileged access requests](privileged-access-management-configuration.md#step4)

    Once enabled, privileged access requires approvals for any task that has an associated approval policy defined. For tasks included in an approval policy, users must request and be granted access approval to have permissions necessary to execute the task.

After approval is granted, the requesting user can execute the intended task and privileged access will authorize and execute the task on behalf of the user. The approval remains valid for the requested duration (default duration is 4 hours), during which the requester can execute the intended task multiple times. All such executions are logged and made available for security and compliance auditing. 

>[!NOTE]
>If you want to use Exchange Management PowerShell to enable and configure privileged access, follow the steps in [Connect to Exchange Online PowerShell using Multi-Factor authentication](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell#connect-to-exchange-online-powershell-using-mfa) to connect to Exchange Online PowerShell with your Office 365 credentials. You do not need to enable multi-factor authentication for your organization to use the steps to enable privileged access while connecting to Exchange Online PowerShell. Connecting with multi-factor authentication creates an OAuth token that is used by privileged access for signing your requests.

<a name="step1"> </a>

## Step 1: Create an approver's group

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com) using credentials for an admin account in your organization.

2. In the Admin Center, go to **Groups** > **Add a group**.

3. Select **mail-enabled security group** and then complete the **Name**, **Group email address**, and **Description** fields for the new group.

4. Save the group. It may take a few minutes for the group to be fully configured and to appear in the Microsoft 365 admin center.

5. Select the new approver's group and select **edit** to add users to the group.

6. Save the group.

<a name="step2"> </a>

## Step 2: Enable privileged access

### In the Microsoft 365 Admin Center

1. Sign into the [Microsoft 365 Admin Center](https://admin.microsoft.com) using credentials for an admin account in your organization.

2. In the Admin Center, go to **Settings** > **Org Settings** > **Security & Privacy** > **Privileged access**.

3. Enable the **Require approvals for privileged tasks** control.

4. Assign the approver's group you created in Step 1 as the **Default approvers group**.

5. **Save** and **Close**.

### In Exchange Management PowerShell

To enable privileged access and to assign the approver's group, run the following command in Exchange Online PowerShell:

```PowerShell
Enable-ElevatedAccessControl -AdminGroup '<default approver group>' -SystemAccounts @('<systemAccountUPN1>','<systemAccountUPN2>')
```

Example:

```PowerShell
Enable-ElevatedAccessControl -AdminGroup 'pamapprovers@fabrikam.onmicrosoft.com' -SystemAccounts @('sys1@fabrikamorg.onmicrosoft.com', 'sys2@fabrikamorg.onmicrosoft.com')
```

>[!NOTE]
>System accounts feature is made available to ensure certain automations within your organizations can work without dependency on privileged access, however it is recommended that such exclusions be exceptional and those allowed should be approved and audited regularly.

<a name="step3"> </a>

## Step 3: Create an access policy

You can create and configure up to 30 privileged access policies for your organization.

### In the Microsoft 365 Admin Center

1. Sign into the [Microsoft 365 Admin Center](https://admin.microsoft.com) using credentials for an admin account in your organization.

2. In the Admin Center, go to **Settings** > **Org Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select **Configure policies** and select **Add a policy**.

5. From the drop-down fields, select the appropriate values for your organization:
    
    **Policy type**: Task, Role, or Role Group

    **Policy scope**: Exchange

    **Policy name**: Select from the available policies

    **Approval type**: Manual or Auto

    **Approval group**: Select the approvers group created in Step 1

6. Select **Create** and then **Close**. It may take a few minutes for the policy to be fully configured and enabled.

### In Exchange Management PowerShell

To create and define an approval policy, run the following command in Exchange Online PowerShell:

```PowerShell
New-ElevatedAccessApprovalPolicy -Task 'Exchange\<exchange management cmdlet name>' -ApprovalType <Manual, Auto> -ApproverGroup '<default/custom approver group>'
```

Example:

```PowerShell
New-ElevatedAccessApprovalPolicy -Task 'Exchange\New-MoveRequest' -ApprovalType Manual -ApproverGroup 'mbmanagers@fabrikamorg.onmicrosoft.com'
```

<a name="step4"> </a>

## Step 4: Submit/approve privileged access requests

### Requesting elevation authorization to execute privileged tasks

Requests for privileged access are valid for up to 24 hours after the request is submitted. If not approved or denied, the requests expire and access is not approved.

#### In the Microsoft 365 Admin Center

1. Sign into the [Microsoft 365 Admin Center](https://admin.microsoft.com) using your credentials.

2. In the Admin Center, go to **Settings** > **Org Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select **New request**. From the drop-down fields, select the appropriate values for your organization:

    **Request type**: Task, Role, or Role Group

    **Request scope**: Exchange

    **Request for**: Select from the available policies

    **Duration (hours)**: Number of hours of requested access. There isn't a limit on the number of hours that can be requested.

    **Comments**: Text field for comments related to your access request

5. Select **Save** and then **Close**. Your request will be sent to the approver's group via email.

#### In Exchange Management PowerShell

Run the following command in Exchange Online PowerShell to create and submit an approval request to the approver's group:

```PowerShell
New-ElevatedAccessRequest -Task 'Exchange\<exchange management cmdlet name>' -Reason '<appropriate reason>' -DurationHours <duration in hours>
```

Example:

```PowerShell
New-ElevatedAccessRequest -Task 'Exchange\New-MoveRequest' -Reason 'Attempting to fix the user mailbox error' -DurationHours 4
```

### View status of elevation requests

After an approval request is created, elevation request status can be reviewed in the admin center or in Exchange Management PowerShell using the associated with request ID.

#### In the Microsoft 365 admin center

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com) with your credentials.

2. In the admin center, go to **Settings** > **Org Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select **View** to filter submitted requests by **Pending**, **Approved**, **Denied**, or **Customer Lockbox** status.

#### In Exchange Management PowerShell

Run the following command in Exchange Online PowerShell to view an approval request status for a specific request ID:

```PowerShell
Get-ElevatedAccessRequest -Identity <request ID> | select RequestStatus
```

Example:

```PowerShell
Get-ElevatedAccessRequest -Identity 28560ed0-419d-4cc3-8f5b-603911cbd450 | select RequestStatus
```

### Approving an elevation authorization request

When an approval request is created, members of the relevant approver group receive an email notification and can approve the request associated with the request ID. The requestor is notified of the request approval or denial via email message.

#### In the Microsoft 365 admin center

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com) with your credentials.

2. In the admin center, go to **Settings** > **Org Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select a listed request to view the details and to take action on the request.

5. Select **Approve** to approve the request or select **Deny** to deny the request. Previously approved requests can have access revoked by selecting **Revoke**.

#### In Exchange Management PowerShell

To approve an elevation authorization request, run the following command in Exchange Online PowerShell:

```PowerShell
Approve-ElevatedAccessRequest -RequestId <request id> -Comment '<approval comment>'
```

Example:

```PowerShell
Approve-ElevatedAccessRequest -RequestId a4bc1bdf-00a1-42b4-be65-b6c63d6be279 -Comment '<approval comment>'
```

To deny an elevation authorization request, run the following command in Exchange Online PowerShell:

```PowerShell
Deny-ElevatedAccessRequest -RequestId <request id> -Comment '<denial comment>'
```

Example:

```PowerShell
Deny-ElevatedAccessRequest -RequestId a4bc1bdf-00a1-42b4-be65-b6c63d6be279 -Comment '<denial comment>'
```

## Delete a privileged access policy in Office 365

If it is no longer needed in your organization, you can delete a privileged access policy.

### In the Microsoft 365 admin center

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com) using credentials for an admin account in your organization.

2. In the admin center, go to **Settings** > **Org Settings** > **Security & Privacy** > **Privileged access**.

3. Select **Manage access policies and requests**.

4. Select **Configure policies**.

5. Select the policy you want to delete, then select **Remove Policy**.

6. Select **Close**.

### In Exchange Management PowerShell

To delete a privileged access policy, run the following command in Exchange Online Powershell:

```PowerShell
Remove-ElevatedAccessApprovalPolicy -Identity <identity GUID of the policy you want to delete>
```

## Disable privileged access in Office 365

If needed, you can disable privileged access management for your organization. Disabling privileged access does not delete any associated approval policies or approver groups.

### In the Microsoft 365 admin center

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com) with credentials for an admin account in your organization.

2. In the Admin Center, go to **Settings** > **Org Settings** > **Security & Privacy** > **Privileged access**.

3. Enable the **Require approvals for privileged access** control.

### In Exchange Management PowerShell

To disable privileged access, run the following command in Exchange Online Powershell:

```PowerShell
Disable-ElevatedAccessControl
```
