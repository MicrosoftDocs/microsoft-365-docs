---
title: Remove blocked connectors from the Restricted entities portal in Microsoft 365
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
description: Learn how to remove blocked connectors in Microsoft 365 Defender.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 12/01/2022
---

# Remove blocked connectors from the Restricted entities portal

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**

- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

If an inbound connector is detected as potentially compromised, it is restricted from sending any relaying email. The connector is then added to the **Restricted entities** page in the Microsoft 365 Defender portal. When the connector is used to send email, the message is returned in a non-delivery report (also known as an NDR or bounced message) with the error code 550;5.7.711 and the following text:

> Your message couldn't be delivered. The most common reason for this is that your organization's email connector is suspected of sending spam or phish and it's no
> longer allowed to send email. Contact your email admin for assistance.
> Remote Server returned '550;5.7.711 Access denied, bad inbound connector. AS(2204).'

Admins can remove connectors from the Restricted entities page in Microsoft 365 Defender or in Exchange Online PowerShell.

## Learn more on restricted entities

A restricted entity is an entity that has been blocked from sending email because either it has been potentially compromised, or it has exceeded a sending limit.

There are two types of restricted entities:

- **Restricted users**: For more information about why a user can be restricted and how to handle restricted users, see [Remove blocked users from the Restricted entities portal](removing-user-from-restricted-users-portal-after-spam.md).

- **Restricted connectors**: Learn about why a connector can be restricted and how to handle restricted connectors (this article).

## What do you need to know before you begin?

- Open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Restricted entities** page, use <https://security.microsoft.com/restrictedentities>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Remove connectors from the Restricted entities portal_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Read-only access to the Restricted entities portal_: Membership in the **Global Reader**, **Security Reader**, or **View-Only Organization Management** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- Before you remove the connector from the Restricted entities portal, be sure to follow the required steps to regain control of the connector. For more information, see [Respond to a compromised connector](connectors-detect-respond-to-compromise.md).

## Use the Microsoft 365 Defender portal to remove a connector from the Restricted entities list

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Restricted entities**. To go directly to the **Restricted entities** page, use <https://security.microsoft.com/restrictedentities>.

2. On the **Restricted entities** page, find and select the connector that you want to unblock by clicking on the connector.

3. Click the **Unblock** action that appears.

4. In the **Unblock entity** flyout that appears, read the details about the restricted connector. You should go through the recommendations to ensure you're taking the proper actions in case the connector is compromised.

5. When you're finished, click **Unblock**.

   > [!NOTE]
   > It might take up to 1 hour for all restrictions to be removed from the connector.

## Verify the alert settings for restricted connectors

The default alert policy named **Suspicious connector activity** will automatically notify admins when connectors are blocked from relaying email. For more information about alert policies, see [Alert policies in Microsoft 365](../../compliance/alert-policies.md).

> [!IMPORTANT]
> For alerts to work, audit log search must to be turned on. For more information, see [Turn the audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Alert policy**.

2. On the **Alert policy** page, find and select the alert named **Suspicious connector activity**. You can sort the policies by name, or use the **Search box** to find the policy.

3. In the **Suspicious connector activity** flyout that appears, verify or configure the following settings:
   - **Status**: Verify the alert is turned on ![Toggle on.](../../media/scc-toggle-on.png).
   - **Email recipients**: Click **Edit** and verify or configure the following settings in the **Edit recipients** flyout that appears:
     - **Send email notifications**: Verify this is selected (**On**).
     - **Email recipients**: The default value is **TenantAdmins** (meaning, **Global admin** members). To add more recipients, click on a blank area of the box. A list of recipients will appear, and you can start typing a name to filter and select a recipient. You can remove an existing recipient from the box by clicking ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to their name.
     - **Daily notification limit**: The limit is no more than 3 notifications per connector per day.

     When you're finished, click **Save**.

4. Back on the **Suspicious connector activity** flyout, click **Close**.

## Use Exchange Online PowerShell to view and remove connectors from the Restricted entities list

To view the list of connectors that are restricted from sending email, run the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

```powershell
Get-BlockedConnector
```

To view details about a specific blocked connector, replace \<ConnectorID\> with the GUID value of the connector, and then run the following command:

```powershell
Get-BlockedConnector -ConnectorId <ConnectorID> | Format-List
```

To remove a connector from the Restricted entities list, replace \<ConnectorID\> with the GUID value, and then run the following command:

```powershell
Remove-BlockedConnector -ConnectorId <ConnectorID>
```

## More information

- [Respond to a compromised connector](connectors-detect-respond-to-compromise.md)
- [Remove blocked users](removing-user-from-restricted-users-portal-after-spam.md)
