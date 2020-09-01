---
title: "ATP for SharePoint, OneDrive, and Microsoft Teams"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: Admin
ms.date: 03/19/2019
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 26261670-db33-4c53-b125-af0662c34607
ms.collection:
- M365-security-compliance
- SPO_Content
ms.custom:
- seo-marvel-apr2020
- seo-marvel-jun2020
description: "Learn about Office 365 Advanced Threat Protection for files in SharePoint Online, OneDrive for Business, and Microsoft Teams."
---

# ATP for SharePoint, OneDrive, and Microsoft Teams

People regularly share files and collaborate using SharePoint, OneDrive, and Microsoft Teams. If your organization has [Office 365 Advanced Threat Protection](office-365-atp.md) (ATP), you can use ATP for SharePoint, OneDrive, and Microsoft Teams to help your users collaborate in a safer manner. ATP for SharePoint, OneDrive, and Microsoft Teams helps detect and block files that are identified as malicious in team sites and document libraries.

## How ATP for SharePoint, OneDrive, and Microsoft Teams operates

When ATP for SharePoint, OneDrive, and Microsoft Teams identifies a file as malicious, ATP directly integrates with the file stores to lock that file. The following image shows an example of a malicious file detected in a library.

![Files in OneDrive for Business with one detected as malicious](../../media/2bba71cc-7ad1-4799-8b9d-d56f923db3a7.png)

Although the blocked file is still listed in the document library and in web, mobile, or desktop applications, people can't open, copy, move, or share the file. But they can delete a blocked file.

Here's an example of what that looks like on a mobile device:

![Deleting a blocked file from OneDrive for Business from the OneDrive mobile app](../../media/cb1c1705-fd0a-45b8-9a26-c22503011d54.png)

By default, people can download a blocked file. Here's what downloading a blocked file looks like on a mobile device:

![Downloading a blocked file in OneDrive for Business](../../media/be288a82-bdd8-4371-93d8-1783db3b61bc.png)

SharePoint Online admins can prevent people from downloading malicious files. For instructions, see [Use SharePoint Online PowerShell to block the ability to download malicious files](turn-on-atp-for-spo-odb-and-teams.md#step-2-recommended-use-sharepoint-online-powershell-to-block-the-ability-to-download-malicious-files).

To learn more about the user experience when a file has been detected as malicious, see [What to do when a malicious file is found in SharePoint Online, OneDrive, or Microsoft Teams](https://support.microsoft.com/office/01e902ad-a903-4e0f-b093-1e1ac0c37ad2).

## Keep these points in mind

- ATP for SharePoint, OneDrive, and Microsoft Teams will not scan every single file in SharePoint Online, OneDrive for Business, or Microsoft Teams. This is by design. Files are scanned asynchronously, through a process that uses sharing and guest activity events along with smart heuristics and threat signals to identify malicious files.

- Make sure your SharePoint sites are configured to use the [Modern experience](https://docs.microsoft.com/sharepoint/guide-to-sharepoint-modern-experience). ATP protection applies whether the Modern experience or the Classic view is used; however, visual indicators that a file is blocked are available only in the Modern experience.

- Files that are identified as malicious by ATP for SharePoint, OneDrive, and Microsoft Teams will show up in [reports for Office 365 Advanced Threat Protection](view-reports-for-atp.md) and in [Explorer (and real-time detections)](threat-explorer.md).

- ATP for SharePoint, OneDrive, and Microsoft Teams is part of your organization's overall threat protection strategy, which includes anti-spam and anti-malware protection, as well as Safe Links and Safe Attachments. To learn more, see [Protect against threats in Office 365](protect-against-threats.md).

## Quarantined files

As of May 2018, when a file is identified as malicious by ATP for SharePoint, OneDrive, and Microsoft Teams, the file is also included in a list of quarantined items. For more information, see [Use the Security & Compliance Center to manage quarantined files](manage-quarantined-messages-and-files.md#atp-only-use-the-security--compliance-center-to-manage-quarantined-files).

## Next steps

- [Turn on Office 365 ATP for SharePoint, OneDrive, and Microsoft Teams](turn-on-atp-for-spo-odb-and-teams.md)

- [View information about malicious files detected in SharePoint, OneDrive, or Microsoft Teams](malicious-files-detected-in-spo-odb-or-teams.md)
