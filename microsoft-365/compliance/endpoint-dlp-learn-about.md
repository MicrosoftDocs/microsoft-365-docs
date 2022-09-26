---
title: "Learn about Endpoint data loss prevention"
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
ms.localizationpriority: high
ms.collection:
- tier1
- highpri
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
search.appverid:
- MET150
description: "Endpoint data loss prevention extends monitoring of file activities and protective actions for those files to endpoints. Files are made visible in the Compliance solutions "
---

# Learn about Endpoint data loss prevention

You can use Microsoft Purview Data Loss Prevention (DLP) to monitor the actions that are being taken on items you've determined to be sensitive and to help prevent the unintentional sharing of those items. For more information on DLP, see [Learn about data loss prevention](dlp-learn-about-dlp.md).

**Endpoint data loss prevention** (Endpoint DLP) extends the activity monitoring and protection capabilities of DLP to sensitive items that are physically stored on Windows 10, Windows 11, and macOS (Catalina 10.15 and higher) devices. Once devices are onboarded into the Microsoft Purview solutions, the information about what users are doing with sensitive items is made visible in [activity explorer](data-classification-activity-explorer.md) and you can enforce protective actions on those items via [DLP policies](create-test-tune-dlp-policy.md).

> [!TIP]
> If you are looking for device control for removable storage, see [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](../security/defender-endpoint/device-control-removable-storage-access-control.md#microsoft-defender-for-endpoint-device-control-removable-storage-access-control).

> [!NOTE]
> In Microsoft Purview, DLP policy evaluation of sensitive items occurs centrally, so there is no time lag for policies and policy updates to be distributed to individual devices. When a policy is updated in compliance center, it generally takes about an hour for those updates to be synchronized across the service. Once policy updates are synchronized, items on targeted devices are automatically re-evaluated the next time they are accessed or modified.

## Endpoint activities you can monitor and take action on

Endpoint DLP enables you to audit and manage the following types of activities users take on sensitive items that are physically stored Windows 10, Windows 11, or macOS devices.

|Activity |Description  |Windows 10 1809 and later/ Windows 11| macOS Catalina 10.15 and later | Auditable/restrictable|
|---------|---------|---------|---------|---------|
|upload to cloud service, or access by unallowed browsers    | Detects when a user attempts to upload an item to a restricted service domain or access an item through a browser.  If they are using a browser that is listed in DLP as an unallowed browser, the upload activity will be blocked and the user is redirected to use Microsoft Edge. Microsoft Edge will then either allow or block the upload or access based on the DLP policy configuration         |supported | supported|auditable and restrictable|
|copy to other app    |Detects when a user attempts to copy information from a protected item and then paste it into another app, process or item. It also detects when a user copies and pastes content among files within the same app, process or item for Word, Excel, and PowerPoint.|supported|supported         | auditable and restrictable|
|copy to USB removable media |Detects when a user attempts to copy an item or information to removable media or USB device.|supported|supported         | auditable and restrictable|
|copy to a network share    |Detects when a user attempts to copy an item to a network share or mapped network drive |supported|supported         |auditable and restrictable|
|print a document    |Detects when a user attempts to print a protected item to a local or network printer.|supported|supported|auditable and restrictable         |
|copy to a remote session|Detects when a user attempts to copy an item to a remote desktop session |supported|not supported|  auditable and restrictable|
|copy to a Bluetooth device|Detects when a user attempts to copy an item to an unallowed Bluetooth app (as defined in the list of unallowed Bluetooth aps in Endpoint DLP settings).|supported|not supported| auditable and restrictable|
|create an item|Detects when a user creates an item|supported |supported |auditable|
|rename an item|Detects when a user renames an item|supported |supported |auditable|

## Best practice for endpoint DLP policies

Say you want to block all items that contain credit card numbers from leaving endpoints of Finance department users. We recommend:

- Create a policy and scope it to endpoints and to that group of users.
- Create a rule in the policy that detects the type of information that you want to protect. In this case, **content contains** set to *Sensitive information type**, and select **Credit Card**.
- Set the actions for each activity to **Block**.

See, [Design a data loss prevention policy](dlp-policy-design.md) for more guidance on designing your DLP policies.

## Monitored files

Endpoint DLP supports monitoring of these file types through policy:

- Word files
- PowerPoint files
- Excel files
- PDF files
- .csv files
- .tsv files
- .txt files
- .rtf files
- .c files
- .class files (Windows only)
- .cpp files
- .cs files
- .h files
- .java files
 
DLP audits the activities for these file types, even if there isn't a policy match: 

- Word files
- PowerPoint files
- Excel files
- PDF files

If you only want monitoring data from policy matches, you can turn off the **Always audit file activity for devices** in the endpoint DLP global settings.

> [!NOTE]
> If the **Always audit file activity for devices** setting is on, activities on any Word, PowerPoint, Excel, PDF, and .csv file are always audited even if the device is not targeted by any policy.

> [!TIP]
> To ensure activities are audited for all supported file types, create a [custom DLP policy](create-test-tune-dlp-policy.md).

Endpoint DLP monitors activity-based on MIME type, so activities will be captured even if the file extension is changed.

### File types

File Types are a grouping of file formats which are utilized to protect specific workflows or areas of business. You can use one or more File types as conditions in your DLP policies.

|File Type |App  |monitored file extensions  |
|---------|---------|---------|
|word processing |Word, PDF | .doc, .docx,  .docm, .dot, .dotx, .dotm, .docb, .pdf |
|spreadsheet    |Excel, CSV, TSV |.xls, .xlsx, .xlt, .xlm, .xlsm, .xltx, .xltm, .xlsb, .xlw, .csv, .tsv         |
|presentation |PowerPoint|.ppt, .pptx, .pos, .pps, .pptm, .potx, .potm, .ppam, .ppsx|
|archive  |file archive and compression tools | .zip, .zipx, .rar, .7z, .tar, .gz |
|email    |Outlook |.pst, .ost, .msg         |


### File extensions

If the File types don't cover the file extensions you need to list as a condition in a policy, you can use file extensions separated by comma instead.

> [!IMPORTANT]
> The file extensions and file types options cannot be used as conditions in the same rule. If you want to use them as conditions in the same policy, they must be in separate rules. 

> [!IMPORTANT]
> These Windows versions support File types and File extension features:
>- Windows 10 versions 20H1/20H2/21H1 (KB 5006738)
>- Windows 10 versions 19H1/19H2 (KB 5007189)
>- Windows 10 RS5 (KB 5006744)


## What's different in Endpoint DLP

There are a few extra concepts that you need to be aware of before you dig into Endpoint DLP.

### Enabling Device management

Device management is the functionality that enables the collection of telemetry from devices and brings it into Microsoft Purview solutions like Endpoint DLP and [insider risk management](insider-risk-management.md). You'll need to onboard all devices you want to use as locations in DLP policies.

> [!div class="mx-imgBorder"]
> ![enable device management.](../media/endpoint-dlp-learn-about-1-enable-device-management.png)

Onboarding and offboarding are handled via scripts you download from the Device management center. The center has custom scripts for each of these deployment methods:

- local script (up to 10 machines)
- Group policy
- System Center Configuration Manager (version 1610 or later)
- Mobile Device Management/Microsoft Intune
- VDI onboarding scripts for non-persistent machines

> [!div class="mx-imgBorder"]
> ![device onboarding page.](../media/endpoint-dlp-learn-about-3-device-onboarding-page.png)

 Use the procedures in [Getting started with Microsoft 365 Endpoint DLP](endpoint-dlp-getting-started.md) to onboard devices.

If you have onboarded devices through [Microsoft Defender for Endpoint](../security/defender-endpoint/configure-machines-onboarding.md), those devices will automatically show up in the list of devices. This is because onboarding to Defender also onboards devices to DLP. You only need to **Turn on device monitoring** to use endpoint DLP.

> [!div class="mx-imgBorder"]
> ![managed devices list.](../media/endpoint-dlp-learn-about-2-device-list.png)

### Viewing Endpoint DLP data

You can view alerts related to DLP policies enforced on endpoint devices by going to the [DLP Alerts Management Dashboard](dlp-configure-view-alerts-policies.md).

> [!div class="mx-imgBorder"]
> ![Alert info.](../media/Alert-info-1.png)

You can also view details of the associated event with rich metadata in the same dashboard

> [!div class="mx-imgBorder"]
> ![event info.](../media/Event-info-1.png)

Once a device is onboarded, information about audited activities flows into Activity explorer even before you configure and deploy any DLP policies that have devices as a location.

> [!div class="mx-imgBorder"]
> ![endpoint dlp events in activity explorer.](../media/endpoint-dlp-learn-about-4-activity-explorer.png)

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
> ![copy to usb activity attributes.](../media/endpoint-dlp-learn-about-5-activity-attributes.png)

## Next steps

Now that you've learned about Endpoint DLP, your next steps are:

1. [Onboard Windows 10 or Windows 11 devices into Microsoft Purview overview](device-onboarding-overview.md)
1. [Onboard macOS devices into Microsoft Purview overview](device-onboarding-macos-overview.md)
1. [Configure endpoint data loss prevention settings](dlp-configure-endpoint-settings.md)
1. [Using Endpoint data loss prevention](endpoint-dlp-using.md)

## See also

- [Getting started with Microsoft Endpoint data loss prevention](endpoint-dlp-getting-started.md)
- [Using Microsoft Endpoint data loss prevention](endpoint-dlp-using.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](../security/defender-endpoint/configure-machines-onboarding.md)
- [Insider risk management](insider-risk-management.md)
