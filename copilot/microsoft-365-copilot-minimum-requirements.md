---  
title: "Minimum requirements to deploy Microsoft 365 Copilot in your organization"  
author: kwekuako
ms.author: kwekua
manager: scotv
ms.date: 01/22/2026
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: scotvorg
ms.custom: QuickDraft
audience: Admin
ai-usage: ai-assisted
description: Minimum requirements to deploy Microsoft 365 Copilot in your organization
---

# Minimum requirements to deploy Microsoft 365 Copilot in your organization

[Microsoft 365 Copilot](microsoft-365-copilot-overview.md) is an AI-powered tool that helps with your work tasks. Microsoft 365 Copilot is integrated into Microsoft 365 apps such as Word, Excel, Outlook, and Teams. It uses the latest AI models and data from the web and your organization to answer questions, generate content and ideas, and find information. For more information, see [Microsoft 365 Copilot overview](microsoft-365-copilot-overview.md).

To successfully deploy Microsoft 365 Copilot in your organization, you need to meet certain technical and licensing requirements. This guide will help you understand the necessary prerequisites to ensure a smooth deployment.

## Licensing requirements

Before your users can use Microsoft 365 Copilot, they must have one of the following subscriptions or plans:

- Microsoft 365 A3/A5 (including MA3/MA5 for students, MA3/MA5 for faculty, and MA3/MA5 student-use benefit)
- Microsoft 365 Business Basic/Business Standard/Business Premium
- Microsoft 365 E3/E5
- Microsoft 365 F1/F3
- Microsoft Teams/Teams Enterprise/Teams Essentials/Teams Rooms
- Office 365 A1/A1 Plus/A3/A5
- Office 365 E1/E1 Plus/E3/E5
- Office 365 F3

Once your organization has one of these subscriptions or plans, you can purchase a Microsoft 365 Copilot license for your users. For more information, see [License plans for Microsoft 365 Copilot](microsoft-365-copilot-licensing.md).

## Network requirements

Microsoft 365 Copilot enables AI scenarios that access the web, so it may need to connect to specific network endpoints (domains). See the full documentation of network requirements for Microsoft 365 Copilot, which provides a complete list of domains and WebSockets (WSS) that an organization's network shouldn't block. For more information, see [Microsoft 365 app and network requirements for Microsoft 365 Copilot](microsoft-365-copilot-requirements.md).

## Sign-in requirements

Before your users can use Microsoft 365 Copilot, they must also have a Microsoft Entra ID (Azure AD) account.

## Operating systems requirements

- Windows 11
- macOS 14.0 (Sonoma) or later

> [!NOTE]
> Make sure you're on the latest supported operating system version.

## Mailbox requirements

User's primary mailbox must be in Exchange Online. Copilot uses mailbox content (mailbox grounding), including emails, calendar events, and metadata to generate summaries, draft replies, and surface relevant responses. This process is only supported when the mailbox resides in Exchange Online. On-premises and hybrid mailboxes do not support this grounding.

## Mobile device requirements

- iPhone: iOS 16.0 or later
- iPad: iPadOS 16.0 or later
- Android 10 or later

## Browser requirements

Any modern browser with third-party cookies enabled for online apps. Recommended browsers:

- Microsoft Edge (recommended for best compatibility and performance)
- Google Chrome
- Mozilla Firefox
- Apple Safari

## User access to Microsoft 365 Copilot

Users can access Microsoft 365 Copilot from:

- **Web**: go to [m365copilot.com](https://m365copilot.com)
- **App**: Download the Copilot app from the Microsoft store
- **Mobile**: Install the app from the App Store (iOS) or Google Play (Android)

## Security and compliance requirements

Copilot operates within your Office 365 trust boundary. That means your data stays your data. Microsoft will never use your files or communications with Copilot to train models or share with other customers. And we don't sell your information to advertisers. Copilot also builds on the work you've already done to secure your environment, whether that's SharePoint, email, Teams, or OneDrive. Use built-in Microsoft controls in SharePoint, Purview, and any third-party apps you have to protect your organization's data. For more information, see [Architecture diagrams of Microsoft 365 data protection features that affect Microsoft 365 Copilot](microsoft-365-copilot-architecture-data-protection-auditing.md).

> [!NOTE]
> Documents using legacy Information Rights Management (IRM) are not used in Copilot grounding. If your users are using IRM document protection, they should use sensitivity labeling in Copilot Purview to protect documents and prevent oversharing.

## Microsoft SharePoint

To ensure responses provided by Microsoft 365 Copilot are appropriate, accurate, and compliant, as your organization's admin, it's crucial for you to ensure that your organization's data is protected and appropriately governed. You can use the steps below in SharePoint to help govern your organization's data effectively:

1. Reduce accidental oversharing with SharePoint sharing settings
2. Ensure all sites have valid owners
3. Clean up unused sites
4. Identify sites with potentially overshared content
5. Control access to content
6. Take proactive measures on business-critical sites

For more information, see [Get ready for Microsoft 365 Copilot with SharePoint Advanced Management](/sharepoint/get-ready-copilot-sharepoint-advanced-management).

## Microsoft Purview

Microsoft 365 Copilot works together with third-party apps or Microsoft Purview sensitivity labels and encryption to provide an extra layer of protection. Microsoft 365 Copilot honors your security and data protection controls. There are also features you can use to audit Copilot usage data. For more information, see [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).

## Microsoft Teams integration

As an admin, you can manage how users in your organization use Copilot for Teams meetings and events. Before users in your organization can use Copilot in Teams, they must have the Microsoft 365 Copilot add-on license. For Teams phone, users also require a Teams phone license. The following topics will help you get started with rolling out Teams in your organization:

- [Manage Microsoft 365 Copilot in Teams meetings and events](/microsoftteams/copilot-teams-transcription)
- [Manage Microsoft 365 Copilot in Teams calls](/microsoftteams/copilot-teams-calling-transcription)
- [Teams Rooms and Copilot overview](/microsoftteams/rooms/copilot-admin-mtr)

## Microsoft 365 Copilot rollout

To ensure a smooth and effective rollout of Microsoft 365 Copilot, we encourage you to begin with a phased approach. Start with a limited rollout to a small group of users and expand your user list as your rollout continues. This approach allows your organization to explore Copilot's features in a controlled setting, gather valuable feedback, and address any technical or adoption-related issues early on. By starting with a smaller group, you can refine configurations, ensure security and compliance readiness, and develop tailored training resources. This phased strategy also helps build internal advocates who can support broader adoption and contribute to a more successful organization-wide implementation.

### Define your Copilot strategy

Before selecting users or purchasing licenses, define your organizational goals, use cases, and success metrics. Refer to [Microsoft 365 Copilot adoption guide and overview for IT admins](microsoft-365-copilot-enablement-resources.md).

### Protect sensitive data

Review and audit site permissions using [SharePoint Advanced Management](/sharepoint/advanced-management). Implement robust data security solutions with [Microsoft Purview](/purview/ai-microsoft-purview).

### Start with a small group using a phased approach

Begin with a limited rollout to test configurations, gather feedback, and refine processes.

- [Microsoft 365 Copilot Setup Guide](microsoft-365-copilot-setup.md)

### Check for Microsoft 365 Copilot readiness

Ensure your organization is ready for Microsoft 365:

- [Microsoft 365 admin center readiness](/microsoft-365/admin/activity-reports/microsoft-365-copilot-readiness)

### Buy Microsoft 365 Copilot licenses

Ensure your organization has the correct licensing and subscriptions:

- [License options for Microsoft 365 Copilot](microsoft-365-copilot-licensing.md)
- [Try or buy a Microsoft 365 for business subscription](/microsoft-365/commerce/try-or-buy-microsoft-365)

### Assign AI administrator role to a user

Assign the AI administrator role to users who will manage all aspects of Microsoft 365 Copilot. This user role can also manage AI-related enterprise services, extensibility, approve and publish line-of-business copilot agents, read and configure Azure and Microsoft 365 service health dashboards and view usage reports, adoption insights, and organizational insight.

They can also create and manage support tickets in Azure and the Microsoft 365 admin center. For more information, see [AI administrator](/entra/identity/role-based-access-control/permissions-reference).

### Add users and assign licenses to users

Use the Microsoft 365 admin center to assign Copilot licenses to selected users:

- [Add users and assign licenses](/microsoft-365/admin/add-users/add-users)

### Train end users

Provide training tailored to your users to ensure effective usage:

- [Copilot User Enablement Toolkit](https://microsoft.seismic.com/Link/Content/DCTdQ8FMmgPcM8CGXR8mCVRDJDdB)
- [Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts)

### Drive adoption

Use communication templates, workshops, and champions to promote usage.

- [Copilot Success Kit](https://adoption.microsoft.com/copilot/success-kit/)
- [Microsoft 365 Copilot Adoption Hub](https://adoption.microsoft.com/copilot/)

### Get ready

Get info through surveys, usage analytics, and direct user input:

- [Copilot dashboard](/viva/insights/org-team-insights/copilot-dashboard)

### Expand to the next group and scale out

Use learnings from the pilot to refine and scale deployment across departments:

- [Microsoft 365 Copilot Deployment Readiness](/microsoft-365/admin/activity-reports/microsoft-365-copilot-readiness)

### Monitor usage and evaluate success

Track adoption, usage patterns, and business impact using built-in reporting tools:

- [Microsoft](/microsoft-365/admin/activity-reports/microsoft-365-copilot-usage)
