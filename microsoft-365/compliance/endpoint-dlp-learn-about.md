---
title: "Learn about Microsoft 365 Endpoint data loss prevention (preview)"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2020
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MET150
description: "Microsoft 365 Endpoint data loss prevention (EPDLP) extends monitoring of file activities and protective actions for those file to endpoints. Files are made visible in the Microsoft 365 compliance solutions "
---

# Learn about Microsoft 365 Endpoint data loss prevention (preview)

You can use Microsoft 365 data loss prevention (DLP) to monitor the actions that are being taken on items you've determined to be sensitive and to help prevent the unintentional sharing of those items. For more information on DLP, see [Overview of data loss prevention](data-loss-prevention-policies.md).

**Endpoint data loss prevention** (EPDLP) extends the activity monitoring and protection capabilities of DLP to sensitive items that are on Windows 10 devices. Once devices are onboarded into device management, the information about what users are doing with sensitive items is made visible in [activity explorer](data-classification-activity-explorer.md) and you can enforce protective actions on those items via [DLP policies](create-test-tune-dlp-policy.md).

## Endpoint activities you can monitor and take action on

Microsoft EPDLP enables you to audit and manage the following types of activities users take on files on devices running Windows 10. This includes: 

- File created
- File renamed
- File copied to cloud - when a file is uploaded to a domain through Chromium Edge browser
- File accessed by unallowed app - whe a file is read by a process that was defined as unallowed (managed as part of the DLP policy)
- file printed - when a file is printed to a local or network printer
- file copied to removable media - when a file is copied or created on a removable USB media.
- file copied to a network share - when a file is copied to a network share, for example \\my-server\fileshare or a mapped network drive


## What's different in Endpoint DLP

There are a few extra concepts that you need to be aware of before you dig into Endpoint DLP.

### Enabling Device management

Device management is the functionality that enables the collection of telemetry from devices and brings it into Microsoft 365 compliance solutions like Endpoint DLP and Insider Risk management.

![enable device management](../media/endpoint-dlp-learn-about-1-enable-device-management.png)

Device management is tightly integrated with [Microsoft Defender Advanced Threat Protection  (MDATP)](https://docs.microsoft.com/windows/security/threat-protection/). It's okay if you don't have MDATP deployed, but if you do, all your Windows 10 MDATP devices will automatically show up in the list of devices.


![managed devices list](../media/endpoint-dlp-learn-about-2-device-list.png)

 If you don't have MDATP deployed, you can still use Endpoint DLP, the needed features are automatically provisioned in the Microsoft 365 cloud infrastructure without the need for MDATP licenses. You'll also need to onboard all devices you want to use as locations in DLP policies.

### Device onboarding and offboarding

Without MDATP implemented, onboarding and offboarding are handled via scripts you download from the Device management center. The center has custom scripts for each of these deployment methods:

- local script (up to 10 machines)
- Group policy
- System Center Configuration Manager (version 1610 or later)
- Mobile Device Management/Microsoft Intune
- VDI onboarding scripts for non-persistent machines 

![device onboarding page](../media/endpoint-dlp-learn-about-3-device-onboarding-page.png)

### Viewing Endpoint DLP data

Once a device is onboarded, information about audited activities flows into Activity Explorer even before you configure and deploy any DLP policies that have devices as a location. Endpoint DLP monitors activity based om MIME type, so activities will be captured even if the file extension is changed. At public preview it watches all:

- Word files
- PowerPoint files
- Excel files
- PDF files
- .csv files

![endpoint dlp events in activity explorer](../media/endpoint-dlp-learn-about-4-activity-explorer.png)

Endpoint DLP collects extensive information on audited activity.

![copy to usb activity attributes](../media/endpoint-dlp-learn-about-5-activity-attributes.png)

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
- platfrom
- device name
- destination location type
- application that performed the copy
- MDATP device ID (if applicable)
- removable media device manufacturer
- removable media device model
- removable media device serial number 

## Workflow (TBD)

Here is a high level workflow for implementing and using Endpoint DLP

GRAPHIC SHOWING

1. WITH MDATP >> DEVICE LIST >> ACTIVITY EXPLORER FOR AUDITED EVENTS >> USING ENDPOINTS IN DLP POLICIES
2. WITHOUT MDATP >> ENABLE DEVICE MONITORING >> ONBOARD DEVICES >> ACTIVITY EXPLORER FOR AUDITED EVENTS >> USING ENDPOINTS IN DLP POLICIES
 
