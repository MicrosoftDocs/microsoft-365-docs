**Get started with Microsoft Copilot for Microsoft 365**

[<u>Microsoft Copilot for Microsoft 365</u>](https://www.microsoft.com/microsoft-365/blog/2023/03/16/introducing-microsoft-365-copilot-a-whole-new-way-to-work/) is an AI-powered productivity tool that uses large language models (LLMs) and integrates your data with the Microsoft Graph and Microsoft 365 Apps. It works alongside popular Microsoft 365 Apps such as Word, Excel, PowerPoint, Outlook, Teams, and more. Copilot provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills. This article covers how you can prepare your organization for Copilot. These steps can be thought of in 3 primary phases:

1.  Optimizing for Search

2.  Update channels and apps

3.  Provision Copilot licenses

**Before you begin**

Before you can access Copilot for Microsoft 365, you must meet these requirements:

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

NOTE: Customers with E-SKUs or Business SKUs that do not include Teams can still purchase Copilot for Microsoft 365 licenses

Your users must be assigned one of the following base licenses to be able to get a Copilot for Microsoft 365 license assigned.

- **Microsoft 365 Apps‎** desktop applications such as ‎Word‎, ‎Excel‎, ‎PowerPoint‎, ‎Outlook‎, and ‎Teams‎. Copilot will be available in web versions of the apps when a license is assigned. To get started with the implementation process, use our ‎Microsoft 365 Apps‎ setup guide. To get started with the implementation process, see [<u>Deployment guide for Microsoft 365 Apps</u>](https://learn.microsoft.com/en-us/deployoffice/deployment-guide-microsoft-365-apps).

<!-- -->

- **OneDrive Account** You need to have a OneDrive account for several features within Copilot for Microsoft 365, such as saving and sharing your files. For more information, see [<u>Sign in or create an account for OneDrive</u>](https://support.microsoft.com/office/video-sign-in-or-create-an-account-for-onedrive-3adf09fd-90e3-4420-8c4e-b55e2cde40d2?ui=en-us&rs=en-us&ad=us).

- **Outlook for Windows** For seamless integration of Copilot for Microsoft 365 with Outlook, new Outlook (Windows, Mac, Web, Mobile) is recommended. Copilot does support classic Outlook (Windows) as well. You can switch to Outlook Mobile to access the new Outlook experience. For more information, see [<u>Getting started with the new Outlook for Windows</u>](https://support.microsoft.com/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627).

- **Microsoft Teams** To use Copilot for Microsoft 365 with Microsoft Teams, you must use the Teams desktop client or web client. You can [<u>download the desktop client here</u>](https://www.microsoft.com/microsoft-teams/download-app) or sign into the web app at [<u>https://teams.microsoft.com</u>](https://teams.microsoft.com/). Both the current and the new version of Teams are supported. For more information, see [<u>Microsoft Teams desktop client</u>](https://learn.microsoft.com/en-us/microsoftteams/get-clients?tabs=Windows).

> To enable Copilot in Teams to reference meeting content after the meeting has ended, transcription or meeting recording must be enabled. To learn more about configuring transcription and recording, see [<u>Configure transcription and captions for Teams meetings</u>](https://learn.microsoft.com/en-us/microsoftteams/meeting-transcription-captions) and [<u>Teams meeting recording</u>](https://learn.microsoft.com/en-us/microsoftteams/meeting-recording).

- **Microsoft Loop** To use Copilot in Microsoft Loop, you must have Loop enabled for your tenant. For more information on enabling Loop, see [<u>Get started with Microsoft Loop</u>](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c).

- **Microsoft Whiteboard** To use Copilot for Microsoft 365 with Microsoft Whiteboard, you must have Whiteboard enabled for your tenant. To learn more about Microsoft Whiteboard, see [<u>Manage access to Microsoft Whiteboard for your organization</u>](https://learn.microsoft.com/en-us/microsoft-365/whiteboard/manage-whiteboard-access-organizations).

**Optimize for Search**

Microsoft Copilot for Microsoft 365 provides the ability for users to find and access their content through natural language prompting. Copilot ensures data security and privacy by adhering to existing obligations and integrating with your organization's policies. It utilizes your Microsoft Graph content with the same access controls as other Microsoft 365 services. To get the most out of Copilot, admins should consider optimizing data and content for Search, to ensure optimal secure access. To learn more about privacy with Microsoft Copilot for Microsoft 365, see <u>Data, Privacy, and Security for Microsoft Copilot for Microsoft 365</u>.

**Applying principles of Just Enough Access:**

From the SharePoint admin center, you can review SharePoint site access to check permissions and access to ensure data is secure, prioritizing sites that contain sensitive information.

<img src="c:\GitHub\microsoft-365-docs-pr\copilot/9c543e74f2dbba2752f15052c4f2467166f67224.png" style="width:6.5in;height:4.28125in" />You can check on site privacy by going to Active Sites, then clicking on a site, and going to Settings. Setting a site as Private means that only users in your organization with access to the site will find it. You can also review access under the Membership tab, you can review site owners, members, and visitors.

NOTE: A helpful strategy to balance effort and maximizing impact is to define a data definition for sensitivity and consider prioritizing the review of SharePoint sites, focusing first on the most critical repositories, then deploying licenses to users and piloting Copilot and implementing a process to iterate through the rest of your repositories in parallel with expanding user base. This provides a consistent loop of feedback from users to continually refine access without delaying deployment. Jump to the deployment section below for a more detailed strategy to deploy and drive adoption.

Customers with eligible licenses can set up auto-classifiers for content on a SharePoint site by going to the site, clicking the Settings icon on the top right, go to Library Settings, and adjust default sensitivity labels. This feature ensures that content created or edited inherits this label. Content that is moved to the site without appropriate labels will trigger a notification.

**Configure advanced policies with Microsoft Purview:**

<img src="c:\GitHub\microsoft-365-docs-pr\copilot/8e457bf759987587d859c4b4e259c087ee3c806f.png" style="width:6.5in;height:3.65625in" />

In the Microsoft Purview portal, you can create sensitivity labels by navigating to the Labels tab to customize policies to best fit your data sensitivity classifications. You can also configure auto-labeling by navigating the Auto-labeling menu on the left navigation, under Information protection. Select a label or create a new label policy, and configure protections for content that has the label applied.

These labels can also be applied based on content found within documents using data loss prevention (DLP) policies. These policies allow labels to be automatically applied when specific types of content are identified in a document, e.g. personally identifiable information like addresses, tax information or passport numbers. You can also DLP policies to trainable classifiers that identify categories of content like source code, financial documents, HR and more. You can also setup endpoint DLP policies that would restrict users from actions like copying content to clipboard or removable USB devices or printing.

**Audit Copilot activity in Microsoft Purview**

All activity from Copilot for Microsoft 365 can be discoverable using content search in the Microsoft Purview portal for audit and review. From the Microsoft Purview portal, you can initiate an audit from the Audit tab on the left navigation, You can also apply retention policies to retain content in prompts and responses based on your organization requirements through the. eDiscovery and communication compliance policies are also supported for Copilot for Microsoft 365 activity through the Purview portal, allowing you to setup flags for any content matches policies configured. For example, you can setup a policy to flag for activity that includes specific words or codenames.

For more information on data security and compliance configurations using Microsoft Purview, see this [article](https://learn.microsoft.com/en-us/purview/ai-microsoft-purview).

Review your privacy settings for Microsoft 365 Apps because those settings might have an effect on the availability of Microsoft Copilot for Microsoft 365 features. For more information, see <u>Microsoft Copilot for Microsoft 365 and policy settings for connected experiences</u>.

**Update Channels**

Microsoft Copilot for Microsoft 365 will follow Microsoft 365 Apps' standard practice for deployment and updates, being available in all update channels, except for Semi-Annual Enterprise Channel. Preview channels include Current Channel (Preview) and Beta Channel. Production channels include Current Channel and then Monthly Enterprise Channel. Preview channels are a great option to validate the product before rolling out to the rest of organization. To learn more, see [**<u>Overview of update channels</u>**](https://learn.microsoft.com/en-us/deployoffice/updates/overview-update-channels), and [**<u>Microsoft 365 Insider channels</u>**](https://learn.microsoft.com/en-us/deployoffice/insider/compare-channels).

We recommend Current Channel, because it provides your users with the newest Microsoft 365 app features as soon as they're ready and provides the best experience for a fast-moving product like Copilot for Microsoft 365. If you need more predictability of when these new Microsoft 365 app features are released each month, we recommend Monthly Enterprise Channel.  
There are multiple ways you can manage channels for user devices. To learn more, see [Change update channel of Microsoft 365 to enable Copilot](https://learn.microsoft.com/en-us/deployoffice/updates/change-channel-for-copilot).Change

**Provision Copilot for Microsoft 365 licenses**

After you’ve prepared your organization for Copilot, you can manage Microsoft Copilot for Microsoft 365 licenses from the Microsoft 365 admin center. You can assign licenses to individual users or to groups of users, as well as reassign licenses to other users.  

To access license management in the Microsoft 365 admin center, go to **Billing** \> **Licenses**.

You can also assign licenses in bulk to [<u>groups of users through the Azure admin center</u>](https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/licensing-groups-assign) or [<u>assign licenses to users with PowerShell</u>](https://learn.microsoft.com/en-us/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell). For more information, see [<u>Assign Microsoft 365 licenses to users</u>](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/assign-licenses-to-users).

To learn more about the steps to deploy Copilot for your organization, see Enable users for Microsoft Copilot for Microsoft 365.

**Configure settings for Copilot**

As an admin, you can manage Microsoft Copilot experiences for your organization by using the controls available in the Microsoft 365 admin center. You can view the status of Copilot license assignments, access the latest information on Copilot, manage data security and compliance controls, submit feedback on behalf of users, configure plugins and permissions, and enable the use of web data as grounding data in Copilot.

You can manage these settings by using the Copilot page in the Microsoft 365 admin center. To learn more, see Manage Microsoft Copilot for Microsoft 365 with the Copilot page.

**Plan for deployment and measure adoption, impact, and sentiment**

**Accelerating adoption to get to value**

The myriad uses of Copilot for Microsoft 365 across the various Microsoft 365 apps provides opportunities for users to find value in different ways. We recommend approaching adoption of Copilot by leveraging a . To do so:

1.  Identify users across various business groups in your organization, ideally with high usage of existing Microsoft 365 features. You can identify these users by reviewing usage metrics in the Microsoft 365 admin center.

2.  Assign these users Copilot for Microsoft 365 licenses and onboard them using the resources available on Microsoft’s adoption hub, including the user onboarding kit.

3.  As these users get more comfortable with using Copilot, they should be able to speak to how they use it best, and where it’s most valuable for them. This provides you with product champions that can help other users adoption Copilot across your organization.

With your established community of early adopters/Champions, they can better speak to their peers within their organization and contextualize the value of Copilot to best suit their needs. This framework also provides IT departments with a scalable way to handle questions through Champions, developing a team of experts across your organization. To learn more about driving adoption, visit the [Microsoft Copilot adoption hub](https://adoption.microsoft.com/Copilot/).

The Microsoft Copilot Dashboard (Preview) from Viva Insights helps organizations maximize the value of Copilot for Microsoft 365 by providing organizational leaders and IT decision makers insights into readiness, adoption, impact, and user sentiment.

[Access the Microsoft Copilot Dashboard (Preview) from Viva Insights here](http://aka.ms/copilotdashboard)

[Review this article to learn more about the Microsoft Copilot Dashboard (Preview) from Viva Insights here](https://learn.microsoft.com/en-us/viva/insights/org-team-insights/copilot-dashboard)

**More resources**

- [<u>Microsoft Copilot for Microsoft 365 setup guide</u>](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide)

- [<u>Microsoft 365 AI help and learning</u>](https://support.microsoft.com/copilot)

- Copilot for Microsoft 365 – Microsoft Adoption

- [<u>Microsoft Copilot for Microsoft 365 - Microsoft Community Hub</u>](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/ct-p/Microsoft365Copilot)

- Copilot for Microsoft 365 technical documentation hub
