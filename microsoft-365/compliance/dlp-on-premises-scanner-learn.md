---
title: "Learn about Microsoft 365 data loss prevention on-premises scanner (preview)"
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
description: "Microsoft 365 data loss prevention on-premises scanner extends monitoring of file activities and protective actions for those files to on-premises file shares and SharePoint folders and document libraries. Files are scanned and protected by Azure Information Protection (AIP) scanner"
---

# Learn about Microsoft 365 data loss prevention on-premises scanner (preview)

Microsoft data loss prevention on-premises scanner is part of the Microsoft 365 data loss prevention (DLP) suite of features you can use to discover and protect sensitive items across Microsoft 365 services. For more information about all of Microsoft’s DLP offerings, see [Overview of data loss prevention](data-loss-prevention-policies.md).

**DLP on-premises scanner** extends the DLP activity monitoring to on-premises data-at-rest in file shares and SharePoint document libraries and folders. DLP on-premises detects when sensitive items are used and shared. This gives you the visibility and control you need to ensure that sensitive items are used and protected properly, and to help prevent risky behavior that might compromise them. DLP on-premises scanner detects sensitive information by using [built-in](sensitive-information-type-entity-definitions.md) or [custom sensitive information](create-a-custom-sensitive-information-type.md) types, [sensitivity labels](sensitivity-labels.md) or file properties. The information about what users are doing with sensitive items is made visible in [activity explorer](data-classification-activity-explorer.md) and you can enforce protective actions on those items via [DLP policies](create-test-tune-dlp-policy.md).

## DLP on-premises scanner relies on Azure Information Protection scanner

DLP on-premises scanner relies on a full implementation of Azure Information Protection (AIP) scanner to monitor, label and protect sensitive items. If you aren't familiar with AIP scanner, we strongly recommend familiarizing yourself with it. See these articles:

- [What is Azure Information Protection](https://docs.microsoft.com/en-us/azure/information-protection/what-is-information-protection)
- [What is the Azure Information Protection unified labeling scanner](https://docs.microsoft.com/en-us/azure/information-protection/deploy-aip-scanner)
- [Requirements for installing and deploying the Azure Information Protection unified labeling scanner](https://docs.microsoft.com/en-us/azure/information-protection/deploy-aip-scanner-prereqs)
- [Tutorial: Installing the Azure Information Protection (AIP) unified labeling scanner](https://docs.microsoft.com/en-us/azure/information-protection/tutorial-install-scanner)- [Configuring and installing the Azure Information Protection unified labeling scanner](https://docs.microsoft.com/en-us/azure/information-protection/deploy-aip-scanner-configure-install)
- [Azure Information Protection unified labeling client - Version release history and support policy version 2.9.111.0](https://docs.microsoft.com/en-us/azure/information-protection/rms-client/unifiedlabelingclient-version-release-history)

## What on-premises scanner detects

|activity |description  | auditable/restictable|
|---------|---------|---------|
|upload to cloud service, or access by unallowed browsers    | Detects when a user attempts to upload an item to a restricted service domain or access an item through a browser.  If they are using a browser that is listed in DLP as an being an unallowed browser, the upload activity will be blocked and the user is redirected to use Edge Chromium. Edge Chromium will then either allow or block the upload or access based on the DLP policy configuration         |auditable and restrictable|
|copy to other app    |Detects when a user attempts to copy information from a protected item and then paste it into another app, process or item. Copying and pasting information within the same app, process, or item is not detected by this activity.         | auditable and restrictable|
|copy to USB removable media |Detects when a user attempts to copy an item or information to removable media or USB device.         | auditable and restrictable|
|copy to a network share    |Detects when a user attempts to copy an item to a network share or mapped network drive         |auditable and restrictable|
|print a document    |Detects when a user attempts to print a protected item to a local or network printer.| auditable and restrictable         |
|create an item|Detects when a user creates an item| auditable|
|rename an item|Detects when a user renames an item| auditable|


## What's different in on-premises scanner

There are a few extra concepts that you need to be aware of before you dig into on-premises scanner.

### AIP repositories

### content scan jobs

### policy tips

[Policy tips](use-notifications-and-policy-tips.md) are not available in on-premises scanner.

### parameters you can use as conditions with on-premises scanner

- sensitive information types
- sensitivity labels
- file extension
- custom document properties on Office files only 

### supported actions

|action |description  |
|---------|---------|
|**Block these people from accessing file stored in  on-premises scanner - Everyone** | When enforced, this action blocks access to all accounts except the content owner, the last account that modified the item and the administrator. It does this by removing all accounts from NTFS/SharePoint permissions at the file level except the file owner, repository owner (set in the repository setting in content scan job), last modifier (can be identified in SharePoint only) and admin. Scanner account is also granted FC rights on the file.|
|**Block these people from accessing file stored in  on-premises scanner - block org-wide (public) access**    |When enforced, this action removes the ***Everyone***, ***NT AUTHORITY\authenticated users***, and ***Domain Users*** SIDs from the file access control list (ACL). Only users and groups that have been explicitly granted rights to the file or parent folder will be able to access the file.|
|**Set permissions on the file**|When enforced, this action forces the file to inherit the permissions of its parent folder. Be default, this action will only be enforced if the permissions on the parent folder are more restrictive than the permissions that are already on the file. For example, if the ACL on the file is set to only allow ***specific users*** and the parent folder is configured to allow ***Domain Users*** group, the parent folder permissions would not be inherited by the file. You can override this behavior by selecting the **Inherit even if parent permissions are less restrictive** option.|
|**Remove the file from improper location**|When enforced, this action replaces the original file with a stub file with .txt extension and places a copy of the original file in a quarantine folder. 


### Viewing DLP on-premises scanner data data

 Endpoint DLP monitors activity-based on MIME type, so activities will be captured even if the file extension is changed. At this time the following file types are supported:

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

You can view alerts related to DLP policies enforced on endpoint devices by going to the [DLP Alerts Management Dashboard](dlp-configure-view-alerts-policies.md).

![Alert info](../media/Alert-info-1.png)

You can also view details of the associated event with rich metadata in the same dashboard

![event info](../media/Event-info-1.png)

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

1) [Getting started with Microsoft Endpoint data loss prevention ](endpoint-dlp-getting-started.md)
2) [Using Microsoft Endpoint data loss prevention](endpoint-dlp-using.md)

## See also

- [Getting started with Microsoft Endpoint data loss prevention](endpoint-dlp-getting-started.md)
- [Using Microsoft Endpoint data loss prevention](endpoint-dlp-using.md)
- [Overview of data loss prevention](data-loss-prevention-policies.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/)
- [Insider Risk management](insider-risk-management.md)
