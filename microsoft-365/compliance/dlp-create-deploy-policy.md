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

There are many configuration options in a Microsoft Purview Data Loss Prevention (DLP) policy and, each option changes the policy's behavior. This article presents some common policy intent scenarios that you'll map to configuration options, then it walks you through configuring those options. Once you familiarize yourself with these scenarios, you'll be comfortable using the DLP policy creation UX to create your own policies. 

How you deploy a policy is as important policy design. You have [multiple options to control policy deployment](#deployment). This article show you how to use these options so that the policy achieves your intent while avoiding costly business disruptions.  

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

If you're new to Microsoft Purview DLP, here's a list of the core articles you'll need as you implement DLP:

1. [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md) - the article introduces you to the data loss prevention discipline and Microsoft's implementation of DLP
1. [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp) - by working through this article you will:
    1. [Identify stakeholders](dlp-overview-plan-for-dlp.md#identify-stakeholders)
    1. [Describe the categories of sensitive information to protect](dlp-overview-plan-for-dlp.md#describe-the-categories-of-sensitive-information-to-protect)
    1. [Set goals and strategy](dlp-overview-plan-for-dlp.md#set-goals-and-strategy)
1. [Data Loss Prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference) - this article introduces all the components of a DLP policy and how each one influences the behavior of a policy
1. [Design a DLP policy](dlp-policy-design.md) - this article walks you through creating a policy intent statement and mapping it to a specific policy configuration. 
1. [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) - This article that you're reading now presents some common policy intent scenarios that you'll map to configuration options, then it walks you through configuring those options.

### SKU/subscriptions licensing

Before you get started with DLP policies, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons. 

For full licensing details, see: [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)


### Permissions <!--check these-->

Data from DLP on-premises scanner can be viewed in [Activity explorer](data-classification-activity-explorer.md). There are four roles that grant permission to activity explorer, the account you use for accessing the data must be a member of any one of them.

- Global administrator
- Compliance administrator
- Security administrator
- Compliance data administrator

#### Roles and Role Groups in preview<!-- Check these -->

There are roles and role groups in preview that you can test out to fine tune your access controls.

Here's a list of applicable roles that are in preview. To learn more about them, see [Roles in the Security & compliance portal](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center)

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

## Policy creation scenarios

The previous article [Design a DLP policy](dlp-policy-design.md) introduced you to the methodology of creating a policy intent statement and then mapping that to policy configuration options. This section takes those examples, plus a few more and walks you through the actual policy creation process. You should work through these scenarios in your test environment to familiarize yourself with the policy creation UI.

There are so many configuration options in the policy creation flow that it's not possible to cover every, or even most configurations, so we present several of the most common DLP policy scenarios that will give you hands on experience across a broad range of configurations.

### Scenario 1 Block emails with credit card numbers

> [!IMPORTANT]
> This is a hypothetical scenario with hypothetical values. It's only for illustrative purposes. You should substitute your own sensitive information types, sensitivity labels, distribution groups and users.

#### Scenario 1 pre-requisites and assumptions

This scenario uses the *Highly confidential* sensitivity label, so it requires that you have created and published sensitivity labels. To learn more, see:
- [Learn about sensitivity labels](sensitivity-labels.md)
- [Get started with sensitivity labels](get-started-with-sensitivity-labels.md)
- [Create and configure sensitivity labels and their policies](create-sensitivity-labels.md)

This procedure uses a hypothetical distribution group *Finance team* at Contoso.com and a hypothetical SMTP recipient *adele.vance@fabrikam.com*.

#### Scenario 1 policy intent statement and mapping

*We need to block emails to all recipients that contain credit card numbers or that have the  ‘highly confidential’ sensitivity label applied except if the email is sent from someone on the finance team to adele.vance@fabrikam.com. We want to notify the compliance admin every time an email is blocked and notify the user who sent the item and no one can be allowed to override the block. Track all occurrences of this high risk event in the log.*


|Statement|Configuration question answered and configuration mapping|
|---|---|
|"We need to block emails to all recipients..."|- **Where to monitor**: Exchange </br> - **Action**: Restrict access or encrypt the content in Microsoft 365 locations > Block users from receiving email or accessing shared SharePoint, OneDrive, and Teams files > Block everyone |
|"...that contain credit card numbers or have the 'highly confidential' sensitivity label applied..."| - **What to monitor** use the Custom template </br> - **Conditions for a match** edit it to add the *highly confidential* sensitivity label|
|"...except if..."| **Condition group configuration** - Create a nested boolean NOT condition group joined to the first conditions using a boolean AND|
|"...the email is sent from someone on the finance team..."| **Condition for match**: Sender is a member of|
|"...and..."| **Condition for match**: add a second second condition to the NOT group|
|"...to adele.vance@fabrikam.com..." | **Condition for match**:  Sender is|
|"...Notify..."|**User notifications**: enabled|
|"...the compliance admin every time an email is blocked and notify the user who sent the item..."| **Notify users in Office 365 service with a policy tip**: selected </br> - **Notify these people**: selected </br> **The person who sent, shared, or modified the content**: selected </br> - **Send the email to these additional people**: add the email address of the compliance administrator|
|"...and no one can be allowed to override the block...| **Allow overrides from M365 Services**: not selected|
|"...Track all occurrences of this high risk event in the log."| - **Use this severity level in admin alerts and reports**: high </br> - **Send an alert to admins when a rule match occurs**: selected </br> - **Send alert every time an activity matches the rule**: selected |


#### Steps to create policy for scenario 1

> [!IMPORTANT]
> For the purposes of this policy creation procedure, you'll accept the default include/exclude values and leave the policy turned off. You'll be changing these when you deploy the policy.

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>.

1. In the Microsoft Purview compliance portal \> left navigation \> **Solutions** \> **Data loss prevention** \> **Policies** \> **+ Create policy**.

1. Select **Custom** from the **Categories** list.
 
1. Select **Custom** from the **Templates** list.
 
1. Give the policy a name. 

> [!IMPORTANT]
> Policies cannot be renamed.

5. Fill in a description. You can use the policy intent statement here.

1. Select **Next**.

1. Set the **Exchange email** location status to **On**. Set all the other location status to **Off**.

1. Select **Next**.

1. Accept the default values for **Include** = **All** and **Exclude** = **None**.
 
1. The **Create or customize advanced DLP rules** option should already be selected.
 
1. Select **Next**.
 
1. Select **Create rule**. Name the rule and provide a description.

1. Select **Add condition** > **Content contains** > **Add** > **Sensitive info types** > **Credit Card Number**. Choose **Add**.
 
1. Select **Add condition** > **Sensitivity labels** > **Highly confidential**. Choose **Add**.
 
1. Select **Add group** > **AND** > **NOT** > **Add condition**.

1. Select **Sender is a member of** > **Add or Remove Distribution Groups** > **Finance Team**.

1. Choose **Add condition** > **AND** > **Recipient is**.  Add *adele.vance@fabrikam.com* and select **Add**.
 
1. Select **Add and action** > **Restrict access or encrypt the content in Microsoft 365 locations** > **Restrict access or encrypt the content in Microsoft 365 locations** > **Block users from receiving email or accessing shared SharePoint, OneDrive, and Teams file.** > **Block everyone**.
 
1. Set **User notifications** to **On**.
 
1. Select **Notify users in Office 365 service with a policy tip** > **Notify these people** > **The person who sent, shared, or modified the content**.
 
1. Select **Send the email to these additional people** and add the email address of the compliance administrator.
 
1. Make sure that **Allow override from M365 services** *isn't* selected.
 
1. Set **Use this severity level in admin alerts and reports** to **high**.
 
1. Set **Send an alert to admins when a rule match occurs** to **On**.
 
1. Select **Send alert every time an activity matches the rule**.
 
1. Choose **Save**.
 
1. Choose **Next** > **Keep it off** > **Next** > **Submit**.

<!--
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
-->

## Deployment

A successful policy deployment isn't just about getting the policy into your environment to enforce controls on user actions. A haphazard, rushed deployment can negatively impact business process and annoy your users. Those consequences will slow acceptance of DLP technology in your organization and the safer behaviors it promotes. Ultimately making your sensitive items less safe in the long run. 

Before you start your deployment, make sure you have read through [Policy deployment](dlp-overview-plan-for-dlp.md#policy-deployment) which gives you a broad overview of the policy deployment process and general guidance.

This section dives more deeply into the three types of controls you'll use in concert to manage your policies in production. Remember you can change any of these at any time, not just during policy creation.

### Three axes of deployment management

There are three axes you can use to control the policy deployment process, the scope, the state of the policy and the actions. You should always take an incremental approach to deploying a policy, starting from the least impactful/test mode through to full enforcement.

#### State

State is the primary control you'll use to rollout a policy. When you finished creating your policy, you set the state of the policy to **Keep it off**. You should leave it in this state while you're working on the policy configuration and until you get a final review and sign off. The state can be set to:

- **Test it out first**: No policy actions are enforced, events are audited. While in this state, you can monitor the impact of the policy in the DLP **Alert** console and the DLP **Activity explorer** console.
- **Test it out first and show policy tips while in test mode**: No actions are enforced, but users will receive policy tips to raise their awareness and educate them.
- **Turn it on right away**: This is full enforcement mode. 
- **Keep it off**: The policy is completely inactive. Use this state while developing and reviewing your policy before deployment.

You can change the state of a policy at anytime. 

#### Actions

Actions are what a policy does in response to user activities on sensitive items. Because you can change these at any time, you can start with the least impactful, *Allow*, gather and review the audit data, and use it to tune the policy before moving to more restrictive actions.

- **Allow**: The user activity is allowed to occur, so no business processes are impacted. You'll get audit data and there aren't any user notifications or alerts.
- **Audit only**: The user activity is allowed to occur, so no business processes are impacted. You'll get audit data and you can add notifications and alerts to raise awareness and train your users to know that what they're doing is a risky behavior. If your organization intends to enforce more restrictive actions later on, you can tell your users that too.
- **Block with override**: The user activity is blocked be default. You can audit the event, raise alerts and notifications. This will impact the business process, but your users will be given the option to override the block and provide a reason for the override. Because you get direct feedback from your users, this action can help you identify false positive matches, which you can use to further tune the policy. 
- **Block**: The user activity is blocked no matter what. You can audit the event, raise alerts and notifications.


#### Policy scope

Every policy is scoped to one or more locations, such as Exchange, SharePoint Online, Teams, and Devices. By default, when you select a location, all instances of that location fall under the scope and none are excluded. You can further refine which instances of the location (such as sites, groups, accounts, distribution groups, mailboxes, and devices) that the policy is applied to by configuring the include/exclude options for the location. To learn more about your include/exclude scoping options, see, [Locations](dlp-policy-reference.md#locations).

In general, you have more flexibility with scoping while the policy is in **Test it out first** state because no actions are taken. You can start with just the scope you designed the policy for or go broad to see how the policy would impact sensitive items in other locations. 

Then when you change the state to **Test it out first and show policy tips**, you should narrow your scope to a pilot group that can give you feedback and be early adopters who can be a resource for others when they come onboard.

When you move the policy to **Turn it on right away**, you'll broaden the scope to include all the instances of locations that you intended when the policy was designed. 









Policy deployments should follow these steps:

1. After you've created the policy and set its state to turned off, do a final review it with your stakeholders.
1. Set the state to test mode with no policy tips. The location scope can be broad at this point so you can gather data on the behavior of the policy.
1. Tune the policy based on the behavior data so that it better meets the business intent.
1. Refine the scope of locations if needed and make use of includes/exludes so that the policy is first rolled out to the users who are a good test group.
1. Set the state to test mode with policy tips. Gather user feedback and alert and event data, if needed tune the policy and your plans more. Make sure you address all the issues that your users bring up. It's pretty much a guaranteed that they'll raise things that you didn't think of. Develop a group of super users at this point. They can be a resource to help train other users as the scope of the policy is increased and more users come onboard.
1. 

You'll start deploying a policy in test mode where you'll tune it to fulfill your business intent based on it's behaviorAs you take a policy from test mode through to full enforcement, you have to educate your users.


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
