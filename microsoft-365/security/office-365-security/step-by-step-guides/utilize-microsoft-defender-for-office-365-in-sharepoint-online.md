---
title: Use Microsoft Defender for Office 365 in SharePoint Online
description: The steps to ensure that you can use, and get the value from, Microsoft Defender for Office 365 in SharePoint Online and OneDrive for Business
search.product:
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTBen
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

# Use Microsoft Defender for Office 365 with SharePoint Online

Microsoft SharePoint Online is a widely used user collaboration and file storage tool. The following steps help reduce the attack surface area in SharePoint Online and that help keep this collaboration tool in your organization secure. However, it's important to note there is a balance to strike between security and productivity, and not all these steps may be relevant for your organizational risk profile. Take a look, test, and maintain that balance.

## What you'll need

- Microsoft Defender for Office 365 Plan 1
- Sufficient permissions (SharePoint administrator/security administrator).
- Microsoft SharePoint Online (part of Microsoft 365).
- Five to ten minutes to perform these steps.

## Turn on Microsoft Defender for Office 365 in SharePoint Online

If licensed for Microsoft Defender for Office 365 **(free 90-day evaluation available at aka.ms/trymdo)** you can ensure seamless protection from zero day malware and time of click protection within Microsoft Teams.

To learn more, read [Step 1: Use the Microsoft 365 Defender portal to turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](/microsoft-365/security/office-365-security/safe-attachments-for-spo-odfb-teams-configure#step-1-use-the-microsoft-365-defender-portal-to-turn-on-safe-attachments-for-sharepoint-onedrive-and-microsoft-teams).

1. Sign in to the [security center's safe attachments configuration page](https://security.microsoft.com/safeattachmentv2).
1. Select **Global settings**.
1. Ensure that **Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams** is set to **on**.
1. Select **Save**.

## Stop infected file downloads from SharePoint Online

By default, users can't open, move, copy, or share malicious files that are detected by Safe Attachments for SharePoint, OneDrive, and Microsoft Teams. However, the *Download* option is still available and should be *disabled*.

To learn more, read [Step 2: (*Recommended*) Use SharePoint Online PowerShell to prevent users from downloading malicious files](/microsoft-365/security/office-365-security/safe-attachments-for-spo-odfb-teams-configure#step-2-recommended-use-sharepoint-online-powershell-to-prevent-users-from-downloading-malicious-files).

1. Open and connect to [SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online).
1. Run the following command: **Set-SPOTenant -DisallowInfectedFileDownload $true**.

### Further reading

[Policy recommendations for securing SharePoint sites and files](/microsoft-365/security/office-365-security/sharepoint-file-access-policies)
