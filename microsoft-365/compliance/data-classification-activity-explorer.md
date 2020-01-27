---
title: "Using data classification activity explorer"
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
description: "Activity explorer rounds out the functionality of the data classification feature by letting you see and filter on the actions users are taking on your labeled content."
---

# View activity on your labeled content (preview)

The data classification overview and content explorer tabs give you visibility into what content has been discovered and labeled, and where that content is. Activity explorer rounds out this suite of functionality by allowing you to monitor what's being done with your labeled content. Activity explorer provides a historical view.

![placeholder screenshot overview activity explorer](media/data-classification-activity-explorer-1.png)

You can filter the data by:

- date range
- activity type
- location
- user
- sensitivity label
- retention label


You can view the data either as a list or a bar graph.

## Prerequisites

Every account that accesses and uses activity explorer must have a license assigned to it from one of these subscriptions:

- Microsoft 365 (E5)
- Office 365 (E5)
- Advanced Compliance (E5) add-on
- Advanced Threat Intelligence (E5) add-on

## Activity type

Microsoft 365 monitors and reports on 12 types of activities across SharePoint Online, OneDrive and endpoints. Endpoints are user devices running Windows 10.

- File created
- File modified
- File renamed
- File copied to cloud
- File accessed by unallowed app
- File printed
- File copied to removable media
- File copied to network share
- File read
- file copied to clipboard
- Label applied
- Label changed (upgraded, downgraded, or removed)

The value of understanding what actions are being taken with your sensitive labeled content is that you can see if the controls that you have already put into place, such as [data loss prevention policies](data-loss-prevention-policies.md) are effective or not. If not, or if you discover something unexpected, such as a large number of items that are labeled `highly confidential` and are downgraded `general`, you can manage your various policies and take new actions to restrict the undesired behavior.

Once your filters are set, you can:

- hover over a segment of the bar chart to see the number of items that fall into that category
![activity explorer hover over](media/data-classification-activity-explorer-hover-over-2.png)
- export the data
- select any given item from the list and view the details of the action in the fly-out

![activity explorer details fly out](media/data-classification-activity-explorer-fly-out-3.png)

## See also
- [Sensitivity labels](sensitivity-labels.md)
- [Retention labels](labels.md)
- [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md)
- [Overview of retention policies](retention-policies.md)
