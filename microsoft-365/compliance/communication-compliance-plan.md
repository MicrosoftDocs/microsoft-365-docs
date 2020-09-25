---
title: "Plan for communication compliance"
description: "Learn about planning for using communication compliance in your organization."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.SupervisoryReview'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
- MOE150
---

# Plan for communication compliance

Before getting started with [communication compliance](communication-compliance.md) in your organization, there are important planning activities and considerations that should be reviewed by your information technology and compliance management teams. Thoroughly understanding and planning for deployment in the following areas will help ensure that your implementation and use of communication compliance features goes smoothly and is aligned with the best practices for the solution.

## Work with stakeholders in your organization

Identify the appropriate stakeholders in your organization to collaborate for taking actions on communication compliance alerts. Some recommended stakeholders to consider including in initial planning and the end-to-end [communication compliance workflow](communication-compliance.md#workflow) are people from the following areas of your organization:

- Information technology
- Compliance
- Privacy
- Security
- Human resources
- Legal

## Plan for the investigation and remediation workflow

Select dedicated stakeholders to monitor and review the alerts and cases on a regular cadence in the [Microsoft 365 compliance center](https://compliance.microsoft.com/). Make sure understand how you will assign users and stakeholders to different communication compliance role groups in your organization.

Depending on how you wish to manage communication policies and alerts, you'll need to assign users to one or more role groups for administrators, reviewers, and investigators. You have the option to assign users to specific role groups to manage different sets of communication compliance features. Or you may decide to assign all the communication compliance users to the Communication Compliance role group. Use a single role group or multiple groups to best fit your compliance management requirements.

Plan to choose from these role group options when configuring communication compliance:

|**Role**|**Role permissions**|
|:-----|:-----|
| **Communication Compliance** | Use this role group to manage communication compliance for your organization in a single group. By adding all user accounts for designated administrators, analysts, investigators, and viewers, you can configure communication compliance permissions in a single group. This role group contains all the communication compliance permission roles. This configuration is the easiest way to quickly get started with communication compliance and is a good fit for organizations that do not need separate permissions defined for separate groups of users. |
| **Communication Compliance Admin** | Use this role group to initially configure communication compliance and later to segregate communication compliance administrators into a defined group. Users assigned to this role group can create, read, update, and delete communication compliance policies, global settings, and role group assignments. Users assigned to this role group cannot view message alerts. |
| **Communication Compliance Analyst** | Use this group to assign permissions to users that will act as communication compliance analysts. Users assigned to this role group can view policies where they are assigned as Reviewers, view message metadata (not message content), escalate to additional reviewers, or send notifications to users. Analysts cannot resolve pending alerts. |
| **Communication Compliance Investigator** | Use this group to assign permissions to users that will act as communication compliance investigators. Users assigned to this role group can view message metadata and content, escalate to additional reviewers, escalate to an Advanced eDiscovery case, send notifications to users, and resolve the alert. |
| **Communication Compliance Viewer** | Use this group to assign permissions to users that will manage communication reports. Users assigned to this role group can access all reporting widgets on the communication compliance home page and can view all communication compliance reports. |

## Plan for policies

Creating communication compliance policies is quick and easy with the [pre-defined templates](communication-compliance-feature-reference.md#policy-templates) for offensive language, sensitive information, and regulatory compliance. Custom communication compliance policies allow the flexibility for detecting and investigation issues specific to your organization and requirements.

When planning for communication compliance policies, consider the following areas:

- Consider adding all users in your organization as in-scope for your communication compliance policies. Identifying specific users as in-scope for individual policies are useful in some circumstances, however most organizations should include all users in communication compliance policies optimized for harassment or discrimination detection.
- To simplify your setup, consider creating groups for people who need their communications reviewed. If you're using groups; you might need several. For example, if you want to scan communications between two distinct groups of people, or if you want to specify a group that isn't supervised.
- Configure the percentage of communications to review at 100% to ensure that policies are catching all issues of concern in communications for your organization.
- You can scan communications from [third-party sources](communication-compliance-feature-reference.md#supported-communication-types) for data imported into mailboxes in your Microsoft 365 organization. To include review of communications in these platforms, you'll need to configure a connector to these services before messages meeting policy conditions are monitored by communication policy.
- Policies can support monitoring languages other than English in custom communication compliance policies. Build a [custom keyword dictionary](communication-compliance-feature-reference.md#custom-keyword-dictionaries) of offensive words in the language of your choice or build your own machine-learning model using [trainable classifiers](classifier-get-started-with.md) in Microsoft 365.
- All organizations have different communication standards and policy needs. Monitor for specific keywords using communication compliance [policy conditions](communication-compliance-feature-reference.md#conditional-settings) or monitor for specific types of information with [custom sensitive information types](create-a-custom-sensitive-information-type.md).

## Ready to get started?

To configure communication compliance for your Microsoft 365 organization, see [Configure communication compliance for Microsoft 365](communication-compliance-configure.md) or check out the [case study for Contoso](communication-compliance-case-study.md) and how they quickly configured a communication compliance policy to monitor for offensive language in Microsoft Teams, Exchange Online, and Yammer communications.
