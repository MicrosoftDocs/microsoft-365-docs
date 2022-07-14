---
title: Utilize Microsoft Defender for Office 365 in SharePoint Online
description: The steps to ensure you are getting value from Microsoft Defender for Office 365 within SharePoint Online and OneDrive for Business
search.product: 
search.appverid: 
ms.prod: m365-security
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
ms.collection: m365-guidance-templates
ms.topic: how-to
ms.technology: mdo
---

# Utilize Microsoft Defender for Office 365 in SharePoint Online

Microsoft SharePoint Online is a widely used collaboration & file storage tool. Below are a set of steps you can perform to reduce the attack surface area in SharePoint Online and help keep your organization secure. – it’s important to note there is a balance to strike between security and productivity, and not all these steps may be relevant for your organizational risk profile.

## What you'll need

- Microsoft Defender for Office 365 Plan 1
- Sufficient permissions (SharePoint administrator / security administrator)
- Microsoft SharePoint Online (part of M365)
- 5-10 minutes to perform the steps below.

## Turn on Microsoft Defender for Office 365 in SharePoint
If licensed for Microsoft Defender for Office 365 **(free 90 day evaluation available at aka.ms/trymdo)** you can ensure seamless protection from zero day malware and time of click protection within Microsoft Teams.

Learn more at the [Safe Attachments Detailed Documentation](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/turn-on-mdo-for-spo-odb-and-teams#step-1-use-the-microsoft-365-defender-portal-to-turn-on-safe-attachments-for-sharepoint-onedrive-and-microsoft-teams)

1.	**Login** to the security center’s safe attachments configuration page. https://security.microsoft.com/safeattachmentv2
1.	Press **Global settings**.
1.	Ensure **Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams** is set to **on**.
1.	Navigate to the security center’s Safe links configuration page. https://security.microsoft.com/safelinksv2 
1.	Press **Save**.

## Disallow infected file downloads in SharePoint

By default, users can't open, move, copy, or share* malicious files that are detected by Safe Attachments for SharePoint, OneDrive, and Microsoft Teams. Download is still available and should be disabled. 

Learn more at the [Detailed Documentation](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/turn-on-mdo-for-spo-odb-and-teams#step-2-recommended-use-sharepoint-online-powershell-to-prevent-users-from-downloading-malicious-files)

1.	Open & Connect to **SharePoint Online PowerShell** https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-online/connect-sharepoint-online
1.	Run the following command: **Set-SPOTenant -DisallowInfectedFileDownload $true**


### Further reading
Implement the recommended Zero Trust identity and device access policies to protect SharePoint and OneDrive for Business. [Recommended secure document policies](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/sharepoint-file-access-policies)
