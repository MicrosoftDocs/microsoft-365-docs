---
title: "Data classification release notes"
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: normal
recommendations: false
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Release notes for data classification."
---

# Data classification release notes


## Exchange mailbox count

You will notice a small tool tip appear when you drill into Exchange mailboxes. This is to call out the fact that the aggregate count displayed for sensitive information type, sensitivity label and retention label may not exactly match the number of items that you will find inside the mailbox. This is because the drill-down into the folder fetches the live view of content, which is classified, while the aggregated count is calculated.


## Rendering of encrypted documents

SharePoint, Exchange, and OneDrive files that are encrypted don't render in the content explorer. This is a sensitive issue that requires a balance between the need to see file contents in content explorer and the need to keep the contents encrypted. With the permissions granted by **Content Explorer List Viewer**, and **Content Explorer Content Viewer** role groups, you will see a list view of the files, the file  metadata, and a link you can use to access the content via the web client.

## Supported characters in retention label names in SharePoint search

SharePoint search doesn't support retention label names with `-`, or `_` in them. For example, `Label-MIP` and `Label_MIP` aren't supported. SharePoint search does support those characters in sensitivity label names and sensitive information type names.

## OneDrive remains in preview

Thanks for your valuable feedback on OneDrive integration during our preview program. As we work through the specifics, you may run into inconsistent data / flows. We'll continue to showcase OneDrive in preview until all fixes are in place. We appreciate your continued support.


## See also

- [Get started with data classification (preview)](data-classification-overview.md)
- [View label activity (preview)](data-classification-activity-explorer.md)
- [View labeled content (preview)](data-classification-content-explorer.md)
- [Learn about sensitivity labels](sensitivity-labels.md)
- [Learn about retention policies and retention labels](retention.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)