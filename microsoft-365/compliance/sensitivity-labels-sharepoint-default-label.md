---
title: "Configure a default sensitivity label for a SharePoint document library"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
audience: Admin
ms.topic: article
ms.date:
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- M365-security-compliance
- SPO_Content
search.appverid:
- MOE150
- MET150
description: "Configure a default sensitivity label for a SharePoint document library for new and unlabeled documents."
---

# Configure a default sensitivity label for a SharePoint document library

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

> [!NOTE]
> This feature is in preview and subject to change.

When SharePoint is [enabled for sensitivity labels](sensitivity-labels-sharepoint-onedrive-files.md), you can configure a default label for document libraries. Then, any new files uploaded to that library, or existing files edited in the library will have that label applied if they don't already have a sensitivity label, or they have a sensitivity label but with lower priority.

For example, you configure the **Confidential** label as the default sensitivity label for a document library. A user who has **General** as their policy default label saves a new file in that library. SharePoint will label this file as **Confidential** because of that label's higher priority. For a quick summary of the possible outcomes, see [Will an existing label be overridden](#will-an-existing-label-be-overridden) on this page.

A default label offers a baseline level of protection and a form of automatic labeling without content inspection. To help you distinguish between this feature's default label with the default label in label policies:

- **Default sensitivity label for a document library**: Location-based labeling, applicable only for SharePoint. Overrides a lower-priority label unless manually applied.
- **Default sensitivity label from a policy**: Always applicable for all locations. Never overrides an existing label.

When you use Office on the web to create or edit a file, the default sensitivity label for a document library can be applied without delays. However, labeling is not immediate if you upload a file or create it using Microsoft 365 Apps on Windows, macOS, iOS or Android, and then save to SharePoint:

- File upload: it can take a few minutes for the label to be applied.
- Microsoft 365 Apps: the label is applied after the app is closed.

## Will an existing label be overridden?

Summary of outcomes:

|Existing label |Override with default library label |
|:-----|:-----|:-----|
|Manually applied, any priority| No |
|Automatically applied, lower priority | Yes |
|Automatically applied, higher priority | No |
|Default label from policy, higher priority | No |
|Default label from policy, lower priority | Yes |

## Requirements

- You have [enabled sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).

## Limitations

- A maximum of 25,000 documents per tenant can be labeled by using this feature.

- Doesn't apply to existing files in SharePoint at rest.

## Configure a default sensitivity label for a SharePoint document library

You can configure a default sensitivity label for a SharePoint document library by using the SharePoint admin center, or by using PowerShell.

### Use the SharePoint admin center to configure a default sensitivity label for a SharePoint document library

This option is the easiest way to configure a default sensitivity label for a SharePoint document library.

1. In the SharePoint admin center, navigate to the document library > **Settings** > **Permissions and Management**

2. Select **Default sensitivity label**, and the from drop-down box, select the label that you want to be the default sensitivity label for the document library.

 
### Use PowerShell to configure a default sensitivity label for a SharePoint document library

As an alternative to using the SharePoint admin center, 



## Next steps


