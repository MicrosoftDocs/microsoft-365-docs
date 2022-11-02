---
title: Set up Microsoft 365 for frontline workers
author: samanro
ms.author: samanro
ms.reviewer: samanro
manager: pamgreen
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to set up Microsoft 365 with the services and features you need for your frontline workers.
ms.localizationpriority: high
ms.collection: 
  - m365-frontline
  - highpri
  - m365solution-frontline
  - highpri
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
---

# Set up Microsoft 365 for frontline workers

To set up Microsoft 365 for frontline workers, follow this overall process:

1. **[Identify your scenarios](#step-1-identify-your-scenarios)**: Which scenarios do you want to implement for your frontline workers? After you have determined which scenarios you want, use the table below to identify the required apps and services for each scenario that you want to implement.
1. **[Set up your environment and core Microsoft 365](#step-2-set-up-your-environment-and-core-microsoft-365)**: Follow the Setup Guides in the Microsoft 365 admin center to set up Microsoft 365. Keep reading to learn how to access these guides.
1. **[Set up Microsoft Teams](#step-3-set-up-microsoft-teams)**: Use either the onboarding wizard or the Deploy teams at scale process to configure the service and create your teams.
1. **[Set up any other services needed for your scenario](#step-4-set-up-other-services)**: Follow the instructions in the sections below to set up these services.
1. **[Configure apps](#step-5-configure-apps-for-your-scenario)**: After everything is set up and configured in the admin center, you can follow the guidance for your scenarios to further configure the apps you need for each scenario.
1. **[Devices](#step-6-set-up-devices)**: Set up shared and personal devices to work with Microsoft 365 and Microsoft Teams and to allow your frontline workers to communicate more securely within your organization.

:::image type="content" source="media/m365-frontline-setup-steps.png" alt-text="Steps to set up Microsoft 365 for frontline workers." lightbox="media/m365-frontline-setup-steps.png":::

## Step 1: Identify your scenarios

The following table lists the scenarios for your frontline workers. You can read a summary of each scenario in [choose your scenarios](flw-choose-scenarios.md), and find out exactly what you need to configure by following the links to each scenario and to each app or service that's required.

| Scenario | Required services |
|  ------- | -------  |
| [Team communication and collaboration](flw-team-collaboration.md) | [Microsoft Teams](#step-3-set-up-microsoft-teams) <br>[Email with Exchange Online](#set-up-email-with-exchange-online) |
| [Corporate communications](flw-corp-comms.md) | [Microsoft Teams](#step-3-set-up-microsoft-teams) <br>[SharePoint](#set-up-sites-with-sharepoint-in-microsoft-365) <br>[Viva Connections](#set-up-viva-connections) <br>[Yammer](#set-up-your-organizations-social-network-with-yammer) |
| [Virtual appointments](virtual-appointments.md) | [Microsoft Teams](#step-3-set-up-microsoft-teams) |
| [Engage your employees and focus on employee wellbeing](flw-wellbeing-engagement.md)| [Microsoft Teams](#step-3-set-up-microsoft-teams) <br>[SharePoint](#set-up-sites-with-sharepoint-in-microsoft-365) <br>[Viva Connections](#set-up-viva-connections) <br>[Yammer](#set-up-your-organizations-social-network-with-yammer) |
| [Schedule your team with Shifts](shifts-for-teams-landing-page.md) | [Microsoft Teams](#step-3-set-up-microsoft-teams) |
| [Onboard new employees](/sharepoint/onboard-employees)| [Microsoft Teams](#step-3-set-up-microsoft-teams) <br>[SharePoint](#set-up-sites-with-sharepoint-in-microsoft-365) <br>[Viva Connections](#set-up-viva-connections) <br>[Viva Learning](#set-up-viva-learning)|
| [Ongoing training](flw-onboarding-training.md) | [Microsoft Teams](#step-3-set-up-microsoft-teams) <br>[Viva Learning](#set-up-viva-learning) |
| [Simplify business processes](simplify-business-processes.md) | [Microsoft Teams](#step-3-set-up-microsoft-teams) <br>[Power Apps, Power Automate, and Power BI](#set-up-power-apps-power-automate-and-power-bi) |

Some services are only included with F3 licenses, such as email and the Power Platform. Check out [Understand frontline worker user types and licensing](flw-licensing-options.md) to determine the type of licenses you'll need for your users.

## Step 2: Set up your environment and core Microsoft 365

The Microsoft 365 admin center has a set of [Setup guides](/microsoft-365/enterprise/setup-guides-for-microsoft-365) that walk you through the steps to set up the products, security features, and collaboration tools in Microsoft 365. The setup guides are accessible from the [Setup guidance page](https://aka.ms/setupguidance) in the Microsoft 365 admin center.

1. Use the [Prepare your environment](https://aka.ms/prepareyourenvironment) guide to prepare your organization's environment for Microsoft 365 and Office 365 services.
1. Use the [Microsoft 365 setup](https://aka.ms/microsoft365setupguide) guide to set up productivity tools, security policies, and device management capabilities. You can also use this advisor to set up and configure your organization's devices.

## Step 3: Set up Microsoft Teams

For a pilot project, you can use the Frontline worker onboarding wizard to set up a single team, configured for your frontline workers. For step-by-step guidance, see [Use the Frontline Worker onboarding wizard to get your frontline workforce up and running](flw-onboarding-wizard.md).

For full deployments, follow the guidance in [Deploy Teams at scale for frontline workers](deploy-teams-at-scale.md).

## Step 4: Set up other services

### Set up email with Exchange Online

If you want your frontline managers and workers to have access to email, you need to set up email in Microsoft 365. Users must have an F3 license to get access to email. Follow the [Email setup guide](https://aka.ms/office365setup) to set it up.

Note that your users can also install the Outlook app to use for their email, so you'll want to make sure you share where to download the Outlook app with them.

### Set up sites with SharePoint in Microsoft 365

[SharePoint](/sharepoint/sharepoint-online) lets you share documents and create sites. Use the [SharePoint setup guide](https://aka.ms/spoguidance) in the Microsoft 365 admin center to set it up.

### Set up employee experiences with Viva modules

[Microsoft Viva](/viva/microsoft-viva-overview) helps connect employees with an integrated employee experience that brings together communications, knowledge, learning, resources, and insights into the flow of work. Microsoft Viva has several modules that can be used with Microsoft Teams to create employee experiences.

#### Set up Viva Connections

Use [Viva Connections](/viva/connections/viva-connections-overview) to create a dashboard that helps engage and inform your frontline workers. Viva Connections is a customizable app in Microsoft Teams that gives everyone a personalized destination to discover relevant news, conversations, and the tools they need to succeed. 

Follow the [Build your employee experience setup guide](https://aka.ms/EmployeeExperienceDashboard) to set it up. Learn more about [setting up Viva Connections](/viva/connections/guide-to-setting-up-viva-connections).

#### Set up Viva Learning

[Viva Learning](/viva/learning/) is an app in Microsoft Teams that empowers employees to make learning a natural part of the day by bringing learning into the flow of work within the tools and platforms they already use. See [Set up Microsoft Viva Learning in the Teams admin center](/viva/learning/set-up-viva-learning) to learn how to set up Viva Learning.

### Set up your organization's social network with Yammer

[Yammer](/yammer) helps connect your workforce across your company. Use the [Yammer deployment advisor](https://aka.ms/yammerdeploymentguide) to set it up.

### Set up Power Apps, Power Automate, and Power BI

You can use all of these apps within Microsoft Teams. For more information about how to set them up, see:

- [Power Apps and Microsoft Teams integration](/powerapps/teams/overview)
- [Power Automate - use flows in Microsoft Teams](/power-automate/teams/overview)
- [Collaborate in Microsoft Teams with Power BI](/power-bi/collaborate-share/service-collaborate-microsoft-teams)
- [Power Virtual Agents app in Microsoft Teams](/power-virtual-agents/teams/fundamentals-what-is-power-virtual-agents-teams)
- [Power Apps](/microsoftteams/manage-power-platform-apps)

## Step 5: Configure apps for your scenario

After everything is set up and configured in the admin center, you can follow the guidance for your scenarios to further configure the apps you need for each scenario.

Scenarios and apps

| Scenario | Approvals | Bookings | Lists | Praise | Shifts | Tasks | Updates |
| :---- | :----: | :----: | :----: | :----: | :----: | :----: | :----: |
| [Team communication and collaboration](flw-team-collaboration.md) | &#x2705; | &nbsp; | &#x2705; | &#x2705; | &nbsp; | &#x2705; | &#x2705; |
| [Corporate communications](flw-corp-comms.md) |  &nbsp; |  &nbsp; |  &nbsp; |  &nbsp; |  &nbsp; |  &nbsp; |  &nbsp; |
| [Virtual appointments with Microsoft Teams and the Bookings app](bookings-virtual-visits.md) |  &nbsp; | &#x2705; |  &nbsp; |  &nbsp; | &#x2705; |  &nbsp;|  &nbsp; |
| Wellbeing & engagement |  &nbsp; |  &nbsp; |  &nbsp; | &#x2705; |  &nbsp; |  &nbsp; | &#x2705; |
| [Schedule your team with Shifts](shifts-for-teams-landing-page.md) |  &nbsp; | &nbsp; | &#x2705; |  &nbsp; | &#x2705; | &#x2705; | &#x2705; |
| [Training: Onboard new employees](/sharepoint/onboard-employees) |  &nbsp; |  &nbsp; | &#x2705; |  &nbsp; |  &nbsp; | &#x2705; | &#x2705; |
| Ongoing training |  &nbsp; |  &nbsp; | &#x2705; |  &nbsp; |  &nbsp; | &#x2705; | &#x2705; |
| [Simplify business processes](simplify-business-processes.md) | &#x2705; |  &nbsp; | &#x2705; |  &nbsp; |  &nbsp; | &#x2705; | &#x2705; |
| Manage sites, stores, and projects | &#x2705; |  &nbsp; | &#x2705; |  &nbsp; | &nbsp; | &#x2705; | &#x2705; |

## Step 6: Set up devices

To set up shared and personal devices to work with Microsoft 365 and Microsoft Teams and to allow your frontline workers to communicate more securely within your organization, see [Manage mobile devices for frontline workers](flw-devices.md).
