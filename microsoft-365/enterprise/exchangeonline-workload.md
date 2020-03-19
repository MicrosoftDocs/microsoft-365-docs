---
title: "Deploy Exchange Online for Microsoft 365 Enterprise"
author: JoeDavies-MSFT
manager: laurawi
ms.date: 10/09/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: M365-email-calendar
ms.custom:
- Strat_O365_Enterprise
description: Step through the process of planning for, rolling out, and driving the value of Exchange Online in Microsoft 365 Enterprise across your organization.
---

# Deploy Exchange Online for Microsoft 365 Enterprise

*This workload is included in both the E3 and E5 versions of Microsoft 365 Enterprise*

Exchange Online is your primary cloud service for email and calendaring that helps your users collaborate in ways that do not require real-time chatting or centralized document storage. Exchange Online is a key element of the Built for Teamwork value of Microsoft 365 Enterprise. Exchange Online lets you accomplish more and work more effectively with the well-known Outlook application, no matter what device you're on.

Exchange Online also has advanced security capabilities including anti-malware and anti-spam filtering to protect mailboxes and data loss prevention capabilities that prevent users from mistakenly sending sensitive information to unauthorized people. Exchange Online security is a key element of the Intelligent Security value of Microsoft 365 Enterprise.

If you are brand new to Exchange Online, see [Microsoft Exchange Online](https://products.office.com/exchange/exchange-online).

The following phases and steps guide you through the process of envisioning the role of Exchange Online in your organization, onboarding your organization to Exchange Online through a series of progressive rollouts, and driving usage of Exchange Online and its value to your end users.

>[!Note]
>These deployment instructions should be followed only after you've completed [Phase 2-Identity of the Microsoft 365 Enterprise foundation infrastructure](identity-infrastructure.md).
>

## Phase 1: Envision your Exchange Online deployment

In this phase, you gather the people for your Exchange Online deployment and determine how your organization will use Exchange Online to address its business needs.

### Step 1: Gather your Exchange Online deployment members

For a successful deployment of Exchange Online on top of [Phase 2-Identity](identity-infrastructure.md) of the Microsoft 365 Enterprise foundation infrastructure, you need to gather the right people for input and feedback. Key people include business decision makers, IT staff such as architects and implementers, and advocates for your end users. 

These three groups ensure that your Exchange Online deployment includes considerations that address business needs, technical aspects of mailbox migration and security, and that the result is something that typical users will use.

#### Result

A list of people that represent the business, technical, and end user aspects of your organization.

### Step 2: Determine and prioritize your Exchange Online business scenarios

Exchange Online can be used for different purposes. You need to figure out which purposes map to your business needs on the separate levels of your organization, your business groups, your departments, or individual working and project teams. You should target Exchange Online to address your individual and small group short-lived communication and scheduling needs. 

One way to see the benefits of Exchange Online is to examine how individuals, a team, or v-team interact today, and then find an appropriate scenario that provides easier ways to communicate, schedule meetings, and collaborate. Keep in mind that [Microsoft Teams](teams-workload.md) might be a better choice for some of your collaboration scenarios.

#### Result
A list of Exchange Online scenarios that address your organization's needs for communication, scheduling, and short-lived collaboration.

## Phase 2: Onboard

In this phase, you plan for the technical aspects of an Exchange Online deployment and start rolling it out to selected groups of users.

### Prerequisites: Identity and device access configuration

To protect access to Exchange Online mailboxes, ensure that you have configured [identity and device access policies](identity-access-policies.md) and the [recommended Exchange Online access policies](secure-email-recommended-policies.md).

### Step 1: Complete your technical planning

Before you begin technical planning, determine whether you want to use FastTrack. If your organization has over 50 seats and is participating in an [eligible plan](https://docs.microsoft.com/fasttrack/O365-fasttrack-benefit-for-office-365), you can use [FastTrack for Microsoft 365](https://fasttrack.microsoft.com/microsoft365), *available at no additional cost* to guide you through planning, deployment, and service adoption. Or, you can complete this work yourself using FastTrack Onboarding Wizards, which are available from [FastTrack](https://fasttrack.microsoft.com/) once you sign in with your Microsoft 365 account.

If you are doing your own planning, or in conjunction with FastTrack, you need to determine if your network and organization are ready for Exchange Online. It is especially important that you meet the exit criteria for [networking](networking-infrastructure.md) in your foundation infrastructure for users connected to your organization network. Pay special attention to Internet bandwidth, throughput, and traffic delays to maximize performance for the additional traffic for Exchange Online-based email and attachments.

Use these resources to prepare for the technical aspects of an Exchange Online rollout: 

- [Ways to migrate multiple email accounts to Office 365](https://docs.microsoft.com/Exchange/mailbox-migration/mailbox-migration)
- [Migrate Exchange Server public folders to Exchange Online](https://docs.microsoft.com/Exchange/collaboration/public-folders/migrate-to-exchange-online?view=exchserver-2019)
- [Migrate Exchange Server public folders to Office 365 Groups](https://docs.microsoft.com/Exchange/collaboration/public-folders/batch-migration-to-office-365-groups?view=exchserver-2019)
- [Collaboration in Exchange Online](https://docs.microsoft.com/exchange/collaboration-exo/collaboration-exo)
- [Recipients in Exchange Online](https://docs.microsoft.com/exchange/recipients-in-exchange-online/recipients-in-exchange-online)
- [Outlook for iOS and Android](https://docs.microsoft.com/Exchange/clients-and-mobile-in-exchange-online/outlook-for-ios-and-android/outlook-for-ios-and-android)

For a better understanding of security in Exchange Online, review the following resources:

- [Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/permissions-exo) 
- [Security and compliance for Exchange Online](https://docs.microsoft.com/exchange/security-and-compliance/security-and-compliance) 
- [Anti-spam and anti-malware protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/anti-spam-and-anti-malware-protection)

Next, use these resources to understand Exchange Online mailbox management:

- [Create user mailboxes in Exchange Online](https://docs.microsoft.com/exchange/recipients-in-exchange-online/create-user-mailboxes)
- [Manage user mailboxes](https://docs.microsoft.com/exchange/recipients-in-exchange-online/manage-user-mailboxes/manage-user-mailboxes) 
- [Create and manage distribution groups](https://docs.microsoft.com/exchange/recipients-in-exchange-online/manage-distribution-groups/manage-distribution-groups)

#### Result

You understand mailbox migration, security, and management and are ready to begin rolling out Exchange Online to selected groups in your organization.

### Step 2: Run an IT pilot

For most medium-sized and large organizations, you should run an IT pilot with your stakeholders from Phase 1, early adopters, and technical enthusiasts. During the IT pilot:

- Give your pilot participants Microsoft 365 licenses and migrate their on-premises mailboxes to Exchange Online.
- Give your pilot participants a set of exercises to test Exchange Online email, scheduling, and other capabilities.
- Determine your change management strategy and produce materials to drive organization-wide user adoption of Outlook and Exchange Online. 
 
  Change management materials can include email announcement text, internal training plans, hallway posters, and presentations. These materials will inform your organization about Exchange Online and its benefits with the goals of raising awareness and driving usage. See the [change management strategy for Microsoft Teams](https://docs.microsoft.com/MicrosoftTeams/change-management-strategy) article for some ideas.

- Have your IT pilot participants review the change management materials based on their experiences. They can provide tips on best practices and advice on how to best describe the benefits of Outlook and Exchange Online and how to use it for communication and scheduling.

#### Result

Your Exchange Online IT pilot is complete and the initial change management materials have been developed, reviewed, and refined.

### Step 3: Roll out to a business group

After completing your IT pilot, roll out Exchange Online to a business group or department in your organization. If your organization is using an on-premises email service such as Exchange Server, this rollout consists of mailbox migration. This rollout should include:

- Identification of key business scenarios for Exchange Online within the business group.
- Announcement activities to inform users of the expectations and timelines for Exchange Online usage for departments and work or project teams.
- Migration of on-premises mailboxes of your business group members to Exchange Online.
- Delivering [user training](https://support.office.com/article/outlook-training-8a5b816d-9052-4190-a5eb-494512343cca) on Outlook or links to resources to introduce Outlook and how to use it.
- A feedback mechanism, such as a central Microsoft Teams team containing everyone in the business group, to collect comments and act on issues from users in the business group.

During the rollout, you can refine your change management materials in preparation for the organization-wide rollout.

#### Result

A business group is up and running with Outlook and Exchange Online and the change management materials have been tested and refined.

## Phase 3: Drive value

In this phase, you complete the rollout of Exchange Online and support your users to help them realize its benefits.

### Step 1: Roll out Exchange Online to the rest of your organization

The rollout to the rest of your organization should include:

- Identification of key business scenarios for Exchange Online within separate business groups.
- Use of your refined change management materials for announcement activities to inform your organization of the expectations and timelines for Exchange Online usage.
- Migration of the mailboxes for the rest of your organization to Exchange Online.
- Delivering [user training](https://support.office.com/article/outlook-training-8a5b816d-9052-4190-a5eb-494512343cca) on Outlook or provide links to resources to introduce Outlook and how to use it.
- A feedback mechanism, such as a central Team containing everyone, to collect comments and issues from organization users. If your organization has less than 2500 individuals, use a public channel in Teams. Otherwise, use a public group in Yammer.

#### Result

Your organization is up and running and your change management strategy is in place to inform, train, and enable users to use Exchange Online.

### Step 2: Measure usage, manage satisfaction, and drive adoption

After rolling out Exchange Online to your entire organization, you must continue to employ your change management strategy to:

- Have your leadership promote Exchange Online as the primary tool for individual and short-lived communication and scheduling.
- Encourage individuals to use it for business group, departmental, work, and project team communications, calendaring, and collaboration.

Here are some suggested activities:

- See [Success factors for Office 365](https://aka.ms/successfactors) to learn about general best practices for cloud service adoption. 
- See [Office 365 activity reports](https://docs.microsoft.com/office365/admin/activity-reports/activity-reports) to understand Office 365 service usage across your organization. If you aren't a global admin for your organization, ask someone who is a global admin to grant Reports Reader permissions to your user account so you can access activity reports.
- Monitor your feedback venue (a public channel in a central Teams team or Yammer) for issues and feedback from individuals about their experiences with Exchange Online. Address questions and issues as quickly as you can to prevent frustrated individuals and demonstrate support for the rollout.
- Identify and nurture champions in each business group and highlight their best practices using Outlook. Reflect their successes out to the organization to show project success and adoption. Endorsement by technical leaders within a business group can exert a powerful influence over leaders and peers.

#### Result

Your organization has adopted Exchange Online and Outlook as its primary individual and small group short-lived communication and scheduling tool.

## How Microsoft does Microsoft 365 Enterprise

To peek inside Microsoft and learn how we migrated to Exchange Online and are using Exchange Online Protection to protect against cyber attacks, see:

- [Microsoft migrates 150,000 mailboxes to Exchange Online](https://www.microsoft.com/itshowcase/Article/Content/577/Microsoft-migrates-150000-mailboxes-to-Exchange-Online)
- [Microsoft uses threat intelligence to protect, detect, and respond to threats](https://www.microsoft.com/itshowcase/Article/Content/934/Microsoft-uses-threat-intelligence-to-protect-detect-and-respond-to-threats)
- [Microsoft thwarts phishing attempts with Office 365](https://www.microsoft.com/itshowcase/Article/Content/956/Microsoft-thwarts-phishing-attempts-with-Office-365)

## Next steps

See these resources for the ongoing maintenance of Exchange Online:

- [Exchange admin center in Exchange Online](https://docs.microsoft.com/exchange/exchange-admin-center) 
- [Monitoring, reporting, and message tracing in Exchange Online](https://docs.microsoft.com/exchange/monitoring/monitoring)
- [Backing up email in Exchange Online](https://docs.microsoft.com/exchange/back-up-email) 
