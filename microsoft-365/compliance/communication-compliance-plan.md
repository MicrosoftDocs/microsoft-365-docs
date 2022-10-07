---
title: "Plan for communication compliance"
description: "Learn about planning for using communication compliance in your organization."
keywords: Microsoft 365, Microsoft Purview, compliance, communication compliance
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
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MET150
- MOE150
---

# Plan for communication compliance

>[!IMPORTANT]
>Microsoft Purview Communication Compliance provides the tools to help organizations detect regulatory compliance violations (for example SEC or FINRA), such as sensitive or confidential information, harassing or threatening language, and sharing of adult content. Built with privacy by design, usernames are pseudonymized by default, role-based access controls are built in, investigators are opted in by an admin, and audit logs are in place to ensure user-level privacy.

Before getting started with [communication compliance](/microsoft-365/compliance/communication-compliance) in your organization, there are important planning activities and considerations that should be reviewed by your information technology and compliance management teams. Thoroughly understanding and planning for deployment in the following areas will help ensure that your implementation and use of communication compliance features goes smoothly and is aligned with the best practices for the solution.

For more information and an overview of the planning process to address compliance and risky activities in your organization, see [Starting an insider risk management program](https://download.microsoft.com/download/b/2/0/b208282a-2482-4986-ba07-15a9b9286df0/pwc-starting-an-insider-risk-management-program-with-pwc-and-microsoft.pdf).

You can also check out the [Microsoft Mechanics video](https://www.youtube.com/watch?v=Ynkfu8OF0wQ) on how insider risk management and communication compliance work together to help minimize data risks from users in your organization.

> [!IMPORTANT]
> Communication compliance is currently available in tenants hosted in geographical regions and countries supported by Azure service dependencies. To verify that communication compliance is supported for your organization, see [Azure dependency availability by country/region](/troubleshoot/azure/general/dependency-availability-by-country).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Transitioning from Supervision in Office 365

For organizations using supervision policies in Office 365, you should immediately plan to transition to communication compliance policies in Microsoft Purview and need to understand these important points:

- The supervision solution in Office 365 has been fully replaced by the communication compliance solution in Microsoft Purview. We recommend creating new policies in communication compliance that have the same settings as existing supervision policies to use the new investigation and remediation improvements.
- Messages saved in supervision in Office 365 policy matches can't be moved or shared into communication compliance.
- For organizations with both solutions used side by side during the transition process, policies used in each solution must have unique policy names. Groups and custom keyword dictionaries can be shared between solutions during a transition period.

For retirement information for supervision in Office 365, see the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap) for details.

## Work with stakeholders in your organization

Identify the appropriate stakeholders in your organization to collaborate for taking actions on communication compliance alerts. Some recommended stakeholders to consider including in initial planning and the end-to-end [communication compliance workflow](/microsoft-365/compliance/communication-compliance#workflow) are people from the following areas of your organization:

- Information technology
- Compliance
- Privacy
- Security
- Human resources
- Legal

## Plan for the investigation and remediation workflow

### Permissions

Select dedicated stakeholders to investigate and review the alerts and cases on a regular cadence in the [Microsoft Purview compliance portal](https://compliance.microsoft.com/). Make sure you understand how you'll assign users and stakeholders to different communication compliance role groups in your organization.

> [!IMPORTANT]
> After configuring your role groups, it may take up to 30 minutes for the role group permissions to apply to assigned users across your organization.

There are six role groups used to configure initial permissions to manage communication compliance features. To make **Communication compliance** available as a menu option in Microsoft Purview compliance portal and to continue with these configuration steps, you must be assigned to one of the following roles or role groups:

- Azure Active Directory [*Global Administrator*](/azure/active-directory/roles/permissions-reference#global-administrator) role
- Azure Active Directory [*Compliance Administrator*](/azure/active-directory/roles/permissions-reference#compliance-administrator) role
- Microsoft Purview compliance portal [*Organization Management*](/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center) role group
- Microsoft Purview compliance portal [*Compliance Administrator*](/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center) role group
- *Communication Compliance* role group
- *Communication Compliance Admin* role group

Members of the following roles have the same solution permissions included with the *Communication Compliance Admin* role group:

- Azure Active Directory *Global Administrator*
- Azure Active Directory *Compliance Administrator*
- Microsoft Purview compliance portal *Organization Management*
- Microsoft Purview compliance portal *Compliance Administrator*

> [!IMPORTANT]
> Make sure you always have at least one user in the *Communication Compliance* or *Communication Compliance Admin* role groups (depending on the option you choose) so that your communication compliance configuration doesn't get in to a 'zero administrator' scenario if specific users leave your organization.

Depending on how you wish to manage communication compliance policies and alerts, you'll need to assign users to specific role groups to manage different sets of communication compliance features. You have the option to assign users with different compliance responsibilities to specific role groups to manage different areas of communication compliance features. Or you may decide to assign all user accounts for designated administrators, analysts, investigators, and viewers to the *Communication Compliance* role group. Use a single role group or multiple role groups to best fit your compliance management requirements.

Choose from these solution role group options when configuring and managing communication compliance:

|**Role**|**Role permissions**|
|:-----|:-----|
| **Communication Compliance** | Use this role group to manage communication compliance for your organization in a single group. By adding all user accounts for designated administrators, analysts, investigators, and viewers, you can configure communication compliance permissions in a single group. This role group contains all the communication compliance permission roles. This configuration is the easiest way to quickly get started with communication compliance and is a good fit for organizations that don't need separate permissions defined for separate groups of users. Users that create policies as a communication compliance administrator must have their mailbox hosted on Exchange Online. |
| **Communication Compliance Admin** | Use this role group to initially configure communication compliance and later to segregate communication compliance administrators into a defined group. Users assigned to this role group can create, read, update, and delete communication compliance policies, global settings, and role group assignments. Users assigned to this role group can't view message alerts. Users that create policies as a communication compliance administrator must have their mailbox hosted on Exchange Online. |
| **Communication Compliance Analyst** | Use this group to assign permissions to users that will act as communication compliance analysts. Users assigned to this role group can view policies where they're assigned as Reviewers, view message metadata (not message content), escalate to additional reviewers, or send notifications to users. Analysts can't resolve pending alerts. |
| **Communication Compliance Investigator** | Use this group to assign permissions to users that will act as communication compliance investigators. Users assigned to this role group can view message metadata and content, escalate to additional reviewers, escalate to an eDiscovery (Premium) case, send notifications to users, and resolve the alert. |
| **Communication Compliance Viewer** | Use this group to assign permissions to users that will manage communication reports. Users assigned to this role group can access all reporting widgets on the communication compliance home page and can view all communication compliance reports. |

### Supervised users

Before you start using communication compliance, you must determine who needs their communications reviewed. In the policy, user email addresses identify individuals or groups of people to supervise. Some examples of these groups are Microsoft 365 Groups, Exchange-based distribution lists, Yammer communities, and Microsoft Teams channels. You also can exclude specific users or groups from scanning with a specific exclusion group or a list of groups. For more information about groups types supported in communication compliance policies, see [Get started with communication compliance](/microsoft-365/compliance/communication-compliance-configure#step-3-optional-set-up-groups-for-communication-compliance).

> [!IMPORTANT]
> Users covered by communication compliance policies must have either a Microsoft 365 E5 Compliance license, an Office 365 Enterprise E3 license with the Advanced Compliance add-on, or be included in an Office 365 Enterprise E5 subscription. If you don't have an existing Enterprise E5 plan and want to try communication compliance, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279).

### Reviewers

When you create a communication compliance policy, you must determine who reviews the messages of the supervised users. In the policy, user email addresses identify individuals or groups of people to review supervised communications. All reviewers must have mailboxes hosted on Exchange Online, must be assigned to either the *Communication Compliance Analyst* or *Communication Compliance Investigator* role groups, and must be assigned in the policy they need to investigate. When reviewers are added to a policy, they automatically receive an email message that notifies them of the assignment to the policy and provides links to information about the review process.

### Groups for supervised users and reviewers

To simplify your setup, create groups for people who need their communications reviewed and groups for people who review those communications. If you're using groups, you might need several. For example, if you want to scan communications between two distinct groups of people, or if you want to specify a group that isn't supervised. When you assign a Distribution group in the policy, the policy detects all emails from each user in Distribution group. When you assign a Microsoft 365 group in the policy, the policy detects all emails sent to that group, not the individual emails received by each group member.

Adding groups and distribution lists to communication compliance policies are part of the overall conditions and rules set, so the maximum number of groups and distribution lists that a policy supports varies depending on the number of conditions also added to the policy. Each policy should support approximately 20 groups or distribution lists, depending on the number of additional conditions present in the policy.

Use the following chart to help you configure groups in your organization for communication compliance policies:

| **Policy Member** | **Supported Groups** | **Unsupported Groups** |
|:-----|:-----|:-----|
|Supervised users <br> Excluded users | Distribution groups <br> Microsoft 365 Groups | Dynamic distribution groups <br> Nested distribution groups <br> Mail-enabled security groups <br> Microsoft 365 groups with dynamic membership |
| Reviewers | None | Distribution groups <br> Dynamic distribution groups <br> Nested distribution groups <br> Mail-enabled security groups |

### Privacy

Protecting the privacy of users that have policy matches is important and can help promote objectivity in data investigation and analysis reviews for communication compliance alerts. This setting applies only to user names displayed the communication compliance solution. It doesn't affect how names are displayed in other compliance solutions or admin center.

For users with a communication compliance match, you can choose one of the following settings in **Communication compliance settings**:

- **Show anonymized versions of usernames**: User names are anonymized to prevent users in *Communication Compliance Analyst* role group from seeing who is associated with policy alerts. Users in the *Communication Compliance Investigator* role group will always see user names, not the anonymized versions. For example, a user 'Grace Taylor' would appear with a randomized pseudonym such as 'AnonIS8-988' in all areas of the communication compliance experience. Choosing this setting anonymizes all users with current and past policy matches and applies to all policies. User profile information in the communication compliance alert details won't be available when this option is chosen. However, user names are displayed when adding new users to existing policies or when assigning users to new policies. If you choose to turn off this setting, user names are displayed for all users that have current or past policy matches.
- **Do not show anonymized versions of usernames**: User names are displayed for all current and past policy matches for communication compliance alerts. User profile information (the name, title, alias, and organization or department) is displayed for the user for all communication compliance alerts.

## Plan for policies

Creating communication compliance policies is quick and easy with the [pre-defined templates](/microsoft-365/compliance/communication-compliance-policies#policy-templates) for inappropriate content, sensitive information, and regulatory compliance. Custom communication compliance policies allow the flexibility for detecting and investigation issues specific to your organization and requirements.

When planning for communication compliance policies, consider the following areas:

- Consider adding all users in your organization as in-scope for your communication compliance policies. Identifying specific users as in-scope for individual policies are useful in some circumstances, however most organizations should include all users in communication compliance policies optimized for harassment or discrimination detection.
- Configure the percentage of communications to review at 100% to ensure that policies are catching all issues of concern in communications for your organization.
- You can scan communications from [third-party sources](/microsoft-365/compliance/communication-compliance-channels#third-party-sources) for data imported into mailboxes in your Microsoft 365 organization. To include review of communications in these platforms, you'll need to configure a connector to these services before messages meeting policy conditions are detected by communication policy.
- Policies can support detecting languages other than English in custom communication compliance policies. Build a [custom keyword dictionary](/microsoft-365/compliance/communication-compliance-policies#custom-keyword-dictionaries) of offensive words in the language of your choice or build your own machine learning model using [trainable classifiers](/microsoft-365/compliance/classifier-get-started-with) in Microsoft 365.
- All organizations have different communication standards and policy needs. Detect specific keywords using communication compliance [policy conditions](/microsoft-365/compliance/communication-compliance-policies#conditional-settings) or detect specific types of information with [custom sensitive information types](/microsoft-365/compliance/create-a-custom-sensitive-information-type).

## Creating a communication compliance policy walkthrough

Want to see an in-depth walkthrough of setting up a new communication compliance policy and remediating an alert? Check out the following 15-minute video to see a demonstration of how communication compliance policies can help you detect inappropriate messages, investigate potential violations, and remediate compliance issues.
<br>
<br>

>[!VIDEO https://www.microsoft.com/videoplayer/embed/RWNchy]
<br>

## Ready to get started?

To configure communication compliance for your Microsoft 365 organization, see [Configure communication compliance](/microsoft-365/compliance/communication-compliance-configure) or check out the [case study for Contoso](/microsoft-365/compliance/communication-compliance-case-study) and how they quickly configured a communication compliance policy to detect inappropriate content in Microsoft Teams, Exchange Online, and Yammer communications.
