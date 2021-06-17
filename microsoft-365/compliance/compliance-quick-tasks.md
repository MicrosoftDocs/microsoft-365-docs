---
title: "Quick tasks for getting started with Microsoft 365 compliance"
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- m365-security-compliance
- m365initiative-compliance
localization_priority: Normal
description: "Learn about tasks that will help you quickly get started with compliance in Microsoft 365."
---

# Quick tasks for getting started with Microsoft 365 compliance

If you're new to Microsoft 365 compliance and wondering where to start, this article provides guidance on the basics and prioritizes important compliance tasks. This article will help you quickly get started with managing and monitoring your data, protecting information, and minimizing insider risks.

This article is also helpful if you're figuring out how best to manage risks, protect your data, and remain compliant with regulations and standards with a newly remote workforce. Employees are now collaborating and connecting with each other in new ways, and this means your existing compliance processes and controls may need to adapt. Identifying and managing these new compliance risks within your organization is critical to safeguarding your data and minimizing threats and risks.

After you’ve completed these basic compliance tasks, consider expanding compliance coverage in your organization by implementing additional Microsoft 365 compliance solutions.

## Task 1: Configure compliance permissions

It’s important to manage who in your organization has access to the Microsoft 365 compliance center to view content and perform management tasks. Microsoft 365 provides administrative roles specific to compliance and for using the tools included in the Microsoft 365 compliance center.

Start by assigning compliance permissions to the people in your organization so that they can perform these tasks and to prevent unauthorized people from having access to areas outside of their responsibilities. You’ll want to make sure that you’ve assigned the proper people to the **Compliance data administrator** and the **Compliance administrator** admin roles before you start to configure and implement compliance solutions included with Microsoft 365. You’ll also need to assign users to the Azure Active Directory global reader role to view data in Compliance Manager.

For step-by-step guidance to configure permissions and assign people to admin roles, see [Permissions in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md).

## Task 2: Know your state of compliance

It’s difficult to know where to go if you don’t know where you are. Meeting your compliance needs includes understanding your current level of risk and what updates may be needed in these ever changing times. Whether your organization is new to compliance requirements or has deep experience with standards and regulations that govern your industry, the single best thing you can do to improve compliance is to understand where your organization stands.

[Microsoft Compliance Manager](compliance-manager.md) can help you understand your organization's compliance posture and highlight areas that may need improvement. Compliance Manager uses a centralized dashboard to calculate a risk-based score, measuring your progress in completing actions that help reduce risks around data protection and regulatory standards. You can also use Compliance Manager as a tool to track all your risk assessments. It provides workflow capabilities to help you efficiently complete your risk assessments through a common tool.

For step-by-step guidance to get started with Compliance Manager, see [Get started with Compliance Manager](compliance-manager-setup.md).

>[!IMPORTANT]
>Security and compliance are tightly integrated for most organizations. It’s important that your organization addresses basic security, threat protection, and identity and access management areas to help provide a defense in-depth approach to both security and compliance.
>
>Check your [Microsoft 365 Secure Score](../security/defender/microsoft-secure-score.md) in the Microsoft 365 security center and completing the tasks outlined in the following articles:
>
> - [Security roadmap - Top priorities for the first 30 days, 90 days, and beyond](../security/office-365-security/security-roadmap.md)
> - [Top 12 tasks for security teams to support working from home](../security/top-security-tasks-for-remote-work.md)

## Task 3: Enable auditing for your organization

Now that you've determined your organization's current state and who can manage compliance functions, the next step is to make sure you have the data to conduct compliance investigations and generate reports for network and user activities in your organization. Enabling auditing is also an important prerequisite for compliance solutions covered later in this article.

Insights provided by the audit log are a valuable tool in helping to match your compliance requirements to solutions that can help you manage and monitor compliance areas needing improvement. Audit logging must be enabled before activities are recorded and before you can search the audit log. When enabled, user and admin activity from your organization is recorded in the audit log and retained for 90 days, and up to one year depending on the license assigned to users.

For step-by-step instructions to turn on auditing, see [Turn audit log search on or off](turn-audit-log-search-on-or-off.md).

## Task 4: Create policies to alert you about potential compliance issues

Microsoft provides several built-in alert policies that help identify admin permissions abuse, malware activity, potential external and internal threats, and information governance risks. These policies are turned on by default, but you may need to configure custom alerts to help manage compliance requirements specific to your organization.

Use alert policy and alert dashboard tools to create custom alert policies and view the alerts generated when users perform activities that match the policy conditions. Some examples could be to use alert policies to track user and admin activities affecting compliance requirements, permissions, and data loss incidents in your organization.

For step-by-step guidance to create custom alert policies, see [Alert policies in the security and compliance center](alert-policies.md).

## Task 5: Classify and protect sensitive data

To get their work done, people in your organization collaborate with others both inside and outside the organization. This means that content no longer stays behind a firewall—it can roam everywhere, across devices, apps, and services. And when it roams, you want it to do so in a secure, protected way that meets your organization's business and compliance policies.

[Sensitivity labels](sensitivity-labels.md) let you classify and protect your organization's data, while making sure that user productivity and their ability to collaborate isn't hindered. Use sensitivity labels to enforce encryption and usage restrictions apply visual markings, and protect information across platforms and devices, on-premises and in the cloud.

For step-by-step guidance to configure and use sensitivity labels, see [Get started with sensitivity labels](get-started-with-sensitivity-labels.md). For sensitivity label licensing information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection).

## Task 6: Configure a retention policy

A [retention policy](retention.md) lets you proactively decide whether to retain content, delete content, or both—retain and then delete the content at the end of a specified retention period. These actions might be needed to comply with industry regulations and internal policies, as well as reduce your risk in the event of litigation or a security breach.

When content is subject to a retention policy, people can continue to edit and work with the content as if nothing's changed. The content is retained in place, in its original location. But if someone edits or deletes content that's subject to the retention policy, a copy of the original content is saved to a secure location where it's retained while the retention policy for that content is in effect.

You can quickly put a retention policy in place for multiple locations in your Microsoft 365 environment such as Exchange mail, SharePoint sites, OneDrive accounts, and Microsoft 365 groups. There are no limits to the number of mailboxes or sites this policy can automatically include. But if you need to get more selective, you can do so by configuring a retention policy for specific locations and include or exclude sites or users.

For step-by-step guidance to configure a retention policy, see [Create and configure retention policies](create-retention-policies.md). If you're new to configuring retention in Microsoft 365, see [Get started with retention policies and retention labels](get-started-with-retention.md).

## Task 7: Configure sensitive information and offensive language policies

Protecting sensitive information and detecting and acting on workplace harassment incidents is an important part of compliance with internal policies and standards. [Communication compliance](communication-compliance-feature-reference.md) in Microsoft 365 helps minimize these risks by helping you quickly detect, capture, and take remediation actions for email and Microsoft Teams communications. These include inappropriate communications containing profanity, threats, and harassment and communications that share sensitive information inside and outside of your organization.

A pre-defined *Offensive language and anti-harassment* policy template allows you to scan internal and external communications for policy matches so they can be examined by designated reviewers. Reviewers can investigate scanned email, Microsoft Teams, Yammer, or third-party communications in your organization and take appropriate remediation actions to make sure they're compliant with your organization's standards.

The pre-defined *Sensitive information* policy template helps you quickly create a policy to scan email and Microsoft Teams communications containing defined sensitive information types or keywords to help make sure that important data isn't shared with people that shouldn't have access. These activities could include unauthorized communication about confidential projects or industry-specific rules on insider trading or other collusion activities.

For step-by-step guidance to plan and configure communication compliance, see [Plan for communication compliance](communication-compliance-plan.md) and [Get started with communication compliance](communication-compliance-configure.md). For communication compliance licensing information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#communication-compliance).

## Task 8: See what's happening with your sensitive items

Sensitivity labels, sensitive information types, retention labels and policies and trainable classifiers can be used to classify and label sensitive items across Exchange, SharePoint, and OneDrive as you've seen in the previous tasks. The last step in your quick task journey is to see which items have been labeled and what actions your users are taking on those sensitive items. [content explorer](data-classification-content-explorer.md) and [activity explorer](data-classification-activity-explorer.md) provide this visibility.

### Content explorer
 Content explorer allows you to view, in their native format, all the items that have been classified as a sensitive information type or belonging to a certain classification by a trainable classifier, as well as all items that have sensitivity or retention label applied.

For step-by-step guidance to using content explorer, see [Know your data - data classification overview](data-classification-overview.md), and [Get started with content explorer](data-classification-content-explorer.md).

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

For step-by-step guidance to using activity explorer, see [Get started with activity explorer](data-classification-activity-explorer.md).

## Next steps

Now that you’ve configured the basics for compliance management for your organization, consider the following compliance solutions in Microsoft 365 to help you protect sensitive information and detect and act on additional insider risks.

### Configure retention labels

While retention policies apply at the container level to locations such as SharePoint sites and Exchange mailboxes, [retention labels](retention.md#retention-labels) allow for more specific targeting for your retention and deletion policies. For example, at the document or email message level that end users can apply manually in addition to automatic application by administrators. You can also apply a retention label to a document library, folder, or document set in SharePoint, so that all documents that are stored in that location inherit the default retention label.

Additionally, retention labels support [records management](records-management.md) to mark content as a record. When this happens, the label places additional restrictions on the content that might be needed to help your organization comply with regulatory requirements.

For step-by-step guidance to create and publish retention labels, see the following guidance:
- [Create retention labels and apply them in apps](create-apply-retention-labels.md)
- [Apply a retention label to content automatically](apply-retention-labels-automatically.md)

To get started with records management, see [Get started with records management](get-started-with-records-management.md).

### Identify and define sensitive information types

Define sensitive information types based on the pattern contained in information in your organization’s data. Use [built-in sensitive information types](./sensitive-information-type-entity-definitions.md) help identify and protect credit card numbers, bank account numbers, passport numbers, and more. Or create your own [custom sensitivity information types](create-a-custom-sensitive-information-type.md) specific to your organization.

For step-by-step guidance to define custom sensitive information types, see [Create a custom sensitive information type in the Security & Compliance Center](./create-a-custom-sensitive-information-type.md).

### Prevent data loss

[Data loss prevention (DLP) policies](dlp-learn-about-dlp.md) allow you to identify, monitor, and automatically protect sensitive information across your Microsoft 365 organization. Use DLP policies to identify sensitive items across Microsoft services, prevent the accidental sharing of sensitive items, and help users learn how to stay compliant without interrupting their workflow.

For step-by-step guidance to configure DLP policies, [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md). For data loss management licensing information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#office-365-data-loss-prevention-for-exchange-online-sharepoint-online-and-onedrive-for-business).

### Detect and act on insider risks

More and more, employees have increasing access to create, manage, and share data across a broad spectrum of platforms and services. In most cases, organizations have limited resources and tools to identify and mitigate organization-wide risks while also meeting compliance requirements and employee privacy standards. These risks may include data theft by departing employees and data leaks of information outside your organization by accidental oversharing or malicious intent.

[Insider risk management](insider-risk-management-policies.md) in Microsoft 365 uses the full breadth of service and 3rd-party indicators to help you quickly identify, triage, and act on risky user activity. By using logs from Microsoft 365 and Microsoft Graph, insider risk management allows you to define specific policies to identify risk indicators and to take action to mitigate these risks.

For step-by-step guidance to plan and configure insider risk management policies, see [Plan for insider risk management](insider-risk-management-plan.md) and [Get started with insider risk management](insider-risk-management-configure.md). For insider risk management licensing information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#insider-risk-management).