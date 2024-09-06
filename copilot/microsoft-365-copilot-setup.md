---
title: "Get started with Microsoft 365 Copilot"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 09/05/2024
audience: Admin
ms.topic: get-started
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-get-started
description: "Learn how to prepare your organization for Microsoft 365 Copilot. You should assign licenses, optimize SharePoint search, give just enough access, use sensitivity labels, create a pilot group, and more."
---

# Get started with Microsoft 365 Copilot - DRAFT

> [!CAUTION]
> This article is being restructured.

[Microsoft 365 Copilot](https://www.microsoft.com/microsoft-365/blog/2023/03/16/introducing-microsoft-365-copilot-a-whole-new-way-to-work/) is an AI-powered productivity tool that uses large language models (LLMs). It integrates with your data, with Microsoft Graph, and with Microsoft 365 Apps.

It works alongside popular Microsoft 365 Apps, like Word, Excel, PowerPoint, Outlook, Teams, and more. Copilot provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills.

This article covers how you can prepare your organization for Copilot.

## Before you begin

- This article uses the following admin centers. These admin centers require a role to complete the tasks in the article. ??

  - [Microsoft 365 admin center](https://admin.microsoft.com)
  - [SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219)

  [Commonly used Microsoft 365 admin center roles](/microsoft-365/admin/add-users/about-admin-roles#commonly-used-microsoft-365-admin-center-roles)

  [About the SharePoint Administrator role in Microsoft 365](/sharepoint/sharepoint-admin-role)

- You must have an appropriate **subscription plan to purchase Microsoft 365 Copilot**.

  You can purchase Microsoft 365 Copilot licenses through the [Microsoft 365 admin center](https://admin.microsoft.com) (**Billing** > **Purchase services**), Microsoft partners, or your Microsoft account team.

  Microsoft 365 Copilot licenses are available as an add-on to other licensing plans. To learn more, see [Understand licensing for Microsoft 365 Copilot](microsoft-365-copilot-licensing.md).

- **Microsoft 365 Apps** desktop applications, like Word, Excel, PowerPoint, Outlook, and Teams. Copilot is available in web versions of the apps when a license is assigned. To get started with the implementation process, see [Deployment guide for Microsoft 365 Apps](/deployoffice/deployment-guide-microsoft-365-apps).

- **OneDrive Account** You need to have a OneDrive account for several features within Microsoft 365 Copilot, like saving and sharing your files. For more information, see [Sign in or create an account for OneDrive](https://support.microsoft.com/office/video-sign-in-or-create-an-account-for-onedrive-3adf09fd-90e3-4420-8c4e-b55e2cde40d2?ui=en-us&rs=en-us&ad=us).

- **Outlook for Windows** For seamless integration of Microsoft 365 Copilot with Outlook, new Outlook (Windows, Mac, Web, Mobile) is recommended. Copilot does support classic Outlook (Windows) as well. You can switch to Outlook Mobile to access the new Outlook experience. For more information, see [Getting started with the new Outlook for Windows](https://support.microsoft.com/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627).

- **Microsoft Teams** To use Microsoft 365 Copilot with Microsoft Teams, you must [download the Teams desktop client or web client](https://www.microsoft.com/microsoft-teams/download-app), or sign into the web app at [https://teams.microsoft.com](https://teams.microsoft.com/). Both the current and the new version of Teams are supported. For more information, see [Microsoft Teams desktop client](/microsoftteams/get-clients?tabs=Windows).

    To enable Copilot in Teams to reference meeting content after the meeting end, transcription or meeting recording must be enabled. To learn more about configuring transcription and recording, see [Configure transcription and captions for Teams meetings](/microsoftteams/meeting-transcription-captions) and [Teams meeting recording](/microsoftteams/meeting-recording).

- **Microsoft Loop** To use Copilot in Microsoft Loop, you must have Loop enabled for your tenant. For more information on enabling Loop, see [Get started with Microsoft Loop](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c).

- **Microsoft Whiteboard** To use Microsoft 365 Copilot with Microsoft Whiteboard, you must have Whiteboard enabled for your tenant. To learn more about Microsoft Whiteboard, see [Manage access to Microsoft Whiteboard for your organization](/microsoft-365/whiteboard/manage-whiteboard-access-organizations).

## Step 1 - Optimize search in SharePoint

✅ **Optimize your SharePoint data for search**

To get the most out of Copilot and get the best results, optimize your SharePoint data and content for search. This step helps users get the information they need when using Copilot.

To get started, see:

- [Learn more about search in SharePoint](/sharepoint/overview-of-search)
- [Make sure content can be found](/sharepoint/make-sure-content-can-be-found)
- [Restrict SharePoint Search](/sharepoint/restricted-sharepoint-search)

Microsoft 365 Copilot allows users to find and access their content through natural language prompting. Copilot ensures data security and privacy by following existing obligations and integrating with your organization's policies. It uses your Microsoft Graph content with the same access controls as other Microsoft 365 services.

To learn more about privacy with Microsoft 365 Copilot, see [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).

## Step 2 - Apply principles of Just Enough Access

✅ **Check permissions and site access in SharePoint admin center**

To ensure data is secure, review SharePoint site access and permissions. Prioritize sites that contain sensitive information.

1. In the [SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219), go to **Active Sites** > select a site > **Edit** > **Settings**.

    **Private** means that only users in your organization with access to the site can find it. **Public** (default) means anyone in your organization can find the site and access its content.

    :::image type="content" source="media/sharepoint-active-sites-setting.png" alt-text="Screenshot showing the SharePoint admin center active sites panel." lightbox="media/sharepoint-active-sites-setting.png":::

1. In the **Membership** tab, review access to site owners, members, and visitors. Ensure that only the necessary users have access to the site.

1. With an [eligible license](need link), set up auto-classifiers (??do you mean label??) for content on a SharePoint site. ASK Rui

    This feature ensures that content created or edited inherits this label. Content that is moved to the site without appropriate labels triggers a notification.

    1. Select a site > **Settings** icon on the top right > **Library Settings**.
    1. Adjust the default sensitivity labels.

    When your data roams, you still want it to be secure in a way that meets your organization's business and compliance policies.

??ORIGINAL text??

With an eligible license, you can set up auto-classifiers for content on a SharePoint site by going to the site, selecting the Settings icon on the top right, going to Library Settings, and adjusting default sensitivity labels. This feature ensures that content created or edited inherits this label. Content that is moved to the site without appropriate labels will trigger a notification.

---

To balance effort and maximize impact, create a data definition (??) for sensitivity and prioritize reviewing your SharePoint sites. Focus on the most critical repositories, and deploy Copilot licenses to users who have access to these sites. Then, iterate through the rest of your repositories in parallel with expanding user base.

This method provides a consistent loop of user feedback that you can use to continually refine access, without delaying deployment. For a pilot group strategy to deploy and drive adoption, see [Step 7 - Deploy to some users and measure adoption](#step-7---deploy-to-some-users-and-measure-adoption) (this article).

### Copilot and multiple account access

✅ **Can use tenant restrictions and MDM policies to block personal accounts**

For users with multiple Microsoft accounts (work/school account or personal account), Copilot features work seamlessly in Excel, Word, PowerPoint, and OneNote when one of those accounts signs into a Windows session and has a Copilot Pro or Microsoft 365 Copilot license assigned.

For example:

- A user has a Microsoft 365 Copilot license and is on their work machine. On the work machine, the user can open a document from their personal OneDrive, and use Copilot in the personal document.
- A user has a Copilot Pro license and signs in to their work device with their personal Microsoft account (MSA). On the work device, the user can use Copilot with Office files stored on their OneDrive (?? Work or personal or both ASK: Jack Tremper??) or in SharePoint document libraries.

As an admin, you can:

- Use a [tenant restriction](/entra/external-id/tenant-restrictions-v2) that blocks users from adding a personal Microsoft account to their work device. This feature prevents users with Copilot Pro from seeing and using Copilot features in their personal Microsoft 365 apps on their work device.

  You need to create tenant restriction policies for each Microsoft 365 app. To learn more, see [Set up tenant restrictions](/entra/external-id/tenant-restrictions-v2).

- Prevent Microsoft 365 apps from using your work/school Microsoft Entra accounts on end users personally owned devices that use Copilot. Specifically, you can use compliance and Conditional Access policies that prevent users from accessing resources on noncompliant devices.

  For more information on using Microsoft Intune for these policies, see:

  - [Use compliance policies to set rules for devices you manage with Intune](/mem/intune/protect/device-compliance-get-started)
  - [Common ways to use Conditional Access with Intune](/mem/intune/protect/conditional-access-intune-common-ways-use)

> [!NOTE]
> In sovereign tenants where Microsoft 365 Copilot is not available, users are blocked from using Copilot features, even if a device has multiple accounts signed in and one of those accounts has Copilot.

### Create sensitivity labels in Microsoft Purview

In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), you can create [sensitivity labels](/purview/create-sensitivity-label) (**Information protection** > **Labels** tab). These labels state how sensitive certain data is in your organization, and can affect Copilot results.

:::image type="content" source="media/purview-labels-sensitivity.png" alt-text="Screenshot showing the Microsoft Purview screen for sensitivity labels." lightbox="media/purview-labels-sensitivity.png":::

With sensitivity labels, you:

1. **Create labels**: You can use the [default built-in labels](/purview/mip-easy-trials), including Public and Highly Confidential, and/or create your own labels.

    ??Appears labeling must be turned on to get these default labels??

    ??What labels hide content from Copilot? What labels show content in Copilot??

2. **Apply labels**: You can configure [auto-labeling](/purview/apply-sensitivity-label-automatically) or users can manually apply labels.

    We recommend you configure [auto-labeling](/purview/apply-sensitivity-label-automatically) so you don't rely on users classiying all content correctly.

    You can apply labels based on content found in documents using [data loss prevention (DLP) policies](/purview/dlp-learn-about-dlp). DLP policies can automatically apply labels when specific types of content are identified in a document, like personal data including addresses, tax information or passport numbers.

    With DLP policies, you can also:

    - Use the [trainable classifier tool](/purview/trainable-classifiers-get-started-with) to identify categories of content, like source code, financial documents, and HR.
    - Set up [endpoint DLP policies](/purview/endpoint-dlp-learn-about) that restrict users from specific actions, like copying content to clipboard or removable USB devices, or printing.

Once applied, the labels enforce the specified protection settings.

To learn more about sensitivity labels, see:

- [Learn about sensitivity labels](/purview/sensitivity-labels)
- [Labeling in the Microsoft Purview Data Map](/purview/create-sensitivity-label)
- [How to automatically apply sensitivity labels to your data in the Microsoft Purview Data Map](/purview/how-to-automatically-label-your-content)

### Audit Copilot activity in Microsoft Purview

In the [Microsoft Purview portal](https://compliance.microsoft.com), you can use the following features to search for specific content, like Copilot prompts and responses. You can also review the results.

- Use **Audit** to search for specific activities, activities performed by specific users, and activities that occurred with a date range.

  **Audit retention policies** lets you keep content in Copilot prompts and responses, based on your organization requirements.

  To learn more, go to [Learn about auditing solutions in Microsoft Purview](/purview/audit-solutions-overview).

- Use **Content search** to audit and review activity from Microsoft 365 Copilot. All Microsoft 365 Copilot activity data (user prompts and Copilot responses) generated in supported Microsoft 365 apps and services is stored in custodian mailboxes.

  To learn more, see [Get started with Content search](/purview/ediscovery-content-search).

- Use **eDiscovery** and communication compliance policies for Microsoft 365 Copilot activity. You can set up flags for any content matches policies configured. For example, you can set up a policy to flag for activity that includes specific words or code names.

  For more information on data security and compliance configurations using Microsoft Purview, see [Microsoft Purview data security and compliance protections for generative AI apps](/purview/ai-microsoft-purview).

## Step 3 - App privacy

✅ **Review your app privacy settings**

The privacy settings in your Microsoft 365 apps can affect the availability of Microsoft 365 Copilot features. To ensure that users can access Copilot features, review the privacy settings in your Microsoft 365 apps.

For more information, see [Microsoft 365 Copilot and policy settings for connected experiences](microsoft-365-copilot-privacy.md#microsoft-copilot-for-microsoft-365-and-policy-settings-for-connected-experiences).

## Step 4 - Update channels

✅ **Use the Current Channel or Monthly Enterprise Channel to update apps**

Microsoft 365 Copilot follows the Microsoft 365 Apps standard practice for deployment and updates. It's available in all update channels, except for Semi-Annual Enterprise Channel.

Your options:

- **Production** channels include **Current Channel** and **Monthly Enterprise Channel**.

  - **Current Channel** provides your users with the newest Microsoft 365 app features as soon as they're ready. It provides the best experience for a fast-moving product, like Microsoft 365 Copilot.

  - **Monthly Enterprise Channel** gives more predictability of when these new Microsoft 365 app features are released each month. It's a good option for organizations that want to validate the new features before they're released to the Current Channel.

- **Preview** channels include **Current Channel (Preview)** and **Beta Channel**.

  Preview channels are a great option to validate the product before rolling out to the rest of organization. To learn more, see [Overview of update channels](/deployoffice/updates/overview-update-channels) and [Microsoft 365 Insider channels](/deployoffice/insider/compare-channels).

There are multiple ways you can manage channels for user devices. To learn more, see [Change update channel of Microsoft 365 to enable Copilot](/deployoffice/updates/change-channel-for-copilot).

## Step 5 - Provision Microsoft 365 Copilot licenses

✅ **Assign Copilot licenses using the Microsoft 365 admin center**

After you prepared your organization for Copilot, you can manage Microsoft 365 Copilot licenses from the Microsoft 365 admin center. You can assign licenses to individual users or to groups of users, and reassign licenses to other users.

To access license management in the [Microsoft 365 admin center](https://admin.microsoft.com), go to **Billing** > **Licenses**.

To learn more about enabling Copilot in your organization, see [Enable users for Microsoft 365 Copilot](microsoft-365-copilot-enable-users.md).

You can also assign licenses in bulk to [groups of users through the Azure admin center](/entra/identity/users/licensing-groups-assign) or [assign licenses to users with PowerShell](/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell). For more information, see [Assign Microsoft 365 licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users).

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

To help drive adoption, you can create a group of early adopters. This group can help you understand how users are using Copilot and how it's valuable to them.

1. Identify users across various business groups in your organization, ideally with high usage of existing Microsoft 365 features. You can identify these users by [reviewing usage metrics](/microsoft-365/admin/activity-reports/microsoft365-apps-usage-ww) in the [Microsoft 365 admin center](https://admin.microsoft.com).

2. Assign these users Microsoft 365 Copilot licenses and onboard them using the resources available at the [Microsoft 365 Copilot adoption hub](https://adoption.microsoft.com/), including the [user onboarding kit](https://adoption.microsoft.com/copilot/user-onboarding-toolkit/).

3. As these users get more comfortable with using Copilot, they can speak to how they use it best, and where it's most valuable for them. This information provides you with product champions that can help other users adopt and use Copilot across your organization.

    With your established community of early adopters or Champions, they can better speak to their peers within their organization and contextualize the value of Copilot to best suit their needs. This framework also provides IT departments with a scalable way to handle questions through Champions, developing a team of experts across your organization.

    To learn more about driving adoption, visit the [Microsoft 365 Copilot adoption hub](https://adoption.microsoft.com/Copilot/).

✅ **Get insights and user sentiment**

To measure the impact of Copilot on your organization, use the [Copilot Dashboard from Viva Insights](/viva/insights/org-team-insights/copilot-dashboard). Viva Insights gives organizational leaders and IT decision makers insights into readiness, adoption, impact, and user sentiment.

To learn more, see:

- [Microsoft Copilot Dashboard (Preview) from Viva Insights link](https://aka.ms/copilotdashboard)
- [Learn more about the Microsoft Copilot Dashboard (Preview) from Viva Insights](/viva/insights/org-team-insights/

## More resources

- [Microsoft 365 Copilot setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide)
- [Microsoft 365 AI help and learning](https://support.microsoft.com/copilot)
- [Microsoft 365 Copilot – Microsoft Adoption](https://adoption.microsoft.com/Copilot/)
- [Microsoft 365 Copilot - Microsoft Community Hub](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/ct-p/Microsoft365Copilot)
- [Microsoft 365 Copilot technical documentation hub](index.yml)
