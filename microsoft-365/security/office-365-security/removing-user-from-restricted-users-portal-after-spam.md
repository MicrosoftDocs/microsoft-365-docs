---
title: Remove blocked users from the Restricted Users portal
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to
f1_keywords: 
  - 'ms.exch.eac.ActionCenter.Restricted.Users.RestrictedUsers'

localization_priority: Priority
search.appverid: 
  - MET150
ms.assetid: 712cfcc1-31e8-4e51-8561-b64258a8f1e5
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to remove users from the Restricted Users portal in Office 365. Users are added to the Restricted Users portal for sending outbound spam, typically as a result of account compromise.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Remove blocked users from the Restricted Users portal in Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](https://go.microsoft.com/fwlink/?linkid=2148611)
- [Microsoft Defender for Office 365 plan 1 and plan 2](https://go.microsoft.com/fwlink/?linkid=2148715)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

If a user exceeds one of the outbound sending limits as specified in [the service limits](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-across-office-365-options) or in [outbound spam policies](configure-the-outbound-spam-policy.md), the user is restricted from sending email, but they can still receive email.

The user is added to the Restricted Users portal in the Security & Compliance Center. When they try to send email, the message is returned in a non-delivery report (also known as an NDR or bounce messages) with the error code [5.1.8](https://docs.microsoft.com/Exchange/mail-flow-best-practices/non-delivery-reports-in-exchange-online/fix-error-code-5-1-8-in-exchange-online) and the following text:

> "Your message couldn't be delivered because you weren't recognized as a valid sender. The most common reason for this is that
> your email address is suspected of sending spam and it's no longer allowed to send email.  Contact  your email admin for
> assistance. Remote Server returned '550 5.1.8 Access denied, bad outbound sender."

Admins can remove users from the Restricted Senders portal in the Security & Compliance Center or in Exchange Online PowerShell.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Restricted Users** page, use <https://protection.office.com/restrictedusers>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions in the Security & Compliance Center before you can do the procedures in this article:
  - To remove users from the Restricted Users portal, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to the Restricted Users portal, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions in the Security & Compliance Center _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles).
  - The **View-Only Organization Management** role group in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- A sender exceeding the outbound email limits is an indicator of a compromised account. Before you remove the user from the Restricted Users portal, be sure to follow the required steps to regain control of their account. For more information, see [Responding to a compromised email account in Office 365](responding-to-a-compromised-email-account.md).

## Use the Security & Compliance Center to remove a user from the Restricted Users list

1. In the Security & Compliance Center, go to **Threat management** \> **Review** \> **Restricted users**.

2. Find and select the user that you want to unblock. In the **Actions** column, click **Unblock**.

3. A fly-out will go into the details about the account whose sending is restricted. You should go through the recommendations to ensure you're taking the proper actions in case the account is actually compromised. Click **Next** when done.

4. The next screen has recommendations to help prevent future compromise. Enabling multi-factor authentication (MFA) and changing the passwords are a good defense. Click **Unblock user** when done.

5. Click **Yes** to confirm the change.

   > [!NOTE]
   > It might take up to 24 hours for all restrictions to be removed from the user.

## Verify the alert settings for restricted users

The default alert policy named **User restricted from sending email** will automatically notify admins when users are blocked from sending outbound mail. You can verify these settings and add additional users to notify. For more information about alert policies, see [Alert policies in the security and compliance center](../../compliance/alert-policies.md).

> [!IMPORTANT]
> For alerts to work, audit log search must to be turned on. For more information, see [Turn the audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md).

1. In the Security & Compliance Center, go to **Alerts** \> **Alert policies**.

2. Find and select the **User restricted from sending email** alert.

3. In the flyout that appears, verify or configure the following settings:

   - **Status**: Verify the alert is turned on ![Toggle on](../../media/scc-toggle-on.png).

   - **Email recipients**: Click **Edit** and verify or configure the following settings in the **Edit recipients** flyout that appears:

     - **Send email notifications**: Verify the check box is selected (**On**).

     - **Email recipients**: The default value is **TenantAdmins** (meaning, **Global admin** members). To add more recipients, click in a blank area of the box. A list of recipients will appear, and you can start typing a name to filter and select a recipient. You can remove an existing recipient from the box by clicking ![Remove icon](../../media/scc-remove-icon.png) next to their name.

     - **Daily notification limit**: The default value is **No limit** but you can select a limit for the maximum number of notifications per day.

     When you're finished, click **Save**.

4. Back on the **User restricted from sending email** flyout, click **Close**.

## Use Exchange Online PowerShell to view and remove users from the Restricted Users list

To view this list of users that are restricted from sending email, run the following command:

```powershell
Get-BlockedSenderAddress
```

To view details about a specific user, replace \<emailaddress\> with their email address and run the following command:

```powershell
Get-BlockedSenderAddress -SenderAddress <emailaddress>
```

For detailed syntax and parameter information, see [Get-BlockedSenderAddress](https://docs.microsoft.com/powershell/module/exchange/get-blockedsenderaddress).

To remove a user from the Restricted Users list, replace \<emailaddress\> with their email address and run the following command:

```powershell
Remove-BlockedSenderAddress -SenderAddress <emailaddress>
```

For detailed syntax and parameter information, see [Remove-BlockedSenderAddress](https://docs.microsoft.com/powershell/module/exchange/remove-blockedsenderaddress).
