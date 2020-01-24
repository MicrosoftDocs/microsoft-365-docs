---
title: "Data classification preview release notes (preview)"
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Release notes for the data classification public preview."
---

# Data classification public preview release notes (preview)

This public preview introduces new functionality where scanning of your sensitive content and labeled content starts *before* you create any policies. This is called **zero change management**. This lets you see the impact that all the retention and sensitivity labels are having in your environment and empower you to start assessing your protection and governance policy needs.

Please review these release notes so that you have the best experience with this public preview. We will be working on addressing these points between now and general availability (GA).

## Permissions for accessing content explorer

Access to content explorer is highly restricted because it lets you read the contents of scanned files. Access to content explorer requires membership in the **Content Explorer List Viewer**, and **Content Explorer Content Viewer** role groups. No account has access to content explorer by default.See, [Using data classification content explorer (preview).](data-classification-content-explorer.md#permissions)

## Exchange mailbox count

You will notice a small tool tip appear when you drill into Exchange mailboxes. This is to call out the fact that the aggregate count displayed for sensitive information type, sensitivity label and retention label may not exactly match the number of items that you will find inside the mailbox items. This is because the drill down into the folder fetches the live view of content, which is classified, while the aggregated count is calculated.

## Seeing GUIDs instead of label names

Private preview customers have seen instances where the deletion of a label that content has already been stamped with results in label names resolving to a 32-bit GUID in content explorer and activity explorer instead of the label name. 

## Rendering of encrypted documents

SharePoint, Exchange, and OneDrive files that are encrypted will not render in the content explorer. This is a sensitive issue that requires a balance between the need to see file contents in content explorer and the need to keep the contents encrypted. With the permissions granted by **Content Explorer List Viewer**, and **Content Explorer Content Viewer** role groups, you will see a list view of the files, the file  metadata, and a link you can use to access the content via the web client. 

## See also

- [Get started with data classification (preview)](data-classification-overview.md)
- [View label activity (preview)](data-classification-activity-explorer.md)
- [View labeled content (preview)](data-classification-content-explorer.md)
- [Sensitivity labels](sensitivity-labels.md)
- [Retention labels](labels.md)
- [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md)

