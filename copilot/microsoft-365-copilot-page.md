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

- Your organization must have purchased Copilot licenses to access the Settings tab on the Copilot page in the Microsoft 365 admin center. While you don't need a license assigned to your admin account, you must have these licenses present within the organization for the Copilot page to be visible. For more information, see [Get started with Microsoft 365 Copilot](microsoft-365-copilot-setup.md).

- You must be a Global Administrator to access the Copilot page. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## How to get to the Settings tab on the Copilot page

1. Sign in to the Microsoft 365 admin center.

2. In the left navigation, select **Copilot**.

3. Select the **Settings** tab.

## Settings

:::image type="content" source="media/copilot-page-settings.png" alt-text="Screenshot showing the Copilot page in the Microsoft 365 admin center." lightbox="media/copilot-page-settings.png":::

### Licenses

You can manage Copilot licenses, including assigning and unassigning licenses, for your users.

### Manage how your organization interacts with Copilot in Bing, Microsoft Edge, and Windows

Copilot capabilities with [enterprise data protection](/copilot/overview) provides enhanced security for users accessing the generative AI capabilities of Copilot. This experience is on by default for [users with eligible licenses](/copilot/manage#commercial-data-protection-eligibility) assigned by your organization when they are signed in with their work or school (Entra ID) accounts.

Copilot in Bing, Edge, and Windows is the public version of Copilot and doesn't require users to be signed in. You can reroute to the documentation available on the panel to turn off the public experience and still have access to the Copilot capabilities with enterprise data protection experience.

You should use a PowerShell script to control access to Microsoft 365 Copilot in Bing, Edge, and Windows. Running this script controls access to Microsoft 365 Copilot in Bing.com, Edge sidebar, Edge mobile app, Copilot in Windows, copilot.microsoft.com, and the Copilot app. It doesn't change how users access Copilot in other Microsoft 365 productivity apps.  

To turn on or turn off Microsoft 365 Copilot in Bing, Edge, and Windows, follow these steps:

1. Download the [PowerShell script](https://download.microsoft.com/download/8/9/d/89d41212-7ece-414c-b6d3-f4ecb070c613/ConfigureM365Copilot.ps1).
2. Open an instance of the Windows PowerShell in admin mode.
3. Run the following command first: 'Set-ExecutionPolicy unrestricted'.
4. Run the PowerShell script.
5. Follow the instructions prompted by the script.
6. The cmdlet prompts you to sign in with your Entra ID account, which must be a Search Admin or Global Admin account.
7. Follow these steps:

    - To get the **current status** of Microsoft 365 Copilot in Bing, Edge, and Windows in your tenant, run: *'.\ConfigureM365Copilot.ps1'*
    - To **turn on** Microsoft 365 Copilot in Bing, Edge, and Windows, run: *'.\ConfigureM365Copilot.ps1 -enable $true'*
    - To **turn off** Microsoft 365 Copilot in Bing, Edge, and Windows, run: *'.\ConfigureM365Copilot.ps1 -enable $false'*
8. If you encounter a problem, try running the script again. If the problem persists, you can contact support.

### Manage plugins that work with Microsoft 365 Copilot

Microsoft 365 Copilot is powered by an advanced processing and orchestration engine that seamlessly integrates Microsoft 365 productivity apps, Microsoft Graph, and large language models (LLMs) to turn your words into the most powerful productivity tool. While Copilot is already able to use the apps and data within the Microsoft 365 ecosystem, many users still depend on various external tools and services for work management and collaboration. You can extend Microsoft 365 Copilot by building a plugin or by connecting to an external data source.

This control allows you to control how non-Microsoft apps and first party apps can work with Microsoft 365 Copilot.

### Optional connected experiences for Microsoft 365 Copilot and Microsoft Copilot

Copilot can make use of cloud-backed services, called optional connected experiences, to provide additional functionality to Copilot users. For example, Copilot can [reference web content](manage-public-web-access.md) to improve the quality of its responses to user prompts. For Copilot to use these cloud-backed services, optional connected experiences must be on. For more information, see [Microsoft 365 Copilot and privacy controls for connected experiences](microsoft-365-copilot-privacy.md#microsoft-365-copilot-and-privacy-controls-for-connected-experiences).

### Data, Security, and Compliance

This link navigates you to the Microsoft Purview compliance portal where you can manage sensitivity labels, retention policies, Copilot interactions, audit records for Copilot, search Copilot interactions, and configure how Microsoft 365 Copilot interacts and references protected documents. Learn more about [how to protect and manage Microsoft 365 Copilot interactions with Microsoft Purview](/purview/ai-microsoft-purview).

### Microsoft Copilot for Security

This link directs you to the Copilot for Security portal to manage settings. Copilot for Security is a separate product and license from Microsoft 365 Copilot. If purchased, you can use this link to navigate to Copilot for Security settings page. To learn more, see [Copilot for Security](/copilot/security/).

### Microsoft 365 Copilot feedback logs

When users have an issue and aren't able to send feedback logs to Microsoft, you can submit feedback logs on their behalf. The data will include prompts and generated responses, relevant content samples, and additional log file. Using this feature to send feedback logs will temporarily override any user level feedback policy.

To learn more, see [Provide user feedback for Microsoft 365 Copilot](provide-feedback.md).
