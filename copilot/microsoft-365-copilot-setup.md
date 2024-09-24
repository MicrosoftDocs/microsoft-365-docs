---
title: "Get your organization and data ready for Microsoft 365 Copilot"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 09/24/2024
audience: Admin
ms.topic: get-started
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-get-started
description: Learn how IT administrators can prepare their organization for Microsoft 365 Copilot. Admin cans assign licenses, optimize SharePoint search, give enough access, prevent oversharing, use sensitivity labels, create a pilot group, and more.
---

# Get started with Microsoft 365 Copilot - admin guide

[Microsoft 365 Copilot](microsoft-365-copilot-overview.md) is an AI-powered productivity tool that uses large language models (LLMs). It integrates with your data, with Microsoft Graph, and with Microsoft 365 Apps.

It works alongside popular Microsoft 365 Apps, like Word, Excel, PowerPoint, Outlook, Teams, and more. Copilot provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills.

This article covers how IT admins can prepare their organization for Copilot.

> [!TIP]
> If you're an end user, then the [Copilot Lab](https://copilot.cloud.microsoft/prompts) is a good resource.

## Before you begin

This section gives an overview of the prerequisites (licensing and admin centers access), and apps that can use Copilot. There might be more requirements at [Microsoft Copilot 365 requirements](microsoft-365-copilot-requirements.md).

### Prerequisites

- This article uses the following admin centers. These admin centers require a specific role to complete the tasks in the article.

  - **[Microsoft 365 admin center](https://admin.microsoft.com)**: There are different roles, depending on the task you need to complete. To learn more about roles, see [Commonly used Microsoft 365 admin center roles](/microsoft-365/admin/add-users/about-admin-roles#commonly-used-microsoft-365-admin-center-roles).
  - **[SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219)**: Sign in as the [SharePoint administrator](/sharepoint/sharepoint-admin-role).
  - **[Microsoft Purview portal](https://purview.microsoft.com)**: There are different roles, depending on the task you need to complete. To learn more, see:

    - [Permissions required to create and manage sensitivity labels](/purview/get-started-with-sensitivity-labels#permissions-required-to-create-and-manage-sensitivity-labels)
    - [Roles and role groups in Microsoft Defender for Office 365 and Microsoft Purview](/defender-office-365/scc-permissions)

- You must have an appropriate **subscription plan to purchase Microsoft 365 Copilot**.

  You can purchase Microsoft 365 Copilot licenses through the [Microsoft 365 admin center](https://admin.microsoft.com) (**Billing** > **Purchase services**), Microsoft partners, or your Microsoft account team.

  Microsoft 365 Copilot licenses are available as an add-on to other licensing plans. To learn more, see [Understand licensing for Microsoft 365 Copilot](microsoft-365-copilot-licensing.md).

- More licenses might be required to use some of the features describes in this article, like Microsoft Purview and SharePoint Advanced Management.

  To learn more, see:

  - [Microsoft Purview service description](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-purview-service-description)
  - [Microsoft SharePoint Premium - SharePoint Advanced Management overview](/sharepoint/advanced-management#licensing)

### App requirements

- **Microsoft 365 Apps** - Including desktop applications, like Word, Excel, PowerPoint, Outlook, and Teams. Copilot is available in web versions of the apps when a license is assigned. To get started with the implementation process, see [Deployment guide for Microsoft 365 Apps](/deployoffice/deployment-guide-microsoft-365-apps).

- **OneDrive Account** - You need a OneDrive account for several features within Microsoft 365 Copilot, like saving and sharing your files. For more information, see [Sign in or create an account for OneDrive](https://support.microsoft.com/office/video-sign-in-or-create-an-account-for-onedrive-3adf09fd-90e3-4420-8c4e-b55e2cde40d2?ui=en-us&rs=en-us&ad=us).

- **Outlook for Windows** - For seamless integration of Microsoft 365 Copilot with Outlook, new Outlook (Windows, Mac, Web, Mobile) is recommended. Copilot does support classic Outlook (Windows). You can switch to Outlook Mobile to access the new Outlook experience. For more information, see [Getting started with the new Outlook for Windows](https://support.microsoft.com/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627).

- **Microsoft Teams** - To use Microsoft 365 Copilot with Microsoft Teams, you must [download the Teams desktop client or web client](https://www.microsoft.com/microsoft-teams/download-app), or sign into the web app at [https://teams.microsoft.com](https://teams.microsoft.com/). Both the current and the new version of Teams are supported. For more information, see [Microsoft Teams desktop client](/microsoftteams/get-clients?tabs=Windows).

  To enable Copilot in Teams to reference meeting content after the meeting end, transcription or meeting recording must be enabled. To learn more about configuring transcription and recording, see [Configure transcription and captions for Teams meetings](/microsoftteams/meeting-transcription-captions) and [Teams meeting recording](/microsoftteams/meeting-recording).

- **Microsoft Loop** - To use Copilot in Microsoft Loop, you must have Loop enabled for your tenant. For more information on enabling Loop, see [Get started with Microsoft Loop](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c).

- **Microsoft Whiteboard** - To use Microsoft 365 Copilot with Microsoft Whiteboard, you must have Whiteboard enabled for your tenant. To learn more about Microsoft Whiteboard, see [Manage access to Microsoft Whiteboard for your organization](/microsoft-365/whiteboard/manage-whiteboard-access-organizations).

## Step 1 - Optimize search in SharePoint

✅ **Optimize your SharePoint content for search**

When a user makes a request to Copilot, it processes the request and then generates a response with LLMs. LLMs leverage content from Microsoft Graph and web content (optional).

Content in Microsoft Graph includes emails, files, meetings, chats, calendars, and contacts. A significant portion of this data is [stored in SharePoint](/sharepoint/get-ready-copilot-sharepoint-advanced-management#copilot-and-sharepoint). Copilot gathers SharePoint content in the same way SharePoint Search gathers content.

To get the most out of Copilot and get the best results, optimize your SharePoint content for search:

- [Make sure the content can be found](/sharepoint/make-sure-content-can-be-found)
- [Make sure the search results look great](/sharepoint/make-search-results-look-great)
- [Plan your content](/microsoftsearch/plan-your-content)

Microsoft 365 Copilot allows users to find and access their content through natural language prompting. Copilot ensures data security and privacy by following existing obligations and integrating with your organization's policies. It uses your Microsoft Graph content with the same access controls as other Microsoft 365 services.

To learn more about privacy with Microsoft 365 Copilot, see [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).

## Step 2 - Apply principles of Just Enough Access

### Prevent sharing and control access with SharePoint and OneDrive

To get ready for your organization’s Microsoft 365 Copilot adoption, there are a few [highly recommended steps you can take with SharePoint and OneDrive](/sharepoint/get-ready-copilot-sharepoint-advanced-management).

To start, you can:

✅ **Reduce accidental oversharing with SharePoint sharing settings**

To minimize accidental content oversharing with Copilot results, implement sharing settings at the organization and site levels:

1. At the organization level:

    - Update [sharing settings for SharePoint and OneDrive](/sharepoint/turn-external-sharing-on-or-off) for your tenant from organization-wide sharing to specific people links.
    - Consider hiding broad-scope permissions from your end users. For example, use the SharePoint `Set-SPOTenant` PowerShell cmdlet to [hide "Everyone Except External Users" in the People Picker control](/powershell/module/sharepoint-online/set-spotenant) so end users can't use it.
    - Use [Restricted SharePoint Search (RSS)](/sharepoint/restricted-sharepoint-search) to temporarily restrict Copilot results up to 100 selected SharePoint sites. Child sites of Hub sites aren't counted toward the 100 limit.

      RSS gives you time to review & audit site permissions. It should be used only as a temporary solution to give your organization time to adopt Copilot. 

2. Reduce accidental oversharing at the site level:

    - Educate site admins on the site-level controls they can use to [restrict members from sharing](/sharepoint/change-external-sharing-site).
    - Make sure that [Site Owners receive a request to access the site](https://support.microsoft.com/office/set-up-and-manage-access-requests-94b26e0b-2822-49d4-929a-8455698654b3).
    - [Change the external sharing setting for a user's OneDrive](/sharepoint/user-external-sharing-settings). When a user saves a file to OneDrive, it's in the end user's personal storage. The user has full control over the file and can share it with others. To ensure data security, review OneDrive sharing features.

✅ **Check permissions and site access in SharePoint admin center**

To ensure data is secure, review SharePoint site access and permissions. Prioritize sites that contain sensitive information.

1. In the [SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219), see **Active Sites** > select a site > **Edit** > **Settings**.

    **Private** means that only users in your organization with access to the site can find it. **Public** (default) means anyone in your organization can find the site and access its content.

    :::image type="content" source="media/sharepoint-active-sites-setting.png" alt-text="Screenshot showing the SharePoint admin center active sites panel." lightbox="media/sharepoint-active-sites-setting.png":::

1. In the **Membership** tab, review access to site owners, members, and visitors. Ensure that only the necessary users have access to the site.

✅ **Identify sites with potentially overshared content and control access**

1. Use the following SharePoint Advanced Management (SAM) activity-based reports to quickly identify the most actively overshared sites:

    - [Usage of "Everyone Except External Users"](/sharepoint/data-access-governance-reports#content-shared-with-everyone-except-external-users-eeeu-reports) 
    - [Usage of “People in your organization" sharing links](/sharepoint/data-access-governance-reports#sharing-links-reports) 
    - [Usage of "Anyone" sharing links](/sharepoint/data-access-governance-reports#sharing-links-reports) 

2. [Initiate a Site Access Review](/sharepoint/restricted-access-control) for site owners to confirm overshared content and take remediation steps. SharePoint admins can use the [Restricted Access Control Policy](/sharepoint/restricted-access-control) to restrict access to a site with overshared content.

For business-critical sites, there are features in SharePoint Advanced Management and Microsoft Purview you can use:

- Use [Restricted Access Control (RAC)](/sharepoint/restricted-access-control) to proactively protect against oversharing. When you create new sites, configure a RAC policy as part of your custom site provisioning process. This step proactively avoids oversharing.
- Consider blocking downloads from selected sites using a block download policy. For example, [block the download of Teams meeting recordings and transcripts](/microsoftteams/block-download-meeting-recording).
- Apply encryption with "extract rights" enforced on business-critical office documents. To learn more, see [Microsoft Purview data security and compliance protections for generative AI apps](/purview/ai-microsoft-purview).

> [!NOTE]
> SharePoint Advanced Management has more features to help you get ready for Copilot fast and at scale. To learn more, see [Get ready for Copilot for Microsoft 365 with SharePoint Advanced Management (SAM)](/sharepoint/get-ready-copilot-sharepoint-advanced-management).

### Copilot and multiple account access

✅ **Can use tenant restrictions and MDM policies to block personal accounts**

For users with multiple Microsoft accounts (work/school account or personal account), Copilot features work seamlessly in Excel, Word, PowerPoint, and OneNote when:

- One of those accounts signs into a Windows session, and
- One of those accounts has a Copilot Pro or Microsoft 365 Copilot license assigned

For example:

- A user has a Microsoft 365 Copilot license and is on their work machine. On the work machine, the user can open a document from their personal OneDrive, and use Copilot in the personal document.
- A user has a Copilot Pro license and signs in to their work device with their personal Microsoft account (MSA). On the work device, the user can use Copilot with Office files stored on their OneDrive (work or personal) or in SharePoint document libraries.

As an admin, you can:

- Use a [Microsoft Entra tenant restriction](/entra/external-id/tenant-restrictions-v2) that blocks users from adding a personal Microsoft account to their work device. This feature prevents users with Copilot Pro from seeing and using Copilot features in their personal Microsoft 365 apps on their work device.

  You need to create tenant restriction policies for each Microsoft 365 app. To learn more, see [Set up tenant restrictions](/entra/external-id/tenant-restrictions-v2).

- Prevent Microsoft 365 apps from using your work/school Microsoft Entra accounts on end users personally owned devices that use Copilot. Specifically, you can use compliance and Conditional Access policies that prevent users from accessing resources on noncompliant devices.

  For more information on using Microsoft Intune for these policies, see:

  - [Use compliance policies to set rules for devices you manage with Intune](/mem/intune/protect/device-compliance-get-started)
  - [Common ways to use Conditional Access with Intune](/mem/intune/protect/conditional-access-intune-common-ways-use)

> [!NOTE]
> In sovereign tenants where Microsoft 365 Copilot is not available, users are blocked from using Copilot features. They're blocked even if a device has multiple accounts signed in and one of those accounts has Copilot.

### Sensitivity labels from Microsoft Purview

✅ **Use sensitivity labels to protect your data**

In the [Microsoft Purview portal](https://purview.microsoft.com), you can create [sensitivity labels](/purview/create-sensitivity-label) (**Information protection** > **Sensitivity labels**). Use these labels to identify how sensitive the data is in your organization. When they're applied to items like documents and emails, the labels add an extra layer of protection and can affect Copilot results.

:::image type="content" source="media/purview-labels-sensitivity.png" alt-text="Screenshot showing the Microsoft Purview screen for sensitivity labels." lightbox="media/purview-labels-sensitivity.png":::

The extra later of protection includes:

- Copilot Business Chat can reference data from different types of items. The sensitivity label with the highest priority is visible to users.

- If the label applies encryption, Copilot checks the usage rights for the user. For Copilot to return data from that item, the user must be granted permissions to copy from it.

With sensitivity labels, you can:

1. **Create labels or activate default labels**: If you don't already have sensitivity labels, you might be eligible to have some [default labels](/purview/mip-easy-trials#default-sensitivity-labels) automatically created for you, like Public, General, and Confidential. The default labels are suitable for items like files, emails, and meetings. You can modify the default labels and always create your own labels.

    To learn more, see:

    - [Create and configure sensitivity labels and their policies](/purview/create-sensitivity-labels)
    - [Default labels and policies to protect your data](/purview/mip-easy-trials)

2. **Define the data sensitivity requirements** and review your SharePoint sites & files in OneDrive. Focus on the most critical repositories and determine the sensitivity of the data on these sites.

    If you're piloting Copilot, deploy Copilot licenses to users who have access to these critical sites. Then, iterate through the rest of your repositories and expand your user base.

    For a more detailed strategy to deploy and drive adoption, see [Step 7 - Deploy to some users and measure adoption](#step-7---deploy-to-some-users-and-measure-adoption) (in this article).

3. **Enable and apply sensitivity labels**: [Enable sensitivity labels for files in SharePoint and OneDrive](/purview/sensitivity-labels-sharepoint-onedrive-files). Then, with a publishing label policy, you can configure a default label and users can manually apply your labels. To label at scale, use [autolabeling](/purview/apply-sensitivity-label-automatically) to automatically apply labels based on sensitive information detected.

    For more information about the different ways that you can apply sensitivity labels, see [Common scenarios for sensitivity labels](/purview/get-started-with-sensitivity-labels#common-scenarios-for-sensitivity-labels).

    One of the available labeling methods is to apply sensitivity labels based on content found in documents when you use [data loss prevention (DLP) policies](/purview/dlp-learn-about-dlp). DLP policies can automatically apply sensitivity labels when specific types of information are identified in a document, like personal data that includes addresses, tax information, or passport numbers.

    With DLP policies, you can also:

    - Use the [trainable classifier tool](/purview/trainable-classifiers-get-started-with) to identify categories of content, like source code, financial documents, and HR.
    - Set up [endpoint DLP policies](/purview/endpoint-dlp-learn-about) that restrict users from specific actions, like copying content to clipboard or removable USB devices, or printing.

Once applied, the sensitivity labels enforce your protection settings.

To learn more about sensitivity labels, see [Learn about sensitivity labels](/purview/sensitivity-labels).

### Copilot activity and Microsoft Purview

✅ **Audit Copilot activity, create retention policies, and use eDiscovery and communication compliance**

In the [Microsoft Purview portal](https://purview.microsoft.com), you can use the following features to search for specific content and activities that include Copilot prompts and responses.

- **Audit**

  You can search for specific activities, activities performed by specific users, and activities that occurred with a date range. To learn more, see [Learn about auditing solutions in Microsoft Purview](/purview/audit-solutions-overview).

- **Retention policies**

  Configure retention policies to retain the Copilot prompts and responses if this data is needed for compliance reasons, even if users delete their chat history. To learn more, see [Learn about retention for Copilot](/purview/retention-policies-copilot).

- **eDiscovery and communication compliance**

  Use eDiscovery and communication compliance policies to analyze Copilot user prompts and responses. The policies can detect inappropriate or risky interactions, or sharing of confidential information.

  To learn more, see [Microsoft Purview eDiscovery solutions](/purview/ediscovery) and [Configure a communication compliance policy to detect for Copilot interactions](/purview/communication-compliance-copilot?tabs=purview-portal).

> [!TIP]
> To learn more about these Microsoft Purview security and compliance protections for Copilot, and how Microsoft Purview AI Hub can help you more quickly deploy them, see [Microsoft Purview data security and compliance protections for generative AI apps](/purview/ai-microsoft-purview).

## Step 3 - Review app privacy

✅ **Review your Microsoft 365 apps privacy settings**

The privacy settings in your Microsoft 365 apps can affect the availability of Microsoft 365 Copilot features. To ensure that users can access Copilot features, review the privacy settings in your Microsoft 365 apps.

To learn more, see [Microsoft 365 Copilot and privacy controls for connected experiences](microsoft-365-copilot-privacy.md#microsoft-365-copilot-and-privacy-controls-for-connected-experiences).

## Step 4 - Update channels

✅ **Use the Current Channel or Monthly Enterprise Channel to update apps**

Microsoft 365 Copilot follows the Microsoft 365 Apps standard practice for deployment and updates. It's available in all update channels, *except* for Semi-Annual Enterprise Channel.

Your options:

- **Production** channels include **Current Channel** and **Monthly Enterprise Channel**.

  - **Current Channel** provides your users with the newest Microsoft 365 app features as soon as they're ready. It provides the best experience for a fast-moving product, like Copilot.

  - **Monthly Enterprise Channel** gives more predictability of when these new Microsoft 365 app features are released each month. It's a good option for organizations that want to validate the new features before they're released to the Current Channel.

- **Preview** channels include **Current Channel (Preview)** and **Beta Channel**.

  Preview channels are a great option to validate the product before rolling out to the rest of organization. To learn more, see [Overview of update channels](/deployoffice/updates/overview-update-channels) and [Microsoft 365 Insider channels](/deployoffice/insider/compare-channels).

There are multiple ways you can manage channels for user devices. To learn more, see [Change update channel of Microsoft 365 to enable Copilot](/deployoffice/updates/change-channel-for-copilot).

## Step 5 - Provision Microsoft 365 Copilot licenses

✅ **Assign Copilot licenses using the Microsoft 365 admin center**

The next step is to assign licenses so users can start using Copilot. You can manage Microsoft 365 Copilot licenses in the Microsoft 365 admin center. You can assign to individual users or to groups of users, and also reassign licenses to other users.

- To access license management in the [Microsoft 365 admin center](https://admin.microsoft.com), select **Billing** > **Licenses**.

When licenses are assigned, Copilot shows up in the Microsoft 365 apps, like Word and Excel. To use Copilot, users sign into the app with their work or school account and the file must be editable (not read only).

To learn more, see:

- Enable Copilot in your organization at [Enable users for Microsoft 365 Copilot](microsoft-365-copilot-enable-users.md).
- You can assign licenses in bulk to [groups of users through the Azure admin center](/entra/identity/users/licensing-groups-assign) or [assign licenses to users with PowerShell](/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell). For more information, see [Assign Microsoft 365 licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users).

## Step 6 - Configure settings for Copilot

✅ **Configure more Copilot features**

In the [Microsoft 365 admin center](https://admin.microsoft.com) > **Copilot**, there are more Copilot features that benefit admins and settings you can configure that benefit your organization.

You can:

- View the status of Copilot license assignments
- Access the latest information on Copilot
- Manage data security and compliance controls
- Submit feedback on behalf of users
- Configure plugins and permissions
- Enable the use of web data as grounding data in Copilot

To learn more, see [Manage Microsoft 365 Copilot with the Copilot page](microsoft-365-copilot-page.md).

## Step 7 - Deploy to some users and measure adoption

✅ **Create a group of early adopters**

There are many uses of Microsoft 365 Copilot across the various Microsoft 365 productivity apps. And, there are opportunities for users to find value in different ways.

To help drive adoption, create a group of early adopters. This group can help you understand how users are using Copilot and how it's valuable to them.

1. Identify users across various business groups in your organization, ideally with high usage of existing Microsoft 365 features. You can identify these users by [reviewing usage metrics](/microsoft-365/admin/activity-reports/microsoft365-apps-usage-ww) in the [Microsoft 365 admin center](https://admin.microsoft.com).

2. Assign these users Microsoft 365 Copilot licenses and onboard them using the resources available at the [Microsoft 365 Copilot adoption hub](https://adoption.microsoft.com/), including the [user onboarding kit](https://adoption.microsoft.com/copilot/user-onboarding-toolkit/).

3. As these users get more comfortable with using Copilot, they can speak to how they use it best, and where it's most valuable for them. This information provides you with product champions that can help other users adopt and use Copilot across your organization.

    With your established community of early adopters or Champions, they can better speak to their peers within their organization and contextualize the value of Copilot to best suit their needs. This framework also provides IT departments with a scalable way to handle questions through Champions, developing a team of experts across your organization.

    To learn more about driving adoption, visit the [Microsoft 365 Copilot adoption hub](https://adoption.microsoft.com/Copilot/).

✅ **Get insights and user sentiment**

To measure the impact of Copilot on your organization, use the [Copilot Dashboard from Viva Insights](/viva/insights/org-team-insights/copilot-dashboard). Viva Insights gives organizational leaders and IT decision makers insights into readiness, adoption, impact, and user sentiment.

To learn more, see:

- [Open the Microsoft Copilot Dashboard (Preview) from Viva Insights](https://aka.ms/copilotdashboard)
- [Learn more about the Microsoft Copilot Dashboard (Preview) from Viva Insights](/viva/insights/org-team-insights/copilot-dashboard)

## More resources

- [Microsoft 365 Copilot setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide)
- [Microsoft 365 AI help and learning](https://support.microsoft.com/copilot)
- [Microsoft 365 Copilot – Microsoft Adoption](https://adoption.microsoft.com/Copilot/)
- [Microsoft 365 Copilot - Microsoft Community Hub](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/ct-p/Microsoft365Copilot)
- [Microsoft 365 Copilot technical documentation hub](index.yml)
