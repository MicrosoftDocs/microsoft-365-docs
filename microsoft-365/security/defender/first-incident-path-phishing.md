---
title: Example of a phishing email attack
description: Step through an example analysis of a phishing attack.
keywords: incidents, alerts, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - m365solution-firstincident
  - highpri
  - tier1
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 04/20/2021
---

# Example of a phishing email attack

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Microsoft 365 Defender can help detect malicious attachments delivered via email and security analysts can have visibility on threats coming in from Office 365, such as through email attachments.

For example, an analyst was assigned a multi-stage incident.
 
:::image type="content" source="../../media/first-incident-path-phishing/first-incident-phishing-incident.png" alt-text="A multi-stage incident" lightbox="../../media/first-incident-path-phishing/first-incident-phishing-incident.png":::

In the **Alerts** tab of the incident, alerts from Defender for Office 365 and Microsoft Defender for Cloud Apps are displayed. The analyst can drill down into the Defender for Office 365 alerts by selecting the email messages alerts. The details of the alert are displayed on the side pane.

:::image type="content" source="../../media/first-incident-path-phishing/first-incident-phishing-alerts.png" alt-text="An email alert" lightbox="../../media/first-incident-path-phishing/first-incident-phishing-alerts.png":::
 
By scrolling down further, more information is displayed, showing the malicious files and user that was impacted.

:::image type="content" source="../../media/first-incident-path-phishing/first-incident-phishing-impact.png" alt-text="User and file impact of an email alert" lightbox="../../media/first-incident-path-phishing/first-incident-phishing-impact.png":::
  
Selecting **Open alert page** takes you to the specific alert where various information can be viewed in greater detail by selecting the link. The actual email message can be viewed by selecting **View messages in Explorer** toward the bottom of the panel.
 
:::image type="content" source="../../media/first-incident-path-phishing/first-incident-phishing-event-explorer.png" alt-text="The details of an alert" lightbox="../../media/first-incident-path-phishing/first-incident-phishing-event-explorer.png"::: 

This takes the analyst to the Threat Management page where the email Subject, Recipient, Sender, and other information are displayed. **ZAP** under **Special Actions** tells the analyst that the Zero-hour auto purge feature was implemented. ZAP automatically detects and removes malicious and spam messages from mailboxes across the organization. For more information, see [Zero-hour auto purge (ZAP) in Exchange Online](../office-365-security/zero-hour-auto-purge.md).

Other actions can be taken on specific messages by selecting **Actions**. 
 
:::image type="content" source="../../media/first-incident-path-phishing/first-incident-phishing-actions.png" alt-text="The other actions that can be taken on email messages" lightbox="../../media/first-incident-path-phishing/first-incident-phishing-actions.png"::: 

## Next step

See the [identity-based attack](first-incident-path-identity.md) investigation path.

## See also

- [Incidents overview](incidents-overview.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
