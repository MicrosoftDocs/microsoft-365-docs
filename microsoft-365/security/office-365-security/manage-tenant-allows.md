---
title: Manage your allows in the Tenant Allow/Block List
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MET150
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to configure allows in the Tenant Allow/Block List in the Security portal.
ms.technology: mdo
ms.prod: m365-security
---

# Add allows in the Tenant Allow/Block List

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

## Use the Submissions portal 

Allow files, URLs, and senders in the Submissions section of Microsoft 365 Defender. 

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Submissions**.

2. On the **Submissions** page, verify that the **Submitted for analysis** tab is selected, and then click ![Ad icon](../../media/m365-cc-sc-create-icon.png) **Submit to Microsoft for analysis**.

3. Use the **Submit to Microsoft for review** flyout to mark the sender, file, or URL as false positive. 

4. In the **Select a reason for submitting to Microsoft** section, select **Should not have been blocked (false positive)**. 

5. Turn on **Allow messages like this** option. 

6. From the **Remove after** drop-down list, specify how long you want the allow option to work.

7. When you're finished, click the **Submit** button.

> [!div class="mx-imgBorder"]
> ![False positive submission example](../../media/admin-submission-allow-messages.png)

## Related articles

- [Admin submissions](admin-submission.md)
- [Report false positives and false negatives](report-false-positives-and-false-negatives.md)