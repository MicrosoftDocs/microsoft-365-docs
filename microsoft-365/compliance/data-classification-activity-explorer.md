---
title: "Get started with activity explorer"
f1.keywords:
- NOCSH
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
- m365solution-mip
- m365initiative-compliance
search.appverid: 
- MOE150
- MET150
description: "Activity explorer rounds out the functionality of the data classification feature by letting you see and filter on the actions users are taking on your labeled content."
---

# Get started with activity explorer

The data classification overview and content explorer tabs give you visibility into what content has been discovered and labeled, and where that content is. Activity explorer rounds out this suite of functionality by allowing you to monitor what's being done with your sensitive content. A set of audit feeds from Office native, web applications, Azure Information Protection, Teams and Endpoints is collected in M365 Unified Audit logs to support you towards onboarding and monitoring of Sensitivity labeling, Data loss prevention capabilities and Retention labeling. More details are shared below. 

## What Activity types are captured here ?

Activity explorer will showcase the below activities for a period of recent 30 days (which are collected in M365 Audit logs and transformed for showcase in Activity explorer for ease of consumption):

- Sensitivity and Retention labeling activities on documents and email such as label applied, label changed (upgraded, downgraded) or label removed, auto-labeling simulation, file read from Office native applications, Azure Information Protection add-in, Sharepoint, Exchange and OneDrive.
- Sensitive file events from endpoint devices such as File deleted, File created, File copied to clipboard, File modified, File read, File printed, File renamed, File coped to network share, File accessed by unallowed app, etc
- DLP rule match events from Exchange, Sharepoint, Onedrive, On-prem fileshres and Teams (In Preview)


![placeholder screenshot overview activity explorer](../media/data-classification-activity-explorer-1.png)

There are over 30 different filters available for use, some are:

- date range
- activity type
- location
- user
- sensitivity label
- retention label
- file path
- DLP policy and many more


## Prerequisites

Every account that accesses and uses data classification must have a license assigned to it from one of these subscriptions:

- Microsoft 365 (E5)
- Office 365 (E5)
- Advanced Compliance (E5) add-on
- Advanced Threat Intelligence (E5) add-on
- Microsoft 365 E5/A5 Info Protection & Governance
- Microsoft 365 E5/A5 Compliance

### Permissions

 In order to get access to the activity explorer tab, an account must be assigned membership in any one of these roles or role groups.

**Microsoft 365 role groups**

- Global administrator
- Compliance administrator
- Security administrator
- Compliance data administrator

## Activity type

Microsoft 365 monitors and reports on the following activities across SharePoint Online, Onedrive, Exchange, Teams, Endpoint devices and On-prem fileshares:

- label applied, changed (upgraded, downgraded, or removed) activities from Office native labeling, AIP labeling clients, AIP Scanner and cloud services
- Protection applied, changed, removed and files discovered activities from AIP clients and AIP Scanner
- auto-labeling simulation activities from services such as Exchange, Sharepoint and Onedrive
- Endpoint device DLP audit and enforcement activities such as File deleted, File created, File copied to clipboard, File modified, File read, File printed, File renamed, File coped to network share,  File accessed by unallowed app, etc
- DLP rule matched acivities across other locations (Exchange, Sharepoint, Onedrive, Teams and On-prem)

The value of understanding what actions are being taken with your sensitive labeled content is that you can see if the controls that you have already put into place, such as [data loss prevention policies](data-loss-prevention-policies.md) are effective or not. If not, or if you discover something unexpected, such as a large number of items that are labeled `highly confidential` and are downgraded `general`, you can manage your various policies and take new actions to restrict the undesired behavior.

> [!NOTE]
> Activity explorer doesn't currently monitor retention label activities for Exchange Online.

## See also
- [Learn about sensitivity labels](sensitivity-labels.md)
- [Learn about retention policies and retention labels](retention.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)

