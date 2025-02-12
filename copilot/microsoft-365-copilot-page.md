---
title: Microsoft 365 admin center scenarios that configure Copilot
description: Learn about some of the Microsoft 365 Copilot scenarios and some settings that IT admins can configure in the Microsoft 365 admin center. M365 Copilot scenarios in the admin center.
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 02/11/2025
ms.reviewer: elvaf
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
appliesto:
 - ✅ Microsoft 365 Copilot
---

# Admins can manage some Microsoft 365 Copilot scenarios in the Microsoft 365 admin center

When [Microsoft 365 Copilot](microsoft-365-copilot-overview.md) is available in a tenant, there are some Copilot scenarios that admins can configure in the Microsoft 365 admin center.

The admin center also gives shortcuts to other services that can affect how Copilot is used in your organization.

This article is for IT administrators, and lists some of the Copilot scenarios you can control in the Microsoft 365 admin center.

This article applies to:

- Microsoft 365 Copilot

> [!NOTE]
>
> - If you're an end user on a work device, then it's possible your IT admin group turned on Copilot for you. The [Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts) can help you get started.
>
> - If you're an end user on a personal device, then you might automatically get Microsoft Copilot, which is the free consumer version. To learn more, see [How can Copilot help you?](https://www.microsoft.com/microsoft-copilot/for-individuals) and [Welcome to Copilot on Windows](https://support.microsoft.com/windows/welcome-to-copilot-on-windows-675708af-8c16-4675-afeb-85a5a476ccb0).

## Before you begin

- The Copilot experience in the Microsoft 365 admin center depends on the Copilot license you have.

  If your organization has a Microsoft 365 Copilot license, then you see settings that can manage some Microsoft 365 Copilot scenarios. If your organization doesn't have a Copilot license, then your configuration options apply to Microsoft Copilot, which is the consumer version of Copilot.

  For more information, see:

  - [Which Copilot is right for your organization?](which-copilot-for-your-organization.md)
  - [Get started with Microsoft 365 Copilot](microsoft-365-copilot-setup.md)

- There are different role requirements, depending on your task.

  To view and make changes to the Copilot scenarios in the Microsoft 365 admin center, sign in with one of the following accounts:

  - AI Administrator
  - Global Administrator

  To view the Copilot scenarios in the Microsoft 365 admin center, sign in with the following account:

  - Global Reader

  To learn more about these roles, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

  > [!TIP]
  > Microsoft recommends you sign in with the least privileged role that you need to complete your task. Typically, the Global Administrator role is too powerful for most tasks, including managing the Copilot scenarios described in this article.

- The admin center only shows the services licensed in your tenant. So, this article lists more scenarios than what you might see.

  For example, if you have a Microsoft Viva license, then you see some Viva scenarios. If you have a Power Platform license, then you see some Power Platform scenarios.

  Some services are shortcuts to other admin centers, like Teams. For these services, you need the appropriate role to access those admin centers, like Teams administrator.

  To learn more about the different roles in the admin center, see [Microsoft 365 admin center admin roles](/microsoft-365/admin/add-users/about-admin-roles).

- Your agreement for Online Services governs Microsoft 365 Copilot used with Microsoft Entra ID. For more information, see the [Microsoft Online Services Terms](https://www.microsoft.com/licensing/docs/customeragreement).

- The Microsoft 365 admin center changes frequently. So the scenarios in this article can be different than what you see in the Microsoft 365 admin center.

## Open the Copilot page

This section lists the steps to open the Copilot page in the Microsoft 365 admin center.

Make sure you sign in with the appropriate role needed for your task. In our example, we want to change the settings. So, we sign in with the AI Administrator role.

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) as the AI Administrator. For more information on this role, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

2. In the left navigation, select **Copilot**.

    :::image type="content" source="media/microsoft-365-copilot-page/microsoft-365-admin-center-copilot-page.png" alt-text="Screenshot that shows the Copilot page in the Microsoft 365 admin center.":::

3. If your tenant has a Copilot license, you can select **Overview**, **Discover**, and **Settings**:

    :::image type="content" source="media/microsoft-365-copilot-page/microsoft-365-admin-center-copilot-overview-settings.png" alt-text="Screenshot that shows the Overview, Discover, and Settings options in the Copilot page in the Microsoft 365 admin center." lightbox="media/microsoft-365-copilot-page/microsoft-365-admin-center-copilot-overview-settings.png":::

4. If your tenant doesn't have a Copilot license, then you can select **Discover** and **Settings**. In **Discover**, you can purchase Copilot:

    :::image type="content" source="media/microsoft-365-copilot-page/microsoft-365-admin-center-copilot-discover-settings.png" alt-text="Screenshot that shows the Discover and Settings options in the Copilot page in the Microsoft 365 admin center." lightbox="media/microsoft-365-copilot-page/microsoft-365-admin-center-copilot-discover-settings.png":::

## Scenarios you can manage

This section lists some of the scenarios shown in the Microsoft 365 admin center. Some scenarios are configured in the admin center, while others are shortcuts to other admin centers.

Remember, only the services licensed for your tenant are shown in your admin center experience.

### Reports and licenses

In the [Microsoft 365 admin center](https://admin.microsoft.com) > **Copilot** > **Overview** page, you can view reports and assign (or unassign) Copilot licenses. You can also view the number of active users and the number of licenses that are available.

This view lists some of the popular scenarios that are available in Microsoft 365 Copilot. It also provides shortcuts to more in-depth settings in the admin center, like more usage reports (**Reports** > **Usage**) and license management (**Billing** > **Licenses**).

To learn more, see:

- [Microsoft 365 reports in the admin center](/microsoft-365/admin/activity-reports/microsoft-365-copilot-usage)
- [Set up Microsoft 365 Copilot](microsoft-365-copilot-setup.md) and [Enable users for Microsoft 365 Copilot](microsoft-365-copilot-enable-users.md)

### Copilot agent consumption meter

✅ Shortcut to the Power Platform pay-as-you-go plan

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Copilot agent consumption meter**.

In the admin center, this scenario is a shortcut to the [Power Platform pay-as-you-go plan](/power-platform/admin/pay-as-you-go-overview). You don't configure this scenario in the Microsoft 365 admin center.

This scenario creates a billing plan that tracks and manages Microsoft 365 Copilot Chat consumption. When you set up a billing plan, you also select an Azure subscription, and link the necessary environments. This configuration helps manage message capacity, monitor usage, and handle overages, which can help with costs.

To learn more, see:

- [Learn more about the Power Platform pay-as-you-go plan](/power-platform/admin/pay-as-you-go-overview)
- [Set up a Power Platform pay-as-you-go plan](/power-platform/admin/pay-as-you-go-set-up)

### Copilot diagnostics logs

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Copilot diagnostics logs**.

When users have an issue and aren't able to send Copilot feedback logs to Microsoft, you can submit feedback logs on their behalf. The data includes prompts and generated responses, relevant content samples, and log files. When you use this scenario to send feedback logs, it temporarily overrides any user level feedback policy.

:::image type="content" source="media/microsoft-365-copilot-page/microsoft-365-admin-center-copilot-diagnostics-log.png" alt-text="Screenshot that allows admins to collect Microsoft 365 Copilot diagnostic logs in the Microsoft 365 admin center." :::

To learn more, see:

- [Submit admin-initiated Copilot feedback from the Microsoft 365 admin center](provide-feedback.md)
- [Search for and delete Copilot data in eDiscovery](/purview/edisc-search-copilot-data)

### Copilot image generation

✅ Enable in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Copilot image generation**.

When this scenario is allowed, end users can ask Copilot to create, design, and edit images. Users can add these images to their work.

:::image type="content" source="media/microsoft-365-copilot-page/microsoft-365-admin-center-copilot-image-generation.png" alt-text="Screenshot that allows admins to allow or prevent end users from creating images using Microsoft 365 Copilot in the Microsoft 365 admin center." :::

To learn more, see:

- [How to Create AI Art with Copilot](https://www.microsoft.com/microsoft-copilot/for-individuals/do-more-with-ai/ai-art-and-creativity/how-to-create-ai-art-with-copilot)
- [Learn about Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)

### Copilot in Bing, Edge, and Windows

✅ Includes information about Copilot Chat that admins should know

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Copilot in Bing, Edge, and Windows**.

This scenario refers to AI-powered **Copilot Chat** and is automatically available to Bing, Microsoft Edge, and Windows users. You don't configure this scenario in the Microsoft 365 admin center. But, you should know that Copilot Chat for the web is available to everyone.

- For **organizations with a Microsoft 365 subscription**, you get **Microsoft 365 Copilot Chat**. It gives your users internet-based chat and work-based chat with [enterprise data protection](/copilot/privacy-and-protections). Enterprise data protection applies to Copilot Chat prompts and responses when users sign in with a Microsoft Entra account, and is designed for work and education.

  To ensure that users in your organization access Copilot Chat, see [Manage Microsoft 365 Copilot Chat](/copilot/manage).

- For **users signed with a personal account**, they can use **Microsoft Copilot**, which is the consumer version of Copilot Chat ([copilot.microsoft.com](https://copilot.microsoft.com/) and [bing.com/chat](https://bing.com/chat)).

To learn more, see:

- [Manage Copilot Chat](/copilot/manage)
- [Look at the Copilot Chat FAQ](/copilot/faq)
- [Determine which Copilot is right for you and your organization](which-copilot-for-your-organization.md)
- [Update Windows and Microsoft 365 Copilot Chat experience](/windows/client-management/manage-windows-copilot)

### Copilot in Edge

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Copilot in Edge**.

This scenario is a shortcut to create a Microsoft Edge configuration profile in the Microsoft 365 admin center (**Settings** > **Microsoft Edge** > **Configuration Profiles**). In a configuration profile, you create a policy that includes settings that configure some Copilot features in Microsoft Edge. You can also upload settings in a JSON file.

To learn more, see [Configure Copilot in Microsoft Edge with configuration profiles](/deployedge/microsoft-edge-management-service).

### Copilot in Power Platform and Dynamics 365

✅ Shortcut to the Power Platform admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Copilot in Power Platform and Dynamics 365**.

This scenario is a shortcut to the Power Platform admin center. You don't configure this scenario in the Microsoft 365 admin center.

In the Power Platform admin center, you can manage settings specific to Microsoft Copilot, agents, and Copilot agents in Power Platform and Dynamics 365 products.

To learn more, see:

- [Copilots and generative AI in Power Platform](/power-platform/copilot)
- [Copilot features in Power Platform](/power-platform/admin/copilot/copilot-hub)

### Copilot in Teams meetings

✅ Shortcut to the Microsoft Teams admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Copilot in Teams meetings**.

This scenario is a shortcut to the [Microsoft Teams admin center](https://admin.teams.microsoft.com). You don't configure this scenario in the Microsoft 365 admin center.

In the Teams admin center, you can manage how Copilot interacts with some Teams features, including meeting transcripts.

To learn more, see:

- [Microsoft 365 Copilot in Teams meetings and events](/microsoftteams/copilot-teams-transcription)
- [Teams Rooms and Copilot overview](/microsoftteams/rooms/copilot-admin-mtr)

### Copilot in Viva

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings**. There are several Viva options.

[Microsoft Viva](/viva/microsoft-viva-overview) is an integrated employee experience in Microsoft 365 and Microsoft Teams. There are several ways to use Copilot in Microsoft Viva:

- **Copilot in Viva Engage** provides conversation starters and writing assistance to help people create Engage posts. Use a combination of the **Org-wide setting** and custom policies to refine access for the people in your organization.

  To learn more, see [Copilot in Viva Engage](/viva/copilot/viva-copilot-overview#copilot-in-viva-engage).

- **Copilot in Viva Goals** helps people brainstorm new goals, refine and improve existing ones, and summarize key information. Use a combination of the **Org-wide setting** and custom policies to refine access for the people in your organization.

  To learn more, see [Copilot in Viva Goals](/viva/copilot/viva-copilot-overview#copilot-in-viva-goals).

- **Copilot in Viva Insights** simplifies the query building process for analysts by suggesting a template, metrics, filters, and attributes relevant to their analysis. Use a combination of **Org-wide setting** and custom policies to refine access for the people in your organization.

  To learn more, see [Copilot queries in Viva Insights](/viva/insights/advanced/analyst/copilot-query).

- **Copilot in Viva Pulse** integrates with the [Microsoft Copilot Dashboard](/viva/insights/org-team-insights/copilot-dashboard) to capture sentiment data and measure Microsoft 365 Copilot's effectiveness. You can use a research-backed template to send surveys and gather team feedback directly from the dashboard or within Viva Pulse.

  To learn more, see [Copilot and Viva Pulse](/viva/pulse/viva-integrations/measure-copilot-impact-in-your-organization).

### Data, security, and compliance

✅ Shortcut to the Microsoft Purview portal

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Data, Security, and Compliance**.

This scenario is a shortcut to the [Microsoft Purview portal](https://purview.microsoft.com/). You don't configure this scenario in the Microsoft 365 admin center.

Microsoft Purview has several features that can help get your data ready for Copilot. You can create sensitivity labels and apply them to your data, create retention policies to remove outdated data, and analyze Copilot prompts and responses.

To learn more, see:

- [Protect and manage Microsoft 365 Copilot interactions with Microsoft Purview](/purview/ai-microsoft-purview)
- [Microsoft 365 Copilot admin guide for E3 + SAM licenses](microsoft-365-copilot-e3-guide.md)
- [Microsoft 365 Copilot admin guide for E5 + SAM licenses](microsoft-365-copilot-e5-guide.md)

### Extensions

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Extensions**.

This setting lets you allow (or block) user access to [Copilot agents](https://support.microsoft.com/topic/introducing-copilot-agents-943e563d-602d-40fa-bdd1-dbc83f582466). It also provides a shortcut to more in-depth settings in the admin center (**Settings** > **Integrated apps**).

:::image type="content" source="media/microsoft-365-copilot-page/microsoft-365-admin-center-copilot-extensions.png" alt-text="Screenshot that lets you allow or block users from using Microsoft 365 Copilot extensions and agents in the Microsoft 365 admin center.":::

Agents are interactions (chats and responses) with Microsoft 365 Copilot that focus on a specific task. You can create your own agents and include sample prompts that users can ask Copilot. For example, you can create agents that help users create meeting agendas or write blog posts.

End users can ask questions not related to the task, but agents are designed to help users with specific tasks.

You can also learn how to control the integration of non-Microsoft apps and first-party apps.

To learn more, see:

- [Manage Copilot agents in Integrated Apps](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps)
- [Introducing Copilot agents](https://support.microsoft.com/topic/introducing-copilot-agents-943e563d-602d-40fa-bdd1-dbc83f582466)

### Microsoft 365 Copilot self-service purchases

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Microsoft 365 Copilot self-service purchases**.

This setting lets you allow (or block) users from purchasing Microsoft 365 Copilot licenses without admin approval or help. This scenario can help admins understand and manage the demand.

:::image type="content" source="media/microsoft-365-copilot-page/microsoft-365-admin-center-copilot-self-service.png" alt-text="Screenshot that allows users to purchase Microsoft 365 Copilot without admin approval in the Copilot page in the Microsoft 365 admin center.":::

To see a list of all self-service trials and purchases in the [Microsoft 365 admin center](https://admin.microsoft.com), select **Home** > **Settings** > **Org settings**.

To learn more, see:

- [Self-service purchase FAQ](/microsoft-365/commerce/subscriptions/self-service-purchase-faq)
- [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](/microsoft-365/commerce/subscriptions/allowselfservicepurchase-powershell)

### Microsoft Security Copilot

✅ Shortcut to Microsoft Security Copilot

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Microsoft Security Copilot**.

This scenario is a shortcut to the Security Copilot portal. You don't configure this scenario in the Microsoft 365 admin center.

Security Copilot is a separate product and license from Microsoft 365 Copilot. If it's available in your tenant, you can use this link to go to Security Copilot.

To learn more, see [Security Copilot](/copilot/security).

### Pin Copilot Chat

✅ Configure in the Microsoft 365 admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Pin Copilot Chat**.

This setting lets you pin Microsoft 365 Copilot Chat to the navigation bar in Teams, Outlook, and the Microsoft 365 Copilot app. By default, Copilot Chat might be pinned for users with a Microsoft 365 Copilot license.

:::image type="content" source="media/microsoft-365-copilot-page/microsoft-365-admin-center-pin-copilot-chat.png" alt-text="Screenshot that lets admins pin Microsoft 365 Copilot Chat to the navigation bar in the Copilot page in the Microsoft 365 admin center." lightbox="media/microsoft-365-copilot-page/microsoft-365-admin-center-pin-copilot-chat.png":::

When Copilot Chat is pinned, it makes it easier for people in your organization to access Copilot Chat.

To learn more, see:

- [Pin Microsoft 365 Copilot Chat to the navigation bar](pin-copilot.md)
- [Pin apps to the taskbar](/windows/configuration/taskbar/pinned-apps)

### Web search for Microsoft 365 Copilot and Microsoft Copilot

✅ Shortcut to create a cloud policy in the Microsoft 365 Apps admin center

In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Copilot** > **Settings** > **Web search for Microsoft 365 Copilot and Microsoft Copilot**.

This scenario is a shortcut to create a cloud policy in the Microsoft 365 Apps admin center. You don't configure this scenario in the Microsoft 365 admin center.

When the `Allow web search in Copilot` policy is enabled, Copilot can reference web content to improve the quality of its responses.

To learn more, see:

- [Overview of Cloud Policy service for Microsoft 365](/microsoft-365-apps/admin-center/overview-cloud-policy)
- [Data, privacy, and security for web search in Microsoft 365 Copilot and Microsoft 365 Copilot Chat](manage-public-web-access.md)

## Related articles

- [Learn about the admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles)
- [Compare the Microsoft 365 license feature list for Microsoft 365 Copilot](microsoft-365-copilot-license-feature-overview.md)
- [Remove or prevent installation of the Copilot app](/windows/client-management/manage-windows-copilot#remove-or-prevent-installation-of-the-copilot-app)
