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
---

# Manage Microsoft 365 Copilot settings in the Microsoft 365 admin center

You can manage Microsoft 365 Copilot through the Microsoft 365 admin center by going to the Settings tab on the Copilot page. Manage how users in your organization interact with Microsoft 365 Copilot, Copilot for Security, and more.

## Before you begin

- The experience on the Copilot page in the Microsoft 365 admin center depends on whether your organization has a Copilot license. If your organization has a Copilot license, you will see settings specific to managing Copilot features. If your organization does not have a Copilot license, you will see settings for the public version of Microsoft Copilot. For more information, see [Get started with Microsoft 365 Copilot](microsoft-365-copilot-setup.md).

- Any admin role can access the Copilot page, but only certain roles can adjust settings. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## How to get to the Settings tab on the Copilot page

1. Sign in to the Microsoft 365 admin center.

2. In the left navigation, select **Copilot**.

3. Select the **Settings** tab.

## Settings

:::image type="content" source="media/copilot-page-settings.png" alt-text="Screenshot showing the Copilot page in the Microsoft 365 admin center." lightbox="media/copilot-page-settings.png":::

### Licenses

You can manage Copilot licenses, including assigning and unassigning licenses, for your users.

### Manage how your organization interacts with Microsoft Copilot

For users signed in with a Microsoft Entra account, Microsoft Copilot offers [enterprise data protection](/copilot/microsoft-365/enterprise-data-protection) (EDP) in an experience designed for work and education. Users who aren’t signed in, or are signed in with a personal account, can use the public version of Copilot, accessed primarily through [copilot.microsoft.com](https://copilot.microsoft.com/) and [bing.com/chat](https://bing.com/chat).

To ensure that users in your organization access Copilot with enterprise data protection for work and education, follow these [instructions on managing Copilot](/copilot/manage).

### Manage agents that work with Microsoft 365 Copilot

To learn more about managing agents that work with Microsoft 365 Copilot, including how to control the integration of non-Microsoft apps and first-party apps, see [Manage Copilot agents in Integrated Apps](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps).

### Optional connected experiences for Microsoft 365 Copilot and Microsoft Copilot

Copilot can make use of cloud-backed services, called optional connected experiences, to provide additional functionality to Copilot users. For example, Copilot can [reference web content](manage-public-web-access.md) to improve the quality of its responses to user prompts. For Copilot to use these cloud-backed services, optional connected experiences must be on. For more information, see [Microsoft 365 Copilot and privacy controls for connected experiences](microsoft-365-copilot-privacy.md#microsoft-365-copilot-and-privacy-controls-for-connected-experiences).

### Data, Security, and Compliance

This link navigates you to the Microsoft Purview compliance portal where you can manage sensitivity labels, retention policies, Copilot interactions, audit records for Copilot, search Copilot interactions, and configure how Microsoft 365 Copilot interacts and references protected documents. Learn more about [how to protect and manage Microsoft 365 Copilot interactions with Microsoft Purview](/purview/ai-microsoft-purview).

### Microsoft Copilot for Security

This link directs you to the Copilot for Security portal to manage settings. Copilot for Security is a separate product and license from Microsoft 365 Copilot. If purchased, you can use this link to navigate to Copilot for Security settings page. To learn more, see [Copilot for Security](/copilot/security/).

### Microsoft 365 Copilot feedback logs

When users have an issue and aren't able to send feedback logs to Microsoft, you can submit feedback logs on their behalf. The data will include prompts and generated responses, relevant content samples, and additional log file. Using this feature to send feedback logs will temporarily override any user level feedback policy.

To learn more, see [Provide user feedback for Microsoft 365 Copilot](provide-feedback.md).

### Pin Microsoft Copilot to the navigation bar

Pin Copilot to the navigation bar to make it easier for people in your organization to access it in Teams, Outlook, and the Microsoft 365 app on web, desktop, and mobile. Users with a license for Microsoft 365 Copilot will have it pinned by default. Microsoft Copilot used with Microsoft Entra ID is governed by your agreement for Online Services.

To learn more, see [Pin Microsoft Copilot to the navigation bar](pin-copilot.md).

### Copilot self-service purchase

Give users the flexibility to acquire this product without an administrator's help. This can help admins understand and manage the demand.

To learn more, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](/microsoft-365/commerce/subscriptions/allowselfservicepurchase-powershell).

### Copilot in Teams meetings

Manage how Copilot is used in Teams meetings through the Microsoft Teams admin center. This includes settings related to the meeting transcript. Specifically, admins can decide whether Copilot can be used only during the meeting or both during and after the meeting.

To learn more, see [Manage Microsoft 365 Copilot in Teams meetings and events](/microsoftteams/copilot-teams-transcription).

### Copilot in Viva Engage

Copilot in Viva Engage provides conversation starters and writing assistance to help people create Engage posts. Use a combination of the org-wide setting and custom policies to refine access for the people in your organization.

To learn more, see [Copilot in Viva Engage](/viva/copilot/viva-copilot-overview#copilot-in-viva-engage).

### Copilot in Viva Goals

Copilot in Viva Goals helps people brainstorm new goals, refine and improve existing ones, and summarize key information. Use a combination of the org-wide setting and custom policies to refine access for the people in your organization.

To learn more, see [Copilot in Viva Goals](/viva/copilot/viva-copilot-overview#copilot-in-viva-goals).
