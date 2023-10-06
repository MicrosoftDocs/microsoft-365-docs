---
title: "Get started with Microsoft 365 Copilot"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 10/05/2023
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
- essentials-get-started
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to prepare your organization for Microsoft 365 Copilot."
---

# Get started with Microsoft 365 Copilot

>[!IMPORTANT]
> The information in this article only applies to the [Microsoft 365 Copilot Early Access Program](https://www.microsoft.com/microsoft-365/blog/2023/05/09/introducing-the-microsoft-365-copilot-early-access-program-and-new-capabilities-in-copilot/), an invite-only preview program for commercial customers. Details are subject to change.

[Microsoft 365 Copilot](https://www.microsoft.com/microsoft-365/blog/2023/03/16/introducing-microsoft-365-copilot-a-whole-new-way-to-work/) is an AI-powered productivity tool that uses large language models (LLMs) and integrates your data with the Microsoft Graph and Microsoft 365 Apps. It works alongside popular Microsoft 365 Apps such as Word, Excel, PowerPoint, Outlook, Teams, and more. Copilot provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills. This article covers the technical requirements to access and configure Microsoft 365 Copilot once you're invited to the Early Access Program.

## Prerequisites for Microsoft 365 Copilot

Before you can access Copilot, you must meet these requirements:

- The following applications must be deployed for your users, which seamlessly integrate with Microsoft 365 Copilot and other applications: 
  - Word
  - Excel
  - PowerPoint
  - Outlook
  - Microsoft Teams
  - OneDrive
  - SharePoint
  - Exchange
  
To get started with the implementation process, see [Deployment guide for Microsoft 365 Apps](/deployoffice/deployment-guide-microsoft-365-apps).

- **OneDrive Account** You need to have a OneDrive account for several features within Microsoft 365 Copilot, such as saving and sharing your files. For more information, see [Sign in or create an account for OneDrive](https://support.microsoft.com/office/video-sign-in-or-create-an-account-for-onedrive-3adf09fd-90e3-4420-8c4e-b55e2cde40d2?ui=en-us&rs=en-us&ad=us).

- **New Outlook for Windows** For seamless integration of Microsoft 365 Copilot with Outlook, you are required to use the new Outlook for Windows, currently in preview. You can switch to Outlook Mobile to access the new Outlook experience. For more information, see [Getting started with the new Outlook for Windows](https://support.microsoft.com/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627).

- **Microsoft Teams** To use Microsoft 365 Copilot with Microsoft Teams, you must use the Teams desktop client or web client. You can [download the desktop client here](https://www.microsoft.com/microsoft-teams/download-app) or sign into the web app at [https://teams.microsoft.com](https://teams.microsoft.com/). Both the current and the new version of Teams are supported. For more information, see [Microsoft Teams desktop client](/microsoftteams/get-clients?tabs=Windows).

- **Microsoft Loop** To use Copilot in Microsoft Loop, you must have Loop enabled for your tenant. For more information on enabling Loop, see [Get started with Microsoft Loop](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c).

>[!IMPORTANT]
> This note only applies to Microsoft 365 Apps for enterprise subscribers. Your users must be on Current Channel to access Copilot. To learn more, see [update channels for Microsoft 365 Apps](/deployoffice/updates/overview-update-channels#current-channel-overview).

>[!NOTE]
> We previously stated that support for Monthly Enterprise Channel was available for Microsoft 365 Copilot. As we continue to make frequent product updates and enhancements during the early access program, the time between updates in Monthly Enterprise Channel limits Microsoft's ability to provide an optimum Copilot experience on desktop clients. Going forward, users in the early access program must be on Current Channel to receive Copilot updates when they become available. We expect support in Monthly Enterprise Channel in the future.

## Manage licenses for Copilot

You can manage Microsoft 365 Copilot licenses from the Microsoft 365 admin center. You can assign licenses to individual users or to groups of users, as well as reassign licenses to other users.  

To access license management in the Microsoft 365 admin center, go to **Billing** > **Licenses**.

You can also assign licenses in bulk to [groups of users through the Azure admin center](/azure/active-directory/enterprise-users/licensing-groups-assign) or [assign licenses to users with PowerShell](/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell). For more information, see [Assign Microsoft 365 licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users).

## Security and privacy

Microsoft 365 Copilot ensures data security and privacy by adhering to existing obligations and integrating with your organization's policies. It utilizes your Microsoft Graph content with the same access controls as other Microsoft 365 services. To learn more about privacy with Microsoft 365 Copilot, see [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).

### Privacy settings for Microsoft 365 Apps for enterprise

Review your privacy settings for Microsoft 365 Apps for enterprise because those settings might have an effect on the availability of Microsoft 365 Copilot features. For more information, see [Microsoft 365 Copilot and policy settings for connected experiences](microsoft-365-copilot-privacy.md#microsoft-365-copilot-and-policy-settings-for-connected-experiences).

## More resources

- [Microsoft 365 Copilot setup guide](https://go.microsoft.com/fwlink/p/?linkid=2243702)
- [Microsoft 365 AI help and learning](https://support.microsoft.com/copilot)
- [Microsoft 365 Copilot - Microsoft Community Hub](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/ct-p/Microsoft365Copilot)
