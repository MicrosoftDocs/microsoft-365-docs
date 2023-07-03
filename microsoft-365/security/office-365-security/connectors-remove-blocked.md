---
title: Remove blocked connectors from the Restricted entities page in Microsoft 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
ms.assetid:
ms.collection:
  - m365-security
  - tier2
ms.custom:
description: Admins can learn how to remove connectors from the Restricted entities page in the Microsoft 365 Defender portal. Connectors are added to the Restricted entities page after signs of compromise.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 6/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Remove blocked connectors from the Restricted entities page

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, several things happen if an [inbound connector](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow) is detected as potentially compromised:

- The connector is prevented from sending or relaying email.
- The connector is added to the **Restricted entities** page in the Microsoft 365 Defender portal.

  A _restricted entity_ is a **user account** or a **connector** that's blocked from sending email due to indications of compromise, which typically includes exceeding message receiving and sending limits.

- If the connector is used to send email, the message is returned in a non-delivery report (also known as an NDR or bounced message) with the error code `550;5.7.711` and the following text:

> Your message couldn't be delivered. The most common reason for this is that your organization's email connector is suspected of sending spam or phish and it's no longer allowed to send email. Contact your email admin for assistance. Remote Server returned '550;5.7.711 Access denied, bad inbound connector. AS(2204).'

For more information about compromised connectors and how to regain control of them, see [Respond to a compromised connector](connectors-detect-respond-to-compromise.md).

The procedures in this article explain how admins can remove connectors from the **Restricted entities** page in the Microsoft 365 Defender portal or in Exchange Online PowerShell.

For more information about compromised _user accounts_ and how to remove them from the **Restricted entities** page, see [Remove blocked users from the Restricted entities page](removing-user-from-restricted-users-portal-after-spam.md).

## What do you need to know before you begin?

- Open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Restricted entities** page, use <https://security.microsoft.com/restrictedentities>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Remove connectors from the Restricted entities page_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Read-only access to the Restricted entities page_: Membership in the **Global Reader**, **Security Reader**, or **View-Only Organization Management** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- Before you follow the procedures in this article to remove a connector from the **Restricted entities** page, be sure to follow the required steps to regain control of the connector as described in [Respond to a compromised connector](connectors-detect-respond-to-compromise.md).

## Remove a connector from the Restricted entities page in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Restricted entities**. Or, to go directly to the **Restricted entities** page, use <https://security.microsoft.com/restrictedentities>.

2. On the **Restricted entities** page, identify the connector to unblock. The **Entity** value is **Connector**.

   Select a column header to sort by that column.

   To change the list of entities from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

   Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific connectors.

3. Select the connector to unblock by selecting the check box for the entity, and then selecting the **Unblock** action that appears on the page.

4. In the **Unblock entity** flyout that opens, read the details about the restricted connector. You should go through the recommendations to ensure you're taking the proper actions in case the connector is compromised.

   When you're finished in the **Unblock entity** flyout, select **Unblock**.

   > [!NOTE]
   > It might take up to 1 hour for all restrictions to be removed from the connector.

## Verify the alert settings for restricted connectors

The default alert policy named **Suspicious connector activity** automatically notifies admins when connectors are blocked from relaying email. For more information about alert policies, see [Alert policies in Microsoft 365](../../compliance/alert-policies.md).

> [!IMPORTANT]
> For alerts to work, audit logging must to be turned on (it's on by default). To verify that audit logging is turned on or to turn it on, see [Turn auditing on or off](../../compliance/audit-log-enable-disable.md).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Alert policy**. Or, to go directly to the **Alert policy** page, use <https://security.microsoft.com/alertpoliciesv2>.

2. On the **Alert policy** page, find the alert named **Suspicious connector activity**. You can sort the alerts by name, or use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the alert.

   Select the **Suspicious connector activity** alert by clicking anywhere in the row other than the check box next to the name.

3. In the **Suspicious connector activity** flyout that opens, verify or configure the following settings:
   - **Status**: Verify the alert is turned on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.
   - Expand the **Set your recipients section** and verify the **Recipients** and **Daily notification limit** values.

     To change the values, select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit recipient settings** in the section or select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit policy** at the top of the flyout.

     - On the **Decide if you want to notify people when this alert is triggered** page of the wizard that opens, verify or change the following settings:
       - Verify **Opt-in for email notifications** is selected.
       - **Email recipients**: The default value is **TenantAdmins** (meaning, **Global Administrator** members). To add more recipients, click in the empty area of the box. A list of recipients appears, and you can start typing a name to filter and select a recipient. Remove an existing recipient from the box by selecting :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to their name.
       - **Daily notification limit**: The default value is **No limit**.

       When you're finished on the **Decide if you want to notify people when this alert is triggered** page, select **Next**.

     - On the **Review your settings** page, select **Submit**, and then select **Done**.

4. Back in the **Suspicious connector activity** flyout, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: at the top of the flyout.

## Use Exchange Online PowerShell to view and remove connectors from the Restricted entities page

To view the list of connectors that are restricted from sending email, run the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

```powershell
Get-BlockedConnector
```

To view details about a specific blocked connector, replace \<ConnectorID\> with the GUID value of the connector, and then run the following command:

```powershell
Get-BlockedConnector -ConnectorId <ConnectorID> | Format-List
```

For detailed syntax and parameter information, see [Get-BlockedConnector](/powershell/module/exchange/get-blockedconnector).

To remove a connector from the Restricted entities list, replace \<ConnectorID\> with the GUID value of the connector, and then run the following command:

```powershell
Remove-BlockedConnector -ConnectorId <ConnectorID>
```

For detailed syntax and parameter information, see [Remove-BlockedConnector](/powershell/module/exchange/remove-blockedconnector).

## More information

- [Respond to a compromised connector](connectors-detect-respond-to-compromise.md)
- [Remove blocked users](removing-user-from-restricted-users-portal-after-spam.md)
