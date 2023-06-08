---
title: "Learn about the Microsoft Purview extension for Firefox"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 09/09/2019
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- tier2
- purview-compliance
- m365solution-mip
- m365initiative-compliance
search.appverid: 
- MET150
description: "The Microsoft Purview extension for Firefox extends monitoring and control of file activities and protective actions to the Firefox browser"
---

# Learn about the Microsoft Purview extension for Firefox

[Endpoint data loss prevention (endpoint DLP)](endpoint-dlp-learn-about.md) extends the activity monitoring and protection capabilities of [Microsoft Purview data loss prevention (DLP)](dlp-learn-about-dlp.md) to sensitive items that are on Windows 10 devices. Once devices are onboarded into the Microsoft Purview solutions, the information about what users are doing with sensitive items is made visible in [activity explorer](data-classification-activity-explorer.md) and you can enforce protective actions on those items via [DLP policies](dlp-learn-about-dlp.md).

Once the Firefox extension is installed on a Windows 10 device, organizations can monitor when a user attempts to access or upload a sensitive item to a cloud service using Mozilla Firefox and enforce protective actions via DLP.  

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Activities you can monitor and take action on

The extension enables you to audit and manage the following types of activities users take on sensitive items on devices running Mozilla Firefox in Windows 10.

activity |description  | supported policy actions|
|---------|---------|---------|
|file copied to cloud  | Detects when a user attempts to upload a sensitive item to a restricted service domain through the Firefox browser |audit, block with override, block|
|file printed  |Detects when a user attempts to print a sensitive item that is open in the Firefox browser to a local or network printer |audit, block with override, block|
|file copied to clipboard |Detects when a user attempts to copy information from a sensitive item that is being viewed in the Firefox browser and then paste it into another app, process, or item. |audit, block with override, block|
|file copied to removable storage    | Detects when a user attempts to copy a sensitive item or information from a sensitive item that is open in the Firefox browser to removable media or USB device |audit, block with override, block|
|file copied to network share  |Detects when a user attempts to copy a sensitive item or information from a sensitive item that is open in the Firefox browser  to a network share or mapped network drive.|audit, block with override, block |

## Deployment process
1. [Get started with endpoint data loss prevention](endpoint-dlp-getting-started.md)
2. [Onboarding tools and methods for Windows 10 devices](device-onboarding-overview.md)
3. [Install the extension for Firefox extension on your Windows 10 devices](dlp-firefox-extension-get-started.md)
4. [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) that restrict upload to cloud service, or access by unallowed browsers actions and apply them to your Windows 10 devices

## Next steps

See [Get started with the Microsoft Purview extension for Firefox](dlp-firefox-extension-get-started.md) for complete deployment procedures and scenarios.

## See also

- [Get started with Microsoft Purview extension for Firefox](dlp-firefox-extension-get-started.md)
- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Getting started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)
- [Using Endpoint data loss prevention](endpoint-dlp-using.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](/windows/security/threat-protection/)
- [Insider risk management](insider-risk-management.md)
