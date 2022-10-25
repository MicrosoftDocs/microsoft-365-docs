---
title: "Quick tasks for getting started with compliance in Microsoft Purview"
description: "Learn about tasks that will help you quickly get started with compliance in Microsoft Purview."
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
f1.keywords:
- NOCSH
ms.collection:
- tier1
- purview-compliance
ms.custom: 
- admindeeplinkDEFENDER
- intro-get-started
ms.localizationpriority: medium
---

# Quick tasks for getting started with compliance in Microsoft Purview

If you're new to Microsoft Purview and wondering where to start, this article provides guidance on the basics and prioritizes important compliance tasks. This article will help you quickly get started with managing and monitoring your data, protecting information, and minimizing insider risks.

This article is also helpful if you're figuring out how best to manage risks, protect your data, and remain compliant with regulations and standards with a newly remote workforce. Employees are now collaborating and connecting with each other in new ways, and this change means your existing compliance processes and controls may need to adapt. Identifying and managing these new compliance risks within your organization is critical to safeguarding your data and minimizing threats and risks.

After you've completed these basic compliance tasks, consider expanding compliance coverage in your organization by implementing additional Microsoft Purview solutions.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Task 1: Configure compliance permissions

It's important to manage who in your organization has access to the Microsoft Purview compliance portal to view content and perform management tasks. Microsoft 365 provides administrative roles specific to compliance and for using the tools included in the Microsoft Purview compliance portal.

Start by assigning compliance permissions to the people in your organization so that they can perform these tasks and to prevent unauthorized people from having access to areas outside of their responsibilities. You'll want to make sure that you've assigned the proper people to the **Compliance data administrator** and the **Compliance administrator** admin roles before you start to configure and implement compliance solutions included with Microsoft 365. You'll also need to assign users to the Azure Active Directory global reader role to view data in Compliance Manager.

For step-by-step guidance to configure permissions and assign people to admin roles, see [Permissions in the Microsoft Purview compliance portal](/microsoft-365/compliance/microsoft-365-compliance-center-permissions).

## Task 2: Know your state of compliance

It's difficult to know where to go if you don't know where you are. Meeting your compliance needs includes understanding your current level of risk and what updates may be needed in these ever changing times. Whether your organization is new to compliance requirements or has deep experience with standards and regulations that govern your industry, the single best thing you can do to improve compliance is to understand where your organization stands.

[Microsoft Purview Compliance Manager](/microsoft-365/compliance/compliance-manager) can help you understand your organization's compliance posture and highlight areas that may need improvement. Compliance Manager uses a centralized dashboard to calculate a risk-based score, measuring your progress in completing actions that help reduce risks around data protection and regulatory standards. You can also use Compliance Manager as a tool to track all your risk assessments. It provides workflow capabilities to help you efficiently complete your risk assessments through a common tool.

For step-by-step guidance to get started with Compliance Manager, see [Get started with Compliance Manager](/microsoft-365/compliance/compliance-manager-setup).

> [!IMPORTANT]
> Security and compliance are tightly integrated for most organizations. It's important that your organization addresses basic security, threat protection, and identity and access management areas to help provide a defense in-depth approach to both security and compliance.
>
> Check your [Microsoft 365 Secure Score](/microsoft-365/security/defender/microsoft-secure-score) in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> and completing the tasks outlined in the following articles:
>
> - [Security roadmap - Top priorities for the first 30 days, 90 days, and beyond](/microsoft-365/security/office-365-security/security-roadmap)
> - [Top 12 tasks for security teams to support working from home](/microsoft-365/security/top-security-tasks-for-remote-work)

## Task 3: Enable auditing for your organization

Now that you've determined your organization's current state and who can manage compliance functions, the next step is to make sure you have the data to conduct compliance investigations and generate reports for network and user activities in your organization. Enabling auditing is also an important prerequisite for compliance solutions covered later in this article.

Insights provided by the audit log are a valuable tool in helping to match your compliance requirements to solutions that can help you manage and monitor compliance areas needing improvement. Audit logging must be enabled before activities are recorded and before you can search the audit log. When enabled, user and admin activity from your organization is recorded in the audit log and retained for 90 days, and up to one year depending on the license assigned to users.

For step-by-step instructions to turn on auditing, see [Turn audit log search on or off](/microsoft-365/compliance/turn-audit-log-search-on-or-off).

## Task 4: Create policies to alert you about potential compliance issues

Microsoft provides several built-in alert policies that help identify admin permissions abuse, malware activity, potential external and internal threats, and data lifecycle management risks. These policies are turned on by default, but you may need to configure custom alerts to help manage compliance requirements specific to your organization.

Use alert policy and alert dashboard tools to create custom alert policies and view the alerts generated when users perform activities that match the policy conditions. Some examples could be to use alert policies to track user and admin activities affecting compliance requirements, permissions, and data loss incidents in your organization.

For step-by-step guidance to create custom alert policies, see [Alert policies in the security and compliance center](/microsoft-365/compliance/alert-policies).

## Task 5: Classify and protect sensitive data

To get their work done, people in your organization collaborate with others both inside and outside the organization. This means that content no longer stays behind a firewall—it can roam everywhere, across devices, apps, and services. And when it roams, you want it to do so in a secure, protected way that meets your organization's business and compliance policies.

[Sensitivity labels](/microsoft-365/compliance/sensitivity-labels) let you classify and protect your organization's data, while making sure that user productivity and their ability to collaborate isn't hindered. Use sensitivity labels to enforce encryption and usage restrictions apply visual markings, and protect information across platforms and devices, on-premises and in the cloud.

For step-by-step guidance to configure and use sensitivity labels, see [Get started with sensitivity labels](/microsoft-365/compliance/get-started-with-sensitivity-labels).

## Task 6: Configure retention policies

A [retention policy](/microsoft-365/compliance/retention) lets you proactively decide whether to retain content, delete content, or both—retain and then delete the content at the end of a specified retention period. These actions might be needed to comply with industry regulations and internal policies, and to reduce your risk in the event of litigation or a security breach.

When content is subject to a retention policy, people can continue to edit and work with the content as if nothing's changed. The content is retained in place, in its original location. But if someone edits or deletes content that's subject to the retention policy, a copy of the original content is saved to a secure location where it's retained while the retention policy for that content is in effect.

You can quickly put retention policies in place for multiple services in your Microsoft 365 environment that include Teams and Yammer messages, Exchange mail, SharePoint sites, and OneDrive accounts. There are no limits to the number of users, mailboxes or sites that a retention policy can automatically include. But if you need to get more selective, you can do so by configuring either an adaptive scope that's query-based to dynamically target specific instances, or a static scope that specifies specific instances to always include or always exclude.

For step-by-step guidance to configure retention policies, see [Create and configure retention policies](/microsoft-365/compliance/create-retention-policies). Because retention policies form the cornerstone of a data lifecycle management strategy for Microsoft 365 apps and services, also see [Get started with data lifecycle management](/microsoft-365/compliance/get-started-with-data-lifecycle-management).

## Task 7: Configure sensitive information and inappropriate language policies

Protecting sensitive information and detecting and acting on workplace harassment incidents is an important part of compliance with internal policies and standards. [Communication compliance](/microsoft-365/compliance/communication-compliance) in Microsoft Purview helps minimize these risks by helping you quickly detect, capture, and take remediation actions for email and Microsoft Teams communications. These include inappropriate communications containing profanity, threats, and harassment and communications that share sensitive information inside and outside of your organization.

A pre-defined *Detect inappropriate text* policy template allows you to check internal and external communications for policy matches so they can be examined by designated reviewers. Reviewers can investigate email, Microsoft Teams, Yammer, or third-party communications in your organization and take appropriate remediation actions to make sure they're compliant with your organization's standards.

The pre-defined *Detect sensitive info* policy template helps you quickly create a policy to check email and Microsoft Teams communications containing defined sensitive information types or keywords to help make sure that important data isn't shared with people that shouldn't have access. These activities could include unauthorized communication about confidential projects or industry-specific rules on insider trading or other collusion activities.

For step-by-step guidance to plan and configure communication compliance, see [Plan for communication compliance](/microsoft-365/compliance/communication-compliance-plan) and [Get started with communication compliance](/microsoft-365/compliance/communication-compliance-configure). For communication compliance licensing information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#communication-compliance).

## Task 8: See what's happening with your sensitive items

Sensitivity labels, sensitive information types, retention labels and policies and trainable classifiers can be used to classify and label sensitive items across Exchange, SharePoint, and OneDrive as you've seen in the previous tasks. The last step in your quick task journey is to see which items have been labeled and what actions your users are taking on those sensitive items. [content explorer](/microsoft-365/compliance/data-classification-content-explorer) and [activity explorer](/microsoft-365/compliance/data-classification-activity-explorer) provide this visibility.

### Content explorer

Content explorer allows you to view, in their native format, all the items that have been classified as a sensitive information type or belonging to a certain classification by a trainable classifier, and all items that have sensitivity or retention label applied.

For step-by-step guidance to using content explorer, see [Know your data - data classification overview](/microsoft-365/compliance/data-classification-overview), and [Get started with content explorer](/microsoft-365/compliance/data-classification-content-explorer).

### Activity explorer

Activity explorer helps you monitor what's being done with your classified and labeled sensitive items across:

- SharePoint
- Exchange
- OneDrive

There are over 30 different filters available for use, some are:

- date range
- activity type
- location
- user
- sensitivity label
- retention label
- file path
- DLP policy

For step-by-step guidance to using activity explorer, see [Get started with activity explorer](/microsoft-365/compliance/data-classification-activity-explorer).

## Next steps

Now that you've configured the basics for compliance management for your organization, consider the following compliance solutions in Microsoft Purview to help you protect sensitive information and detect and act on additional insider risks.

### Configure retention labels

Whereas retention policies automatically apply to all items at the container level (such as SharePoint sites, user mailboxes, and so on), [retention labels](/microsoft-365/compliance/retention#retention-labels) apply to individual items, such as a SharePoint document or an email message. You can apply these labels manually or automatically.

Retention labels can be used as part of your data governance strategy to retain what you need and delete what you don't. Use these labels when you need exceptions to your retention policies when specific documents or emails need different retention or deletion settings. For example, your SharePoint policy retains all documents for three years, but specific business documents must be retained for five years. For more information, see [Create retention labels for exceptions to your retention policies](/microsoft-365/compliance/create-retention-labels-data-lifecycle-management).

However, retention labels, when used with [records management](/microsoft-365/compliance/records-management), provide many more management options to support documents and emails at the item level. This level of data management is well-suited to high-value items for business, legal, or regulatory record-keeping requirements. For more information, see [Get started with records management](/microsoft-365/compliance/get-started-with-records-management).

### Identify and define sensitive information types

Define sensitive information types based on the pattern contained in information in your organization's data. Use [built-in sensitive information types](./sensitive-information-type-entity-definitions.md) help identify and protect credit card numbers, bank account numbers, passport numbers, and more. Or create your own [custom sensitivity information types](/microsoft-365/compliance/create-a-custom-sensitive-information-type) specific to your organization.

For step-by-step guidance to define custom sensitive information types, see [Create a custom sensitive information type in the Security & Compliance Center](./create-a-custom-sensitive-information-type.md).

### Prevent data loss

[Microsoft Purview Data Loss Prevention (DLP) policies](/microsoft-365/compliance/dlp-learn-about-dlp) allow you to identify, monitor, and automatically protect sensitive information across your Microsoft 365 organization. Use DLP policies to identify sensitive items across Microsoft services, prevent the accidental sharing of sensitive items, and help users learn how to stay compliant without interrupting their workflow.

For step-by-step guidance to configure DLP policies, [Create, test, and tune a DLP policy](/microsoft-365/compliance/create-test-tune-dlp-policy). For data loss management licensing information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#office-365-data-loss-prevention-for-exchange-online-sharepoint-online-and-onedrive-for-business).

### Detect and act on insider risks

More and more, employees have increasing access to create, manage, and share data across a broad spectrum of platforms and services. In most cases, organizations have limited resources and tools to identify and mitigate organization-wide risks while also meeting compliance requirements and employee privacy standards. These risks may include data theft by departing employees and data leaks of information outside your organization by accidental oversharing or malicious intent.

[Insider risk management](/microsoft-365/compliance/insider-risk-management-policies) uses the full breadth of service and 3rd-party indicators to help you quickly identify, triage, and act on risky user activity. By using logs from Microsoft 365 and Microsoft Graph, insider risk management allows you to define specific policies to identify risk indicators and to take action to mitigate these risks.

For step-by-step guidance to plan and configure insider risk management policies, see [Plan for insider risk management](/microsoft-365/compliance/insider-risk-management-plan) and [Get started with insider risk management](/microsoft-365/compliance/insider-risk-management-configure). For insider risk management licensing information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#insider-risk-management).
