---
title: "Step 5. Protect information"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: dansimp
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection:
- M365-security-compliance
- Strat_O365_Enterprise
- ransomware
- m365solution-ransomware
ms.custom: seo-marvel-jun2020
keywords: 
description: Step through protecting your Microsoft 365 resources from ransomware attacks.
---

# Step 5. Protect information


General guidelines:

- Migrate your organization to the cloud:

  Move user data to cloud solutions like OneDrive/SharePoint to take advantage of versioning and recycle bin capabilities.

- Classify your data and know where it is.

- Educate users on how to recover their files by themselves to reduce delays and cost of recovery.

- Designate Protected Folders.


From TA report:



## Locate your ransomable information

- Sensitive
- Proprietary or intellectual property
- Regulated
- IT recovery plans

## Protect your ransomable information

- Tighten permissions

  - Perform review of broad permissions and update

  - Audit and monitor for new broad permissions

- Use Teams/SharePoint sites with security isolation

- User MIP, sensitive information types, and sensitivity labels (permissions and encryption)

- Use Protected Folders/controlled folder access for malicious apps

- Implement [controlled folder access](https://support.microsoft.com/en-us/topic/ransomware-protection-in-windows-security-445039d6-537a-488a-ad53-48906f346363) to help prevent files from being altered or encrypted by ransomware. See [Set controlled folder access to Enabled or Audit mode](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/enable-controlled-folders?view=o365-worldwide).

- Back up important files regularly. Use the 3-2-1 rule. Keep three backups of your data, on two different storage types, and at least one backup offsite.

- Use [OneDrive cloud storage](https://www.microsoft.com/microsoft-365/onedrive/onedrive-for-business) to protect and back up your files.



## Impact on users and change management

TBD

## Resulting configuration

Here is the ransomware protection for your tenant after this final step.

![Ransomware protection for your Microsoft 365 tenant after Step 5](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-architecture-step5.png)

