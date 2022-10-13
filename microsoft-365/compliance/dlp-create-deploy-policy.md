---
title: "Create and deploy a data loss prevention policy"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: how-to
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- highpri
- tier1 
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
ms.custom: admindeeplinkCOMPLIANCE
search.appverid: 
- MET150
description: "Scenarios for creating and deploying DLP policies"
---

# Create and Deploy data loss prevention policies

<!--If anyone asks why create and deploy are lumped into one article and not separated, it is because the deployment controls that this article covers are ONLY available in the policy creation or editing flow. The deployment controls are set in the creation or editing tool-->

There are many configuration options in a Microsoft Purview data loss prevention (DLP) policy, each option changes the policy's behavior. This article presents some common policy intent scenarios that you'll map to configuration options, then it walks you through configuring those options. Once you familiarize yourself with these scenarios, you'll be comfortable using the DLP policy creation UX to create your own policies. 

How you deploy a policy is as important policy design. You have multiple options to control policy deployment. This article show you how to use these options so that the policy achieves your intent while avoiding costly business disruptions.  

## Before you begin

> [!WARNING]
> Before you attempt to create and deploy a DLP policy make sure you have read through and done the work in the preceding core steps of the DLP adoption process. 
>
> 1. [Learn about data loss prevention](dlp-learn-about-dlp.md)
> 1. [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md)
> 1. [Data loss prevention policy reference](dlp-policy-reference.md)
> 1. [Design a data loss prevention policy](dlp-policy-design.md)
>
> This article is the fifth in the series of core steps in the DLP adoption process.
>
> There are additional articles that help you learn about and get started with many of the locations that DLP can monitor. You should be familiar with the ones that apply to the locations you want to monitor. 

### SKU/subscriptions licensing

Before you get started with DLP policies, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons. 

For full licensing details see: [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)


### Permissions <!--check these-->

Data from DLP on-premises scanner can be viewed in [Activity explorer](data-classification-activity-explorer.md). There are four roles that grant permission to activity explorer, the account you use for accessing the data must be a member of any one of them.

- Global administrator
- Compliance administrator
- Security administrator
- Compliance data administrator

#### Roles and Role Groups in preview<!-- Check these -->

There are roles and role groups in preview that you can test out to fine tune your access controls.

Here's a list of applicable roles that are in preview. To learn more about them, see [Roles in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center)

- Information Protection Admin
- Information Protection Analyst
- Information Protection Investigator
- Information Protection Reader

Here's a list of applicable role groups that are in preview. To learn more about the, see [Role groups in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#role-groups-in-the-security--compliance-center)

- Information Protection
- Information Protection Admins
- Information Protection Analysts
- Information Protection Investigators
- Information Protection Readers

## Workflow overview

Add a diagram here for creation and deployment

## Policy creation scenarios

### Scenario 1
4)	Scenario 1 email (SPO) - “We need to block emails to all recipients that contain credit card numbers or that have the  ‘highly confidential’ sensitivity label applied except if the email is sent from someone on the finance team to adele.vance@fabrikam.com” - introduces NOT
a.	Mapping
b.	Creation - can include template/custom
c.	Deployment
i.	testing/tuning
ii.	move fully into production

### Scenario 2

5)	Scenario 2 email - “Contoso needs to block all emails that contain a password protected OR a zip document file extension is zip/7z except it the recipient is in  the contoso.com domain OR the fabrikam domain OR the sender is a member of the Contoso HR group. Introduces nested NOT with and OR
a.	Mapping
b.	Creation - can include creation from a template
c.	Deployment
i.	testing/tuning
ii.	move fully into production

### Scenario 3

Scenario recommendation: Restrict users from uploading sensitive data to unsanctioned locations (Web sites, USB devices, printers, etc) AND block users from copying/saving data from Sensitive sites.

### Scenario 4
Endpoint

### Scenario 5

Endpoint + Teams

## Deployment

There are three aspects to keep in mind when you plan the deployment of a policy.


three axis to deployment

1. scoping the policy by location and includes/excludes
2. state
    1. test
    1. test with awareness
    1. keep turned off/archived
1. Actions
    1. allow
    1. audit
    1. block with override
    1. block




control objectives

controls

monitor impact, and tune the policy to meet your control objectives. DLP policies can take strong protective actions, which if implemented without proper care can disrupt your business processes and user productivity After you've created a policy, you'll take a graduated approach to deploying it.


probably first deploy it to a small group and in test mode, get feedback that you'll use to tune the policy and then deploy it to progressively larger and large groups and move it from test mode, to monitor mode and finally to full enforcement mode.


## See also

- [Learn about DLP on-premises scanner](dlp-on-premises-scanner-learn.md)
- [Use DLP on-premises scanner](dlp-on-premises-scanner-use.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
