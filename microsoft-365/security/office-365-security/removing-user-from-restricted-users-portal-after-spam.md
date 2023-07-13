---
title: Remove blocked users from the Restricted entities page
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
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
  - tier2
description: Admins can learn how to remove user accounts from the Restricted entities page in the Microsoft 365 Defender portal. Users are added to the Restricted entities page for sending outbound spam, typically as a result of account compromise.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/19/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Remove blocked users from the Restricted entities page

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, several things happen if a user exceeds the [outbound sending limits of the service](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-across-office-365-options) or the [limits in outbound spam policies](outbound-spam-policies-configure.md):

- The user is restricted from sending email, but they can still receive email.
- The user is added to the **Restricted entities** page in the Microsoft 365 Defender portal.

  A _restricted entity_ is a **user account** or a **connector** that's blocked from sending email due to indications of compromise, which typically includes exceeding message receiving and sending limits.

- If the user tries to send email, the message is returned in a non-delivery report (also known as an NDR or bounce message) with the error code [5.1.8](/Exchange/mail-flow-best-practices/non-delivery-reports-in-exchange-online/fix-error-code-5-1-8-in-exchange-online) and the following text:

> "Your message couldn't be delivered because you weren't recognized as a valid sender. The most common reason for this is that
> your email address is suspected of sending spam and it's no longer allowed to send email.  Contact  your email admin for
> assistance. Remote Server returned '550 5.1.8 Access denied, bad outbound sender."

For more information about compromised user accounts and how to regain control of them, see [Responding to a compromised email account](responding-to-a-compromised-email-account.md).

The procedures in this article explain how admins can remove user accounts from the **Restricted entities** page in the Microsoft 365 Defender portal or in Exchange Online PowerShell.

For more information about compromised _connectors_ and how to remove them from the **Restricted entities** page, see [Remove blocked connectors from the Restricted entities page](connectors-remove-blocked.md).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Restricted users** page, use <https://security.microsoft.com/restrictedusers>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Remove user accounts from the Restricted entities page_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Read-only access to the Restricted entities page_: Membership in the **Global Reader**, **Security Reader**, or **View-Only Organization Management** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- A sender exceeding the outbound email limits is an indicator of a compromised account. Before you follow the procedures in this article to remove a user from the **Restricted entities** page, be sure to follow the required steps to regain control of the account as described in [Responding to a compromised email account in Office 365](responding-to-a-compromised-email-account.md).

## Remove a user from the Restricted entities page in the Microsoft 365 Defender portal

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Restricted entities**. Or, to go directly to the **Restricted entities** page, use <https://security.microsoft.com/restrictedentities>.

2. On the **Restricted entities** page, identify the user account to unblock. The **Entity** value is **Mailbox**.

   Select a column header to sort by that column.

   To change the list of entities from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

   Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific connectors.

3. Select the user to unblock by selecting the check box for the entity, and then selecting the **Unblock** action that appears on the page.

4. In the **Unblock user** flyout that opens, read the details about the restricted account on the **Overview** page. Verify that you've gone through the suggestions in the **Recommendations** section to confirm that the account isn't compromised or to regain control of the account.

   When you're finished on the **Overview** page, select **Next**.

5. On the **Unblock user page**, consider the recommendations and use the links in the **Multi-factor authentication** and **Change password** sections to **Enable MFA** and **Reset the user's password** if you haven't done these steps already. Enabling MFA and resetting the password are a good defense against future account compromise.

   When you're finished on the **Unblock user page**, select **Submit**.

6. Select **Yes** in the warning dialog that opens.

   > [!NOTE]
   > Under most circumstances, all restrictions should be removed from the user within one hour. Transient technical issues might cause a longer wait time, but the total wait should be no longer than 24 hours.

## Verify the alert settings for restricted users

The default alert policy named **User restricted from sending email** automatically notifies admins when connectors are blocked from relaying email. For more information about alert policies, see [Alert policies in Microsoft 365](../../compliance/alert-policies.md).

> [!IMPORTANT]
> For alerts to work, audit logging must to be turned on (it's on by default). To verify that audit logging is turned on or to turn it on, see [Turn auditing on or off](../../compliance/audit-log-enable-disable.md).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Alert policy**. Or, to go directly to the **Alert policy** page, use <https://security.microsoft.com/alertpoliciesv2>.

2. On the **Alert policy** page, find the alert named **User restricted from sending email**. You can sort the alerts by name, or use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the alert.

   Select the **User restricted from sending email** alert by clicking anywhere in the row other than the check box next to the name.

3. In the **User restricted from sending email** flyout that opens, verify or configure the following settings:
   - **Status**: Verify the alert is turned on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.
   - Expand the **Set your recipients section** and verify the **Recipients** and **Daily notification limit** values.

     To change the values, select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit recipient settings** in the section or select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit policy** at the top of the flyout.

     - On the **Decide if you want to notify people when this alert is triggered** page of the wizard that opens, verify or change the following settings:
       - Verify **Opt-in for email notifications** is selected.
       - **Email recipients**: The default value is **TenantAdmins** (meaning, **Global Administrator** members). To add more recipients, click in the empty area of the box. A list of recipients appears, and you can start typing a name to filter and select a recipient. Remove an existing recipient from the box by selecting :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to their name.
       - **Daily notification limit**: The default value is **No limit**.

       When you're finished on the **Decide if you want to notify people when this alert is triggered** page, select **Next**.

     - On the **Review your settings** page, select **Submit**, and then select **Done**.

4. Back in the ***User restricted from sending email** flyout, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: at the top of the flyout.

## Use Exchange Online PowerShell to view and remove users from the Restricted entities page

To view this list of users that are restricted from sending email, run the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

```powershell
Get-BlockedSenderAddress
```

To view details about a specific user, replace \<emailaddress\> with their email address and run the following command:

```powershell
Get-BlockedSenderAddress -SenderAddress <emailaddress> | Format-List
```

For detailed syntax and parameter information, see [Get-BlockedSenderAddress](/powershell/module/exchange/get-blockedsenderaddress).

To remove a user from the Restricted users list, replace \<emailaddress\> with their email address and run the following command:

```powershell
Remove-BlockedSenderAddress -SenderAddress <emailaddress>
```

For detailed syntax and parameter information, see [Remove-BlockedSenderAddress](/powershell/module/exchange/remove-blockedsenderaddress).

## More information

- [Responding to a compromised email account](responding-to-a-compromised-email-account.md)
- [Remove blocked connectors from the Restricted entities page](connectors-remove-blocked.md)
