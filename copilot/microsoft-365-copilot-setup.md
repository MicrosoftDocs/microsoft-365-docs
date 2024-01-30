---
title: "Get started with Microsoft Copilot for Microsoft 365"
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
description: "Learn how to prepare your organization for Microsoft Copilot for Microsoft 365."
---

# Get started with Microsoft Copilot for Microsoft 365

[Microsoft Copilot for Microsoft 365](https://www.microsoft.com/microsoft-365/blog/2023/03/16/introducing-microsoft-365-copilot-a-whole-new-way-to-work/) is an AI-powered productivity tool that uses large language models (LLMs) and integrates your data with the Microsoft Graph and Microsoft 365 Apps. It works alongside popular Microsoft 365 Apps such as Word, Excel, PowerPoint, Outlook, Teams, and more. Copilot provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills. This article covers how you can prepare your organization for Copilot.

## Before you begin

Before you can access Copilot for Microsoft 365, you must meet these requirements:

You must have one of the following subscription plans to enable Microsoft Copilot for Microsoft 365:

- Microsoft 365 E5
- Microsoft 365 E3
- Office 365 E3
- Office 365 E5
- Microsoft 365 A5 for faculty
- Microsoft 365 A3 for faculty
- Office 365 A5 for faculty
- Office 365 A3 for faculty
- Microsoft 365 Business Standard
- Microsoft 365 Business Premium

Your users must be assigned one of the following base licenses to get Copilot for Microsoft 365 as an add-on license.

### Deploy Microsoft 365 Apps

Microsoft 365 Apps must be deployed for your users to integrate with Copilot and applications such as Word, Excel, PowerPoint, Outlook, and Teams. To get started with the implementation process, see [Deployment guide for Microsoft 365 Apps](/deployoffice/deployment-guide-microsoft-365-apps).

- **OneDrive Account** You need to have a OneDrive account for several features within Copilot for Microsoft 365, such as saving and sharing your files. For more information, see [Sign in or create an account for OneDrive](https://support.microsoft.com/office/video-sign-in-or-create-an-account-for-onedrive-3adf09fd-90e3-4420-8c4e-b55e2cde40d2?ui=en-us&rs=en-us&ad=us).

- **New Outlook for Windows** For seamless integration of Copilot for Microsoft 365 with Outlook, you are required to use the new Outlook for Windows, currently in preview. You can switch to Outlook Mobile to access the new Outlook experience. For more information, see [Getting started with the new Outlook for Windows](https://support.microsoft.com/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627).

- **Microsoft Teams** To use Copilot for Microsoft 365 with Microsoft Teams, you must use the Teams desktop client or web client. You can [download the desktop client here](https://www.microsoft.com/microsoft-teams/download-app) or sign into the web app at [https://teams.microsoft.com](https://teams.microsoft.com/). Both the current and the new version of Teams are supported. For more information, see [Microsoft Teams desktop client](/microsoftteams/get-clients?tabs=Windows).

    To enable Copilot in Teams to reference meeting content after the meeting has ended, transcription or meeting recording must be enabled. To learn more about configuring transcription and recording, see [Configure transcription and captions for Teams meetings](/microsoftteams/meeting-transcription-captions) and [Teams meeting recording](/microsoftteams/meeting-recording).

- **Microsoft Loop** To use Copilot in Microsoft Loop, you must have Loop enabled for your tenant. For more information on enabling Loop, see [Get started with Microsoft Loop](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c).

- **Microsoft Whiteboard** To use Copilot for Microsoft 365 with Microsoft Whiteboard, you must have Whiteboard enabled for your tenant. To learn more about Microsoft Whiteboard, see [Manage access to Microsoft Whiteboard for your organization](/microsoft-365/whiteboard/manage-whiteboard-access-organizations).

>[!IMPORTANT]
> Your users must be on Current Channel or Monthly Enterprise Channel to access Copilot. To learn more, see [Overview of update channels](/deployoffice/updates/overview-update-channels), and [Microsoft 365 Insider channels](/deployoffice/insider/compare-channels).

## Security and privacy

Microsoft Copilot for Microsoft 365 ensures data security and privacy by adhering to existing obligations and integrating with your organization's policies. It utilizes your Microsoft Graph content with the same access controls as other Microsoft 365 services. To learn more about privacy with Microsoft Copilot for Microsoft 365, see [Data, Privacy, and Security for Microsoft Copilot for Microsoft 365](microsoft-365-copilot-privacy.md).

### Privacy settings for Microsoft 365 Apps for enterprise

Review your privacy settings for Microsoft 365 Apps for enterprise because those settings might have an effect on the availability of Microsoft Copilot for Microsoft 365 features. For more information, see [Microsoft Copilot for Microsoft 365 and policy settings for connected experiences](microsoft-365-copilot-privacy.md#microsoft-copilot-for-microsoft-365-and-policy-settings-for-connected-experiences).

## Manage licenses

After you’ve prepared your organization for Copilot, you can manage Microsoft Copilot for Microsoft 365 licenses from the Microsoft 365 admin center. You can assign licenses to individual users or to groups of users, as well as reassign licenses to other users.  

To access license management in the Microsoft 365 admin center, go to **Billing** > **Licenses**.

You can also assign licenses in bulk to [groups of users through the Azure admin center](/azure/active-directory/enterprise-users/licensing-groups-assign) or [assign licenses to users with PowerShell](/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell). For more information, see [Assign Microsoft 365 licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users).

To learn more about the steps to deploy Copilot for your organization, see [Enable users for Microsoft Copilot for Microsoft 365](microsoft-365-copilot-enable-users.md).

## Configure settings

As an admin, you can manage Microsoft Copilot experiences for your organization by using the controls available in the Microsoft 365 admin center. You can view the status of Copilot license assignments, access the latest information on Copilot, manage data security and compliance controls, submit feedback on behalf of users, configure plugins and permissions, and enable the use of web data as grounding data in Copilot.

You can manage these settings by using the Copilot page in the Microsoft 365 admin center. To learn more, see [Manage Microsoft Copilot for Microsoft 365 with the Copilot page](microsoft-365-copilot-page.md).

## More resources

- [Microsoft Copilot for Microsoft 365 setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide)
- [Microsoft 365 AI help and learning](https://support.microsoft.com/copilot)
- [Copilot for Microsoft 365 - Microsoft Adoption](https://adoption.microsoft.com/copilot/)
- [Microsoft Copilot for Microsoft 365 - Microsoft Community Hub](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/ct-p/Microsoft365Copilot)
