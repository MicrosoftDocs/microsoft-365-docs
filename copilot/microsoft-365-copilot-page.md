---
title: Manage Microsoft 365 Copilot Scenarios
description: Discover how to configure Microsoft 365 Copilot scenarios in the admin center. Streamline user access, data security, and Copilot actions for your team.
#customer intent: As an IT admin, I want to configure Microsoft 365 Copilot settings so that I can manage user access and data security effectively.
f1.keywords:
- NOCSH
author: kwekuako
ms.author: kwekua
manager: scotv
ms.reviewer: elvaf
ms.date: 11/18/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
  - scotvorg
  - m365copilot
  - magic-ai-copilot
  - operations-pod
appliesto:
- ✅ Microsoft 365 Copilot
---

# Manage Microsoft 365 Copilot scenarios in the Microsoft 365 admin center

When Microsoft 365 Copilot is available in a tenant, you can configure some Copilot scenarios by using the [Copilot Control System](copilot-control-system/management-controls.md) in the Microsoft 365 admin center. The admin center also provides shortcuts to other services that affect how Copilot is used in your organization.

The following video is an overview of managing Microsoft 365 Copilot for your organization. It's 1 minute and 45 seconds long.

> [!VIDEO 4ad48e80-9329-41fd-8d63-0b443281ec92]
Then watch the following video to see the different Microsoft 365 Copilot settings and configuration options in the Microsoft 365 admin center. It's 2 minutes and 39 seconds long.

> [!VIDEO 28be8725-2d69-4d93-a07d-8324c5083c46]

This article is for IT administrators and lists some of the Copilot scenarios that you can control in the Microsoft 365 admin center.

> [!NOTE]
>
> - If you're an end user on a work device, your IT admin might turn on Copilot for you. To help you get started, see the [Copilot prompt gallery](https://m365.cloud.microsoft/copilot-prompts).
>
> - If you're an end user on a personal device, you might automatically get Microsoft Copilot, which is the free consumer version. For more information, see [Microsoft Copilot for individuals](https://www.microsoft.com/microsoft-copilot/for-individuals) and [Getting started with Copilot on Windows](https://support.microsoft.com/topic/1159c61f-86c3-4755-bf83-7fbff7e0982d).

## Before you begin

### Licensing

The Copilot experience in the Microsoft 365 admin center depends on the Copilot license you have.

If your organization has a Microsoft 365 Copilot license, you see settings that manage some Microsoft 365 Copilot scenarios. If your organization doesn't have a Copilot license, your configuration options apply to Microsoft Copilot, which is the consumer version of Copilot.

For more information, see the following articles:

- [Which Copilot is right for your organization?](which-copilot-for-your-organization.md)
- [Get started with Microsoft 365 Copilot](microsoft-365-copilot-setup.md)

### Role requirements

Role requirements vary depending on your task.

- To view and make changes to the Copilot scenarios in the Microsoft 365 admin center, sign in with the **AI Administrator** role.

- To view the Copilot scenarios in the Microsoft 365 admin center, sign in with the **Global Reader** role.

For more information about these roles, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role.

### Visibility of services and features

The admin center only shows the services licensed in your tenant, and the Microsoft 365 admin center changes frequently. This article might list different scenarios than what you see in your organization's admin center.

For example, if you have a Microsoft Viva license, you see some Viva scenarios. If you have a Power Platform license, you see some Power Platform scenarios.

Some services are shortcuts to other admin centers, like Teams. For these services, you need the appropriate role to access those admin centers, like Teams administrator.

For more information about the different roles in the admin center, see [Microsoft 365 admin center admin roles](/microsoft-365/admin/add-users/about-admin-roles).

> [!NOTE]
> Your agreement for Online Services governs Microsoft 365 Copilot used with Microsoft Entra ID. For more information, see the [Microsoft Online Services Terms](https://www.microsoft.com/licensing/docs/customeragreement).

## Open the Microsoft 365 admin center

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com).

1. In the left navigation, expand **Copilot** and select **Settings**.

1. Switch between the tabs to manage Copilot settings:

    - **User access**: Manage settings for how users access Copilot in multiple products and services.

    - **Data access**: Manage how Copilot securely gets and handles information.

    - **Copilot actions**: Manage how Copilot responds in compliance with your organization's policies.

    - **Other settings**: Manage other settings that don't fall into another category.

The rest of this article lists the scenarios that you can manage. Some scenarios are configured in the admin center, while others are shortcuts to other admin centers.

> [!TIP]
> The admin center only shows the services licensed in your tenant, and the Microsoft 365 admin center changes frequently. This article might list different scenarios than what you see in your organization's admin center.

## User access

### Copilot Frontier

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **User access** > **Copilot Frontier**.

Use this setting to configure your organization's access to experimental and preview features in web apps, desktop apps, and agents. By default, no users have access to Frontier features.

For more information, see [Frontier program - Microsoft Adoption](https://adoption.microsoft.com/copilot/frontier-program/).

#### Web apps tab

On the **Web apps** tab, select who can access Frontier features for the Microsoft 365 Copilot app and web apps for Word, PowerPoint, and Excel.

- **No access**: No users can access Frontier features. This option is the default.

- **All groups of users**: Everyone in your organization can access Frontier features.

- **Specific user groups**: Specify the groups that can access Frontier features.

#### Desktop and mobile apps tab

The **Desktop and mobile apps** tab has more information about the Microsoft 365 Insider program for Microsoft 365 Apps, like Word, PowerPoint, and Excel for Windows, Mac, and Android. You need to add users to the Insider program and select the **Beta Channel**.

For more information, see the [Microsoft 365 Insider Handbook](https://techcommunity.microsoft.com/kb/microsoft-365-insider-kb/microsoft-365-insider-handbook/4401152).

#### Agents tab

The **Agents** tab has more information about getting early access to agents built by Microsoft. In the Microsoft 365 Copilot app, go to **Agents** and look for agents "Built by Microsoft". Frontier program agents are tagged with "(Frontier)" at the end of the agent's name.

### Copilot in Bing, Edge, and Windows

✅ Includes information about Copilot Chat that admins should know

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **User access** > **Copilot in Bing, Edge, and Windows**.

This scenario refers to AI-powered **Copilot Chat** and is automatically available to Bing, Microsoft Edge, and Windows users. You don't configure this scenario in the Microsoft 365 admin center. Copilot Chat for the web is available to everyone.

- For organizations with a Microsoft 365 subscription, users get **Microsoft 365 Copilot Chat**. It gives your users internet-based chat and work-based chat with [enterprise data protection](/copilot/privacy-and-protections). Enterprise data protection applies to Copilot Chat prompts and responses when users sign in with a Microsoft Entra account, and is designed for work and education.

  To ensure that users in your organization access Copilot Chat, see [Manage Microsoft 365 Copilot Chat](/copilot/manage).

- For users signed in with a personal account, they can use **Microsoft Copilot**. This service is the consumer version of [Copilot Chat](https://copilot.microsoft.com/).

For more information, see the following articles:

- [Copilot Chat FAQ](/copilot/faq)
- [Determine which Copilot is right for you and your organization](which-copilot-for-your-organization.md)
- [Microsoft 365 Copilot Chat experience on Windows](/windows/client-management/manage-windows-copilot)

### Copilot in Edge

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **User access** > **Copilot in Edge**. Then select the link to **Go to the settings for Microsoft Edge**.

This scenario is a shortcut to create a Microsoft Edge configuration policy in the Microsoft 365 admin center. To access this policy directly, go to **Settings** > **Microsoft Edge** > **Configuration policies**. This policy can include settings that configure Copilot features in Microsoft Edge.

For more information, see [Get started with Microsoft Edge configuration policies](/deployedge/microsoft-edge-management-service).

### Copilot pay-as-you-go billing

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **User access** > **Copilot pay-as-you-go billing**. This action opens the Copilot **Billing & usage** page. Then switch to the **Pay-as-you-go services** tab and select **Microsoft 365 Copilot Chat** to configure a billing policy.

For more information, see [Microsoft 365 Copilot pay-as-you-go overview for IT admins](pay-as-you-go/overview.md).

### Microsoft 365 Copilot in admin centers

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **User access** > **Microsoft 365 Copilot in admin centers**.

This setting lets admins in your organization access Microsoft 365 Copilot in admin centers. This setting affects users with an admin role who use Microsoft 365 Copilot in the Microsoft 365 admin center, Exchange admin center, SharePoint admin center, and Microsoft Teams admin center. By default, this setting is allowed for all admins.

For more information, see [Copilot in Microsoft 365 admin centers](copilot-for-microsoft-365-admin.md).

### Microsoft 365 Copilot self-service purchases

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **User access** > **Microsoft 365 Copilot self-service purchases**.

This setting lets users purchase a Microsoft 365 Copilot license without admin approval. This scenario can help you understand and manage the demand for Copilot.

You can configure this setting with three options:

- **Allow**: Users can try or buy Microsoft 365 Copilot on their own.

- **Allow trials only**: Users can try Microsoft 365 Copilot for free, but can't buy it. After the trial period, it doesn't automatically convert to a paid subscription.

- **Do not allow**: Users can't purchase Microsoft 365 Copilot.

For more information, see the following articles:

- [Self-service purchase FAQ](/microsoft-365/commerce/subscriptions/self-service-purchase-faq)
- [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](/microsoft-365/commerce/subscriptions/allowselfservicepurchase-powershell)

> [!TIP]
> To see the self-service settings for all products in the [Microsoft 365 admin center](https://admin.microsoft.com), select **Settings** > **Org settings** > **Self-service trials and purchases**.

### Microsoft Security Copilot

✅ Shortcut to Microsoft Security Copilot

Go to [Security Copilot](https://securitycopilot.microsoft.com/) and sign in. Then select **Get started**.

This option is a direct shortcut to the Security Copilot portal. You don't configure this scenario in the Microsoft 365 admin center.

In the coming months, Security Copilot will be included in Microsoft 365 E5. With Security Copilot, it's easier than ever to make agentic AI a part of your daily workflows.

[Learn about Security Copilot inclusion in Microsoft 365 E5 subscription](/copilot/security/security-copilot-inclusion).

### Pin Microsoft 365 Copilot app to the Windows taskbar

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **User access** > **Pin Copilot Chat**.

This setting lets you pin the Microsoft 365 Copilot app to the user's Windows taskbar. It gives users quick access to the Microsoft 365 Copilot app. This setting is off by default.

For more information, see [Pin Microsoft 365 Copilot app to the Windows taskbar](pin-copilot-taskbar.md).

### Pin Microsoft 365 Copilot Chat

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **User access** > **Pin Copilot Chat**.

This setting lets you pin Microsoft 365 Copilot Chat to the navigation bar in Teams, Outlook, and the Microsoft 365 Copilot app. By default, Copilot Chat might be pinned for users with a Microsoft 365 Copilot license.

When you pin Copilot Chat, it makes it easier for people in your organization to access Copilot Chat.

For more information, see [Pin Microsoft 365 Copilot Chat in Microsoft 365 apps](pin-copilot-chat-navbar.md).

## Data access

### Agents

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Data access** > **Agents**.

Agents are AI assistants in Microsoft 365 Copilot that focus on a specific task. You can create your own agents and include sample prompts that users can ask Copilot. For example, you can create agents that help users create meeting agendas or write blog posts.

This setting lets you configure who can access agents, and what types of agents they can install.

To see more configurations on the **Copilot** > **Agents** page, select the link to **Manage all agents**.

For more information, see [Manage Microsoft 365 Copilot agents in the Microsoft 365 admin center](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps).

> [!NOTE]
> For more information for users, see [Introducing Copilot agents](https://support.microsoft.com/topic/introducing-copilot-agents-943e563d-602d-40fa-bdd1-dbc83f582466).

### AI providers for other large language models

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Data access** > **AI providers for other large language models**.

This setting allows users to use other large language models (LLM) in Copilot Chat and Copilot Studio. For example, they can use Claude models by Anthropic within your Microsoft products.

For more information, see [Connect to AI models](connect-to-ai-subprocessor.md).

### Copilot in Power Platform and Dynamics 365

✅ Shortcut to the Power Platform admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Data access** > **Copilot in Power Platform and Dynamics 365**. Then select the link to **Go to the Power Platform admin center**.

This scenario is a shortcut to the [Power Platform admin center](https://admin.powerplatform.microsoft.com/copilot). You don't configure this scenario in the Microsoft 365 admin center.

In the Power Platform admin center, you can manage settings specific to Microsoft Copilot, agents, and Copilot agents in Power Platform and Dynamics 365 products.

For more information, see the following articles:

- [Copilots and generative AI in Power Platform](/power-platform/copilot)
- [Copilot features in Power Platform](/power-platform/admin/copilot/copilot-hub)

### Data security and compliance

✅ Shortcut to the Microsoft Purview portal

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Data access** > **Data security and compliance**.

This page lists several shortcuts to the [Microsoft Purview portal](https://purview.microsoft.com/). You don't configure this scenario in the Microsoft 365 admin center.

Microsoft Purview has many features to help get your data ready for Copilot, such as:

- Data Security Posture Management for AI
- Insider risk management
- Sensitivity labels
- Retention policies
- Communication compliance
- Audit
- eDiscovery

For more information, see the following articles:

- [Microsoft Purview data security and compliance protections for generative AI apps](/purview/ai-microsoft-purview)
- [Microsoft 365 Copilot admin guide for E3 + SAM licenses](microsoft-365-copilot-e3-guide.md)
- [Microsoft 365 Copilot admin guide for E5 + SAM licenses](microsoft-365-copilot-e5-guide.md)

### People Skills in Microsoft 365 Copilot

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Data access** > **People Skills in Microsoft 365 Copilot**. Then select the link to **Go to People Skills to set up and manage**.

This scenario is a shortcut to set up People Skills in the Microsoft 365 admin center. To access this policy directly, go to **Settings** > **Viva** > **Data management** > **People Skills**.

People Skills is an AI-powered service that delivers personalized skills-based experiences across Microsoft 365. For more information, see [Overview of People Skills](people-skills-overview.md).

### Recommendations for Microsoft 365 Copilot licensing

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Data access** > **Recommendations for Microsoft 365 Copilot licensing**.

Microsoft provides licensing recommendations based on Microsoft 365 apps activity. These recommendations can help you make informed decisions about Copilot rollout and where to assign licenses. By default, this setting is enabled.

To see these recommendations, your admin role needs permission to manage user licenses. For example, the **License Administrator** or **User Administrator**.

For more information, see [Additional details for Suggested candidate for Copilot](/microsoft-365/admin/activity-reports/microsoft-365-copilot-readiness#additional-details-for-suggested-candidate-for-copilot).

### Web search for Microsoft 365 Copilot and Microsoft 365 Copilot Chat

✅ Shortcut to create a cloud policy in the Microsoft 365 Apps admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Data Access** > **Web search for Microsoft 365 Copilot and Microsoft Copilot**.

This scenario includes a link to the [Microsoft 365 Apps admin center](https://config.office.com/officeSettings/officePolicies) where you create a cloud policy. You don't configure this scenario in the Microsoft 365 admin center.

When you enable the **Allow web search in Copilot** policy setting, Copilot can reference web content to improve the quality of its responses.

For more information, see the following articles:

- [Overview of Cloud Policy service for Microsoft 365](/microsoft-365-apps/admin-center/overview-cloud-policy)
- [Data, privacy, and security for web search in Microsoft 365 Copilot and Microsoft 365 Copilot Chat](manage-public-web-access.md)

## Copilot actions

### Copilot image generation

✅ Enable in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Copilot actions** > **Copilot image generation**.

When you allow this scenario, users can ask Copilot to create, design, and edit images. Users can add these images to their work in Microsoft 365 apps and Designer.

If you don't allow this scenario, Copilot doesn't generate images. It responds with stock or brand images.

For more information, see the following resources:

- [AI art prompting guide](https://www.microsoft.com/microsoft-copilot/for-individuals/do-more-with-ai/ai-art-prompting-guide)

- [Responsible AI at Microsoft](https://www.microsoft.com/ai/responsible-ai)

- [Learn about data, privacy, and security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)

### Copilot in Teams meetings

✅ Shortcut to the Microsoft Teams admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Copilot actions** > **Copilot in Teams meetings**. This action opens the [Microsoft Teams admin center](https://admin.teams.microsoft.com) in another tab.

In the Teams admin center, you can manage how Copilot interacts with Teams features, including meeting transcripts.

For more information, see the following articles:

- [Microsoft 365 Copilot in Teams meetings and events](/microsoftteams/copilot-teams-transcription)

- [Manage Microsoft 365 Copilot in Teams calls](/microsoftteams/copilot-teams-calling-transcription)

## Other settings

### Copilot custom dictionary

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Other settings** > **Copilot custom dictionary**.

Use this setting to upload custom dictionaries to enhance Microsoft 365 Copilot's quality of word recognition. Dictionaries identify and define your organization's vocabulary. When you specify your organization's proper nouns, technical jargon, and other languages, Copilot can better interpret and transcribe in Microsoft Teams.

For more information, see [Manage custom dictionaries for Microsoft Teams meetings and events](/microsoftteams/copilot-custom-dictionary).

### Copilot diagnostics logs

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Other settings** > **Copilot diagnostics logs**.

If users encounter an issue and can't send Copilot feedback logs to Microsoft, you can submit feedback logs on their behalf. The data includes prompts and generated responses, relevant content samples, and log files. When you use this scenario to send feedback logs, it temporarily overrides any user level feedback policy.

For more information, see [Submit admin-initiated Copilot feedback from the Microsoft 365 admin center](provide-feedback.md).

## Related articles

- [Copilot Control System overview](copilot-control-system/overview.md)
- [Compare the Microsoft 365 license feature list for Microsoft 365 Copilot](microsoft-365-copilot-license-feature-overview.md)
- [Remove or prevent installation of the Copilot app](/windows/client-management/manage-windows-copilot#remove-or-prevent-installation-of-the-copilot-app)
