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

Enable built-in labeling for [supported Office files](sensitivity-labels-office-apps.md#office-file-types-supported) in SharePoint and OneDrive so that users can apply your [sensitivity labels](sensitivity-labels.md) in Office for the web. When this feature is enabled, users will see the **Sensitivity** button on the ribbon so they can apply labels, and see any applied label name on the status bar.

Once the library is configured with a default label SharePoint will guarantee that any "new" office files saved or uploaded to this library and do not have a label or has a label with low priority (applied before via automation or default) will be labeled with the configured library label. In other words, think of this feature as automatic labeling by location, where location is here is a library. 

Note that if the uploaded document is manually labeled then it will not be touched. Moreover, if there are existing documents in the library then those will also not be touched, unless a user edits the file. During edit time, the service rechecks if the document is unlabeled and applies the default configured label for the library.  

The stamping of label is done in an asynchronous thread after the document is uploaded which means that there will be a delay of few minutes before you see the label being applied automatically. If you are creating the document via Office app on your windows, mac or mobile devices and directly do a "save-as" to SharePoint then the act of automatically applying the library label will wait till you close the app

## Requirements

- You have [enabled sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).

## Limitations

- A maximum of 25,000 documents per tenant can be labeled by using this feature.

## Configure a default sensitivity label for a SharePoint document library

You can configure a default sensitivity label for a SharePoint document library by using the SharePoint admin center, or by using PowerShell.

### Use the SharePoint admin center to configure a default sensitivity label for a SharePoint document library

This option is the easiest way to configure a default sensitivity label for a SharePoint document library.

1. In the SharePoint admin center, navigate to the document library > **Settings** > **Permissions and Management**

2. Select **Default sensitivity label**, and the from drop-down box, select the label that you want to be the default sensitivity label for the document library.

 
### Use PowerShell to configure a default sensitivity label for a SharePoint document library

As an alternative to using the SharePoint admin center, 



## Next steps


