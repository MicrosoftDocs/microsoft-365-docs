---
title: Integrate Office 365 ATP with Microsoft Defender ATP
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 07/08/2020
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
ms.custom: seo-marvel-apr2020
---

# Integrate Office 365 Advanced Threat Protection with Microsoft Defender Advanced Threat Protection

[Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp?view=o365-worldwide) (Office 365 ATP) can be configured to work with [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection) (Microsoft Defender ATP).

Integrating Office 365 ATP with Microsoft Defender ATP can help your security operations team monitor and take action quickly if users' devices are at risk. For example, once integration is enabled, your security operations team will be able to see the devices that are potentially affected by a detected email message, as well as how many recent alerts those devices have in Microsoft Defender ATP. 

The following image depicts what the **Devices** tab looks like have Microsoft Defender ATP integration enabled:
  
![When Microsoft Defender ATP is enabled, you can see a list of devices with alerts.](../../media/fec928ea-8f0c-44d7-80b9-a2e0a8cd4e89.PNG)
  
In this example, you can see that the recipients of the detected email message have four devices and one has an alert. Clicking the link for a device opens its page in the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)).
  
## Requirements

- Your organization must have Office 365 ATP Plan 2 (or Office 365 E5) and Microsoft Defender ATP.
    
- You must be a global administrator or have a security administrator role (such as Security Administrator) assigned in the [Security &amp; Compliance Center](https://protection.office.com). (See [Permissions in the Security &amp; Compliance Center](permissions-in-the-security-and-compliance-center.md))
    
- You must have access to both [Explorer (or real-time detections)](threat-explorer.md) in the Security & Compliance Center and the Microsoft Defender Security Center.
    
## To integrate Office 365 ATP with Microsoft Defender ATP

Integrating Office 365 ATP with Microsoft Defender ATP is set up by using both the Security & Compliance Center AND the Microsoft Defender Security Center.
  
1. As a global administrator or a security administrator, go to [https://protection.office.com](https://protection.office.com) and sign in.
    
2. Choose **Threat management** \> **Explorer**.<br>![Explorer in Threat Management menu](../../media/ThreatMgmt-Explorer-nav.png)<br>
    
3. In the upper right corner of the screen, choose **WDATP Settings**.
    
4. In the Microsoft Defender ATP connection dialog box, turn on **Connect to Windows ATP**.<br>![Microsoft Defender ATP connection](../../media/Explorer-WDATPConnection-dialog.png)<br>
    
5. Enable the connection in the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)).

## Related topics

[Threat investigation and response capabilities in Office 365](office-365-ti.md)
  
[Office 365 Advanced Threat Protection](office-365-atp.md)
  

