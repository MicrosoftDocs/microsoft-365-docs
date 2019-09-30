---
title: "Deploy SharePoint and OneDrive for Microsoft 365 Enterprise"
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/30/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-collaboration
- Strat_O365_Enterprise
ms.custom:
description: Step through the process of planning for, rolling out, and driving the value of SharePoint across your organization.
---

# Deploy SharePoint and OneDrive for Microsoft 365 Enterprise

*This workload is included in both the E3 and E5 versions of Microsoft 365 Enterprise*

SharePoint and Microsoft Teams are how you do file storage and sharing, content management, and collaboration and are key elements of the Built for Teamwork value of Microsoft 365 Enterprise. 

SharePoint also has advanced security capabilities including access control and permissions and encryption in flight and at rest. SharePoint security is a key element of the Intelligent Security value of Microsoft 365 Enterprise.

If you are brand new to SharePoint, see [SharePoint](https://products.office.com/sharepoint/sharepoint-online-collaboration-software) and [Get Started with SharePoint](https://support.office.com/article/Get-started-with-SharePoint-3a26444b-08c5-46ad-b80a-cda82b11b27b#ID0EAABAAA=Basics).

The following phases and steps guide you through the process of envisioning the role of SharePoint in your organization, onboarding your organization through a series of progressive rollouts, and driving usage and its value to your end users. Before you begin, make sure you've configured the right [foundation infrastructure](deploy-workloads.md#foundation-infrastructure-prerequisites) phases so that your SharePoint sites have the security capabilities you need. 

To deploy OneDrive for Microsoft 365 Enterprise, see the [OneDrive guide for enterprises](https://docs.microsoft.com/onedrive/plan-onedrive-enterprise).

## Phase 1: Envision
In this phase, you gather the people for your SharePoint deployment and determine how your organization will use SharePoint to address its business needs.

### Step 1: Gather your SharePoint deployment members

For a successful deployment of SharePoint on top of the [Microsoft 365 Enterprise foundation infrastructure](deploy-foundation-infrastructure.md), you need to get the right people for input and feedback. Key people include business decision makers, IT staff such as architects and implementers, and advocates for your end users. 

These three groups ensure that your deployment includes considerations that address business needs, technical aspects of folder and document migration and security, and that the result will be something that typical users will use.

#### Result

A list of people that represent the business, technical, and end user aspects of your organization.

### Step 2: Determine and prioritize your SharePoint business scenarios

SharePoint can be used for different purposes. You need to figure out which purposes map to your business needs. You should target SharePoint to address the document storage and sharing, content management, and collaboration needs of your teams, your division, or your entire organization. 

See the list of scenarios and capabilities at [SharePoint](https://products.office.com/sharepoint/sharepoint-online-collaboration-software).

The following business pillars can address your organization’s needs:

|||
|:-----|:-----|
| Share and Work Together | Take advantage of team sites, collaboration sites, and sync. |
| Inform and Engage | Information coming in the future. |
| Transform | Uses Flow to create a store or workflow. |
| Harness Collective Knowledge | Uses Search to give the desired results within your organization. |
| Protect | Ensures your organization is secured and has the correct compliance. |
| External/Develop | Lets your organization develop customize solutions and apps by using the SharePoint Framework. |
|||

See [SharePoint admin](https://docs.microsoft.com/sharepoint/sharepoint-online) for resources on how to configure SharePoint for your needs.

One way to see the benefits of SharePoint is to examine how individuals, a team, a division, or your entire organization interact today, and then find an appropriate scenario that provides easier ways to store and share files. Keep in mind that [Microsoft Teams](teams-workload.md) might be a better choice for some of your scenarios.

#### SharePoint site for highly regulated data

Highly regulated data is subject to regional regulations or is the most valuable data for your organization, such as trade secrets, financial or human resources information, and organization strategy. You can configure a SharePoint site for restricted access, data classification, data loss prevention, and encryption for this type of data. For the details, see [Microsoft Teams and SharePoint sites for highly regulated data](teams-sharepoint-online-sites-highly-regulated-data.md).

#### Result
A list of SharePoint scenarios that address your organization’s needs for document storage and sharing, content management, and collaboration.

## Phase 2: Onboard

In this phase, you plan for the technical aspects of a SharePoint deployment and start rolling them out to selected groups of users.

### Prerequisites: Identity and device access configuration

To protect access to SharePoint sites, ensure that you have configured [identity and device access policies](identity-access-policies.md) and the [recommended SharePoint access policies](sharepoint-file-access-policies.md).

### Step 1: Complete your technical planning

Before you begin technical planning, determine whether you want to use FastTrack. If your organization has over 50 seats and is participating in an [eligible plan](https://technet.microsoft.com/library/dn783224.aspx), you can use FastTrack benefits, available at no additional cost to guide you through planning, deployment, and service adoption. Or, you can complete this work yourself using FastTrack Onboarding Wizards, which are available from [FastTrack](https://docs.microsoft.com/fasttrack/m365-fasttrack-benefit-overview) once you sign in with your Microsoft 365 account.

If you are doing your own planning, or in conjunction with FastTrack, you need to determine if your network and organization are ready for SharePoint. It is especially important that you meet the exit criteria for networking in your foundation infrastructure, with special attention to Internet bandwidth, throughput, and traffic delays to maximize performance for the additional traffic for SharePoint-based documents.

Use these resources to prepare for the technical aspects of a SharePoint rollout: 

- [SharePoint planning guide](https://docs.microsoft.com/sharepoint/planning-guide)
- [Migrate to SharePoint](https://docs.microsoft.com/sharepointmigration/migrate-to-sharepoint-online) 

For a better understanding of security in SharePoint, review the following resources:

- 	[How SharePoint and OneDrive safeguard your data in the cloud](https://docs.microsoft.com/sharepoint/safeguarding-your-data)
- 	[Data Encryption in OneDrive and SharePoint](https://docs.microsoft.com/microsoft-365/compliance/data-encryption-in-odb-and-spo)

#### Result

You understand SharePoint sites and on-premises folder and document migration and security and are ready to begin rolling out SharePoint to selected groups in your organization.

### Step 2: Run an IT pilot

In most medium-sized and large organizations, you should run an IT pilot with your stakeholders from Phase 1, early adopters, and technical enthusiasts. During the IT pilot:

- Choose a SharePoint business scenario in which your IT pilot participants can practice.
- Give your pilot participants a set of exercises to test SharePoint document storage, sharing, collaboration, team-based scheduling, and other capabilities.
- Determine your change management strategy and produce materials to drive organization-wide user adoption of SharePoint. Change management materials can include email announcement text, internal training plans, hallway posters, and presentations. These materials will inform your organization about SharePoint and its benefits with the goals of raising awareness and driving usage. See the change management strategy for [Microsoft Teams](https://docs.microsoft.com/MicrosoftTeams/change-management-strategy) article for some ideas.
- Have your IT pilot participants review the change management materials based on their experiences. They can provide tips on best practices and advice on how to best describe the benefits of SharePoint and how to use it for communication and scheduling.

#### Result

Your SharePoint IT pilot is complete and the initial change management materials have been developed, reviewed, and refined.

### Step 3: Roll out to a business group

After completing your IT pilot, roll out SharePoint to a business group or department in your organization. This rollout should include:

- Identification of key business scenarios for SharePoint within the business group.
- Announcement activities to inform users of the expectations and timelines for SharePoint usage for departments and work or project teams.
- Migration of on-premises folders and documents of your business group members to SharePoint.
- Delivering user training or links to resources to introduce SharePoint and how to use it. See [SharePoint](https://support.office.com/article/sharepoint-online-video-training-cb8ef501-84db-4427-ac77-ec2009fb8e23) video training.
- A feedback mechanism, such as a central Microsoft Teams team containing everyone in the business group, to collect comments and act on issues from users in the business group.
 
During the rollout, you can refine your change management materials in preparation for the organization-wide rollout.

#### Result

A business group is up and running with SharePoint and the change management materials have been tested and refined.

## Phase 3: Drive value

In this phase, you complete the rollout of SharePoint and help your users realize its benefits.

### Step 1: Roll out to the rest of your organization

The rollout to the rest of your organization should include:

- Identification of key business scenarios for SharePoint Online within separate business groups.
- Use of your refined change management materials for announcement activities to inform your organization of the expectations and timelines for usage.
- Migration of folders and documents for the rest of your organization to SharePoint.
- Delivering user training or provide links to resources to introduce SharePoint and how to use it.
- A feedback mechanism, such as a central Team containing everyone, to collect comments and issues from organization users. If your organization has less than 2500 individuals, use a public channel in Teams. Otherwise, use a public group in Yammer.

#### Result
Your organization is up and running and your change management strategy is in place to inform, train, and enable users to use SharePoint.

### Step 2: Measure usage, manage satisfaction, and drive adoption

After rolling out to your entire organization, you must continue to employ your change management strategy to:

- Have your leadership promote SharePoint as the primary tool for document storage and sharing and team, division, or organization-wide collaboration.
- Encourage individuals to use it for business group, departmental, work, and project team collaboration and calendaring.

Here are some suggested activities:

- See [Success factors for Office 365](https://aka.ms/successfactors) to learn about general best practices for cloud service adoption. 
- See [Office 365 activity reports](https://docs.microsoft.com/office365/admin/activity-reports/activity-reports) to understand Office 365 service usage across your organization. If you aren’t an Office 365 global admin for your organization, ask someone who is a global admin to grant Reports Reader permissions to your user account so you can access activity reports.
- Monitor your feedback venue (a public channel in a central Teams team or Yammer) for issues and feedback from individuals about their experiences with SharePoint. Address questions and issues as quickly as you can to prevent frustrated individuals and demonstrate support for the rollout.
- Identify and nurture champions in each business group and highlight their accomplishments and best practices by using SharePoint. Reflect their successes out to the organization to show project success and adoption. Endorsement by technical leaders within a business group can exert a powerful influence over leaders and peers.

#### Result

Your organization has adopted SharePoint in Microsoft 365 Enterprise to support documentation storage and collaboration.

## How Microsoft does Microsoft 365 Enterprise

To peek inside Microsoft and learn how Microsoft deployed SharePoint, see [SharePoint to the cloud: Learn how Microsoft ran its own migration](https://www.microsoft.com/en-us/itshowcase/sharepoint-to-the-cloud-learn-how-microsoft-ran-its-own-migration).

## Next steps

See these resources for the ongoing maintenance of SharePoint: 

- [Understanding permission levels in SharePoint](https://docs.microsoft.com/sharepoint/understanding-permission-levels)
- [Customize SharePoint site permissions](https://docs.microsoft.com/sharepoint/customize-sharepoint-site-permissions)
- [Turn external sharing on or off for SharePoint](https://docs.microsoft.com/sharepoint/turn-external-sharing-on-or-off)
- [Set up and manage access requests](https://support.office.com/article/Set-up-and-manage-access-requests-94B26E0B-2822-49D4-929A-8455698654B3)
