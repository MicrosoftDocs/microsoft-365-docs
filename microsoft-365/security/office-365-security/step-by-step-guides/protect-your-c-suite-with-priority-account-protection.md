---
title: Protect your c-suite with Priority account protection in Microsoft Defender for Office 365 Plan 2
description: The steps to protect your c-suite with priority account protection. Tagging an account as a Priority account enables the extra protection tuned for the mail flow patterns targeting company executives, along with extra visibility in reports, alerts, and investigations.
ms.service: defender-office-365
f1.keywords: 
 - NOCSH
author: chrisda
ms.author: chrisda
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
search.appverid: met150
ms.date: 01/31/2023
---

# Protect your c-suite with priority account protection

Priority account protection helps IT and security teams ensure a high quality of service and protection for the critical people within your organization. Tagging an account as a priority account enables the extra protection tuned for the mail flow patterns targeting company executives, along with extra visibility in reports, alerts, and investigations.

## What you need

- Microsoft Defender for Office 365 Plan 2 (included as part of E5 plans)
- Sufficient permissions (Security Administrator role)
- 5 minutes to perform the following procedures.

## Tag Priority users

1. Identify the users, groups, or domains you would like to tag as priority accounts.
1. Sign in to the [Microsoft Defender portal](https://security.microsoft.com/) and navigate to Settings on the left navigation bar.
1. Select **Email & collaboration** on the page that loads and then select **User tags**.
1. On the **User tags** page, select the **Priority account** tag, and then select **Edit**.
1. On the flyout that appears, select **Add members**.
1. Search for the users you wish to tag, select one or more users, and then select **Add**.
1. Review the members you selected, and then select **Next**.
1. Select **Submit** to confirm the changes.

## Confirm priority account protection is enabled for tagged users

1. Sign to the [Microsoft Defender portal](https://security.microsoft.com/).
1. In the navigation bar, select **Settings**.
1. Select **Priority account protection**.
1. Make sure protection is set to **On**.

To learn what priority account tags are see [Manage and monitor priority accounts - Microsoft 365 admin | Microsoft Docs](../../../admin/setup/priority-accounts.md).

## Next Steps

[Review differentiated protection from priority account protection].

[Review the differentiated protection for users tagged as Priority accounts](../priority-accounts-turn-on-priority-account-protection.md#review-differentiated-protection-from-priority-account-protection).

## PowerShell configuration

If you want to achieve these steps via [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), you can do this using the following commands:

- View a list of priority accounts: `Get-User -IsVIP | select Identity`
- Add user to list of priority accounts: `Set-User -VIP $true -Identity <Identity>`
- Remove user from list of priority accounts: `Set-User -VIP $false -Identity <Identity>`
