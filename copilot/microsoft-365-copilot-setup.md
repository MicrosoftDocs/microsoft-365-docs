---
title: "Set up Microsoft 365 Copilot"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 1/14/2025
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
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Set up Microsoft 365 Copilot - admin guide

[Microsoft 365 Copilot](microsoft-365-copilot-overview.md) is an AI-powered productivity tool that uses large language models (LLMs). It integrates with your data, with Microsoft Graph, and with Microsoft 365 Apps.

It works alongside popular Microsoft 365 Apps, like Word, Excel, PowerPoint, Outlook, Teams, and more. Copilot provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills.

This article provides guidance for administrators on preparing their organization for Microsoft 365 Copilot. It covers foundational implementation and readiness activities, licensing, and steps to ensure a secure and compliant deployment.

## Prerequisites

- This article uses the following admin centers. These admin centers require a specific role to complete the tasks in the article.

  - **[Microsoft 365 admin center](https://admin.microsoft.com)**: There are different roles depending on the task you need to complete. To learn more about roles, see [Commonly used Microsoft 365 admin center roles](/microsoft-365/admin/add-users/about-admin-roles#commonly-used-microsoft-365-admin-center-roles).
  - **[SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219)**: Sign in as the [SharePoint administrator](/sharepoint/sharepoint-admin-role).
  - **[Microsoft Purview portal](https://purview.microsoft.com)**: There are different roles depending on the task you need to complete. To learn more, see:
    - [Permissions required to create and manage sensitivity labels](/purview/get-started-with-sensitivity-labels#permissions-required-to-create-and-manage-sensitivity-labels)
    - [Roles and role groups in Microsoft Defender for Office 365 and Microsoft Purview](/defender-office-365/scc-permissions)

- You must have an appropriate subscription plan to purchase Microsoft 365 Copilot.

  Microsoft 365 Copilot licenses are available as an add-on to other licensing plans. To learn more, see [Understand licensing for Microsoft 365 Copilot](microsoft-365-copilot-licensing.md).

  You can purchase Microsoft 365 Copilot licenses through the [Microsoft 365 admin center](https://admin.microsoft.com) (**Billing** > **Purchase services**), Microsoft partners, or your Microsoft account team.

- More licenses might be required to use some of the features describes in this article, like Microsoft Purview and SharePoint Advanced Management.

  To learn more, see:

  - [Microsoft Purview service description](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-purview-service-description)
  - [Microsoft SharePoint Premium - SharePoint Advanced Management overview](/sharepoint/advanced-management#licensing)

- To view Microsoft 365 app requirements, see [Microsoft 365 Copilot requirements](microsoft-365-copilot-requirements.md).

## Readiness activities

To ensure a smooth transition to Microsoft 365 Copilot, admins should undertake the following readiness activities:

- **Set up a test environment** Establish a test environment with necessary licenses to validate configurations and test scenarios.
- **Conduct pilot testing** Perform pilot testing with a select group of users to identify any issues and gather feedback.
- **Develop a communication plan** Create a communication plan to inform users about the upcoming changes and provide them with the necessary resources and support.
- **Review Conditional Access policies** Ensure that conditional access policies are appropriately configured. Microsoft 365 Copilot supports tenant-level Conditional Access Policies in SharePoint Online. To learn more, see [Conditional Access](/entra/identity/conditional-access/overview).
- **Review SharePoint Search and Advanced Management Policies** Use SharePoint Advanced Management (SAM) to control access to content, prevent oversharing, and manage content lifecycle. For detailed steps, see [Get ready for Microsoft 365 Copilot with SharePoint Advanced Management (SAM)](/sharepoint/get-ready-copilot-sharepoint-advanced-management). Additionally, consider implementing restricted SharePoint search to limit the discoverability of sensitive content. To learn more, see [Address internal oversharing concerns in Microsoft 365 Copilot deployment blueprint](microsoft-365-copilot-blueprint-oversharing.md).
- **Ensure network compliance** Review and ensure that your network meets the requirements for Microsoft 365 Copilot services. To learn more, see [Microsoft 365 Copilot network requirements](microsoft-365-copilot-requirements.md#network-requirements).

## Security measures

To ensure a secure and compliant environment for Microsoft 365 Copilot, it's crucial to implement robust security measures. Some key components of this are Multifactor authentication (MFA), audit logging, and restricting sensitive information. These measures help protect against unauthorized access and provide visibility into user and admin activities.

### Multifactor authentication (MFA)

Multifactor authentication (MFA) is a critical security measure that requires users to provide two or more verification factors to gain access to a resource such as an application or online account. Implementing MFA helps protect against unauthorized access and enhances the security of your organization's data. To learn more, see [Microsoft Entra multifactor authentication](/entra/identity/authentication/concept-mfa-howitworks).

#### Steps to implement MFA

- **Enable MFA for all users** Ensure that MFA is enabled for all users in your organization. This can be done through the Microsoft 365 admin center. To learn more, see [Set up multifactor authentication for Microsoft 365](/microsoft-365/admin/security-and-compliance/set-up-multi-factor-authentication).
- **Configure Conditional Access policies** Set up Conditional Access policies to enforce MFA based on user risk, location, and device compliance. For a tutorial, see [Secure user sign-in events with Microsoft Entra multifactor authentication](/entra/identity/authentication/tutorial-enable-azure-mfa).
- **Educate users** Provide training and resources to help users understand the importance of MFA and how to use it effectively.

### Audit logging

Audit logging is essential for tracking and monitoring activities within your Microsoft 365 environment. It helps administrators detect and respond to potential security incidents and ensures compliance with regulatory requirements. To learn more, see [Audit logging and monitoring overview](/compliance/assurance/assurance-audit-logging).

#### Steps to implement audit logging

- **Enable unified audit logging** Turn on unified audit logging in the Microsoft Purview compliance portal to capture all user and admin activities.
- **Configure audit log retention** Set up retention policies to ensure that audit logs are retained for the required period based on your organization's compliance needs.
- **Monitor and review logs** Regularly monitor and review audit logs to identify any suspicious activities or potential security threats.

### Restrict sensitive info from Copilot

To protect sensitive information during the deployment and use of Microsoft 365 Copilot, follow these steps to identify, assess, and mitigate oversharing risks. These measures will help maintain data security and compliance within your organization:

- **Identify most popular sites and assess oversharing** Export the top 100 most used sites from the SharePoint admin center and run the SharePoint Advanced Management (SAM) permission state report. To learn more, see [Secure by default with Microsoft Purview and protect against oversharing](/purview/deploymentmodels/depmod-securebydefault-intro).
- **Grant Copilot access to popular, low-risk sites** Cross-reference the report results from SAM and the Microsoft Purview Data Security Posture Management (DSPM) Oversharing posture assessment with the top 100 used sites.
- **Turn on proactive audit and protection** Disable "everyone except external users" (EEEU) at the tenant level and enable Purview Audit to monitor Copilot interaction activity. To learn more, see [Protect your sensitive data with Microsoft Purview](/purview/information-protection).
- **Implement access controls and labeling** Initiate SAM Access Review for all sites that are overshared and apply SAM restricted access control on business-critical sites. To learn more, see [Get ready for Microsoft 365 Copilot with SharePoint Advanced Management (SAM)](/sharepoint/get-ready-copilot-sharepoint-advanced-management).

For detailed steps, see [Address internal oversharing concerns in Microsoft 365 Copilot deployment blueprint](microsoft-365-copilot-blueprint-oversharing.md).

## Get started and deploy

### Step 1 - Review app privacy

✅ **Review your Microsoft 365 apps privacy settings**

The privacy settings in your Microsoft 365 apps can affect the availability of Microsoft 365 Copilot features. To ensure that users can access Copilot features, review the privacy settings in your Microsoft 365 apps.

To learn more, see [Microsoft 365 Copilot and privacy controls for connected experiences](microsoft-365-copilot-privacy.md#microsoft-365-copilot-and-privacy-controls-for-connected-experiences).

### Step 2 - Evaluate data governance maturity and data security controls

✅ **Use the Microsoft 365 Copilot Optimization Assessment**

Before deploying Microsoft 365 Copilot, it's essential to evaluate your organization's data governance maturity and data security controls. This can be achieved by completing the [Microsoft 365 Copilot Optimization Assessment](https://www.microsoft.com/solutionassessments/). Based on the outcomes of the assessment, determine your path forward to ensure that your organization is ready for Copilot deployment.

### Step 3 - Update channels

✅ **Use the Current Channel or Monthly Enterprise Channel to update apps**

Microsoft 365 Copilot follows the Microsoft 365 Apps standard practice for deployment and updates. It's available in all update channels, *except* for Semi-Annual Enterprise Channel.

Your options:

- **Production** channels include **Current Channel** and **Monthly Enterprise Channel**.

  - **Current Channel** provides your users with the newest Microsoft 365 app features as soon as they're ready. It provides the best experience for a fast-moving product, like Copilot.

  - **Monthly Enterprise Channel** gives more predictability of when these new Microsoft 365 app features are released each month. It's a good option for organizations that want to validate the new features before they're released to the Current Channel.

- **Preview** channels include **Current Channel (Preview)** and **Beta Channel**.

  Preview channels are a great option to validate the product before rolling out to the rest of organization. To learn more, see [Overview of update channels](/deployoffice/updates/overview-update-channels) and [Microsoft 365 Insider channels](/deployoffice/insider/compare-channels).

There are multiple ways you can manage channels for user devices. To learn more, see [Change update channel of Microsoft 365 to enable Copilot](/deployoffice/updates/change-channel-for-copilot).

### Step 4 - Provision Microsoft 365 Copilot licenses

✅ **Assign Copilot licenses using the Microsoft 365 admin center**

The next step is to assign licenses so users can start using Copilot. You can manage Microsoft 365 Copilot licenses in the Microsoft 365 admin center. You can assign to individual users or to groups of users, and also reassign licenses to other users.

- To access license management in the [Microsoft 365 admin center](https://admin.microsoft.com), select **Billing** > **Licenses**.

When licenses are assigned, Copilot shows up in the Microsoft 365 apps, like Word and Excel. To use Copilot, users sign into the app with their work or school account and the file must be editable (not read only).

To learn more, see:

- Enable Copilot in your organization at [Enable users for Microsoft 365 Copilot](microsoft-365-copilot-enable-users.md).
- You can assign licenses in bulk to [groups of users through the Azure admin center](/entra/identity/users/licensing-groups-assign) or [assign licenses to users with PowerShell](/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell). For more information, see [Assign Microsoft 365 licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users).

### Step 5 - Configure settings for Copilot

✅ **Configure more Copilot features**

In the [Microsoft 365 admin center](https://admin.microsoft.com) > **Copilot**, there are more Copilot features that benefit admins and settings you can configure that benefit your organization.

You can:

- View the status of Copilot license assignments
- Access the latest information on Copilot
- Manage data security and compliance controls
- Submit feedback on behalf of users
- Configure plugins and permissions
- Enable the use of web data as grounding data in Copilot

To learn more, see [Manage Microsoft 365 Copilot settings](microsoft-365-copilot-page.md).

### Step 6 - Deploy to some users and measure adoption

When you're ready to assign Copilot licenses to your users, there are three phases that you can follow:

1. **Pilot**: Assign licenses to a small group of users to test the deployment and gather feedback.
2. **Deploy**: Assign licenses to a larger group of users.
3. **Operate**: Monitor usage and adoption, and make adjustments as needed.

To learn more about these phases, and possible actions you can take in each phase, see the [Microsoft deployment blueprint to address oversharing in Microsoft 365 Copilot](microsoft-365-copilot-privacy.md#committed-to-responsible-ai).

#### Pilot

✅ **Create a group of early adopters**

There are many uses of Microsoft 365 Copilot across the various Microsoft 365 productivity apps. And, there are opportunities for users to find value in different ways.

To help drive adoption, create a group of early adopters. This group can help you understand how users are using Copilot and how it's valuable to them.

1. Identify users across various business groups in your organization, ideally with high usage of existing Microsoft 365 features. You can identify these users by [reviewing usage metrics](/microsoft-365/admin/activity-reports/microsoft365-apps-usage-ww) in the [Microsoft 365 admin center](https://admin.microsoft.com).

2. Assign these users Microsoft 365 Copilot licenses and onboard them using the resources available at the [Microsoft 365 Copilot adoption hub](https://adoption.microsoft.com/), including the [user onboarding kit](https://adoption.microsoft.com/copilot/user-onboarding-toolkit/).

3. As these users get more comfortable with using Copilot, they can speak to how they use it best, and where it's most valuable for them. This information provides you with product champions that can help other users adopt and use Copilot across your organization.

    With your established community of early adopters or Champions, they can better speak to their peers within their organization and contextualize the value of Copilot to best suit their needs. This framework also provides IT departments with a scalable way to handle questions through Champions, developing a team of experts across your organization.

To learn more about driving adoption, visit the [Microsoft 365 Copilot adoption hub](https://adoption.microsoft.com/Copilot/).

#### Deploy

✅ **Fully deploy Copilot licenses to all users in your organization**

To deploy Copilot licenses to all users in your organization, follow these steps:

1. Use the Microsoft 365 admin center to assign licenses to individual users or groups of users, depending on your needs.
2. Make sure that all users have the appropriate licenses assigned to them before you begin using Copilot. This will ensure that everyone has access to the features they need and can participate fully in the Copilot experience.

During this phase, you may also want to:

- Focus on preventing oversharing by limiting external sharing, restricting access to certain files or folders, and setting up alerts to notify you of any unusual activity. To learn more, see [Site governance, permission, and sharing for site owners](https://support.microsoft.com/office/overview-site-governance-permission-and-sharing-for-site-owners-95e83c3d-e1b0-4aae-9d08-e94dcaa4942e).
- Use sensitivity labels to classify and protect sensitive information. These labels allow you to automatically encrypt files containing sensitive data or restrict access to files marked as "confidential." To learn more, see [Get started with sensitivity labels](/purview/get-started-with-sensitivity-labels).

#### Operate

✅ **Get insights and user sentiment**

To measure the impact of Copilot on your organization, use the [Copilot Dashboard from Viva Insights](/viva/insights/org-team-insights/copilot-dashboard), and the [Microsoft 365 usage reports in the admin center](/microsoft-365/admin/activity-reports/activity-reports). These tools provide organizational leaders and IT decision makers with insights into readiness, adoption, impact, and user sentiment.

To learn more, see:

- [Open the Microsoft Copilot Dashboard (Preview) from Viva Insights](https://aka.ms/copilotdashboard)
- [Learn more about the Microsoft Copilot Dashboard (Preview) from Viva Insights](/viva/insights/org-team-insights/copilot-dashboard)
- [Microsoft 365 reports in the admin center – Microsoft 365 Copilot usage](/microsoft-365/admin//activity-reports/microsoft-365-copilot-usage)
- [Microsoft 365 reports in the admin center – Microsoft 365 Copilot readiness](/microsoft-365/admin//activity-reports/microsoft-365-copilot-readiness)

## Microsoft 365 Copilot Chat

To enhance data security, enable Microsoft 365 Copilot Chat for all users in your organization. To do this:

- **Log in to Copilot** Access Copilot on [copilot.microsoft.com](https://copilot.microsoft.com/) and ensure that Microsoft 365 Copilot Chat is enabled.

## More resources

- [Microsoft 365 Copilot setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide)
- [Microsoft 365 AI help and learning](https://support.microsoft.com/copilot)
- [Microsoft 365 Copilot – Microsoft Adoption](https://adoption.microsoft.com/Copilot/)
- [Microsoft 365 Copilot - Microsoft Community Hub](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/ct-p/Microsoft365Copilot)
- [Microsoft 365 Copilot technical documentation hub](index.yml)
