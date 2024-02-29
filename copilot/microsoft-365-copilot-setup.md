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

[Microsoft Copilot for Microsoft 365](https://www.microsoft.com/microsoft-365/blog/2023/03/16/introducing-microsoft-365-copilot-a-whole-new-way-to-work/) is an AI-powered productivity tool that uses large language models (LLMs) and integrates your data with the Microsoft Graph and Microsoft 365 Apps. It works alongside popular Microsoft 365 Apps such as Word, Excel, PowerPoint, Outlook, Teams, and more. Copilot provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills. This article covers how you can prepare your organization for Copilot. These steps can be thought of in three primary phases:

1. Optimizing for Search
1. Update channels and apps
1. Provision Copilot licenses

## Before you begin

Before you can access Copilot, you must meet these requirements:

You must have one of the following subscription plans to purchase Microsoft Copilot for Microsoft 365. You can purchase Copilot for Microsoft 365 licenses through the Microsoft 365 admin center on the Purchase Services page, Microsoft partners, or Microsoft account team. You can purchase as many Copilot for Microsoft 365 licenses as you have pre-requisite licenses. Pre-requisite licenses include:

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

>[!NOTE]
> Customers with Education or Business subscriptions that do not include Teams can still purchase Copilot for Microsoft 365 licenses.

Your users must be assigned one of the following base licenses to be able to get a Copilot for Microsoft 365 license assigned.
  
- **Microsoft 365 Apps** desktop applications such as Word, Excel, PowerPoint, Outlook, and Teams. Copilot will be available in web versions of the apps when a license is assigned.To get started with the implementation process, see [Deployment guide for Microsoft 365 Apps](/deployoffice/deployment-guide-microsoft-365-apps).

- **OneDrive Account** You need to have a OneDrive account for several features within Copilot for Microsoft 365, such as saving and sharing your files. For more information, see [Sign in or create an account for OneDrive](https://support.microsoft.com/office/video-sign-in-or-create-an-account-for-onedrive-3adf09fd-90e3-4420-8c4e-b55e2cde40d2?ui=en-us&rs=en-us&ad=us).

- **Outlook for Windows** For seamless integration of Copilot for Microsoft 365 with Outlook, new Outlook (Windows, Mac, Web, Mobile) is recommended. Copilot does support classic Outlook (Windows) as well. You can switch to Outlook Mobile to access the new Outlook experience. For more information, see [Getting started with the new Outlook for Windows](https://support.microsoft.com/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627).

- **Microsoft Teams** To use Copilot for Microsoft 365 with Microsoft Teams, you must use the Teams desktop client or web client. You can [download the desktop client here](https://www.microsoft.com/microsoft-teams/download-app) or sign into the web app at [https://teams.microsoft.com](https://teams.microsoft.com/). Both the current and the new version of Teams are supported. For more information, see [Microsoft Teams desktop client](/microsoftteams/get-clients?tabs=Windows).

    To enable Copilot in Teams to reference meeting content after the meeting has ended, transcription or meeting recording must be enabled. To learn more about configuring transcription and recording, see [Configure transcription and captions for Teams meetings](/microsoftteams/meeting-transcription-captions) and [Teams meeting recording](/microsoftteams/meeting-recording).

- **Microsoft Loop** To use Copilot in Microsoft Loop, you must have Loop enabled for your tenant. For more information on enabling Loop, see [Get started with Microsoft Loop](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c).

- **Microsoft Whiteboard** To use Copilot for Microsoft 365 with Microsoft Whiteboard, you must have Whiteboard enabled for your tenant. To learn more about Microsoft Whiteboard, see [Manage access to Microsoft Whiteboard for your organization](/microsoft-365/whiteboard/manage-whiteboard-access-organizations).

## Optimize for Search

Microsoft Copilot for Microsoft 365 provides the ability for users to find and access their content through natural language prompting. Copilot ensures data security and privacy by adhering to existing obligations and integrating with your organization's policies. It utilizes your Microsoft Graph content with the same access controls as other Microsoft 365 services. To get the most out of Copilot, you should consider optimizing data and content for Search, to ensure optimal secure access. To learn more about privacy with Microsoft Copilot for Microsoft 365, see [Data, Privacy, and Security for Microsoft Copilot for Microsoft 365](microsoft-365-copilot-privacy.md).

### Applying principles of Just Enough Access

From the SharePoint admin center, you can review SharePoint site access to check permissions and access to ensure data is secure, prioritizing sites that contain sensitive information.

:::image type="content" source="media/sharepoint-active-sites-setting.png" alt-text="Screenshot showing the SharePoint admin center active sites panel." lightbox="media/sharepoint-active-sites-setting.png":::

You can check on site privacy by going to Active Sites, then selecting a site, and going to Settings. Setting a site as Private means that only users in your organization with access to the site will find it. You can also review access under the Membership tab, as well as site owners, members, and visitors.

>[!NOTE]
> A helpful strategy to balance effort and maximizing impact is to define a data definition for sensitivity and consider prioritizing the review of SharePoint sites, focusing first on the most critical repositories, then deploying licenses to users and piloting Copilot and implementing a process to iterate through the rest of your repositories in parallel with expanding user base. This provides a consistent loop of feedback from users to continually refine access without delaying deployment. [Jump to the deployment section below](#plan-for-deployment-and-measure-adoption-impact-and-sentiment) for a more detailed strategy to deploy and drive adoption.

With an eligible license, you can set up auto-classifiers for content on a SharePoint site by going to the site, selecting the Settings icon on the top right, going to Library Settings, and adjusting default sensitivity labels. This feature ensures that content created or edited inherits this label. Content that is moved to the site without appropriate labels will trigger a notification.

### Configure advanced policies with Microsoft Purview

:::image type="content" source="media/purview-labels-sensitivity.png" alt-text="Screenshot showing the Microsoft Purview screen for sensitivity labels." lightbox="media/purview-labels-sensitivity.png":::

In the Microsoft Purview portal, you can create sensitivity labels by navigating to the Labels tab to customize policies to best fit your data sensitivity classifications. You can also configure auto-labeling by navigating the Auto-labeling menu on the left navigation, under Information protection. Select a label or create a new label policy, and configure protections for content that has the label applied.

These labels can also be applied based on content found within documents using data loss prevention (DLP) policies. These policies allow labels to be automatically applied when specific types of content are identified in a document, for example, personally identifiable information like addresses, tax information or passport numbers. You can also DLP policies to trainable classifiers that identify categories of content like source code, financial documents, HR and more. You can also setup endpoint DLP policies that would restrict users from actions like copying content to clipboard or removable USB devices or printing.

### Audit Copilot activity in Microsoft Purview

All activity from Copilot for Microsoft 365 can be discoverable using content search in the Microsoft Purview portal for audit and review. From the Microsoft Purview portal, you can initiate an audit from the Audit tab on the left navigation. You can also apply retention policies to retain content in prompts and responses based on your organization requirements. eDiscovery and communication compliance policies are also supported for Copilot for Microsoft 365 activity through the Purview portal, allowing you to setup flags for any content matches policies configured. For example, you can setup a policy to flag for activity that includes specific words or codenames.

For more information on data security and compliance configurations using Microsoft Purview, see [Microsoft Purview data security and compliance protections for Microsoft Copilot](/purview/ai-microsoft-purview).

Review your privacy settings for Microsoft 365 Apps because those settings might have an effect on the availability of Microsoft Copilot for Microsoft 365 features. For more information, see [Microsoft Copilot for Microsoft 365 and policy settings for connected experiences](microsoft-365-copilot-privacy.md#microsoft-copilot-for-microsoft-365-and-policy-settings-for-connected-experiences).

## Update channels

Microsoft Copilot for Microsoft 365 will follow Microsoft 365 Apps' standard practice for deployment and updates, being available in all update channels, except for Semi-Annual Enterprise Channel. Preview channels include Current Channel (Preview) and Beta Channel. Production channels include Current Channel and then Monthly Enterprise Channel. Preview channels are a great option to validate the product before rolling out to the rest of organization. To learn more, see [Overview of update channels](/deployoffice/updates/overview-update-channels), and [Microsoft 365 Insider channels](/deployoffice/insider/compare-channels).

We recommend Current Channel, because it provides your users with the newest Microsoft 365 app features as soon as they're ready and provides the best experience for a fast-moving product like Copilot for Microsoft 365. If you need more predictability of when these new Microsoft 365 app features are released each month, we recommend Monthly Enterprise Channel.  

There are multiple ways you can manage channels for user devices. To learn more, see [Change update channel of Microsoft 365 to enable Copilot](/deployoffice/updates/change-channel-for-copilot)

## Provision Copilot for Microsoft 365 licenses

After you’ve prepared your organization for Copilot, you can manage Microsoft Copilot for Microsoft 365 licenses from the Microsoft 365 admin center. You can assign licenses to individual users or to groups of users, as well as reassign licenses to other users. 

To access license management in the Microsoft 365 admin center, go to **Billing** > **Licenses**.

You can also assign licenses in bulk to [groups of users through the Azure admin center](/azure/active-directory/enterprise-users/licensing-groups-assign) or [assign licenses to users with PowerShell](/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell). For more information, see [Assign Microsoft 365 licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users).

To learn more about the steps to deploy Copilot for your organization, see [Enable users for Microsoft Copilot for Microsoft 365](microsoft-365-copilot-enable-users.md).

## Configure settings for Copilot

As an admin, you can manage Microsoft Copilot experiences for your organization by using the controls available in the Microsoft 365 admin center. You can view the status of Copilot license assignments, access the latest information on Copilot, manage data security and compliance controls, submit feedback on behalf of users, configure plugins and permissions, and enable the use of web data as grounding data in Copilot.

You can manage these settings by using the Copilot page in the Microsoft 365 admin center. To learn more, see [Manage Microsoft Copilot for Microsoft 365 with the Copilot page](microsoft-365-copilot-page.md).

## Plan for deployment and measure adoption, impact, and sentiment

The myriad uses of Copilot for Microsoft 365 across the various Microsoft 365 apps provides opportunities for users to find value in different ways.

### Accelerating adoption to get to value

We recommend approaching adoption of Copilot by leveraging adoption. To do so:

1. Identify users across various business groups in your organization, ideally with high usage of existing Microsoft 365 features. You can identify these users by reviewing usage metrics in the Microsoft 365 admin center.

2. Assign these users Copilot for Microsoft 365 licenses and onboard them using the resources available on [Microsoft’s adoption hub](https://adoption.microsoft.com/), including the user onboarding kit.

3. As these users get more comfortable with using Copilot, they should be able to speak to how they use it best, and where it’s most valuable for them. This provides you with product champions that can help other users adoption Copilot across your organization.

With your established community of early adopters or Champions, they can better speak to their peers within their organization and contextualize the value of Copilot to best suit their needs. This framework also provides IT departments with a scalable way to handle questions through Champions, developing a team of experts across your organization. To learn more about driving adoption, visit the [Microsoft Copilot adoption hub](https://adoption.microsoft.com/Copilot/).

The [Microsoft Copilot Dashboard (Preview) from Viva Insights](/viva/insights/org-team-insights/copilot-dashboard) helps organizations maximize the value of Copilot for Microsoft 365 by providing organizational leaders and IT decision makers insights into readiness, adoption, impact, and user sentiment.

[Access the Microsoft Copilot Dashboard (Preview) from Viva Insights here](http://aka.ms/copilotdashboard).

[Review this article to learn more about the Microsoft Copilot Dashboard (Preview) from Viva Insights](https://learn.microsoft.com/en-us/viva/insights/org-team-insights/copilot-dashboard).

## More resources

- [Microsoft Copilot for Microsoft 365 setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide)
- [Microsoft 365 AI help and learning](https://support.microsoft.com/copilot)
- [Copilot for Microsoft 365 – Microsoft Adoption](https://adoption.microsoft.com/Copilot/)
- [Microsoft Copilot for Microsoft 365 - Microsoft Community Hub](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/ct-p/Microsoft365Copilot)
- [Copilot for Microsoft 365 technical documentation hub](microsoft-365-copilot/)
