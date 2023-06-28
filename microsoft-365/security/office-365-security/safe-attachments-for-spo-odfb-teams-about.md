---
title: Safe Attachments for SharePoint, OneDrive, and Microsoft Teams
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.assetid: 26261670-db33-4c53-b125-af0662c34607
ms.collection: 
  - m365-security
  - SPO_Content
  - tier2
ms.custom: 
  - seo-marvel-apr2020
  - seo-marvel-jun2020
description: Learn about Microsoft Defender for Office 365 for files in SharePoint Online, OneDrive for Business, and Microsoft Teams.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/19/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Safe Attachments for SharePoint, OneDrive, and Microsoft Teams

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In organizations with Microsoft Defender for Office 365, Safe Attachments for SharePoint, OneDrive, and Microsoft Teams provides an additional layer of protection against malware. After files are asynchronously scanned by the [common virus detection engine in Microsoft 365](anti-malware-protection-for-spo-odfb-teams-about.md), Safe Attachments opens files in a virtual environment to see what happens (a process known as _detonation_). As part of detonation, any password protected files are checked against a list of known passwords or patterns that are typically used by malicious actors. Safe Attachments for SharePoint, OneDrive, and Microsoft Teams also helps detect and block existing files that are identified as malicious in team sites and document libraries.

Safe Attachments for SharePoint, OneDrive, and Microsoft Teams is enabled by default. To turn it on or off, see [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-configure.md).

## How Safe Attachments for SharePoint, OneDrive, and Microsoft Teams works

When Safe Attachments for SharePoint, OneDrive, and Microsoft Teams is enabled and identifies a file as malicious, the file is locked using direct integration with the file stores. The following image shows an example of a malicious file detected in a library.

:::image type="content" source="../../media/2bba71cc-7ad1-4799-8b9d-d56f923db3a7.png" alt-text="The files in OneDrive for Business with one detected as malicious" lightbox="../../media/2bba71cc-7ad1-4799-8b9d-d56f923db3a7.png":::

Although the blocked file is still listed in the document library and in web, mobile, or desktop applications, people can't open, copy, move, or share the file. But, they can delete the blocked file.

Here's an example of what a blocked file looks like on a mobile device:

:::image type="content" source="../../media/cb1c1705-fd0a-45b8-9a26-c22503011d54.png" alt-text="The option to delete a blocked file from OneDrive for Business from the OneDrive mobile app" lightbox="../../media/cb1c1705-fd0a-45b8-9a26-c22503011d54.png":::

By default, people can download a blocked file. Here's what downloading a blocked file looks like on a mobile device:

:::image type="content" source="../../media/be288a82-bdd8-4371-93d8-1783db3b61bc.png" alt-text="The option to download a blocked file in OneDrive for Business" lightbox="../../media/be288a82-bdd8-4371-93d8-1783db3b61bc.png":::

SharePoint Online admins can prevent people from downloading malicious files. For instructions, see [Use SharePoint Online PowerShell to prevent users from downloading malicious files](safe-attachments-for-spo-odfb-teams-configure.md#step-2-recommended-use-sharepoint-online-powershell-to-prevent-users-from-downloading-malicious-files).

To learn more about the user experience when a file has been detected as malicious, see [What to do when a malicious file is found in SharePoint Online, OneDrive, or Microsoft Teams](https://support.microsoft.com/office/01e902ad-a903-4e0f-b093-1e1ac0c37ad2).

## View information about malicious files detected by Safe Attachments for SharePoint, OneDrive, and Microsoft Teams

Files that are identified as malicious by Safe Attachments for SharePoint, OneDrive, and Microsoft Teams appear in [reports for Microsoft Defender for Office 365](reports-defender-for-office-365.md) and in [Explorer (and real-time detections)](threat-explorer-about.md).

When a file is identified as malicious by Safe Attachments for SharePoint, OneDrive, and Microsoft Teams, the file is also available in quarantine, but only to admins. For more information, see [Manage quarantined files in Defender for Office 365](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-quarantined-files-in-defender-for-office-365).

## Keep these points in mind

- Defender for Office 365 doesn't scan every single file in SharePoint Online, OneDrive for Business, or Microsoft Teams. This behavior is by design. Files are scanned asynchronously. The process uses sharing and guest activity events along with smart heuristics and threat signals to identify malicious files.

- Make sure your SharePoint sites are configured to use the [Modern experience](/sharepoint/guide-to-sharepoint-modern-experience). Visual indicators that a file is blocked are available only in the Modern experience.

- Safe Attachments for SharePoint, OneDrive, and Microsoft Teams is part of your organization's overall threat protection strategy, which includes anti-spam and anti-malware protection in Exchange Online Protection (EOP), as well as Safe Links and Safe Attachments in Microsoft Defender for Office 365. To learn more, see [Protect against threats in Office 365](protect-against-threats.md).
