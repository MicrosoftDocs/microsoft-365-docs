---
title: Remove blocked users from the Restricted users portal
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
ms.localizationpriority: high
search.appverid: 
  - MET150
ms.assetid: 712cfcc1-31e8-4e51-8561-b64258a8f1e5
ms.collection: 
  - m365-security
description: Admins can learn how to remove users from the Restricted users page in the Microsoft 365 Defender portal. Users are added to the Restricted users portal for sending outbound spam, typically as a result of account compromise.
ms.custom: 
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Remove blocked users from the Restricted users portal in Microsoft 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

If a user exceeds one of the outbound sending limits as specified in [the service limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-across-office-365-options) or in [outbound spam policies](configure-the-outbound-spam-policy.md), the user is restricted from sending email, but they can still receive email.

The user is added to the **Restricted users** page in the Microsoft 365 Defender portal. When they try to send email, the message is returned in a non-delivery report (also known as an NDR or bounce message) with the error code [5.1.8](/Exchange/mail-flow-best-practices/non-delivery-reports-in-exchange-online/fix-error-code-5-1-8-in-exchange-online) and the following text:

> "Your message couldn't be delivered because you weren't recognized as a valid sender. The most common reason for this is that
> your email address is suspected of sending spam and it's no longer allowed to send email.  Contact  your email admin for
> assistance. Remote Server returned '550 5.1.8 Access denied, bad outbound sender."

Admins can remove users from the **Restricted users** page in the Microsoft 365 Defender or in Exchange Online PowerShell.

## Learn more on Restricted entities

A restricted entity is an entity that has been blocked from sending email because either it has been potentially compromised, or it has exceeded sending limit.

There are 2 types of restricted entities: 

- **Restricted user**: Learn about why a user can be restricted and how to handle restricted users (this article).  

- **Restricted connector**: For more information about why a connector can be restricted and how to handle restricted connectors, see [Remove blocked connectors from the Restricted entities portal](remove-blocked-connectors.md). 

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Restricted users** page, use <https://security.microsoft.com/restrictedusers>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To remove users from the Restricted users portal, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to the Restricted users portal, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  > [!NOTE]
  >
  > - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  >
  > - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- A sender exceeding the outbound email limits is an indicator of a compromised account. Before you remove the user from the Restricted users portal, be sure to follow the required steps to regain control of their account. For more information, see [Responding to a compromised email account in Office 365](responding-to-a-compromised-email-account.md).

## Use the Microsoft 365 Defender portal to remove a user from the Restricted users list

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Restricted users**. To go directly to the **Restricted users** page, use <https://security.microsoft.com/restrictedusers>.

2. On the **Restricted users** page, find and select the user that you want to unblock by clicking on the user.

3. Click the **Unblock** action that appears.

4. In the **Unblock user** flyout that appears, read the details about the restricted account. You should go through the recommendations to ensure you're taking the proper actions in case the account is compromised.

   When you're finished, click **Next**.

5. The next screen has recommendations to help prevent future compromise. Enabling multi-factor authentication (MFA) and resetting the password are a good defense.

   When you're finished, click **Submit**.

6. Click **Yes** to confirm the change.

   > [!NOTE]
   > It might take up to 1 hour for all restrictions to be removed from the user.

## Verify the alert settings for restricted users

The default alert policy named **User restricted from sending email** will automatically notify admins when users are blocked from sending outbound mail. You can verify these settings and add additional users to notify. For more information about alert policies, see [Alert policies in Microsoft 365](../../compliance/alert-policies.md).

> [!IMPORTANT]
> For alerts to work, audit log search must to be turned on. For more information, see [Turn the audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Alert policy**. To go directly to the **Alert policy** page, use <https://security.microsoft.com/alertpolicies>.

2. On the **Alert policy** page, find and select the alert named **User restricted from sending email**. You can sort the policies by name, or use the **Search** box to find the policy.

3. In the **User restricted from sending email** flyout that appears, verify or configure the following settings:
   - **Status**: Verify the alert is turned on ![Toggle on.](../../media/scc-toggle-on.png).
   - **Email recipients**: Click **Edit** and verify or configure the following settings in the **Edit recipients** flyout that appears:
     - **Send email notifications**: Verify this is selected (**On**).
     - **Email recipients**: The default value is **TenantAdmins** (meaning, **Global admin** members). To add more recipients, click in a blank area of the box. A list of recipients will appear, and you can start typing a name to filter and select a recipient. You can remove an existing recipient from the box by clicking ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to their name.
     - **Daily notification limit**: The default value is **No limit** but you can select a limit for the maximum number of notifications per day.

     When you're finished, click **Save**.

4. Back on the **User restricted from sending email** flyout, click **Close**.

## Use Exchange Online PowerShell to view and remove users from the Restricted users list

To view this list of users that are restricted from sending email, run the following command:

```powershell
Get-BlockedSenderAddress
```

To view details about a specific user, replace \<emailaddress\> with their email address and run the following command:

```powershell
Get-BlockedSenderAddress -SenderAddress <emailaddress>
```

For detailed syntax and parameter information, see [Get-BlockedSenderAddress](/powershell/module/exchange/get-blockedsenderaddress).

To remove a user from the Restricted users list, replace \<emailaddress\> with their email address and run the following command:

```powershell
Remove-BlockedSenderAddress -SenderAddress <emailaddress>
```

For detailed syntax and parameter information, see [Remove-BlockedSenderAddress](/powershell/module/exchange/remove-blockedsenderaddress).
