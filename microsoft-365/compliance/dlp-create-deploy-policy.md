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

There are many configuration options in a Microsoft Purview data loss prevention (DLP) policy and, each option changes the policy's behavior. This article presents some common policy intent scenarios that you'll map to configuration options, then it walks you through configuring those options. Once you familiarize yourself with these scenarios, you'll be comfortable using the DLP policy creation UX to create your own policies. 

How you deploy a policy is as important policy design. You have multiple options to control policy deployment. This article show you how to use these options so that the policy achieves your intent while avoiding costly business disruptions.  

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

## Policy creation scenarios

The previous article [Design a DLP policy](dlp-policy-design.md) introduced you to the methodology of creating a policy intent statement and then mapping that to policy configuration options. This section takes those examples, plus a few more and walks you through the actual policy creation process. You should work through these in your test environment to familiarize yourself with the policy creation UI.

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
|"...that contain credit card numbers or have the 'highly confidential' sensitivity label applied..."| - **What to monitor** use the Custom template template </br> - **Conditions for a match** edit it to add the *highly confidential* sensitivity label|
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

There are three aspects to keep in mind when you plan the deployment of a policy.


three axes to deployment

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

-->


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
