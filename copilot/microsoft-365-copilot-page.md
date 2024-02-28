---
title: Manage Microsoft Copilot for Microsoft 365 with the Copilot page
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 10/31/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
- m365copilot
description: "Learn about the Copilot page in the Microsoft 365 admin center."
---

# Manage Microsoft Copilot for Microsoft 365 with the Copilot page

You can manage Microsoft Copilot for Microsoft 365 through the Microsoft 365 admin center by using the Copilot page. Use the Copilot page to review licensing, get the latest information, and to view additional resources. You can also manage how users in your organization interact with Microsoft Copilot for Microsoft 365, Security Copilot, and more.

## Before you begin

- Your organization must have purchased Copilot licenses to access the Copilot page in the Microsoft 365 admin center. While you don't need a license assigned to your admin account, you must have these licenses present within the organization for the Copilot page to be visible. For more information, see [Get started with Microsoft Copilot for Microsoft 365](microsoft-365-copilot-setup.md).

- You must be a Global Administrator to access the Copilot page. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## How to get to the Copilot page

1. Sign in to the Microsoft 365 admin center.

2. In the left navigation, select **Copilot**.

## How can I use the Copilot page?

In this dashboard, you can access essential resources to help your organization use Copilot effectively:

:::image type="content" source="media/copilot-page-dashboard.png" alt-text="Screenshot showing the Copilot page in the Microsoft 365 admin center." lightbox="media/copilot-page-dashboard.png":::

### Licenses

You can manage Copilot licenses, including assigning and unassigning licenses, for your users.

### Manage how your organization interacts with Copilot in Bing, Edge, and Windows

Copilot with commercial data protection provides enhanced security for users accessing the generative AI capabilities of Copilot. This experience is on by default for [users with eligible licenses](/copilot/manage#commercial-data-protection-eligibility) assigned by your organization when they are signed in with their work or school (Entra ID) accounts.

Copilot in Bing, Edge and Windows is the public version of Copilot and doesn’t require users to be signed in. You can reroute to the documentation available on the panel to turn off the public experience and still have access to the Copilot with commercial data protection experience.

You should use a PowerShell script to control access to Copilot for Microsoft 365 in Bing, Edge, and Windows. Running this script controls access to Copilot for Microsoft 365 in Bing.com, Edge sidebar, Edge mobile app, Copilot in Windows, copilot.microsoft.com, and the Copilot app. It doesn’t change how users access Copilot in other Microsoft 365 apps.  

To turn on or turn off Copilot for Microsoft 365 in Bing, Edge, and Windows, follow these steps:

1. Download the [PowerShell script](https://download.microsoft.com/download/8/9/d/89d41212-7ece-414c-b6d3-f4ecb070c613/ConfigureM365Copilot.ps1).
2. Open an instance of the Windows PowerShell in admin mode.
3. Run the following command first: ‘Set-ExecutionPolicy unrestricted’.
4. Run the PowerShell script.
5. Follow the instructions prompted by the script.
6. The cmdlet will prompt you to sign in with your AAD account, which must be a Search Admin or Global Admin account.
7. To get the current status of Copilot for Microsoft 365 in Bing, Edge, and Windows in your tenant, run: ‘*.\ConfigureM365Copilot.ps1*’
8. To turn on Copilot for Microsoft 365 in Bing, Edge, and Windows, run: ‘*.\ConfigureM365Copilot.ps1 -enable $true*’
9. To turn off Copilot for Microsoft 365 in Bing, Edge, and Windows, run: ‘*.\ConfigureM365Copilot.ps1 -enable $false*’
10. If anything goes wrong, try running the script again. If the issue persists, you can contact support.

### Manage plugins that work with Microsoft Copilot for Microsoft 365

Microsoft Copilot for Microsoft 365 is powered by an advanced processing and orchestration engine that seamlessly integrates Microsoft 365 apps, Microsoft Graph, and large language models (LLMs) to turn your words into the most powerful productivity tool. While Copilot is already able to use the apps and data within the Microsoft 365 ecosystem, many users still depend on various external tools and services for work management and collaboration. You can extend Microsoft Copilot for Microsoft 365 by building a plugin or by connecting to an external data source.

This control navigates you to the Integrated App settings to control how non-Microsoft apps and first party apps can work with Microsoft Copilot for Microsoft 365.

### Improved responses with web content in Copilot for Microsoft 365

This control allows you to enable or disable Copilot’s ability to access the public web to get the latest information available when responding to prompts. Note that this is a separate control from Copilot with commercial data protection. Learn more about [how to Manage access to web content in Copilot for Microsoft 365 responses](manage-public-web-access.md).

### Data Security and Compliance

This link navigates you to the Microsoft Purview compliance portal where you can manage sensitivity labels, retention policies, Copilot interactions, audit records for Copilot, search Copilot interactions, and configure how Microsoft Copilot for Microsoft 365 interacts and references protected documents. Learn more about [how to protect and manage Microsoft Copilot for Microsoft 365 interactions with Microsoft Purview](/purview/ai-microsoft-purview).

### Security Copilot

This link directs you to the Security Copilot portal to manage settings. Security Copilot is a separate product and license from Microsoft Copilot for Microsoft 365. If purchased, you can use this link to navigate to Microsoft Security Copilot settings page. To learn more, see [Microsoft Security Copilot](/security-copilot/).

### Latest info

You can get the latest information on Copilot by viewing the top three latest updates in the Message Center. To view a list of all Copilot posts for your organization, you can use this page to visit the Message Center.

### Microsoft Copilot for Microsoft 365 resources

You can view additional resources for Microsoft Copilot for Microsoft 365 to help you learn more. Here’s a list of resources you can access through the Copilot page:

- [Microsoft Copilot for Microsoft 365 documentation](index.yml)

- [End user help and learning](https://support.microsoft.com/copilot)

- [Responsible AI Principles and Approach \| Microsoft AI](https://www.microsoft.com/ai/principles-and-approach/)

- [Frequently asked questions about the Microsoft Copilot for Microsoft 365 Early Access Program for businesses](https://support.microsoft.com/office/frequently-asked-questions-about-the-microsoft-365-copilot-early-access-program-for-businesses-6630289c-3e93-4065-8350-fdecadb5a1f3)
