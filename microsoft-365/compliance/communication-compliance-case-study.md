---
title: "Case study - Contoso configures a communication compliance policy to identify potentially inappropriate text"
description: "A case study for Contoso and how they quickly configure a communication compliance policy to detect potentially inappropriate text in Microsoft Teams, Exchange Online, and Yammer communications."
keywords: Microsoft 365, Microsoft Purview, compliance, communication compliance
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.custom: 
- admindeeplinkMAC
- admindeeplinkCOMPLIANCE
- admindeeplinkEXCHANGE
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

# Case study - Contoso configures a communication compliance policy to identify potentially inappropriate text for Microsoft Teams, Exchange, and Yammer communications

> [!IMPORTANT]
> Microsoft Purview Communication Compliance provides the tools to help organizations detect regulatory compliance violations (for example SEC or FINRA), such as sensitive or confidential information, harassing or threatening language, and sharing of adult content. Built with privacy by design, usernames are pseudonymized by default, role-based access controls are built in, investigators are opted in by an admin, and audit logs are in place to help ensure user-level privacy.

[Microsoft Purview Communication Compliance](/microsoft-365/compliance/communication-compliance) helps minimize communication risks by helping you detect, capture, and act on messages with potentially inappropriate text in your organization. Potentially inappropriate text may include profanity, threats, harassment, and adult content. Pre-defined and custom [policies](/microsoft-365/compliance/communication-compliance-policies) allow you to review internal and external communications for policy matches, so they can be examined by designated reviewers. Reviewers can [investigate alerts](/microsoft-365/compliance/communication-compliance-investigate-remediate#investigate-alerts) for email, Microsoft Teams, Yammer, or third-party communications throughout your organization and take appropriate [remediation actions](/microsoft-365/compliance/communication-compliance-investigate-remediate#remediate-alerts) to make sure they're compliant with your organization's message standards.

The Contoso Corporation is a fictional organization that needs to quickly configure a policy to detect potentially inappropriate text. They have been using Microsoft 365 primarily for email, Microsoft Teams, and Yammer support for their users, but have new requirements to enforce company policy around workplace harassment. Contoso IT administrators and compliance specialists have a basic understanding of the fundamentals of working with Microsoft 365 and are looking for end-to-end guidance for how to quickly get started with communication compliance.

This case study covers the basics for quickly configuring a communication compliance policy to detect potentially inappropriate text. This guidance includes:

- [Step 1: Planning for communication compliance](#step-1-planning-for-communication-compliance)
- [Step 2: Accessing communication compliance](#step-2-accessing-communication-compliance)
- [Step 3: Configuring prerequisites and creating a communication compliance policy](#step-3-configuring-prerequisites-and-creating-a-communication-compliance-policy)
- [Step 4: Investigate and remediate alerts](#step-4-investigate-and-remediate-alerts)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Step 1: Planning for communication compliance

Contoso IT administrators and compliance specialists attended online webinars about compliance solutions in Microsoft Purview and decided that communication compliance policies will help them meet the updated corporate policy requirements for reducing workplace harassment. Working together, they've developed a plan to create and enable a communication compliance policy that will detect potentially inappropriate messages. This configuration includes detecting text for chats sent in Microsoft Teams, private messages and community conversations in Yammer, and in email messages sent in Exchange Online.

Their plan includes identifying the:

- IT administrators who need access to communication compliance features.
- Compliance specialists who need to create and manage communication compliance policies.
- Compliance specialists and other colleague in other departments (Human Resources, Legal, etc.) who need to investigate and remediate communication compliance alerts.
- Users who will be in-scope for the communication compliance potentially inappropriate text policy.

### Licensing

The first step is to confirm whether Contoso's Microsoft 365 licensing includes support for the communication compliance solution. To access and use communication compliance, Contoso IT administrators need to verify Contoso has one of the following:

- Microsoft 365 E5/A5/F5/G5 subscription (paid or trial version)
- Microsoft 365 E3/A3/F3/G5 subscription + the Microsoft 365 E5/A5/F5/G5 Compliance add-on
- Microsoft 365 E3/A3/F3/G5 subscription + the Microsoft 365 E5/A5/F5/G5 Insider Risk Management add-on
- Office 365 Enterprise E5 subscription (paid or trial version)
- Office 365 A5 subscription (paid or trial version)
- Office 365 Enterprise E3 subscription + the Office 365 Advanced Compliance add-on (no longer available for new subscriptions, see note)

Users included in communication compliance policies must be assigned one of the licenses above. For more information about subscriptions and licensing, see [Microsoft 365 guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#communication-compliance).

> [!IMPORTANT]
> Office 365 Advanced Compliance is no longer sold as a standalone subscription. When current subscriptions expire, customers should transition to one of the subscriptions above, which contain the same or additional compliance features.

Contoso IT administrators take the following steps to verify the licensing support for Contoso:

1. IT administrators sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) and go to Microsoft 365 admin center > **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">**Licenses**</a>.

2. Here they confirm that they have one of the [license options](/microsoft-365/compliance/communication-compliance-configure#subscriptions-and-licensing) that includes support for communication compliance.

![Communication compliance licensing.](../media/communication-compliance-case-licenses.png)

### Permissions for communication compliance

There are five role groups used to configure permissions to manage communication compliance features. To make **Communication compliance** available as a menu option in Microsoft Purview compliance portal and to continue with these configuration steps, Contoso administrators are assigned the *Communication Compliance Admin* role.

Contoso decides to use the *Communication Compliance* role group assign all the communication compliance administrators, analysts, investigators, and viewers to the group. This role group configuration makes it easier for Contoso to get started quickly and best fits their compliance management requirements.

|**Role**|**Role permissions**|
|:-----|:-----|
| **Communication Compliance** | Use this role group to manage communication compliance for your organization in a single group. By adding all user accounts for designated administrators, analysts, investigators, and viewers, you can configure communication compliance permissions in a single group. This role group contains all the communication compliance permission roles. This role group configuration is the easiest way to quickly get started with communication compliance and is a good fit for organizations that don't need separate permissions defined for separate groups of users. |
| **Communication Compliance Admin** | Use this role group to initially configure communication compliance and later to segregate communication compliance administrators into a defined group. Users assigned to this role group can create, read, update, and delete communication compliance policies, global settings, and role group assignments. Users assigned to this role group can't view message alerts. |
| **Communication Compliance Analyst** | Use this group to assign permissions to users that will act as communication compliance analysts. Users assigned to this role group can view policies where they're assigned as Reviewers, view message metadata (not message content), escalate to additional reviewers, or send notifications to users. Analysts can't resolve pending alerts. |
| **Communication Compliance Investigator** | Use this group to assign permissions to users that will act as communication compliance investigators. Users assigned to this role group can view message metadata and content, escalate to additional reviewers, escalate to an eDiscovery (Premium) case, send notifications to users, and resolve the alert. |
| **Communication Compliance Viewer** | Use this group to assign permissions to users that will manage communication reports. Users assigned to this role group can access all reporting widgets on the communication compliance home page and can view all communication compliance reports. |

1. Contoso IT administrators sign into the [Microsoft Purview compliance portal](https://compliance.microsoft.com/permissions) permissions page using credentials for a global administrator account and select the link to view and manage roles in Microsoft 365.
2. In the Microsoft Purview compliance portal, they go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2173597" target="_blank">**Permissions**</a> and select the link to view and manage roles in Office 365.
3. The administrators select the *Communication Compliance* role group, then select **Edit role group**.
4. The administrators select **Choose members** from the left navigation pane, then select **Edit**.
5. They select **Add** and then select the checkbox for all Contoso users that will manage communication compliance, investigate, and review alerts.
6. The administrators select **Add**, then select **Done**.
7. They select **Save** to add Contoso users to the role group. They select **Close** to complete the steps.

## Step 2: Accessing communication compliance

After configuring the permissions for communication compliance, Contoso IT administrators and compliance specialists assigned to the Communication Compliance role group can access the communication compliance solution in Microsoft Purview. Contoso IT administrators and compliance specialists have several ways to access communication compliance and get started creating a new policy:

- Starting directly from the communication compliance solution
- Starting from the Microsoft Purview compliance portal
- Starting from the Microsoft Purview solution catalog
- Starting from the Microsoft 365 admin center

### Starting directly from the communication compliance solution

The quickest way to access the solution is to sign in directly to the [Communication compliance solution](https://compliance.microsoft.com/supervisoryreview). Using this link, Contoso IT administrators and compliance specialists will be directed to the communication compliance home page where you can quickly review the status of alerts and create new policies from the pre-defined templates.

![Communication compliance home.](../media/communication-compliance-home.png)

### Starting from the Microsoft Purview compliance portal

Another easy way for Contoso IT administrators and compliance specialists to access the communication compliance solution is to sign in directly to the [Microsoft Purview compliance portal](https://compliance.microsoft.com). After signing in, users simply need to select the **Show all** control to display all the compliance solutions, and then select the **Communication compliance** solution to get started.

![Compliance center.](../media/communication-compliance-compliance-portal.png)

### Starting from the Microsoft Purview solution catalog

Contoso IT administrators and compliance specialists could also choose to access the communication compliance solution by selecting the Microsoft Purview solution catalog. By selecting **Catalog** in **Solutions** section of the left navigation while in the **Microsoft Purview compliance portal**, they can open the solution catalog listing all Microsoft Purview solutions. Scrolling down to the **Insider risk management** section, Contoso IT administrators can select Communication compliance to get started. Contoso IT administrators also decide to use the Show in navigation control to pin the communication compliance solution to the left-navigation pane for quicker access when they sign in going forward.

![Solution catalog.](../media/m365-solution-catalog-home.png)

### Starting from the Microsoft 365 admin center

To access communication compliance when starting from the Microsoft 365 admin center, Contoso IT administrators and compliance specialists sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) and go to [Microsoft Purview compliance portal](https://compliance.microsoft.com)

![Communication compliance link.](../media/communication-compliance-case-compliance-link.png)

This action opens the **Office 365 Security and Compliance center**, and they must select the link to the **Microsoft Purview compliance portal** provided in the banner at the top of the page.

![Office 365 security and compliance center.](../media/communication-compliance-case-scc.png)

Once in the **Microsoft Purview compliance portal**, Contoso IT administrators select **Show all** to display the full list of compliance solutions.

![Communication compliance menu.](../media/communication-compliance-case-show-all.png)

After selecting **Show all**, the Contoso IT administrators can access the communication compliance solution.

![Communication compliance overview.](../media/communication-compliance-case-overview.png)

## Step 3: Configuring prerequisites and creating a communication compliance policy

To get started with a communication compliance policy, there are several prerequisites that Contoso IT administrators need to configure before setting up the new policy to detect potentially inappropriate text. After these prerequisites have been completed, Contoso IT administrators and compliance specialists can configure the new policy, and compliance specialists can start investigation and remediating any generated alerts.

### Enabling auditing in Microsoft 365

Communication compliance requires audit logs to show alerts and track remediation actions taken by reviewers. The audit logs are a summary of all activities associated with a defined organizational policy or anytime there's a change to a communication compliance policy.

Contoso IT administrators review and complete the [step-by-step instructions](/microsoft-365/compliance/turn-audit-log-search-on-or-off) to turn on auditing. After they turn on auditing, a message is displayed that says the audit log is being prepared and that they can run a search in a couple of hours after the preparation is complete. The Contoso IT administrators only have to do this action once.

### Configuring Yammer tenant for Native Mode

Communication compliance requires that the Yammer tenant for an organization is in Native Mode to detect potentially inappropriate text in private messages and public community conversations.

Contoso IT administrators make sure they review the information in the [Overview of Yammer Native Mode in Microsoft 365 article](/yammer/configure-your-yammer-network/overview-native-mode) and follow the steps for running the migration tool in the [Configure your Yammer network for Native Mode for Microsoft 365](/yammer/configure-your-yammer-network/native-mode) article.

### Setting up a group for in-scope users

Contoso compliance specialists want to add all users to the communication policy that will detect potentially inappropriate text. They could decide to add each user account to the policy separately, but they've decided it's much easier and saves time to use an **All Users** distribution group for the users for this policy.

They need to create a new group to include all Contoso users, so they take the following steps:

1. Contoso IT administrators IT sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) and go to Microsoft 365 admin center > **Groups** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">**Groups**</a>.
2. They select **Add a group** and complete the wizard to create a new *Microsoft 365 group* or *Distribution group*.

    ![Groups.](../media/communication-compliance-case-all-employees.png)

3. After the new group is created, they need to add all Contoso users to the new group. They open the [Exchange admin center](https://outlook.office365.com/ecp) and navigate to **Exchange admin center** > **recipients** > <a href="https://go.microsoft.com/fwlink/?linkid=2183233" target="_blank">**Groups**</a>. The Contoso IT administrators select the Membership area and the new *All Employees* group they created and select the **Edit** control to add all Contoso users to the new group in the wizard.

    ![Exchange admin center.](../media/communication-compliance-case-eac.png)

### Creating the policy to detect potentially inappropriate text

With all the prerequisites completed, the IT administrators and the compliance specialists for Contoso are ready to configure the communication compliance policy to detect potentially inappropriate text. Using the text policy template, configuring this new policy is simple and quick.

1. The Contoso IT administrators and compliance specialists sign into the **Microsoft Purview compliance portal** and select **Communication compliance** from the left navigation pane. This action opens the dashboard that has quick links for communication compliance policy templates. They choose **Policies**, scroll to the **Detect inappropriate text** template, and then select the **Create policy** template.

    ![Communication compliance detect inappropriate text template](../media/communication-compliance-case-template.png)

2. On the policy template wizard, the Contoso IT administrators and compliance specialists work together to complete the three required fields: **Policy name**, **Users or groups to supervise**, and **Reviewers**.
3. Since the policy wizard has already suggested a name for the policy, the IT administrators and compliance specialists decide to keep the suggested name and focus on the remaining fields. They select the *All users* group for the **Users or groups to supervise** field and select the compliance specialists that should investigate and remediate policy alerts for the **Reviewers** field. The last step to configure the policy and start gathering alert information is to select **Create policy**.

    ![Communication compliance detect inappropriate text wizard](../media/communication-compliance-case-wizard.png)

## Step 4: Investigate and remediate alerts

Now that the communication compliance policy to detect potentially inappropriate text is configured, the next step for the Contoso compliance specialists will be to investigate and remediate any alerts generated by the policy. It will take up to an hour for the policy to fully process communications in all the communication source channels and for alerts to show up in the **Alert dashboard**.

After alerts are generated, Contoso compliance specialists will continue to follow the [workflow instructions](/microsoft-365/compliance/communication-compliance-investigate-remediate) to investigate and remediate potentially inappropriate text issues.
