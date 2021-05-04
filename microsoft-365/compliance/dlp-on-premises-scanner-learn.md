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

# Learn about the Microsoft 365 data loss prevention on-premises scanner (preview)

Microsoft data loss prevention on-premises scanner is part of the Microsoft 365 data loss prevention (DLP) suite of features that you can use to discover and protect sensitive items across Microsoft 365 services. For more information about all of Microsoft’s DLP offerings, see [Learn about data loss prevention](dlp-learn-about-dlp.md).

The **DLP on-premises scanner** crawls on-premises data-at-rest in file shares and SharePoint document libraries and folders for sensitive items that, if leaked, would pose a risk to your organization or pose a risk of compliance policy violation. This gives you the visibility and control you need to ensure that sensitive items are used and protected properly, and to help prevent risky behavior that might compromise them. The DLP on-premises scanner detects sensitive information by using [built-in](sensitive-information-type-entity-definitions.md) or [custom sensitive information](create-a-custom-sensitive-information-type.md) types, [sensitivity labels](sensitivity-labels.md) or file properties. The information about what users are doing with sensitive items is made visible in [activity explorer](data-classification-activity-explorer.md) and you can enforce protective actions on those items via [DLP policies](create-test-tune-dlp-policy.md).

## The DLP on-premises scanner relies on Azure Information Protection scanner

The DLP on-premises scanner relies on a full implementation of the Azure Information Protection (AIP) scanner to monitor, label and protect sensitive items. If you aren't familiar with the AIP scanner, we strongly recommend familiarizing yourself with it. See these articles:

- [What is Azure Information Protection](/azure/information-protection/what-is-information-protection)
- [What is the Azure Information Protection unified labeling scanner](/azure/information-protection/deploy-aip-scanner)
- [Requirements for installing and deploying the Azure Information Protection unified labeling scanner](/azure/information-protection/deploy-aip-scanner-prereqs)
- [Tutorial: Installing the Azure Information Protection (AIP) unified labeling scanner](/azure/information-protection/tutorial-install-scanner)
- [Configuring and installing the Azure Information Protection unified labeling scanner](/azure/information-protection/deploy-aip-scanner-configure-install)
- [Azure Information Protection unified labeling client - Version release history and support policy](/azure/information-protection/rms-client/unifiedlabelingclient-version-release-history)

## DLP on-premises scanner actions

DLP on-premises scanner detects files by one of these four methods:

- sensitive information types
- sensitivity labels
- file extension
- custom document properties on Office files only 

When a detected file poses a potential risk if leaked or a compliance policy violation, the DLP on-premises scanner can take one of these four actions.

|Action |Description  |
|---------|---------|
|**Block these people from accessing file stored in  on-premises scanner - Everyone** | When enforced, this action blocks access to all accounts except the content owner, the last account that modified the item and the administrator. It does this by removing all accounts from NTFS/SharePoint permissions at the file level except the file owner, repository owner (set in the [Set repository owner](/azure/information-protection/deploy-aip-scanner-configure-install#use-a-data-loss-prevention-dlp-policy-public-preview) setting in content scan job), last modifier (can be identified in SharePoint only) and admin. The scanner account is also granted FC rights on the file.|
|**Block these people from accessing file stored in  on-premises scanner - block org-wide (public) access**    |When enforced, this action removes the ***Everyone***, ***NT AUTHORITY\authenticated users***, and ***Domain Users*** SIDs from the file access control list (ACL). Only users and groups that have been explicitly granted rights to the file or parent folder will be able to access the file.|
|**Set permissions on the file**|When enforced, this action forces the file to inherit the permissions of its parent folder. Be default, this action will only be enforced if the permissions on the parent folder are more restrictive than the permissions that are already on the file. For example, if the ACL on the file is set to only allow ***specific users*** and the parent folder is configured to allow ***Domain Users*** group, the parent folder permissions would not be inherited by the file. You can override this behavior by selecting the **Inherit even if parent permissions are less restrictive** option.|
|**Remove the file from improper location**|When enforced, this action replaces the original file with a stub file with .txt extension and places a copy of the original file in a quarantine folder. 

## What's different in the on-premises scanner

There are a few extra concepts that you need to be aware of before you dig into the on-premises scanner.

### AIP repositories and content scan jobs

You must create an AIP content scan jobs and identify the repositories that host the files that you want to be evaluated by DLP engine. Make sure you enable DLP rules in the created AIP content scan job.

### Policy tips

[Policy tips](use-notifications-and-policy-tips.md) are not available in on-premises scanner.


### Viewing DLP on-premises scanner events

You view DLP on-premises scanner data in the M365 Compliance Center [activity explorer](data-classification-activity-explorer.md). 

## Next steps

Now that you've learned about DLP on-premises scanner, your next steps are:

1. [Get started with the DLP on-premises scanner](dlp-on-premises-scanner-get-started.md)
2. [Use the DLP on-premises scanner](dlp-on-premises-scanner-use.md)

## See also

- [Getting started with the Microsoft data loss prevention on-premises scanner](dlp-on-premises-scanner-get-started.md)
- [Use the Microsoft data loss prevention on-premises scanner](dlp-on-premises-scanner-use.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)