---
title: Appendices for ring deployment using Group Policy and Windows Server Update Services (WSUS)
description: Microsoft Defender for Endpoint is an enterprise endpoint security platform that helps defend against advanced persistent threats. This article provides supplemental information to the Microsoft Defender Antiviurs Gropu Policy WSUS ring deployment guide.
keywords: deploy Microsoft Defender Antivirus updates, ring deployment Microsoft Defender Antivirus, Microsoft Defender Antivirus Intune Microsoft Defender Antivirus Microsoft Update, Microsoft Defender Antivirus Intune MU, threat intelligence, cybersecurity, cloud security,
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: high
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.custom: intro-overview
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 07/21/2023
---

# Appendices for Microsoft Defender Antivirus ring deployment using Group Policy and Windows Server Update Services (WSUS)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**

- Windows
- Windows Server

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft Defender for Endpoint is an enterprise endpoint security platform designed to help enterprise networks prevent, detect, investigate, and respond to advanced threats.

> [!TIP]
> Microsoft Defender for Endpoint is available in two plans, Defender for Endpoint Plan 1 and Plan 2. A new Microsoft Defender Vulnerability Management add-on is now available for Plan 2.

## Appendix A - Security Intelligence Updates

Microsoft continually updates security intelligence in antimalware products to cover the latest threats and to constantly tweak detection logic. The updates enhance the ability of Microsoft Defender Antivirus and other Microsoft antimalware solutions to accurately identify threats. This security intelligence works directly with cloud-based protection to deliver fast and powerful AI-enhanced, next-generation protection.

### References: 

- [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates)

- [Description of Forefront endpoint security definition updates](https://support.microsoft.com/topic/description-of-forefront-endpoint-security-definition-updates-b0833c24-fab3-390b-820b-3835beeb03b3)

## Appendix B - Engine Updates

Engine updates are the updates for the scan engine, which is used by the “Security Intelligence Updates”. First released on July 15, 2010.

## Appendix C - Platform Updates

Platform Updates, are the .exe’s, dll’s, and .sys’s for the Microsoft Defender Antivirus service.

| Channel: | Version: | Revision: | &nbsp; | Remarks |
|:---|:---|:---|:---|:---|
| **Beta Channel - Prerelease** | 4.18.2304.4 | ‘23 April, minor rev 4 | n/a | This channel is the one you want to test for app compatibility, reability and performance. |
| **Current Channel (Preview)** | 4.18.2303.8 | ‘23 Mar, minor rev 8 | n/a | Same as for _Beta Channel - Prerelease_ |
| **Current Channel (Staged)** | 4.18.2303.7 | ‘23 Mar, minor rev 7 | n/a | Same as for _Beta Channel - Prerelease_  |
| **Current Channel (Broad)** | 4.18.2302.7 <br> see note | ‘23 Feb, minor rev 7 | ’23 Mar | This channel is the one you want to push out to 90%-100% of your production systems. |

> [!NOTE]
> Where **23** == _2023_, **02** == _February_, and **.7** is the _minor revision_.

## See also

[Microsoft Defender Antivirus pilot ring deployment using Group Policy and Windows Server Update Services](microsoft-defender-antivirus-pilot-ring-deployment-group-policy-wsus.md)
