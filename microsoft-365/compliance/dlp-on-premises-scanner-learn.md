---
title: "Learn about data loss prevention on-premises repositories"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2023
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- tier1
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
search.appverid: 
- MET150
description: "The data loss prevention on-premises location extends monitoring of file activities and protective actions for those files to on-premises file shares and SharePoint folders and document libraries. Files are scanned and protected by Purview Information Protection scanner"
---

# Learn about the data loss prevention on-premises repositories

When you select the **On-premises repositories** location, Microsoft Purview Data Loss Prevention (DLP) can enforce protective actions on on-premises data-at-rest in file shares and SharePoint document libraries and folders. This gives you the visibility and control you need to ensure that sensitive items are used and protected properly, and to help prevent risky behavior that might compromise them. The DLP detects sensitive information by using [built-in](sensitive-information-type-entity-definitions.md) or [custom sensitive information](create-a-custom-sensitive-information-type.md) types, [sensitivity labels](sensitivity-labels.md) or file properties. The information about what users are doing with sensitive items is made visible in [activity explorer](data-classification-activity-explorer.md) and you can enforce protective actions on those items via [DLP policies](dlp-learn-about-dlp.md).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## DLP relies on Microsoft Purview Information Protection scanner

DLP relies on a full implementation of the Microsoft Purview Information Protection scanner to monitor, label and protect sensitive items. If you haven't implemented Information Protection scanner, must do so first. See these articles:

- [What is Azure Information Protection](/azure/information-protection/what-is-information-protection)
- [Learn about the information protection scanner](deploy-scanner.md)
- [Get started with the information protection scanner](deploy-scanner-prereqs.md)
- [Configuring and installing the information protection scanner](deploy-scanner-configure-install.md)
- [Azure Information Protection unified labeling client - Version release history and support policy](/azure/information-protection/rms-client/unifiedlabelingclient-version-release-history)

## DLP On-premises repository actions

DLP detects files in on-premises repositories by one of these four methods:

- sensitive information types
- sensitivity labels
- file extension
- custom document properties on Office files only

When a detected file poses a compliance policy violation or potential risk if leaked, DLP can take one of the following four actions.

|Action |Description  |
|---------|---------|
|**Block people from accessing file stored in  on-premises scanner - Block everyone** | When enforced, this action blocks access to all accounts except the content owner, the account that last modified the item, and the administrator. It does this by removing all accounts from NTFS/SharePoint permissions at the file level except for the file owner, repository owner (set in the [Use a DLP policy](deploy-scanner-configure-install.md#use-a-dlp-policy) setting in content scan job), last modifier (can be identified in SharePoint only), and admin. The scanner account is also granted FC rights on the file. |
|**Block only people who have access to your on-premises network and users in your organization who weren't granted explicit access to the files from accessing file**    | When enforced, this action removes the ***Everyone***, ***NT AUTHORITY\authenticated users***, and ***Domain Users*** SIDs from the file access control list (ACL). Only users and groups that have been explicitly granted rights to the file or parent folder will be able to access the file.|
|**Set permissions on the file (permissions will be inherited from the parent folder)**| When enforced, this action forces the file to inherit the permissions of its parent folder. By default, this action will only be enforced if the permissions on the parent folder are more restrictive than the permissions that are already on the file. For example, if the ACL on the file is set to allow only ***specific users*** and the parent folder is configured to allow the ***Domain Users*** group, the parent folder permissions wouldn't be inherited by the file. You can override this behavior by selecting the **Inherit even if parent permissions are less restrictive** option. |
|**Remove the file from improper location** | When enforced, this action replaces the original file with a stub file with .txt extension and places a copy of the original file in a quarantine folder.

## What's different in the on-premises scanner

There are a few extra concepts that you need to be aware of before you dig into the on-premises scanner.

### AIP repositories and content scan jobs

You must create a content scan job in the information protection scanner and identify the repositories that host the files that you want to DLP to evaluate. Make sure you enable DLP rules in the created AIP content scan job.

### Policy tips

[Policy tips](use-notifications-and-policy-tips.md) aren't available in on-premises scanner.


### Viewing DLP on-premises scanner events

You view DLP data in the Microsoft Purview compliance portal [activity explorer](data-classification-activity-explorer.md). 

## Next steps

Now that you've learned about the Information Protection on-premises scanner, your next steps are:

1. [Get started with the On-premises repositories location](dlp-on-premises-scanner-get-started.md)
2. [Use the DLP on-premises scanner](dlp-on-premises-scanner-use.md)

## See also

- [Getting started with the data loss prevention on-premises scanner](dlp-on-premises-scanner-get-started.md)
- [Use the data loss prevention on-premises scanner](dlp-on-premises-scanner-use.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
