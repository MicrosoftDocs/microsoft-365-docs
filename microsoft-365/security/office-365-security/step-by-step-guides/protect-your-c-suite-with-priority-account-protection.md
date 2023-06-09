---
title: Protect your c-suite with Priority account protection in Microsoft Defender for Office 365 Plan 2
description: The steps to protect your c-suite with priority account protection. Tagging an account as a Priority account will enable the additional protection tuned for the mail flow patterns targeting company executives, along with extra visibility in reports, alerts, and investigations.
search.product:
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
ms.subservice: mdo
search.appverid: met150
ms.date: 1/31/2023
---

# Protect your c-suite with priority account protection

Priority account protection helps IT and security teams ensure a high quality of service and protection for the critical people within your organization. Tagging an account as a priority account will enable the additional protection tuned for the mail flow patterns targeting company executives, along with extra visibility in reports, alerts, and investigations.

## What you'll need

- Microsoft Defender for Office 365 Plan 2 (included as part of E5 plans)
- Sufficient permissions (Security Administrator role)
- 5 minutes to perform the steps below.

## Tag Priority users

1. Identify the users, groups, or domains you would like to tag as priority accounts.
1. Login to the [Microsoft Security Portal](https://security.microsoft.com/) and navigate to Settings on the left navigation bar.
1. Select Email & collaboration on the page that loads and then click User tags
1. On the User tags page, select the Priority account tag and press Edit tag
1. On the flyout that appears, select Add members
1. Search for the users you wish to tag, select one or more users and press Add
1. Review the members you have selected and press Next
1. Press Submit to confirm the changes

To learn what priority account tags are see [Manage and monitor priority accounts - Microsoft 365 admin | Microsoft Docs](../../../admin/setup/priority-accounts.md).

## Next Steps

[Review differentiated protection from priority account protection]

[Review the differentiated protection for users tagged as Priority accounts](../priority-accounts-turn-on-priority-account-protection.md#review-differentiated-protection-from-priority-account-protection).

## PowerShell configuration

If you want to achieve these steps via [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), you can do this using the following commands:

- View a list of priority accounts: `Get-User -IsVIP | select Identity`
- Add user to list of priority accounts: `Set-User -VIP $true -Identity <Identity>`
- Remove user from list of priority accounts: `Set-User -VIP $false -Identity <Identity>`
