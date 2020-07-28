---
title: "Virus detection in SharePoint Online"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date:
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- SPO160
- MOE150
- MET150
ms.assetid: e3c6df61-8513-499d-ad8e-8a91770bff63
ms.collection:
- M365-security-compliance
description: Learn about how SharePoint Online detects viruses in files that users upload and prevents users from downloading or syncing the files.
ms.custom: seo-marvel-apr2020
---

# Virus detection in SharePoint Online, OneDrive, and Microsoft Teams

Microsoft 365 can help protect your environment from malware by detecting viruses in files that users upload to SharePoint Online, OneDrive, and Microsoft Teams. Files may be scanned for viruses after they are uploaded. If a file is found to be infected, a property is set so that users can't download or sync the file.

> [!IMPORTANT]
> These antivirus capabilities in SharePoint Online are a way to contain viruses. They aren't intended as a single point of defense against malware for your environment. We encourage all customers to assess and implement antimalware protection at various layers and apply best practices for securing your enterprise infrastructure. For more information about strategies and best practices, see [Security roadmap](security-roadmap.md).

## What happens when an infected file is uploaded to SharePoint Online?

Microsoft 365 uses a common virus detection engine. The engine runs asynchronously within SharePoint Online, and scans some files after they're uploaded. Heuristics are used to determine which files are scanned. When a file is found to contain a virus, it's flagged so that it can't be downloaded again. In April 2018, we removed the 25 MB limit for scanned files.

Here's what happens:

1. A user uploads a file to SharePoint Online.

2. SharePoint Online determines whether the file meets the criteria for a scan.

3. The virus detection engine scans the file.

4. If a virus is found, the virus engine sets a property on the file indicating that it's infected.

## What happens when a user tries to download an infected file by using the browser?

If a file is infected, users can't download the file from SharePoint Online by using the browser.

Here's what happens:

1. A user opens a web browser and tries to download an infected file from SharePoint Online.

2. The user is given a warning that a virus has been detected. The user is given the option to download the file and attempt to clean it using their own antivirus software.

> [!NOTE]
> 
> You can use the *DisallowInfectedFileDownload* parameter on the [Set-SPOTenant](https://docs.microsoft.com/powershell/module/sharepoint-online/Set-SPOTenant) cmdlet in SharePoint Online PowerShell to prevent users from downloading an infected file, even in the anti-virus warning window.
> 
> Also keep in mind, that as soon as you enable the *DisallowInfectedFileDownload* parameter, access to the detected/blocked files is completly blocked for users and administrators.

## What happens when the OneDrive sync client tries to sync an infected file?

Whether users sync files with the new OneDrive sync client (OneDrive.exe) or the previous OneDrive for Business sync client (Groove.exe), if a file contains a virus, the sync client won't download it. The sync client will display a notification that the file can't be synced.

## Extended capabilities with Office 365 ATP

Customers who enabled Office 365 ATP for Sharepoint, OneDrive, and Microsoft Teams [Turn on ATP for SharePoint, OneDrive, and Microsoft Teams](turn-on-atp-for-spo-odb-and-teams.md) are able to use the Security & Compliance Center to manage quarantined files for AV and ATP detections. [ATP Only: Use the Security & Compliance Center to manage quarantined files](manage-quarantined-messages-and-files.md#atp-only-use-the-security--compliance-center-to-manage-quarantined-files).

## More information

See [Protect against threats](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?view=o365-worldwide#requirements) and [Turn on ATP for SharePoint, OneDrive, and Microsoft Teams](https://docs.microsoft.com/microsoft-365/security/office-365-security/turn-on-atp-for-spo-odb-and-teams?view=o365-worldwide) for more information on how to configure SharePoint Online antivirus.


