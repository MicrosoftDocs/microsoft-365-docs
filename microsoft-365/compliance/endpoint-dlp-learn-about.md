---
title: "Learn about Microsoft 365 Endpoint data loss prevention"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 07/21/2020
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
description: "Microsoft 365 Endpoint data loss prevention extends monitoring of file activities and protective actions for those files to endpoints. Files are made visible in the Microsoft 365 compliance solutions "
---

# Learn about Microsoft 365 Endpoint data loss prevention

You can use Microsoft 365 data loss prevention (DLP) to monitor the actions that are being taken on items you've determined to be sensitive and to help prevent the unintentional sharing of those items. For more information on DLP, see [Overview of data loss prevention](data-loss-prevention-policies.md).

**Endpoint data loss prevention** (Endpoint DLP) extends the activity monitoring and protection capabilities of DLP to sensitive items that are on Windows 10 devices. Once devices are onboarded into the Microsoft 365 compliance solutions, the information about what users are doing with sensitive items is made visible in [activity explorer](data-classification-activity-explorer.md) and you can enforce protective actions on those items via [DLP policies](create-test-tune-dlp-policy.md).

## Endpoint activities you can monitor and take action on

Microsoft Endpoint DLP enables you to audit and manage the following types of activities users take on sensitive items on devices running Windows 10. This includes:


|activity on item |auditable/restrictable  |
|---------|---------|
|created    | auditable      |
|renamed    |  auditable       |
|copied to or created on removable media     |     auditable and restrictable|
|copied to network share, e.g. \\my-server\fileshare   |     auditable and restrictable    |
|printed |    auditable and restrictable       |
|copied to cloud via Chromium Edge    |   auditable and restrictable        |
|accessed by unallowed apps and browsers    |  auditable and restrictable       |

## What's different in Endpoint DLP

There are a few extra concepts that you need to be aware of before you dig into Endpoint DLP.

### Enabling Device management

Device management is the functionality that enables the collection of telemetry from devices and brings it into Microsoft 365 compliance solutions like Endpoint DLP and [Insider Risk management](insider-risk-management.md). You'll need to onboard all devices you want to use as locations in DLP policies.

> [!div class="mx-imgBorder"]
> ![enable device management](../media/endpoint-dlp-learn-about-1-enable-device-management.png)

Onboarding and offboarding are handled via scripts you download from the Device management center. The center has custom scripts for each of these deployment methods:

- local script (up to 10 machines)
- Group policy
- System Center Configuration Manager (version 1610 or later)
- Mobile Device Management/Microsoft Intune
- VDI onboarding scripts for non-persistent machines

> [!div class="mx-imgBorder"]
> ![device onboarding page](../media/endpoint-dlp-learn-about-3-device-onboarding-page.png)

 Use the procedures in [Getting started with Microsoft 365 Endpoint DLP](endpoint-dlp-getting-started.md) to onboard devices.

If you have onboarded devices through [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/), those devices will automatically show up in the list of devices.

> [!div class="mx-imgBorder"]
> ![managed devices list](../media/endpoint-dlp-learn-about-2-device-list.png)

### Viewing Endpoint DLP data

 Endpoint DLP monitors activity-based on MIME type, so activities will be captured even if the file extension is changed. At public preview it watches all:

- Word files
- PowerPoint files
- Excel files
- PDF files
- .csv files
- .tsv files
- .txt files
- .rtf files
- .c files
- .class files
- .cpp files
- .cs files
- .h files
- .java files

> [!NOTE]
> Endpoint DLP evaluates files of all the above types against the DLP policy and applies protection actions accordingly. All files that match a DLP policy are audited for all supported actions, even if they aren't blocked. In addition, file activity performed on any Word, PowerPoint, Excel, PDF, and .csv file is audited by default, independent of whether a DLP policy exists or matches these files.

Once a device is onboarded, information about audited activities flows into Activity explorer even before you configure and deploy any DLP policies that have devices as a location.

> [!div class="mx-imgBorder"]
> ![endpoint dlp events in activity explorer](../media/endpoint-dlp-learn-about-4-activity-explorer.png)

Endpoint DLP collects extensive information on audited activity.

For example, if a file is copied to removable USB media, you'd see these attributes in the activity details:

- activity type
- client IP
- target file path
- happened timestamp
- file name
- user
- file extension
- file size
- sensitive information type (if applicable)
- sha1 value
- sha256 value
- previous file name
- location
- parent
- filepath
- source location type
- platform
- device name
- destination location type
- application that performed the copy
- Microsoft Defender for Endpoint device ID (if applicable)
- removable media device manufacturer
- removable media device model
- removable media device serial number

> [!div class="mx-imgBorder"]
> ![copy to usb activity attributes](../media/endpoint-dlp-learn-about-5-activity-attributes.png)

## Next steps

Now that you've learned about Endpoint DLP, your next steps are:

1) [Getting started with Microsoft Endpoint data loss prevention (preview)](endpoint-dlp-getting-started.md)
2) [Using Microsoft Endpoint data loss prevention (preview)](endpoint-dlp-using.md)

## See also

- [Getting started with Microsoft Endpoint data loss prevention (preview)](endpoint-dlp-getting-started.md)
- [Using Microsoft Endpoint data loss prevention (preview)](endpoint-dlp-using.md)
- [Overview of data loss prevention](data-loss-prevention-policies.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/)
- [Insider Risk management](insider-risk-management.md)
