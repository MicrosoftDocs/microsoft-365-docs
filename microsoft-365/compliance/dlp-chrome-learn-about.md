---
title: "Learn about the FOOBAR (preview)"
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
description: "The FOOBAR extends monitoring and control of file activities and protective actions to the Google Chrome browser"
---

# Learn about the FOOBAR (preview)

[Endpoint data loss prevention (endpoint DLP)](endpoint-dlp-learn-about.md) extends the activity monitoring and protection capabilities of [Microsoft 365 data loss prevention (DLP)](data-loss-prevention-policies.md) to sensitive items that are on Windows 10 devices. Once devices are onboarded into the Microsoft 365 compliance solutions, the information about what users are doing with sensitive items is made visible in [activity explorer](data-classification-activity-explorer.md) and you can enforce protective actions on those items via [DLP policies](create-test-tune-dlp-policy.md).

Once the FOOBAR is installed on a Windows 10 device, organizations can monitor when a user attempts to access or upload a sensitive item to a cloud service using Google Chrome and enforce protective actions via DLP.  

## Activities you can monitor and take action on

FOOBAR enables you to audit and manage the following types of activities users take on sensitive items on devices running Windows 10.

<!-- WAITING FOR REPLY FROM THOMAS
activity |description  | auditable/restictable|
|---------|---------|---------|
|upload to cloud service, or access by unallowed browsers    | Detects when a user attempts to upload an item to a restricted service domain or access an item through a browser.  If they are using a browser that is listed in DLP as an being an unallowed browser, the upload activity will be blocked and the user is redirected to use Edge Chromium. Edge Chromium will then either allow or block the upload or access based on the DLP policy configuration         |auditable and restrictable|
|copy to other app    |Detects when a user attempts to copy information from a protected item and then paste it into another app, process or item. Copying and pasting information within the same app, process, or item is not detected by this activity.         | auditable and restrictable|
|copy to USB removable media |Detects when a user attempts to copy an item or information to removable media or USB device.         | auditable and restrictable|
|copy to a network share    |Detects when a user attempts to copy an item to a network share or mapped network drive         |auditable and restrictable|
|print a document    |Detects when a user attempts to print a protected item to a local or network printer.| auditable and restrictable         |
|create an item|Detects when a user creates an item| auditable|
|rename an item|Detects when a user renames an item| auditable|

-->

## Deployment process
1. [onboard devices](endpoint-dlp-getting-started.md)
2. [Onboarding tools and methods for Windows 10 devices](dlp-configure-endpoints.md)
3. [Install the extension on your Windows 10 devices](dlp-chrome-get-started.md)
4. Remove Google Chrome from the restricted browsers list. For more information, see ([Unallowed browsers](endpoint-dlp-using.md#unallowed-browsers).
5. [Create or edit DLP policies](create-test-tune-dlp-policy.md) that restrict upload to cloud service, or access by unallowed browsers actions and apply them to your Windows 10 devices

## Next steps

See [Get started with FOOBAR](dlp-chrome-get-started.md) for complete deployment procedures and scenarios.

## See also

- [Get started with FOOBAR](dlp-chrome-get-started.md)
- [Learn about Microsoft 365 Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Getting started with Microsoft Endpoint data loss prevention](endpoint-dlp-getting-started.md)
- [Using Microsoft Endpoint data loss prevention](endpoint-dlp-using.md)
- [Overview of data loss prevention](data-loss-prevention-policies.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/)
- [Insider Risk management](insider-risk-management.md)
