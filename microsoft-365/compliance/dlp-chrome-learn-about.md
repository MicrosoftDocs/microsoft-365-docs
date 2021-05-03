---
title: "Learn about the Microsoft Compliance Extension (preview)"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
search.appverid: 
- MET150
description: "The Microsoft Compliance Extension extends monitoring and control of file activities and protective actions to the Google Chrome browser"
---

# Learn about the Microsoft Compliance Extension (preview)

[Endpoint data loss prevention (endpoint DLP)](endpoint-dlp-learn-about.md) extends the activity monitoring and protection capabilities of [Microsoft 365 data loss prevention (DLP)](dlp-learn-about-dlp.md) to sensitive items that are on Windows 10 devices. Once devices are onboarded into the Microsoft 365 compliance solutions, the information about what users are doing with sensitive items is made visible in [activity explorer](data-classification-activity-explorer.md) and you can enforce protective actions on those items via [DLP policies](create-test-tune-dlp-policy.md).

Once the Microsoft Compliance Extension is installed on a Windows 10 device, organizations can monitor when a user attempts to access or upload a sensitive item to a cloud service using Google Chrome and enforce protective actions via DLP.  

## Activities you can monitor and take action on

The Microsoft Compliance Extension enables you to audit and manage the following types of activities users take on sensitive items on devices running Windows 10.

activity |description  | supported policy actions|
|---------|---------|---------|
|file copied to cloud  | Detects when a user attempts to upload a sensitive item to a restricted service domain through the Chrome browser |audit, block|
|file printed  |Detects when a user attempts to print a sensitive item that is open in the Chrome browser to a local or network printer |audit, block with override, block|
|file copied to clipboard |Detects when a user attempts to copy information from a sensitive item that is being viewed in the Chrome browser and then paste it into another app, process, or item. |audit, block with override, block|
|file copied to removable storage    | Detects when a user attempts to copy a sensitive item or information from a sensitive item that is open in the Chrome browser to removable media or USB device |audit, block with override, block|
|file copied to network share  |Detects when a user attempts to copy a sensitive item or information from a sensitive item that is open in the Chrome browser  to a network share or mapped network drive.|audit, block with override, block |

## Deployment process
1. [Get started with endpoint data loss prevention](endpoint-dlp-getting-started.md)
2. [Onboarding tools and methods for Windows 10 devices](dlp-configure-endpoints.md)
3. [Install the extension on your Windows 10 devices](dlp-chrome-get-started.md)
4. [Create or edit DLP policies](create-test-tune-dlp-policy.md) that restrict upload to cloud service, or access by unallowed browsers actions and apply them to your Windows 10 devices

## Next steps

See [Get started with the Microsoft Compliance Extension](dlp-chrome-get-started.md) for complete deployment procedures and scenarios.

## See also

- [Get started with Microsoft Compliance Extension](dlp-chrome-get-started.md)
- [Learn about Microsoft 365 Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Getting started with Microsoft Endpoint data loss prevention](endpoint-dlp-getting-started.md)
- [Using Microsoft Endpoint data loss prevention](endpoint-dlp-using.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/)
- [Insider Risk management](insider-risk-management.md)
