---
title: Manage Microsoft 365 Copilot settings
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 09/16/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
description: "Learn about the Copilot page and how you can manage Microsoft 365 Copilot settings in the Microsoft 365 admin center."
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Manage Microsoft 365 Copilot settings in the Microsoft 365 admin center

You can manage Microsoft 365 Copilot through the Microsoft 365 admin center by going to the Settings tab on the Copilot page. Manage how users in your organization interact with Microsoft 365 Copilot, Security Copilot, and more.

## Before you begin

- The experience on the Copilot page in the Microsoft 365 admin center depends on whether your organization has a Copilot license. If your organization has a Copilot license, you will see settings specific to managing Copilot features. If your organization does not have a Copilot license, you will see settings for the public version of Copilot. For more information, see [Get started with Microsoft 365 Copilot](microsoft-365-copilot-setup.md).

- Any admin role can access the Copilot page, but only certain roles can adjust settings. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## How to get to the Settings tab on the Copilot page

1. Sign in to the Microsoft 365 admin center.

2. In the left navigation, select **Copilot**.

3. Select the **Settings** tab.

## Settings

:::image type="content" source="media/copilot-page-settings.png" alt-text="Screenshot showing the Copilot page in the Microsoft 365 admin center." lightbox="media/copilot-page-settings.png":::

### Licenses

You can manage Copilot licenses, including assigning and unassigning licenses, for your users.

### Manage how your organization interacts with Microsoft 365 Copilot Chat

For users signed in with a Microsoft Entra account, Microsoft 365 Copilot offers [enterprise data protection](/copilot/microsoft-365/enterprise-data-protection) (EDP) in an experience designed for work and education. Users who aren't signed in, or are signed in with a personal account, can use the public version of Copilot, accessed primarily through [copilot.microsoft.com](https://copilot.microsoft.com/) and [bing.com/chat](https://bing.com/chat).

To ensure that users in your organization access Copilot Chat, follow these [instructions on managing Microsoft 365 Copilot Chat](/copilot/manage).

### Manage agents that work with Microsoft 365 Copilot

To learn more about managing agents that work with Microsoft 365 Copilot, including how to control the integration of non-Microsoft apps and first-party apps, see [Manage Copilot agents in Integrated Apps](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps).

### Web search for Microsoft 365 Copilot and Microsoft 365 Copilot Chat

Copilot can reference web content to improve the quality of its responses, but only if access to web search is turned on. For more information, see [Data, privacy, and security for web search in Microsoft 365 Copilot and Microsoft 365 Copilot Chat](manage-public-web-access.md).

### Data, Security, and Compliance

This link navigates you to the Microsoft Purview compliance portal where you can manage sensitivity labels, retention policies, Copilot interactions, audit records for Copilot, search Copilot interactions, and configure how Microsoft 365 Copilot interacts and references protected documents. Learn more about [how to protect and manage Microsoft 365 Copilot interactions with Microsoft Purview](/purview/ai-microsoft-purview).

### Microsoft Security Copilot

This link directs you to the Security Copilot portal to manage settings. Security Copilot is a separate product and license from Microsoft 365 Copilot. If purchased, you can use this link to navigate to Security Copilot settings page. To learn more, see [Security Copilot](/copilot/security/).

### Microsoft 365 Copilot diagnostics logs

When users have an issue and aren't able to send feedback logs to Microsoft, you can submit feedback logs on their behalf. The data will include prompts and generated responses, relevant content samples, and additional log files. Using this feature to send feedback logs will temporarily override any user level feedback policy.

To learn more, see [Submit admin-initiated Copilot feedback from the Microsoft 365 admin center](provide-feedback.md).

### Pin Microsoft 365 Copilot Chat to the navigation bar

Pin Copilot to the navigation bar to make it easier for people in your organization to access it in Teams, Outlook, and the Microsoft 365 Copilot app on web, desktop, and mobile. Users with a license for Microsoft 365 Copilot will have it pinned by default. Microsoft 365 Copilot used with Microsoft Entra ID is governed by your agreement for Online Services.

To learn more, see [Pin Microsoft 365 Copilot Chat to the navigation bar](pin-copilot.md).

### Copilot self-service purchase

Give users the flexibility to acquire this product without an administrator's help. This can help admins understand and manage the demand.

To learn more, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](/microsoft-365/commerce/subscriptions/allowselfservicepurchase-powershell).

### Copilot Agent Consumption Meter Configuration

You can reach Power Platform Licensing from the Copilot Settings page in the Microsoft 365 admin center. This setting allows for the creation of a billing plan that tracks and manages consumption for Microsoft 365 Copilot Chat. By setting up a new billing plan, selecting an Azure subscription, and linking the necessary environments, this configuration helps manage message capacity, monitor usage, and handle overages efficiently, ensuring cost-effective resource usage. To learn more, see [Set up a pay-as-you-go plan - Power Platform](/power-platform/admin/pay-as-you-go-set-up).

### Copilot in Teams meetings

Manage how Copilot is used in Teams meetings through the Microsoft Teams admin center. This includes settings related to the meeting transcript. Specifically, admins can decide whether Copilot can be used only during the meeting or both during and after the meeting.

To learn more, see [Manage Microsoft 365 Copilot in Teams meetings and events](/microsoftteams/copilot-teams-transcription).

### Copilot in Viva Engage

Copilot in Viva Engage provides conversation starters and writing assistance to help people create Engage posts. Use a combination of the org-wide setting and custom policies to refine access for the people in your organization.

To learn more, see [Copilot in Viva Engage](/viva/copilot/viva-copilot-overview#copilot-in-viva-engage).

### Copilot in Viva Goals

Copilot in Viva Goals helps people brainstorm new goals, refine and improve existing ones, and summarize key information. Use a combination of the org-wide setting and custom policies to refine access for the people in your organization.

To learn more, see [Copilot in Viva Goals](/viva/copilot/viva-copilot-overview#copilot-in-viva-goals).

### Copilot in Viva Insights 

Copilot in Viva Insights simplifies the query building process for analysts by suggesting a template, metrics, filters, and attributes relevant to their analysis. Use a combination of org-wide setting and custom policies to refine access for the people in your organization. [Learn more](/viva/insights/advanced/analyst/copilot-query). 

### Copilot in Edge 

‎Copilot‎ in ‎Edge‎ gives your organization AI-powered chat for work with enterprise data protection. To configure AI features for ‎Copilot‎ in ‎Edge,‎ you'll need to add a configuration profile in the settings for ‎Microsoft Edge‎.

To learn more, see [Copilot in Viva Edge](/deployedge/microsoft-edge-management-service).

### Copilot in Power Platform and Dynamics 365 

This links directs you to the Power Platform admin center to manage settings specific to ‎Microsoft Copilot‎, agents, and ‎Copilot‎ agents in ‎Power Platform‎ and ‎Dynamics 365‎ products.

To learn more, see [Copilot in Viva Edge](/power-platform/copilot).
