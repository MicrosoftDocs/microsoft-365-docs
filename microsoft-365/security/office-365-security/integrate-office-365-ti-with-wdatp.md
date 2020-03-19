---
title: Integrate Office 365 Advanced Threat Protection with Microsoft Defender Advanced Threat Protection
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 01/22/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 414fa693-d7b7-4a1d-a387-ebc3b6a52889
ms.collection: 
- M365-security-compliance
description: Integrate Office 365 Advanced Threat Protection with Microsoft Defender Advanced Threat Protection to see more detailed threat management information.
---

# Integrate Office 365 Advanced Threat Protection with Microsoft Defender Advanced Threat Protection

If you are part of your organization's security team, you can integrate [Office 365 Advanced Threat Protection](office-365-atp.md) and related investigation and response features with [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection). This can help you quickly understand if users' machines are at risk when you are investigating threats in Office 365. For example, once integration is enabled, you will be able to see a list of machines that are used by the recipients of a detected email message, as well as how many recent alerts those machines have in Microsoft Defender Advanced Threat Protection.
  
The following image shows the **Devices** tab that you'll see when have Microsoft Defender ATP integration enabled:
  
![When Microsoft Defender ATP is enabled, you can see a list of machines with alerts.](../../media/fec928ea-8f0c-44d7-80b9-a2e0a8cd4e89.PNG)
  
In this example, you can see that the recipients of the email message have four devices and one has an alert. Clicking the link for a device opens its page in the Microsoft Defender Security Center.
  
## Requirements

- Your organization must have Office 365 ATP Plan 2 (or Office 365 E5) and Microsoft Defender ATP.
    
- You must be a global administrator or have a security administrator role (such as Security Administrator) assigned in the [Security &amp; Compliance Center](https://protection.office.com). (See [Permissions in the Office 365 Security &amp; Compliance Center](permissions-in-the-security-and-compliance-center.md))
    
- You must have access to both [Explorer (or real-time detections)](threat-explorer.md) in the Security & Compliance Center and the Microsoft Defender Security Center.
    
## To integrate Office 365 ATP with Microsoft Defender ATP

Integrating Office 365 ATP with Microsoft Defender ATP is set up by using both the Security & Compliance Center AND the Microsoft Defender Security Center.
  
1. As a global administrator or a security administrator, go to [https://protection.office.com](https://protection.office.com) and sign in with your work or school account for Office 365.
    
2. Choose **Threat management** \> **Explorer**.<br>![Explorer in Threat Management menu](../../media/ThreatMgmt-Explorer-nav.png)<br>
    
3. In the upper right corner of the screen, choose **WDATP Settings**.
    
4. In the Windows Defender ATP connection dialog box, turn on Connect to Windows ATP.<br>![Microsoft Defender ATP connection](../../media/Explorer-WDATPConnection-dialog.png)<br>
    
5. Enable the connection in the Microsoft Defender Security Center.

  
## Related topics

[Office 365 Threat Investigation and Response](office-365-ti.md)
  
[Office 365 Advanced Threat Protection](office-365-atp.md)
  

