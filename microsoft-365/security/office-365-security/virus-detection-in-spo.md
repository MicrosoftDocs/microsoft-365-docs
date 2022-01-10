---
title: Built-in virus protection in SharePoint Online, OneDrive, and Microsoft Teams
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 
audience: Admin
ms.topic: reference

ms.localizationpriority: medium
search.appverid: 
  - SPO160
  - MOE150
  - MET150
ms.assetid: e3c6df61-8513-499d-ad8e-8a91770bff63
ms.collection: 
  - M365-security-compliance
description: Learn about how SharePoint Online detects viruses in files that users upload and prevents users from downloading or syncing the files.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Built-in virus protection in SharePoint Online, OneDrive, and Microsoft Teams

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)

Microsoft 365 uses a common virus detection engine for scanning files that users upload to SharePoint Online, OneDrive, and Microsoft Teams. This protection is included with all subscriptions that include SharePoint Online, OneDrive, and Microsoft Teams.

> [!IMPORTANT]
> The built-in anti-virus capabilities are a way to help contain viruses. They aren't intended as a single point of defense against malware for your environment. We encourage all customers to investigate and implement anti-malware protection at various layers and apply best practices for securing their enterprise infrastructure. For more information about strategies and best practices, see [Security roadmap](security-roadmap.md).

## What happens if an infected file is uploaded to SharePoint Online?

The Microsoft 365 virus detection engine runs asynchronously (independent from file uploads) within SharePoint Online. **All files are not automatically scanned**. Heuristics determine the files to scan. When a file is found to contain a virus, the file is flagged. In April 2018, we removed the 25 MB limit for scanned files.

Here's what happens:

1. A user uploads a file to SharePoint Online.
2. SharePoint Online, as part of its virus scanning processes, later determines if the file meets the criteria for a scan.
3. If the file meets the criteria for a scan, the virus detection engine scans the file.
4. If a virus is found within the scanned file, the virus engine sets a property on the file indicating that it's infected.

## What happens when a user tries to download an infected file by using the browser?

If a file is infected, users can't download the file from SharePoint Online by using a browser.

Here's what happens:

1. A user opens a web browser and tries to download an infected file from SharePoint Online.
2. The user is given a warning that a virus has been detected. By default, the user is given the option to download the file and attempt to clean it using the anti-virus software on their own device.

> [!NOTE]
>
> Admins can use the *DisallowInfectedFileDownload* parameter on the [Set-SPOTenant](/powershell/module/sharepoint-online/Set-SPOTenant) cmdlet in SharePoint Online PowerShell to prevent users from downloading infected files, even in the anti-virus warning window. For instructions, see [Use SharePoint Online PowerShell to prevent users from downloading malicious files](turn-on-mdo-for-spo-odb-and-teams.md#step-2-recommended-use-sharepoint-online-powershell-to-prevent-users-from-downloading-malicious-files).
>
> As soon as you enable the *DisallowInfectedFileDownload* parameter, access to the detected/blocked files is completely blocked for users and admins.

## What happens when the OneDrive sync client tries to sync an infected file?

When a malicious file is uploaded to OneDrive, it will be synced to the local machine before it's marked as malware. After it's marked as malware, the user can't open the synced file anymore from their local machine.

## Extended capabilities with Microsoft Defender for Office 365

Microsoft 365 organizations that have [Microsoft Defender for Office 365](defender-for-office-365.md) included in their subscription or purchased as an add-on can enable Safe Attachments for SharePoint, OneDrive, and Microsoft Teams for enhanced reporting and protection. For more information, see [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](mdo-for-spo-odb-and-teams.md).

## Related Articles

[Malware and ransomware protection in Microsoft 365](/compliance/assurance/assurance-malware-and-ransomware-protection)

For more information about anti-virus in SharePoint Online, OneDrive, and Microsoft Teams, see [Protect against threats](protect-against-threats.md) and [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](turn-on-mdo-for-spo-odb-and-teams.md).
