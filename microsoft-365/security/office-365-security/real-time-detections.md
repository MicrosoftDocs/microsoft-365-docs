---
title: Threat Explorer and Real-time detections basics in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: MSFTTracyp
manager: dansimp
audience: ITPro
ms.topic: article
ms.date: 05/05/2021
localization_priority: Normal
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
description: Use Explorer or Real-time detections to investigate and respond to threats efficiently.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Explorer and Real-time detections basics

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In this article:

- [Differences between Explorer and Real-time detections](#differences-between-explorer-and-real-time-detections)
- [Required licenses and permissions](#required-licenses-and-permissions)

> [!NOTE]
> This is part of a **3-article series** on **Explorer (also known as Threat Explorer)**, **email security**, and **Explorer and Real-time detections basics** (such as differences between the tools, and permissions needed to operate them). The other two articles in this series are [Threat hunting in Explorer](threat-hunting-in-threat-explorer.md) and [Email security with Explorer](email-security-in-microsoft-defender.md).

This article explains the difference between Explorer and real-time detections reporting, and the licenses and permissions that are required.

If your organization has [Microsoft Defender for Office 365](defender-for-office-365.md), and you have the [permissions](#required-licenses-and-permissions), you can use **Explorer** (also known as **Threat Explorer**) or **Real-time detections** to detect and remediate threats.

In the Microsoft 365 Defender portal (<https://security.microsoft.com>), go to **Email & collaboration**, and then choose **Explorer** _or_ **Real-time detections**.

With these tools, you can:

- See malware detected by Microsoft 365 security features.
- View phishing URL and click verdict data.
- Start an automated investigation and response process from a view in Explorer.
- Investigate malicious email, and more.

For more information, see [Email security with Explorer](email-security-in-microsoft-defender.md).

## Differences between Explorer and Real-time detections

- *Real-time detections* is a reporting tool available in Defender for Office 365 Plan 1. *Threat Explorer* is a threat hunting and remediation tool available in Defender for Office 365 Plan 2.
- The Real-time detections report allows you to view detections in real time. Threat Explorer does this as well, but it provides additional details for a given attack, such as highlighting attack campaigns, and gives security operations teams the ability to remediate threats (including triggering an [Automated Investigation and Response investigation](automated-investigation-response-office.md)).
- An *All email* view is available in Threat Explorer, but not included in the Real-time detections report.
- Rich filtering capabilities and remediation actions are included in Threat Explorer. For more information, see [Microsoft Defender for Office 365 Service Description: Feature availability across Defender for Office 365 plans](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).

## Required licenses and permissions

You must have [Microsoft Defender for Office 365](defender-for-office-365.md) to use either of Explorer or Real-time detections:

- Explorer is only included in Defender for Office 365 Plan 2.
- The Real-time detections report is included in Defender for Office 365 Plan 1.

Security Operations teams need to assign licenses for all users who should be protected by Defender for Office 365 and be aware that Explorer and Real-time detections show detection data for licensed users.

To view and use Explorer *or* Real-time detections, you need the following permissions:

- In Defender for Office 365:
  - Organization Management
  - Security Administrator (this can be assigned in the Azure Active Directory admin center (<https://aad.portal.azure.com>)
  - Security Reader
- In Exchange Online:
  - Organization Management
  - View-Only Organization Management
  - View-Only Recipients
  - Compliance Management

To learn more about roles and permissions, see the following articles:

- [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md)
- [Permissions in Exchange Online](/e/exchange/permissions-exo/permissions-exo)

## More information

- [Threat Explorer collect email details on the email entity page](mdo-email-entity-page.md)
- [Find and investigate malicious email that was delivered](investigate-malicious-email-that-was-delivered.md)
- [View malicious files detected in SharePoint Online, OneDrive, and Microsoft Teams](mdo-for-spo-odb-and-teams.md)
- [Threat protection status report](view-email-security-reports.md#threat-protection-status-report)
- [Automated investigation and response in Microsoft Threat Protection](automated-investigation-response-office.md)
