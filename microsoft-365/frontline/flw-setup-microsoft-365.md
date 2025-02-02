---
title: Set up Microsoft 365 for frontline workers
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: 
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to set up Microsoft 365 with the services and features you need for your frontline workforce.
ms.localizationpriority: high
ms.collection: 
  - m365-frontline
  - highpri
  - m365solution-frontline
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 12/24/2024
---

# Set up Microsoft 365 for frontline workers

To set up Microsoft 365 for frontline workers, follow this overall process:

1. **[Identify your scenarios](#step-1-identify-your-scenarios)**: Which scenarios do you want to implement for your frontline workers? After you determine which scenarios you want, use the following table to identify the apps and services for each scenario that you want to implement.
1. **[Set up your environment and core Microsoft 365](#step-2-set-up-your-environment-and-core-microsoft-365)**: You can use the deployment guides in the Microsoft 365 admin center to help you set up Microsoft 365. Keep reading to learn how to access these guides.
1. **[Provision users, configure groups, and assign licenses](#step-3-provision-users-configure-groups-and-assign-licenses)**: Provision users and create groups in Microsoft Entra ID, then assign frontline licenses to your users.
1. **[Set up and configure devices](#step-4-set-up-and-configure-devices)**: Set up shared and personal devices to work with Microsoft 365 and Microsoft Teams and to allow your frontline workers to communicate more securely within your organization.
1. **[Deploy Teams](#step-5-deploy-your-frontline-teams)**: Deploy your frontline teams.
1. **[Set up any other services needed for your scenario](#step-6-set-up-other-services)**: Set up services including Exchange, Outlook, SharePoint, and Microsoft Viva.
1. **[Configure apps](#step-7-configure-apps-for-your-scenario)**: Follow the guidance for your scenarios to further configure the apps you need for each scenario.

:::image type="content" source="media/flw-setup-microsoft-365-steps.png" alt-text="Diagram showing steps to set up Microsoft 365 for frontline workers." lightbox="media/flw-setup-microsoft-365-steps.png":::

## Step 1: Identify your scenarios

The following table lists the scenarios for your frontline workers. You can read a summary of each scenario in [choose your scenarios](flw-choose-scenarios.md), and find out what you need to configure by following the links to each scenario and to each app or service that's required.

| Scenario | Services |
|  ------- | -------  |
| [Team communication and collaboration](flw-team-collaboration.md) | [Microsoft Teams](#step-5-deploy-your-frontline-teams) <br>[Email with Exchange Online](#set-up-email-with-exchange-online) |
| [Targeted communications](set-up-targeted-communications.md) | [Microsoft Teams](#step-5-deploy-your-frontline-teams) <br>[Viva Connections](#set-up-viva-connections)|
| [Corporate communications](flw-corp-comms.md) | [Microsoft Teams](#step-5-deploy-your-frontline-teams) <br>[SharePoint](#set-up-sites-with-sharepoint-in-microsoft-365) <br>[Viva Connections](#set-up-viva-connections) <br>[Viva Engage](#set-up-your-organizations-social-network-with-viva-engage) |
| [Schedule management](shifts-for-teams-landing-page.md) | [Microsoft Teams](#step-5-deploy-your-frontline-teams) |
| [Virtual Appointments](virtual-appointments.md) | [Microsoft Teams](#step-5-deploy-your-frontline-teams) |
| [Engage your employees and focus on employee wellbeing](flw-wellbeing-engagement.md)| [Microsoft Teams](#step-5-deploy-your-frontline-teams) <br>[SharePoint](#set-up-sites-with-sharepoint-in-microsoft-365) <br>[Viva Connections](#set-up-viva-connections) <br>[Viva Engage](#set-up-your-organizations-social-network-with-viva-engage) |
| [Onboard new employees](/sharepoint/onboard-employees)| [Microsoft Teams](#step-5-deploy-your-frontline-teams) <br>[SharePoint](#set-up-sites-with-sharepoint-in-microsoft-365) <br>[Viva Connections](#set-up-viva-connections) <br>[Viva Learning](#set-up-viva-learning)|
| [Ongoing training](flw-onboarding-training.md) | [Microsoft Teams](#step-5-deploy-your-frontline-teams) <br>[Viva Learning](#set-up-viva-learning) |
| [Simplify business processes](simplify-business-processes.md) | [Microsoft Teams](#step-5-deploy-your-frontline-teams) <br>[Power Apps, Power Automate, and Power BI](#set-up-power-apps-power-automate-and-power-bi) |

Some services are only included with F3 licenses, such as email and the Power Platform. Check out [Understand frontline worker user types and licensing](flw-licensing-options.md) to determine the type of licenses you need for your users.

## Step 2: Set up your environment and core Microsoft 365

The Microsoft 365 admin center has a set of [deployment guides](/microsoft-365/enterprise/setup-guides-for-microsoft-365) that walk you through the steps to set up the products, services, security features, and collaboration tools in Microsoft 365. You can access these guides from the [Advanced deployment guides & assistance](https://aka.ms/advanceddeploymentguides) page in the Microsoft 365 admin center.

1. Use the [Prepare your environment guide](https://aka.ms/prepareyourenvironment) to prepare your organization's environment for Microsoft 365 and Office 365 services.
1. Use the [Microsoft 365 setup guide](https://aka.ms/microsoft365setupguide) to set up productivity tools, security policies, and device management capabilities. You can also use this advisor to set up and configure your organization's devices.

## Step 3: Provision users, configure groups, and assign licenses

> [!NOTE]
> Much of this information is also in the [downloadable technical planning guide for deploying frontline solutions](https://go.microsoft.com/fwlink/?linkid=2211637).

### Provision users

Before you provision frontline users, consider creating new administrator accounts or review and update your existing [administrator accounts in Microsoft Entra ID](/entra/identity/role-based-access-control/permissions-reference). [Learn more about what Microsoft Entra admin roles you might need for Microsoft 365](/microsoft-365/admin/add-users/about-admin-roles).

Microsoft 365 for frontline workers uses Microsoft Entra ID as the underlying identity service for delivering and securing all apps and resources. Users must have an identity that exists in Microsoft Entra ID to access Microsoft 365 apps.

If you choose to manage frontline user identities with Active Directory Domain Services (AD DS) or a third-party identity provider, you need to federate these identities to Microsoft Entra ID. You can import users in the following ways:

- **Integrate Microsoft Entra ID with an existing Active Directory instance:** [Microsoft Entra Connect](/entra/identity/hybrid/connect/how-to-connect-install-prerequisites) replicates Active Directory user accounts to Microsoft Entra ID, allowing a user to have a single identity capable of accessing both local and cloud-based resources.
- **Integrate Microsoft Entra ID with a third-party identity solution:** Microsoft Entra ID supports integration with some third-party providers through federation.
    - [Learn how to use Okta for Hybrid Microsoft AAD Join](https://www.okta.com/resources/whitepaper/using-okta-for-hybrid-microsoft-aad-join/).
    - [Learn how to configure PingFederate with Microsoft Entra Connect](/entra/identity/hybrid/connect/how-to-connect-install-custom#configuring-federation-with-pingfederate).
- **Import users from your organization's HR systems:** [Microsoft Entra user provisioning service](/entra/identity/app-provisioning/plan-auto-user-provisioning) automates the creation, maintenance, and removal of user identities based on rules set by your organization.
    - **On-premises HR systems:** You can use [Microsoft Identity Manager](/microsoft-identity-manager/microsoft-identity-manager-2016) to provision users from your on-premises HR systems to Active Directory or directly to Microsoft Entra ID.
    - **Cloud-based HR systems:** Learn how to connect [SAP SuccessFactors](/entra/identity/saas-apps/sap-successfactors-inbound-provisioning-tutorial) and [Workday](/entra/identity/saas-apps/workday-inbound-tutorial#planning-your-deployment) to Microsoft Entra ID.

Use this table to validate your HR-driven user provisioning.

|Test scenario |Expected results |
|--------------|-----------------|
|New employee is created in the cloud HR app |The user account is provisioned in Microsoft Entra ID and can access assigned cloud resources. <br> If Microsoft Entra Connect Sync is configured, the user account also gets created in Active Directory. <br> The user can sign into Active Directory domain apps and perform their desired actions.|
|User is terminated in the cloud HR app |The user account is disabled in Microsoft Entra ID, and, if applicable, Active Directory. <br>The user can’t sign into cloud or on-premises apps and resources assigned to them. |
|Supervisor is updated in the cloud HR app |User remains active with the new mapping. |
|HR rehires an employee into a new role. |The results depend on how the cloud HR app is configured to generate employee IDs. <br>If the old employee ID is reused for a rehire, the connector enables the existing Active Directory account for the user. <br>If the rehire gets a new employee ID, the connector creates a new Active Directory account for the user. |
|HR converts the employee to a contract worker or vice-versa |A new Active Directory account is created for the new persona and the old account is disabled on the effective date of the conversion. |

[Learn more about Microsoft Entra deployment](/entra/fundamentals/concept-secure-remote-workers).

<a name='configure-azure-ad-groups'></a>

### Configure Microsoft Entra groups

Configuring groups in Microsoft Entra allows you to create and manage policies and license assignments at scale.

- **Assign a unique attribute to frontline workers:** The ability to identify all frontline workers is useful when applying groups to the frontline workforce or for validating that integrations between Microsoft Entra ID and HR systems are functioning properly. Organizations frequently use the Job ID attribute for this purpose. Depending on your organization's structure, you might also need [custom security attributes](/entra/fundamentals/custom-security-attributes-overview) or [directory extension attributes](/entra/identity-platform/schema-extensions).
- **Create Microsoft Entra groups and assign frontline users:** With Microsoft Entra groups, you can grant access and permissions to a group of users instead of for each individual user. Groups are used to manage users that all need the same access and permissions to resources, such as potentially restricted apps and services. Instead of adding special permissions to individual users, you create a group that applies the special permissions to every member of that group.

The following table includes recommendations for applying groups in frontline implementations. For more information on group types, membership types, and assignment, see the [Microsoft Entra documentation for groups and membership](/entra/fundamentals/concept-learn-about-groups) and [managing groups](/entra/fundamentals/how-to-manage-groups). For more information on security group limits and other Microsoft Entra service limits, see [Microsoft Entra service limits and restrictions](/entra/identity/users/directory-service-limits-restrictions).

|Use case |Group type |
|---------|-----------|
|Assign licenses, policies, and permissions automatically. If a member’s attributes change, the system looks at dynamic group rules for the directory to see if the member meets the rule requirements (is added), or no longer meets the rule requirements (is removed). |Security group (limit 5,000 groups) <br> dynamic user |
|Manage access for users without automatic assignment to groups. |Security groups or distribution list (no limit applies) |
|Create an email alias to distribute groups messages to groups of users without automatic user management. |Distribution list or assigned Microsoft 365 group |
|Create an email alias or team in Microsoft Teams and manage membership automatically. |Microsoft 365 groups, dynamic user |
|Use [My Staff](/entra/identity/role-based-access-control/my-staff-configure) to delegate permissions to frontline managers to view employee profiles, change phone numbers, and reset passwords. |[Administrative unit](/entra/identity/role-based-access-control/administrative-units) |

[Learn more about the different types of groups you can create in the Microsoft 365 admin center](/microsoft-365/admin/create-groups/compare-groups).

### Assign frontline licenses

You can add licenses to individual users or to groups of users in Microsoft Entra ID. Group assignment is the most scalable way to assign licenses to your frontline workers. You can assign one or more product licenses to a group.

[Learn more about group-based licensing](/entra/fundamentals/concept-group-based-licensing) and [assigning licenses to groups](/entra/identity/users/licensing-groups-assign).

You might need to [unassign licenses](../admin/manage/assign-licenses-to-users.md) if you're changing some users from E to F licenses. [Learn more about how to switch specific users from E to F licenses](switch-from-enterprise-to-frontline.md#switch-users-to-a-microsoft-365-f-plan).

## Step 4: Set up and configure devices

Managing the devices that frontline workers use is a key fundamental. It's important to set a secure, compliant baseline to manage devices for your workforce, whether they're shared devices or workers' personal devices. For more information, see the following guidance:

- [Overview of device management for frontline workers](flw-devices.md)
- [Manage shared devices for frontline workers](flw-shared-devices.md)

## Step 5: Deploy your frontline teams

Frontline teams are a collection of people, content, and tools within an organization for different frontline worker locations. When deploying Teams to your frontline workforce, you have different options for how you can manage team membership. You can choose between dynamic team membership, static team membership, or a combination of both.

To learn more, see the following guidance:

- [Learn where to start with a frontline deployment](flw-deploy-overview.md)
- [Deploy frontline dynamic teams at scale](deploy-dynamic-teams-at-scale.md)
- [Deploy frontline static teams at scale with PowerShell for frontline workers](deploy-teams-at-scale.md)

## Step 6: Set up other services

Depending on your scenarios, you'll need to configure additional Microsoft 365 services, such as Exchange and Outlook for email or Microsoft Viva to expand your employee experience. Read on for information about each service.

### Set up email with Exchange Online

If you want your frontline managers and workers to have access to email, you need to set up email in Microsoft 365. Users must have an F3 license to get access to email. Follow the [Email setup guide](https://aka.ms/office365setup) in the Microsoft 365 admin center to set it up.

Your users can also install the Outlook app to use for their email, so make sure to share information about where to download the Outlook app.

For Outlook, using dynamic group backed shared mailboxes based on attributes such as Location, Department, and Role enables your organization to send targeted communications to dynamic groups that don’t require administrator intervention.

### Set up sites with SharePoint in Microsoft 365

[SharePoint](/sharepoint/sharepoint-online) lets you share documents and create sites. Use the [SharePoint setup guide](https://aka.ms/spoguidance) in the Microsoft 365 admin center to set it up.

### Set up employee experiences with Microsoft Viva

[Microsoft Viva](/viva/microsoft-viva-overview) helps connect employees with an integrated employee experience that brings together communications, knowledge, learning, resources, and insights into the flow of work. Microsoft Viva has several modules that can be used with Microsoft Teams to create employee experiences.

#### Set up Viva Connections

Use [Viva Connections](/viva/connections/viva-connections-overview) to create a dashboard that helps engage and inform your frontline workers. Viva Connections is a customizable app in Microsoft Teams that gives everyone a personalized destination to discover relevant news, conversations, and the tools they need to succeed.

Follow the [Deploy employee experience with Microsoft Viva guide](https://aka.ms/EmployeeExperienceDashboard) in the Microsoft 365 admin center to set it up. Learn more about [setting up Viva Connections](/viva/connections/guide-to-setting-up-viva-connections).

#### Set up your organization's social network with Viva Engage

[Viva Engage](/viva/engage/overview) helps connect your workforce across your company. Learn how to [Set up Viva Engage](/viva/engage/setup).

#### Set up Viva Learning

[Viva Learning](/viva/learning/) is an app in Microsoft Teams that empowers employees to make learning a natural part of the day by bringing learning into the flow of work within the tools and platforms they already use. See [Set up Microsoft Viva Learning in the Teams admin center](/viva/learning/set-up-viva-learning) to learn how to set up Viva Learning.

### Set up Power Apps, Power Automate, and Power BI

You can use all of these apps within Microsoft Teams. For more information about how to set them up, see:

- [Power Apps and Microsoft Teams integration](/powerapps/teams/overview)
- [Power Automate - use flows in Microsoft Teams](/power-automate/teams/overview)
- [Collaborate in Microsoft Teams with Power BI](/power-bi/collaborate-share/service-collaborate-microsoft-teams)
- [Power Virtual Agents app in Microsoft Teams](/power-virtual-agents/teams/fundamentals-what-is-power-virtual-agents-teams)
- [Power Apps](/microsoftteams/manage-power-platform-apps)

## Step 7: Configure apps for your scenario

Follow the guidance for your [scenarios](#step-1-identify-your-scenarios) to further configure the apps you need for each scenario.

Users with an F license get the [tailored frontline app experience](pin-teams-apps-based-on-license.md), which pins the following apps to Teams out of the box.

- Teams mobile: Viva Connections, Planner, Walkie Talkie, Shifts, Approvals
- Teams desktop: Viva Connections, Planner, Shifts, Approvals

## Related articles

[Learn where to start with a frontline deployment](flw-deploy-overview.md)
