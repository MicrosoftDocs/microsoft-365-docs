---
title: Other investigation paths-Phishing email
description: Other investigation paths-Phishing email.
keywords: incidents, alerts, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---
# Other investigation paths-Phishing email

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Microsoft 365 Defender can help detect malicious attachments delivered via email. Since Office 365 Security and Compliance Center integrates with Microsoft 365 Defender, security analysts can have visibility on threats coming in from Office 365, such as through email attachments.

In this example, the analyst was assigned a multi-stage incident.
 
ADD FIGURE

In the **Alerts** tab of the incident, alerts from Defender for Office 365 and Microsoft Cloud App Security are displayed. The analyst can drill down into the Defender for Office 365 alerts by selecting the email messages alerts. The details of the alert are displayed in the side pane.

ADD FIGURE
 
By scrolling down further, more information is displayed, showing the malicious files and user that was impacted.

ADD FIGURE
  
Selecting **Open alert page** takes you to the specific alert where various information can be viewed in greater detail by selecting the link. The actual email message can be viewed by selecting **View messages in Explorer** toward the bottom of the panel.
 
ADD FIGURE

This takes the analyst to the Threat Management page where the email Subject, Recipient, Sender, and other information are displayed. **ZAP** under Special Actions tells the analyst that the Zero-hour auto purge feature was implemented. ZAP automatically detects and removes malicious and spam messages from mailboxes across the organization. More information on ZAP can be found in Zero-hour auto purge (ZAP) in Exchange Online.

Other actions can be taken on specific messages by selecting **Actions**. 
 
ADD FIGURE

## Next step

See the [identity-based attack](first-incident-path-identity.md) investigation path.

## See also

- [Incidents overview](incidents-overview.md)
- [Analyze incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
