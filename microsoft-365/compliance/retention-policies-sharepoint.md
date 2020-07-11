---
title: "Learn about retention for SharePoint and OneDrive"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Learn how retention works for SharePoint and OneDrive."
---

# Learn about retention for SharePoint and OneDrive

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

The information in this article supplements [Learn about retention](retention.md) because it has information that's specific to SharePoint and OneDrive.

## How retention works for SharePoint and OneDrive

To support retention, SharePoint and OneDrive creates a Preservation Hold library if one doesn't exist. You can view this library on the **Site contents** page in the top-level site of the site collection. Most users can't view the Preservation Hold library because it's visible only to site collection administrators.
  
If somebody attempts to change or delete content that's subject to retention settings, a check is made whether the content's been changed since the retention settings were applied. If this is the first change since the retention settings were applied, the content is copied to the Preservation Hold library, which allows the person to change or delete the original content. Any content in a site collection can be copied to the Preservation Hold library, independently from retention settings.
  
A timer job periodically cleans up the Preservation Hold library. This job compares all content in the Preservation Hold library to all queries used by the retention settings for that content. Content that is older than their configured retention period is deleted from the Preservation Hold library, and the original location if it is still there. This timer job runs every seven days, which means that it can take up to seven days for content to be deleted.
  
This behavior applies to content that exists when the retention settings were applied. In addition, for retention policies, any new content that's created or added to the site collection after it was included in the policy will be retained after deletion. However, new content isn't copied to the Preservation Hold library the first time it's edited, only when it's deleted. To retain all versions of a file, you must turn on [versioning](#how-a-retention-policy-works-with-document-versions-in-a-site-collection).
  
A user receives an error if they try to delete a library, list, folder, or site that's subject to a retention policy. A user can delete a folder if they first move or delete any files in the folder that are subject to the policy. Also, the Preservation Hold library is created at this stage, and not when you create a retention policy or apply a retention label. This means that to test retention, you must first edit or delete a document in a site that's subject to a retention policy or that has a retention label applied, and then browse to the Preservation Hold library to view the retained copy.
  
After retention settings are assigned to content in a OneDrive account or SharePoint site, the paths the content takes depend on whether the retention settings are to retain and delete, to retain only, or delete only.

When the retention setting are to retain and delete:

![Diagram of content lifecycle in SharePoint and OneDrive](../media/Retention_Diagram_of_retention_flow_in_sites.png)
  
1. **If the content is modified or deleted** during the retention period, a copy of the original content as it existed when the retention policy was assigned is created in the Preservation Hold library. There, the timer job identifies items whose retention period has expired. Those items are moved to the second-stage Recycle Bin, where they're permanently deleted at the end of 93 days. The second-stage Recycle Bin is not visible to end users (only the first-stage Recycle Bin is), but site collection admins can view and restore content from there.

    > [!NOTE]
    > To help prevent inadvertent data loss, we no longer permanently delete content from the Preservation Hold library. Instead, we permanently delete content only from the Recycle Bin, so all content from the Preservation Hold library now goes through the second-stage Recycle Bin.
    
2. **If the content is not modified or deleted** during the retention period, the timer job moves this content to the first-stage Recycle Bin at the end of the retention period. If a user deletes the content from there or empties this Recycle Bin (also known as purging), the document is moved to the second-stage Recycle Bin. A 93-day retention period spans both the first- and second-stage recycle bins. At the end of 93 days, the document is permanently deleted from wherever it resides, in either the first-stage or second-stage Recycle Bin. The Recycle Bin is not indexed and therefore unavailable for searching. As a result, an eDiscovery search can't find any Recycle Bin content on which to place a hold.

When the retention settings are retain-only, or delete-only, the contents paths are variations of retain and delete:

### Content paths for retain-only retention settings

1. **If the content is modified or deleted** during the retention period: A copy of the original document is created in the Preservation Hold library and retained until the end of the retention period, when the copy in the Preservation Hold library is moved to the second-stage Recycle Bin and is permanently deleted after 93 days.

2. **If the content is not modified or deleted** during the retention period: Nothing happens before and after the retention period; the document remains in its original location.

### Content paths for delete-only retention settings

1. **If the content is deleted** during the configured period: The document is moved to first-stage Recycle Bin. If a user deletes the document from there or empties this Recycle Bin, the document is moved to the second-stage Recycle Bin. A 93-day retention period spans both the first-stage and second-stage recycle bins. At the end of 93 days, the document is permanently deleted from wherever it resides, in either the first-stage or second-stage Recycle Bin. If the content is modified during the configured period, it follows the same deletion path after the configured period.

2. **If the content is not deleted** during the configured period: At the end of the configured period in the retention policy, the document is moved to the first-stage Recycle Bin. If a user deletes the document from there or empties this Recycle Bin (also known as purging), the document is moved to the second-stage Recycle Bin. A 93-day retention period spans both the first-stage and second-stage recycle bins. At the end of 93 days, the document is permanently deleted from wherever it resides, in either the first-stage or second-stage Recycle Bin. The Recycle Bin is not indexed and therefore unavailable for searching. As a result, an eDiscovery search can't find any Recycle Bin content on which to place a hold.

## How retention works with document versions in a site collection

Versioning is a feature of all document libraries in SharePoint and OneDrive. By default, versioning retains a minimum of 500 major versions, though you can increase this limit. For more information, see [Enable and configure versioning for a list or library](https://support.office.com/article/1555d642-23ee-446a-990a-bcab618c7a37).
  
Retain-only settings retain all versions of a document in a SharePoint site collection or OneDrive account. When a document that is subject to a hold or retain-only retention settings is edited for the first time, a version of the original document is copied to the Preservation Hold library. When a document that is subject to a hold or retain-only settings is deleted, all versions are copied to the Preservation Hold library if versioning is enabled. Each version of a document in the Preservation Hold library exists as a separate item with its own retention period:
  
- If the retention period is based on when the content was created, each version has the same expiration date as the original document. The original document and its versions all expire at the same time.

- If the retention period is based on when the content was last modified, each version has its own expiration date based on when the original document was modified to create that version. The original documents and its versions expire independently of each other.

> [!NOTE]
> The preserved versions of SharePoint and OneDrive documents are not searchable by eDiscovery tools.

## When a user leaves the organization

**SharePoint**:

When a user leaves your organization, any content created by that user is not affected because SharePoint is considered a collaborative environment, unlike a user's mailbox or OneDrive account.

**OneDrive**:

If a user leaves your organization, any files that are subject to a retention policy or has a retention label will remain for the duration of the policy or label. During that time period, all sharing access continues to work. When the retention period expires, content moves into the Site Collection Recycle Bin and is not accessible to anyone except the admin. If a document is marked by a retention label as a record, the document will not be deleted until the retention period is over, after which time the content is permanently deleted.

## How to configure a retention policy for SharePoint and OneDrive

Follow the instructions for [Create and configure retention policies](create-retention-policies.md) and for the **Choose locations** page of the wizard, select one of the following options:

- **Apply policy only to content in Exchange email, public folders, Office 365 groups, OneDrive and SharePoint documents**

- **Let me choose specific locations** > **SharePoint sites**, **OneDrive accounts**, and **Office 365 groups**.

When you choose the **SharePoint sites** location, the retention policy can retain content in SharePoint communication sites, team sites that aren't connected by Office 365 groups, and classic sites. Team sites connected by Office 365 groups aren't supported with this option and instead, use the **Office 365 groups** location that applies to content in the group's mailbox, site, and files.

When you specify your locations for SharePoint sites, you don't need permissions to access the site and no validation is done at the time you specify the URL on the **Edit locations** page. However, the sites must be indexed and the sites you specify are checked that they exist at the end of the wizard.

If this check fails, you see a message that validation failed for the URL you entered, and the wizard won't create the retention policy until the validation check passes. If you see this message, go back in the wizard to change the URL or remove the site.
