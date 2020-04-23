---
title: "Rapid deployment channel configuration example"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 04/23/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Strat_O365_Enterprise
- M365-subscription-management
ms.custom:

description: How a rapid deployment organization uses channels.
---

# Rapid deployment channel configuration example

Intro text

## The example organization

Number of employees: 100000

A multinational with offices in the Americas, Europe, Africa, and Asia

The IT infrastructure is largely homogeneous, with Windows, Office, and Microsoft cloud services comprising 95% of the installed base. A few legacy systems remain after an intensive, multi-year effort to simplify and streamline the IT infrastructure.

The IT department is highly experienced and tasked with keeping users and their devices productive by following Microsoft’s lead in their releases.

Business priorities

- Ensure business continuity with Microsoft apps and services.
- Maximize user productivity with the latest features from Microsoft.
- Maximize device, service, and data security with the latest features and fixes from Microsoft.
- Find a balance between rapid deployment and proper testing with a representative subset of users and devices to prevent widespread functionality outages.

## Deployment and update stages

1. Use a preview or pilot deployment
   Test and iterate with early adopters, IT staff, users with representative configurations, and training staff.
2. Production deployment
   Roll out to users by region/department/other.

## Deployment configuration for Windows 10

**Deployment goal:** Give a group of representative users a sneak peek of features that will be released in a few months, without major disruptions to the organization. See [Windows 10 deployment](https://docs.microsoft.com/windows/deployment/) for more information on Windows 10 deployment methods and strategies.


| Channel | Deployment groups |
|:-------|:-----|
|  **Feature Preview** <br>Purpose: Deployment of feature updates to IT staff and early adopters for testing on representative devices and configurations (languages, 3rd party apps). <br> Users: Windows fans (no matter their technical ability), IT admins, change managers, and trainers. Feature Preview deployment groups contain the user accounts. <br> State: Fully compliant and supported. <br> How often: Updates every 6 months (with monthly undocumented feature updates). | **Win10FeaturePreviewChannel** (example name) <br> Members are groups containing: <br> - Windows enthusiasts across departments and locations <br> - Staff with configurations that need testing <br> - IT admins and IT deployment staff <br> - Change managers <br> Internal training staff |
|||

Ongoing updates process:

1. Preview channel changes are deployed to the Win10PreviewChannel (example name) deployment group.
2. Win10PreviewChannel members confirm that Preview Channel changes are working to IT deployment staff.
3. Feature changes are deployed to the rest of the organization. 

## Deployment configuration for Microsoft 365 Apps

To be added


## Deployment configuration for Microsoft Edge

To be added

## Visual summary

![The resulting configuration of a rapid deployment organizaton](../media/deploy-update-channels-examples-rapid-deploy/channel-summary.png)

## Next step

See the [rapid deployment example for a multi-national organization]().


## See also

[Deployment guide](deploy-microsoft-365-enterprise.md)

[Test lab guides](m365-enterprise-test-lab-guides.md)


