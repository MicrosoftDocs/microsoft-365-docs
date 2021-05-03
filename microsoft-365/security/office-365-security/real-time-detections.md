---
title: Threat Explorer and Real-time detection basics in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: MSFTTracyp
manager: dansimp
audience: ITPro
ms.topic: article
ms.date: 05/03/2021
localization_priority: Normal
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
description: Use Explorer and Real-time detections in the Security &amp; Compliance Center to investigate and respond to threats efficiently.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Threat Explorer and Real-time detection basics

- [Differences between Threat Explorer and Real-time detections](#differences-between-threat-explorer-and-real-time-detections)<br/>
- [Required licenses and permissions](#required-licenses-and-permissions)


> [!NOTE]
> This is part of a three-article series on **threat hunting**, **email security**, and **Real-time detections**. The other two articles are [Threat hunting in Threat Explorer](threat-hunting-in-threat-explorer.md) and [Email security](email-security-in-microsoft-defender.md).

This article explains the difference between threat exploration and real-time detections, and the licenses and permissions that are needed.

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

If your organization has [Microsoft Defender for Office 365](defender-for-office-365.md), and you have the [permissions](#required-licenses-and-permissions), you can use **Threat Explorer** (called **Explorer**) or **Real-time detections** to detect and remediate threats.

In the **Security & Compliance Center**, go to **Threat management**, and then choose **Explorer** _or_ **Real-time detections**.

<br>

****

|With Microsoft Defender for Office 365 Plan 2, you see:|With Microsoft Defender for Office 365 Plan 1, you see:|
|---|---|
|![Threat explorer](../../media/threatmgmt-explorer.png)|![Real-time detections](../../media/threatmgmt-realtimedetections.png)|
|

With these tools, you can:

- See malware detected by Microsoft 365 security features.
- View phishing URL and click verdict data.
- Start an automated investigation and response process from a view in Explorer.
- Investigate malicious email, and more.

For more information, see [Email security in Threat Explorer](email-security-in-microsoft-defender.md).

## Differences between Threat Explorer and Real-time detections

- *Real-time detections* is a report available in Defender for Office 365 Plan 1. *Threat Explorer* is available in Defender for Office 365 Plan 2.
- The Real-time detections report allows you to view detections in real time. Threat Explorer does this as well, but it also provides additional details for a given attack.
- An *All email* view is available in Threat Explorer but not in the Real-time detections report.
- More filtering capabilities and available actions are included in Threat Explorer. For more information, see [Microsoft Defender for Office 365 Service Description: Feature availability across Defender for Office 365 plans](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).

## Required licenses and permissions

You must have [Microsoft Defender for Office 365](defender-for-office-365.md) to use either of Explorer or Real-time detections:

- But Explorer is only included in Defender for Office 365 Plan 2.
- The Real-time detections report is included in Defender for Office 365 Plan 1.

Security Operations teams need to assign licenses for all users who should be protected by Defender for Office 365 and be aware that Explorer and Real-time detections show detection data for licensed users.

To view and use Explorer or Real-time detections, you must have the following:

- For the Security & Compliance Center:

  - Organization Management
  - Security Administrator (this can be assigned in the Azure Active Directory admin center (<https://aad.portal.azure.com>)
  - Security Reader

- For Exchange Online:

  - Organization Management
  - View-Only Organization Management
  - View-Only Recipients
  - Compliance Management

To learn more about roles and permissions, see the following resources:

- [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md)
- [Feature permissions in Exchange Online](/exchange/permissions-exo/feature-permissions)
- [Exchange Online Powershell](/powershell/exchange/exchange-online-powershell)

## More information

- [Find and investigate malicious email that was delivered](investigate-malicious-email-that-was-delivered.md) 
- [View malicious files detected in SharePoint Online, OneDrive, and Microsoft Teams](mdo-for-spo-odb-and-teams.md) 
- [Get an overview of the views in Threat Explorer (and Real-time detections)](threat-explorer-views.md) 
- [Threat protection status report](view-email-security-reports.md#threat-protection-status-report) 
- [Automated investigation and response in Microsoft Threat Protection](automated-investigation-response-office.md) 
- [Investigate emails with the Email Entity Page](mdo-email-entity-page.md) 