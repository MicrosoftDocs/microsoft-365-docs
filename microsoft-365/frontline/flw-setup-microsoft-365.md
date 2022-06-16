---
title: Set up Microsoft 365 for frontline workers
author: samanro
ms.author: samanro
ms.reviewer: samanro
manager: pamgreen
ms.topic: article
audience: admin
ms.service: msteams
search.appverid: MET150
description: Learn how to set up Microsoft 365 with the services and features you need for your frontline workers.
ms.localizationpriority: medium
ms.collection: 
  - m365-frontline
appliesto: 
  - Microsoft 365 for frontline workers
---

# Set up Microsoft 365 for frontline workers

To set up Microsoft 365 for frontline workers, follow this overall process:

1. **Identify your scenarios** Which [scenarios](flw-overview.md#choose-your-scenarios) do you want to implement for your frontline workers? After you have determined which scenarios you want, use the table below to identify the required apps and services for each scenario that you want to implement.
1. **Set up your environment and core Microsoft 365** We recommend you follow the Setup Guides in the Microsoft 365 admin center.
1. **Set up Microsoft Teams and the other services** Set up any services that are required for your scenario. Follow the instructions in the sections below to setup these services.
1. **Devices**???
1. After everything is set up in the admin center, you can follow the guidance for your scenarios to further configure the apps or settings you need for each scenario.

The following table lists the scenarios for your frontline workers. You can read a summary of each scenario in [choose your scenarios](flw-overview.md#choose-your-scenarios), and find out exactly what you need to configure by following the links to each scenario and to each app or service that's required.

| Scenario area | Scenario | Required services |
| ------- | ------- | -------  |
| **Communications** | [Team communication and collaboration](retail-team-collaboration.md) | [Microsoft Teams](#set-up-microsoft-teams) <br>[Email with Exchange Online](#set-up-email-with-exchange-online) |
| **Communications**| Corporate communications | [Microsoft Teams](#set-up-microsoft-teams) <br>[SharePoint](#set-up-sharepoint-in-microsoft-365) <br>[Viva Connections](#set-up-viva-connections) <br>[Yammer](#set-up-yammer) |
| **Communications**| Virtual appointments | Microsoft Teams |
| **Wellbeing and engagement** | Engage your employees | [Microsoft Teams](#set-up-microsoft-teams) <br>[SharePoint](#set-up-sharepoint-in-microsoft-365) <br>[Viva Connections](#set-up-viva-connections) |
| **Wellbeing and engagement**| Focus on employee wellbeing |  [Microsoft Teams](#set-up-microsoft-teams) <br>[SharePoint](#set-up-sharepoint-in-microsoft-365) <br>[Viva Connections](#set-up-viva-connections) <br>[Viva Insights](#set-up-viva-insights) |
| **Schedule management** | Schedule your team with Shifts | [Microsoft Teams](#set-up-microsoft-teams) |
| **Training & onboarding** | Onboard new employees| [Microsoft Teams](#set-up-microsoft-teams) <br>[SharePoint](#set-up-sharepoint-in-microsoft-365) <br>[Viva Connections](#set-up-viva-connections) <br>[Viva Learning](#set-up-viva-learning)|
| **Training & onboarding** | Ongoing training | [Microsoft Teams](#set-up-microsoft-teams) <br>[Viva Learning](#set-up-viva-learning) |
| **Digitized processess** | Simplify business processes | [Microsoft Teams](#set-up-microsoft-teams) <br>[Power Apps, Power Automate, and Power BI](#power-apps-power-automate-and-power-bi) |
| **Digitized processess** | Manage sites, stores, and projects| [Microsoft Teams](#set-up-microsoft-teams) <br>[Power Apps, Power Automate, and Power BI](#power-apps-power-automate-and-power-bi) |

Some services are only included with F3 licenses, such as email and OneDrive. Check out [Understand frontline worker user types and licensing](flw-licensing-options.md) to determine the type of licenses you'll need for your users.

## Set up your environment and core Microsoft 365

The Microsoft 365 admin center has a set of [Setup guides](/microsoft-365/enterprise/setup-guides-for-microsoft-365) that walk you through the steps to set up the products, security features, and collaboration tools in Microsoft 365. The setup guides are accessible from the [Setup guidance page](https://aka.ms/setupguidance) in the Microsoft 365 admin center.

1. Use the [Prepare your environment](https://aka.ms/prepareyourenvironment) guide to prepare your organization's environment for Microsoft 365 and Office 365 services.
1. Use the [Microsoft 365 setup](https://aka.ms/microsoft365setupguide) guide to set up productivity tools, security policies, and device management capabilities. You can also use this advisor to set up and configure your organization's devices.

## Set up Microsoft Teams

For a pilot project, you can use the Frontline worker onboarding wizard to set up a single team, configured for your frontline workers. For step-by-step guidance, see [Use the Frontline Worker onboarding wizard to get your frontline workforce up and running](flw-onboarding-wizard.md).

For full deployments, follow the guidance in [Deploy teams at scale for frontline workers](deploy-teams-at-scale.md).

## Set up email with Exchange Online

If you want your frontline managers and workers to have access to email, you need to set up email in Microsoft 365. Users must have an F3 license to get access to email. Follow the [Email setup guide](https://aka.ms/office365setup) to set it up.

Note that your users can also install the Outlook app to use for their email, so you'll want to make sure you share where to download the Outlook app with them.

## Set up OneDrive

[OneDrive](/onedrive) provides file storage, sharing, collaboration, and syncing capabilities. Users must have an F3 license to use OneDrive. [OneDrive setup guide](https://aka.ms/ODfBquickstartguide) to set it up.

## Set up SharePoint in Microsoft 365

[SharePoint](/sharepoint/sharepoint-online) lets you share documents and create sites. Use the [SharePoint setup guide](https://aka.ms/spoguidance) in the Microsoft 365 admin center to set it up.

## Set up Viva modules

[Microsoft Viva](/viva/microsoft-viva-overview) helps connect employees with an integrated employee experience that brings together communications, knowledge, learning, resources, and insights into the flow of work. Microsoft Viva has several modules that can be used with Microsoft Teams to create employee experiences.

### Set up Viva Connections

Use [Viva Connections](/viva/connections/viva-connections-overview) to create a dashboard that helps engage and inform your frontline workers. Viva Connections is a customizable app in Microsoft Teams that gives everyone a personalized destination to discover relevant news, conversations, and the tools they need to succeed. 

Follow the [Build your employee experience setup guide](https://aka.ms/EmployeeExperienceDashboard) to set it up. Learn more about [setting up Viva Connections](/viva/connections/guide-to-setting-up-viva-connections).

### Set up Viva Learning

[Viva Learning](/viva/learning/) is an app in Microsoft Teams that empowers employees to make learning a natural part of the day by bringing learning into the flow of work within the tools and platforms they already use. See [Set up Microsoft Viva Learning in the Teams admin center](/viva/learning/set-up-viva-learning) to learn how to set up Viva Learning.

### Set up Viva Insights

[Viva Insights](/viva/insights/introduction) helps people and businesses thrive with data-driven, privacy-protected insights, and recommendations to improve productivity and wellbeing. See [Viva Insights setup overview](/viva/insights/setup/setup-intro) to learn how to set up Viva Insights.

### Set up Viva Topics

[Viva Topics](/viva/topics/) . See [Set up Microsoft Viva Topics](/viva/topics/set-up-topic-experiences).

## Set up Yammer

[Yammer](/yammer) helps connect your workforce across your company. Use the [Yammer deployment advisor](https://aka.ms/yammerdeploymentguide) to set it up.

## Power Apps, Power Automate, and Power BI

You can use all of these apps within Microsoft Teams. For more information about how to set them up, see:

- [Power Apps](/microsoftteams/manage-power-platform-apps)
- [Power Apps and Microsoft Teams integration](/powerapps/teams/overview)
- [Collaborate in Microsoft Teams with Power BI](/power-bi/collaborate-share/service-collaborate-microsoft-teams)