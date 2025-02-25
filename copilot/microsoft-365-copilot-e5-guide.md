---
title: Get your data ready for Microsoft 365 Copilot with E5 + SAM licenses
description: Get started with M365 Copilot. The E5 deployment for Microsoft 365 Copilot uses a E5 license, SharePoint Advanced Management, and Microsoft Purview. These services help your organization get ready for Copilot. This IT admin guide helps you prevent oversharing, declutter data sources, and monitor site changes. Get your organization and data ready for Copilot by following the steps in this article.
f1.keywords:
- NOCSH
ms.author: mandia
author: MandiOhlinger
manager: laurawi
ms.date: 01/15/2025
ms.reviewer: cabailey, ruihu
audience: Admin
ms.topic: get-started
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-overview
ms.custom: [copilot-learning-hub]
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Microsoft 365 Copilot admin guide for E5 + SAM licenses

When preparing your organization for [Microsoft 365 Copilot](microsoft-365-copilot-overview.md) or you're ready to start using Copilot, there are features in your E5 + SAM licenses that can help get your data ready.

When users enter a prompt, Copilot can respond with data that the user has permission to access. Overshared and outdated data can lead to inaccurate results from Copilot.

This article provides guidance for IT admins with **Microsoft 365 E5** and **SharePoint Advanced Management (SAM)** licenses. With the features included in these licenses, you:

- Use SharePoint Advanced Management (SAM) to help prevent oversharing, declutter data sources, and monitor SharePoint site changes.
- Use Microsoft Purview to enable sensitivity labels, identify and protect sensitive data, restrict endpoints, and delete the content you don't need.

To learn more, watch [Oversharing Control at Enterprise Scale](https://www.youtube.com/watch?v=F1ARVMTBAak) (opens YouTube's website).

Use this article to get started with Microsoft 365 Copilot in your organization. When you use the features described in this article, your organization is better prepared for Copilot, including getting more accurate results from Copilot.

This article applies to:

- Microsoft 365 Copilot
- Microsoft SharePoint Premium - SharePoint Advanced Management (SAM)
- Microsoft Purview

> [!NOTE]
> If you have an E3 license, then see [Microsoft 365 Copilot admin guide for E3 licenses](microsoft-365-copilot-e3-guide.md). For a comparison of the features in the licenses, see [Compare Microsoft Copilot features in E3 and E5 licenses](microsoft-365-copilot-license-feature-overview.md).

## Before you begin

- Microsoft recommends you also follow the steps in [Microsoft 365 Copilot - best practices with SharePoint](/sharepoint/sharepoint-copilot-best-practices). It helps you optimize your search in SharePoint, update sharing settings in SharePoint & OneDrive, and check permissions & site access on your SharePoint sites.

- The following licenses are required to use the features in this article:

  - **[Microsoft 365 E5](https://www.microsoft.com/microsoft-365/enterprise/e5)** or **[Office 365 E5](https://www.microsoft.com/microsoft-365/enterprise/office-365-e5)**
    - **[Microsoft Purview](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-purview-service-description)** - Included with your E5 license

    For a list of the features and services you get with your license, see [Microsoft 365, Office 365, Enterprise Mobility + Security, and Windows 11 Subscriptions](https://aka.ms/M365EnterprisePlans).

  - **[Microsoft SharePoint Premium - SharePoint Advanced Management](/sharepoint/advanced-management#licensing)**

    Beginning in early 2025, Microsoft SharePoint Premium - SharePoint Advanced Management (SAM) will be included with your Microsoft 365 Copilot license. To learn more about SAM licensing, see [Microsoft SharePoint Premium - SharePoint Advanced Management](/sharepoint/advanced-management#licensing).

  - **[Microsoft 365 Copilot](microsoft-365-copilot-licensing.md)**

    Depending on your subscription plan, you might be able purchase Microsoft 365 Copilot licenses through the [Microsoft 365 admin center](https://admin.microsoft.com) (**Billing** > **Purchase services**), Microsoft partners, or your Microsoft account team.

    Microsoft 365 Copilot licenses are available as an add-on to other licensing plans. To learn more, see [Understand licensing for Microsoft 365 Copilot](microsoft-365-copilot-licensing.md).

- This article uses the following admin centers. These admin centers require a specific role to complete the tasks in the article.

  - **[SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219)**: Sign in as the [SharePoint administrator](/sharepoint/sharepoint-admin-role).
  - **[Microsoft Purview portal](https://purview.microsoft.com)**: There are different roles, depending on the task you need to complete. To learn more, see:

    - [Permissions required to create and manage sensitivity labels](/purview/get-started-with-sensitivity-labels#permissions-required-to-create-and-manage-sensitivity-labels)
    - [Roles and role groups in Microsoft Defender for Office 365 and Microsoft Purview](/defender-office-365/scc-permissions)

## SharePoint admin task - Use SharePoint Advanced Management (SAM) features

[!INCLUDE [copilot-e5-e3-sharepoint-advanced-management](./includes/copilot-e5-e3-sharepoint-advanced-management.md)]

## SharePoint admin task - Restrict SharePoint Search (RSS)

✅ **Copilot goal: Disable RSS**

As you get ready for Copilot, you review and configure the correct permissions on your SharePoint sites. You might have enabled Restricted SharePoint Search (RSS).

RSS is a temporary solution that gives you time to review and configure the correct permissions on your SharePoint sites. You add the reviewed & corrected sites to an allowed list.

- If your SharePoint site permissions are set correctly, then disable RSS.

  When disabled, SharePoint search accesses all your SharePoint sites. When users enter prompts, Copilot can show data from all your sites, which shows more relevant and complete information in the response.

  The goal is to disable RSS and allow SharePoint search to access all your sites. This action gives Copilot more data to work with, which can improve the accuracy of the responses.

  **OR**

- If you enabled RSS, then add more sites to the allowed list. You can add up to 100 sites to the allowed list. Copilot can show data from the allowed list sites in user prompts.

  Remember, your goal is to review & configure the correct permissions on your SharePoint sites, and disable RSS.

To learn more, see:

- [Restricted SharePoint Search](/sharepoint/restricted-sharepoint-search)
- [Curate the allowed list for Restricted SharePoint Search](/sharepoint/restricted-sharepoint-search-allowed-list)
- [Blog - Introducing Restricted SharePoint Search to help you get started with Microsoft 365 Copilot](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/introducing-restricted-sharepoint-search-to-help-you-get-started/ba-p/4071060)

### Disable RSS and remove sites from the allowed list

1. Use the `Set-SPOTenantRestrictedSearchMode` PowerShell cmdlet to disable RSS.
1. Use the `Remove-SPOTenantRestrictedSearchAllowedSite` PowerShell cmdlet to remove sites from the allowed list.

To learn more about these cmdlets, see [Use PowerShell Scripts for Restricted SharePoint Search](/sharepoint/restricted-sharepoint-search-admin-scripts).

### Add sites to the RSS allowed list

1. Get a list of the sites that you want to add to the allowed list.

    - **Option 1 - Use the Sharing links report**

      1. Sign in to the [SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219) as a SharePoint administrator.
      1. Select **Reports** > **Data access governance** > **Sharing links** > **View reports**.
      1. Select one of the reports, like **"Anyone" links**. This report shows a list of sites with the highest number of **Anyone** links created. These links let anyone access files and folders without signing in. These sites are candidates to allow in tenant/org wide search.

    - **Option 2 - Use the sort and filter options for Active sites**

      1. Sign in to the [SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219) as a SharePoint administrator.
      1. Select **Sites** > **Active sites**.
      1. Use the sort and filter options to find the most active site, including page views. These sites are candidates to allow in a tenant/organization wide search.

          :::image type="content" source="media/microsoft-365-copilot-e5-guide/sharepoint-active-sites-filter.png" alt-text="In SharePoint admin center, select active sites and then use the All sites filter.":::

2. Use the `Add-SPOTenantRestrictedSearchAllowedList` PowerShell cmdlet to add the sites to the allowed list.

    To learn more about this cmdlet, see [Use PowerShell Scripts for Restricted SharePoint Search](/sharepoint/restricted-sharepoint-search-admin-scripts).

## Purview admin tasks - Use Microsoft Purview features

There are features in [Microsoft Purview](/purview/copilot-in-purview-overview) that can help you get ready for Copilot.

✅ **Copilot goals with Purview**:

- Identify and label sensitive data in Microsoft 365.
- Detect and protect sensitive information from unauthorized sharing or leakage.
- Delete the content you don't need.
- Detect sensitive data and noncompliant content in Copilot prompts and responses.
- Review and analyze Copilot prompts and responses.

To learn more about how Microsoft Purview can help you to govern, protect, and manage your data, see [Learn about Microsoft Purview](/purview/purview).

### Identify and label sensitive data

[!INCLUDE [copilot-e5-e3-create-apply-sensitivity-labels](./includes/copilot-e5-e3-create-apply-sensitivity-labels.md)]

This section guides you through the steps to create and use the default sensitivity labels from Microsoft Purview. If you need to use your own label names and configurations, create the labels manually or edit the default labels. If you already created your own sensitivity labels, you can't create the default labels.

To learn more about sensitivity labels, see:

- [Get started with sensitivity labels](/purview/get-started-with-sensitivity-labels)
- [Activate the default labels and policies to protect your data](/purview/mip-easy-trials)
- [Learn some common scenarios for sensitivity labels](/purview/get-started-with-sensitivity-labels#common-scenarios-for-sensitivity-labels)
- [Use Microsoft Purview to strengthen information protection for Copilot](/purview/ai-microsoft-purview#microsoft-purview-strengthens-information-protection-for-copilot)

#### 1. Create the default sensitivity labels

1. Sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as an admin in one of the groups listed at [Sensitivity labels - permissions](/purview/get-started-with-sensitivity-labels#permissions-required-to-create-and-manage-sensitivity-labels).

2. Select **Solutions** > **DSPM for AI** > **Overview**.
3. In the **Recommendations** section, select **Information Protection Policy for Sensitivity Labels**. This step creates the default labels and their policies.
4. To see or edit the default labels, or to create your own labels, select **Information protection** > **Sensitivity labels**. You might have to select **Refresh**.

When you have the default sensitivity labels:

- The labels help protect your data and can affect Copilot results.
- Your users can start manually applying published labels to their files and emails.
- Admins can start creating policies and configuring features that automatically apply labels to files and emails.

#### 2. Enable and configure sensitivity labels for containers

The default sensitivity labels don't include settings for groups and sites, which let you apply a sensitivity label to a SharePoint or Teams site, or Microsoft Loop workspace. Items in the container don't inherit the sensitivity label. Instead, the label settings can restrict access to the container. This restriction provides an extra layer of security when you use Copilot. If a user can't access the site or workspace, Copilot can't access it on behalf of that user.

For example, you can set the privacy setting to **Private**, which restricts site access to only approved members in your organization. When the label is applied to the site, it replaces any previous setting and locks the site for as long as the label is applied. This feature is a more secure setting than letting anybody access the site and allowing users to change the setting. When only approved members can access the data, it helps prevent oversharing of data that Copilot might access.

To configure any label settings for groups and sites, you must enable this capability for your tenant and then synchronize your labels. This configuration is a one-time configuration. To learn more, see [How to enable sensitivity labels for containers and synchronize labels](/purview/sensitivity-labels-teams-groups-sites#how-to-enable-sensitivity-labels-for-containers-and-synchronize-labels).

You can then edit your sensitivity labels, or create new sensitivity labels specifically for groups and sites:

1. For the sensitivity label scope, select **Groups & sites**. Remember, you must have already run the PowerShell commands. If you didn't, you can't select this scope.

    To learn more, see [How to enable sensitivity labels for containers and synchronize labels](/purview/sensitivity-labels-teams-groups-sites#how-to-enable-sensitivity-labels-for-containers-and-synchronize-labels).

2. Select the groupings of settings to configure. Some of the settings have backend dependencies before they can be enforced, like Conditional Access that must be already configured. The privacy setting, which is included in **Privacy and external user access settings**, doesn't have any backend dependencies.

3. Configure the settings you want to use and save your changes.

For more information, including details of all the available label settings that you can configure for groups and sites, see [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](/purview/sensitivity-labels-teams-groups-sites).

#### 3. Publish your labels and educate your users

1. If you're using the default sensitivity labels, the labels are automatically published to all users, even if you edit the labels.

    If you created your own sensitivity labels, you must add your labels to a publishing policy. When they're published, users can manually apply the labels in their Office apps. For labels that include the **Groups & sites** scope, users can apply these labels to new and existing sites, teams, and Loop workspaces. The publishing policies also have settings that you need to consider, like a default label and requiring users to label their data.

    To learn more, see [Publish sensitivity labels by creating a label policy](/purview/create-sensitivity-labels#publish-sensitivity-labels-by-creating-a-label-policy).

2. Educate your users and provide guidance for when they should apply each sensitivity label.

    In addition to manually applying labels, the default label policy includes applying the **General \ All Employees (unrestricted)** label as the default label for items. This label offers a base layer of protection. But, users should change the label if needed, especially for more sensitive content that requires encryption.

    To help you with this step, see [End-user documentation for sensitivity labels](/purview/get-started-with-sensitivity-labels#end-user-documentation-for-sensitivity-labels).

3. Monitor your labels. Select **Information protection** > **Reports**. You can see the usage of your labels.

#### 4. Enable sensitivity labels for files in SharePoint and OneDrive

[!INCLUDE [copilot-e5-e3-enable-sensitivity-labels-sharepoint-onedrive](./includes/copilot-e5-e3-enable-sensitivity-labels-sharepoint-onedrive.md)]

> [!TIP]
> Although not related to Copilot, now is a good time to [enable coauthoring for encrypted files](/purview/sensitivity-labels-coauthoring). This setting ensures the best user experience for collaboration and might be required for other labeling scenarios.

#### 5. Set default sensitivity labels for your SharePoint document libraries

The default labeling policy is configured to apply the default sensitivity label of **General \ All Employees (unrestricted)** for unlabeled files, emails, and meetings. You might want to override that setting with location-based labeling for SharePoint document libraries. This labeling method applies a default label to a document library.

You have two automatic labeling options for files in the same document library:

| Library option | When to use this option |
| -------------- | ----------------------- |
| **Option 1** - Default sensitivity label that can apply admin-defined permissions (the **Assign permissions now** encryption option), or no encryption. | Recommended for new document libraries and when the libraries store files that usually have the same level of known sensitivity. For exceptions, you want users to be able to select an alternative label that doesn't apply encryption. <br/><br/> All new files that don't have a sensitivity label and uploaded to the library are labeled with this library default label.|
| **Option 2** - Protects files that are downloaded and extends SharePoint permissions to the downloaded file copy. To configure this setting for the library, the sensitivity label must be configured with user-defined permissions (the **Let users assign permissions** encryption option). <br/><br/> Currently in preview, this configuration requires PowerShell commands at the tenant-level and then the site level before you can select a sensitivity label. | Recommended for new and existing document libraries when you want to centralize permissions and continue to protect files when they're downloaded. <br/><br/>This option is suitable when: <br/><br/> - You haven't inspected the file contents for sensitivity. <br/>- You can't configure the user and group permissions for the label that defines who gets access to the content. In this scenario, the business owners should control access by using SharePoint permissions and access management capabilities. However, this label configuration provides more protection because the downloaded copy of the file is permissioned the same as its source copy in real time. |

Both options provide a baseline level of protection that's specific to the document library, doesn't require content inspection, and doesn't rely on action from end users.

The SharePoint site admin can select a default label for the document library.

1. In your SharePoint site, select **Documents** > **Settings** icon > **Library settings** > **More library settings**.
2. In **Default sensitivity labels** (Apply label to items in this list or library):

    a. For a standard default sensitivity label, from the drop-down box, select a sensitivity label that's suitable for most of the files in the library. It can be a sensitivity label that is configured for admin-defined permissions, such as **Confidential \ All Employees**. Or, a sensitivity label that doesn't apply encryption, such as **Public**. Don't select **Extend protection on download, copy, or move**.

    b. For a default sensitivity label that extends protection to files that are downloaded, copied, or moved, select **Extend protection on download, copy, or move**. Then from the drop-down box, select a sensitivity label that is configured for user-defined permissions, such as **Confidential \ Trusted People**.

    > [!NOTE]
    > The **Extend protection on download, copy, or move** checkbox isn't displayed until the prerequisite PowerShell commands are complete. To learn more, see [Configure SharePoint with a sensitivity label to extend permissions to downloaded documents](/purview/sensitivity-labels-sharepoint-extend-permissions).

3. **Save** your changes.

To learn more, including how to run the PowerShell commands for the checkbox, details about the labeling outcomes for each configuration, and any limitations:

- [Configure a default sensitivity label for a SharePoint document library](/purview/sensitivity-labels-sharepoint-default-label)
- [Configure SharePoint with a sensitivity label to extend permissions to downloaded documents](/purview/sensitivity-labels-sharepoint-extend-permissions)

#### 6. Automatically apply sensitivity labels to files and emails

You can automatically apply labels to files in SharePoint sites, OneDrive accounts, Exchange emails, and Office files. Automatic labeling helps to identify a higher priority label for more sensitive information that might need a more restrictive setting than a default label.

- For the specific steps and information that you need to know, including learning about simulation mode for autolabeling policies, see [Apply a sensitivity label to content automatically](/purview/apply-sensitivity-label-automatically).

##### Client-side autolabeling vs. service-side autolabeling

- When you autolabel documents and emails in use by Word, Excel, PowerPoint, and Outlook, it's using client-side autolabeling. Users see the label automatically applied in their Office apps, or you can recommend the appropriate label to the user.
- When you autolabel documents stored in all SharePoint or OneDrive sites, and all emails sent using Exchange Online, it's using service-side autolabeling. There isn't any user interaction. You can label at scale for files at rest in OneDrive and SharePoint, and all emails that are sent and received.

If you created the default sensitivity labels and policies, they include both [client-side autolabeling](/purview/mip-easy-trials#client-side-auto-labeling) and [service-side autolabeling](/purview/mip-easy-trials#service-side-auto-labeling) to detect credit card numbers and personal data. These default settings make it easy for you to test the autolabeling functionality.

You can edit or create your own autolabeling settings. This feature helps identify your organization data that needs a specific sensitivity label to apply protection actions, like encryption.

### Detect sensitive information and protect it from unauthorized sharing or leakage

✅ **Use [data loss prevention (DLP) policies](/purview/dlp-learn-about-dlp) to help protect against unintentional sharing**

[Microsoft Purview Data Loss Prevention (DLP)](/purview/dlp-learn-about-dlp) helps organizations protect sensitive information by helping guard against unauthorized sharing or leakage. The intent is to dynamically protect sensitive information, like financial data, social security numbers, and health records, from being overshared.

You can create DLP policies to protect sensitive information in the following locations:

- Microsoft 365 services, like Teams, Exchange, SharePoint, and OneDrive accounts
- Office applications, like Word, Excel, and PowerPoint
- Windows 10, Windows 11, and macOS (three latest released versions) endpoints
- Non-Microsoft cloud apps
- On-premises file shares and on-premises SharePoint
- Fabric and Power BI

When DLP policies find this data, it can act and help prevent the data from showing up in Microsoft 365 Copilot results. It can also help prevent Copilot from summarizing items that have specific sensitivity labels applied.

To learn more, see:

- [Create and Deploy data loss prevention policies](/purview/dlp-create-deploy-policy)
- [Learn about the Microsoft 365 Copilot policy location](/purview/dlp-microsoft365-copilot-location-learn-about)

With DLP policies, you can use [trainable classifiers](/purview/trainable-classifiers-get-started-with), [sensitive information types](/purview/sit-sensitive-information-type-learn-about), [sensitivity labels](/purview/sensitivity-labels), and [retention labels](/purview/retention) to identify sensitive information across your organization.

This section introduces you to the DLP policy creation process. DLP policies are a powerful tool. Make sure you:

- Understand the data you're protecting and the goals you want to achieve.
- Take time to design a policy before you implement it. You want to avoid any unintended issues. We don't recommend you create a policy, and then only tune the policy by trial-and-error.
- Work through [Data loss prevention - Before you begin](/purview/dlp-learn-about-dlp#before-you-begin) before you start designing a policy. This step helps you understand the concepts and the tools you use to create and manage DLP policies.

#### 1. Open the Microsoft Purview portal

[!INCLUDE [copilot-e5-e3-open-purview-portal](./includes/copilot-e5-e3-open-purview-portal.md)]

#### 2. Create DLP policies

[!INCLUDE [copilot-e5-e3-create-dlp-policy](./includes/copilot-e5-e3-create-dlp-policy.md)]

#### 3. Create a DLP policy for Teams

By default, Purview includes some policies for Teams that you can enable. These policies are a quick way to get started with protecting information in Teams.

These policies can detect when sensitive info, like bank account numbers or passport numbers, are shared in Teams messages. Then, you can create policy tips to educate users or add actions that control sharing.

1. In **Data Loss Prevention**, select **Overview**.
2. Scroll down to see the following policies:

    - Start monitoring unprotected sensitive info in Teams
    - Automatically configure Teams DLP policies to protect files shared in team messages

    You can turn on these policies and also review the settings in the policy:

    :::image type="content" source="media/microsoft-365-copilot-e5-guide/purview-dlp-default-policy-teams.png" alt-text="In Microsoft Purview Data Loss Prevention (DLP), turn on the unprotected sensitive info in Teams policy.":::

For more information on using DLP policies to protect information in Teams, see:

- [Learn about the default data loss prevention policy for Microsoft Teams](/purview/dlp-teams-default-policy)
- [Data Loss Prevention and Microsoft Teams](/purview/dlp-microsoft-teams)

#### 4. Create an endpoint DLP policy for your Windows and macOS devices

Endpoint data loss prevention (Endpoint DLP) extends DLP monitoring and protection capabilities to sensitive items that are physically stored on Windows 10/11 and macOS (the three latest released major versions) devices.

DLP can monitor and take protective actions on user activities, like:

- Copy to USB removable device
- Copy to a network share
- Print
- Upload to a restricted cloud service domain or access from an unallowed browser

These activities are only some of the activities that DLP can monitor and protect. For a full list, see [Learn about Endpoint Data Loss Prevention](/purview/endpoint-dlp-learn-about).

For more information on the prerequisites and steps to create an endpoint DLP policy, see:

- [Get started with endpoint data loss prevention](/purview/endpoint-dlp-getting-started)
- [Onboard Windows devices into Microsoft 365 overview](/purview/device-onboarding-overview)
- [Onboard macOS devices into Microsoft 365 overview](/purview/device-onboarding-macos-overview). 

> [!NOTE]
> If you use a mobile device management (MDM) service to manage and help protect you devices, like [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), then keep using your MDM provider. The endpoint DLP policies focus on data loss prevention with your Microsoft 365 data. MDM focuses on device management. You use them simultaneously.

#### 5. Create Adaptive Protection

Adaptive Protection integrates information from **Insider Risk Management** with DLP. When [insider risk](/purview/insider-risk-management-adaptive-protection) identifies a user that's engaging in risky behavior, the user is dynamically assigned an [insider risk level](/purview/insider-risk-management-adaptive-protection#insider-risk-levels), like **Elevated**.

[Adaptive Protection can automatically create DLP policies](/purview/dlp-adaptive-protection-learn) that help protect the organization against the risky behavior associated with the insider risk level. As the insider risk level changes for users, the DLP policies applied to users can also adjust.

**Turn on Adaptive Protection**:

1. Sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as one of the admins listed at [Adaptive Protection - Permissions](/purview/insider-risk-management-adaptive-protection#permissions-for-adaptive-protection).
2. Select **Solutions** > **Insider Risk Management** > **Adaptive Protection**.
3. In **Dashboard**, select **Quick setup**.

    - [Adaptive Protection - Quick Setup](/purview/insider-risk-management-adaptive-protection) is the easiest and fastest way to get started with Adaptive Protection. It automatically creates and dynamically assigns the insider risk policies, DLP policies, and a Conditional Access policy.

      When the risk level is met, the policies automatically adjust to match the new risk level.

    - You can also create a [custom policy](/purview/insider-risk-management-adaptive-protection#custom-setup) instead of using the quick setup. If you create a custom policy, then you must also create the DLP and Conditional Access policies.

To learn more, see [Adaptive Protection policies](/purview/insider-risk-management-adaptive-protection).

#### 6. Test and monitor your policies

- For DLP policies, you can:

  - **Test your policies** using [simulation mode](/purview/dlp-test-dlp-policies). Simulation mode allows you to see the effect of an individual policy without enforcing the policy. Use it to find the items that match your policy.

  - **Monitor your policies** with alerts and built-in reports, including risky user activities outside of DLP policies.

    To learn more, see:

    - [Viewing policy application results](/purview/insider-risk-management-activities)
    - [Get started with the data loss prevention analytics](/purview/dlp-analytics-get-started)

- When you enable Adaptive Protection and your policies are configured, you can get:
  - Policy metrics
  - Users with an assigned risk level
  - Policies currently in-scope for the user

  To learn more, see:

  - [Help dynamically mitigate risks with Adaptive Protection](/purview/insider-risk-management-adaptive-protection)
  - [Investigate insider risk management activities](/purview/insider-risk-management-activities)

### Delete the content you don't need

✅ **Use [data lifecycle management](/purview/data-lifecycle-management) for automatic data retention or deletion**

[Data lifecycle management](/purview/data-lifecycle-management) uses retention policies and optionally, retention labels. They're typically used to retain content for compliance reasons and can also automatically delete stale information.

For example, your organization might have regulatory requirements that require you to keep content for a certain period of time. Or, you might have content that you want to delete because it's old, outdated, or no longer needed.

If you have stale data in your organization, create and use retention policies. These policies help Copilot return more accurate information from your documents and emails.

Retention policies can also retain Copilot prompts and responses for compliance requirements, even if [users delete their Copilot activity](https://support.microsoft.com/office/delete-your-microsoft-365-copilot-activity-history-76de8afa-5eaf-43b0-bda8-0076d6e0390f). To learn more, see [Learn about retention for Copilot & AI apps](/purview/retention-policies-copilot).

Settings in a retention policy apply at the container level, like a SharePoint site or an Exchange mailbox. Data in that container automatically inherits these settings.

If you need [exceptions for individual emails or documents](/purview/create-retention-labels-data-lifecycle-management), use retention labels. For example, you have a retention policy to delete data in OneDrive if the data is older than one year. But, users can apply retention labels to specific documents to keep these documents from automatic deletion.

1. To create retention policies, sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as a Compliance Administrator.

    To learn more about the permissions, see [Data Lifecycle Management - Permissions](/purview/get-started-with-data-lifecycle-management#permissions-for-retention-policies-and-retention-labels).

2. Select **Solutions** > **Data Lifecycle Management** > **Policies** > **Retention policies**.

3. Select **New retention policy** and follow the instructions. For more specific information, see [Create and configure retention policies](/purview/create-retention-policies).

4. If needed, create and apply retention labels.

   You can use either **Data Lifecycle Management** or **Microsoft Purview Records Management** to create the labels. Records management includes more configuration options, like a [disposition review process](/purview/disposition). A disposition review is helpful if you need manual confirmation before items are automatically deleted.
  
    # [Data Lifecycle Management](#tab/dlm)

    Use [Data Lifecycle Management](/purview/data-lifecycle-management) for retention policies that manage automatic retention and deletion for Microsoft 365 workloads & Microsoft 365 Copilot interactions, and retention labels for any exceptions.

    - From **Data Lifecycle Management**, select **Retention labels** > **Create a label**.

    Follow the configuration instructions and if you need more help, see [How to create retention labels for data lifecycle management](/purview/create-retention-labels-data-lifecycle-management#how-to-create-retention-labels-for-data-lifecycle-management).

     # [Records Management](#tab/rm)

    Use [Records Management](/purview/records-management) for retention labels that provide more configuration options for high-value documents and emails that typically have stricter compliance requirements. If you want to use a disposition review, then you must use Records Management.

    1. Sign in to the [Microsoft Purview portal](https://purview.microsoft.com/) as a member of the Records Management admin role group.

        To learn more about the permissions, see [Records management - Permissions](/purview/get-started-with-records-management#permissions)

    2. Select **Solutions** > **Records Management**.

    3. Select **File plan** > **Create a label** > **Retention label**.

        Follow the configuration instructions and if you need more help, see [Use file plan to create and manage retention labels](/purview/file-plan-manager).

    ---

    After you create the retention labels, you can then apply the labels to documents and emails:

    - [Publish retention labels and apply them in apps](/purview/create-apply-retention-labels)
    - [Automatically apply a retention label to retain or delete content](/purview/apply-retention-labels-automatically)

5. If you applied retention labels, monitor them to see how they're being used.

    1. Sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as one of the admins listed at:

        - [Content explorer - Permissions](/purview/data-classification-content-explorer)
        - [Activity explorer - Permissions](/purview/data-classification-activity-explorer#permissions)

    2. Use [Content explorer](/purview/data-classification-content-explorer) to get information on the items using retention labels.

        There are a few ways to open Content Explorer:

        - **Data Loss Prevention** > **Explorers**
        - **Records Management** > **Explorers**
        - **Information protection** > **Explorers**

    3. Use [activity explorer](/purview/data-classification-activity-explorer) to get a historical view of activities on your content that has retention labels. There are different filters you can use.

        There are a few ways to open activity explorer:

        - **Data Lifecycle Management** > **Explorers**
        - **Records Management** > **Explorers**
        - **Data Loss Prevention** > **Explorers**
        - **Information protection** > **Explorers**

To learn more, see:

- [Learn about retention policies and retention labels](/purview/retention)
- [Common settings for retention policies and retention label policies](/purview/retention-settings)

### Detect sensitive data and noncompliant content in Copilot interactions

✅ **Create [Communication Compliance policies](/purview/communication-compliance-copilot) to monitor interactions with Microsoft 365 Copilot**

[Communication Compliance](/purview/communication-compliance) can detect, capture, and act on potentially inappropriate messages in your organization. The inappropriate content includes sensitive or confidential information, harassing or threatening language, and sharing of adult content.

Communication Compliance comes with some predefined policies that help you get started. We recommend you use these predefined templates. You can also create your own custom policies.

These policies monitor and evaluate prompts and responses with Copilot.

1. Sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as one of the admins listed at [Communication Compliance - Permissions](/purview/communication-compliance-configure#step-1-required-enable-permissions-for-communication-compliance).

2. Select **Solutions** > **Communication Compliance** > **Overview**.

    If there are some required steps listed, then complete them. To learn more about these steps, see [Set up and create communication compliance policy](/purview/communication-compliance-configure).

3. For the predefined policies, select **Create policy** > **Detect Microsoft 365 Copilot interactions**:

    :::image type="content" source="media/microsoft-365-copilot-e5-guide/purview-communication-compliance-default-policy.png" alt-text="In Microsoft Purview Communication Compliance, create the detect Microsoft 365 Copilot interactions policy.":::

    This Copilot policy helps you get started. There are also other predefined templates you can use. At any time, you can also create your own custom policies.

    To learn more, see:

    - [Configure a communication compliance policy to detect for Copilot interactions](/purview/communication-compliance-copilot)
    - [Create and manage communication compliance policies](/purview/communication-compliance-policies)

4. Monitor your policies. Regularly review the policy reports and audit logs to see any policy matches & resolved items, including activity by users.

    To learn more, see [Use communication compliance reports and audits](/purview/communication-compliance-reports-audits).

To learn more, see:

- [Learn about communication compliance](/purview/communication-compliance)
- [Get started with communication compliance](/purview/communication-compliance-configure)
- [Create Communication Compliance policies](/purview/communication-compliance-policies)

### Review and analyze Copilot prompts and responses

✅ **Use [Data Security Posture Management (DSPM) for AI](/purview/ai-microsoft-purview) or [eDiscovery](/purview/edisc) to analyze Copilot user prompts and responses**

When users enter a prompt and get a response from Copilot, you can view and search these interactions. Specifically, these features help you:

- Find sensitive information or inappropriate content included in Copilot activities.
- Respond to a data spillage incident when confidential or malicious information is released through Copilot-related activity.
- With eDiscovery, you can remove sensitive information or inappropriate content included in Copilot activities.

There are two ways to review and analyze Copilot prompts and responses - **Data Security Posture Management for AI** and **eDiscovery**.

# [DSPM for AI](#tab/aihub)

[Data Security Posture Management (DSPM) for AI](/purview/ai-microsoft-purview#microsoft-purview-ai-hub-provides-insights-policies-and-controls-for-ai-apps) (previously called AI Hub) is a central location in the Microsoft Purview portal that proactively monitors AI use. It includes eDiscovery and you can use it to analyze and review Copilot prompts and responses.

1. Sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as an admin in one of the groups listed at [Data Security Posture Management for AI - Permissions](/purview/ai-microsoft-purview-permissions).
2. Select **Solutions** > **DSPM for AI** > **Activity explorer**.
3. Select an existing activity in the list. For example, if there's a **Sensitive info types** activity, select it.
4. Select **View related AI interaction activity**. In **Interaction details**, you can see the app, and the prompt & response. You can also export an activity.

To learn more, see:

- [Microsoft Purview Data Security Posture Management for AI](/purview/ai-microsoft-purview-considerations)
- [Data Security Posture Management for AI - Activity explorer events](/purview/ai-microsoft-purview-considerations#activity-explorer-events)

# [eDiscovery](#tab/edisc)

[eDiscovery](/purview/edisc) uses cases to identify, hold, export, and analyze content found in mailboxes and sites. You can this feature to analyze Copilot prompts and responses, and delete Copilot data.

1. Sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as an admin in one of the groups [eDiscovery - Permissions](/purview/ediscovery-assign-permissions).
2. Select **Solutions** > **eDiscovery** > **Cases**.
3. Create a **case** and a **search** query. A search query searches in-place content, like email, documents, and instant messaging conversations.

    When you create a search query, you enter the [Data sources that have Copilot data](/purview/edisc-search-copilot-data#data-sources-for-copilot-data).

4. The data returned is the Copilot prompts and responses. You can review and export this information. If the data contains sensitive information, you can also delete it.

To learn more, see [Search for and optionally delete Copilot interactions in eDiscovery](/purview/edisc-search-copilot-data).

---

## Technical and deployment resources available to you

[!INCLUDE [copilot-e5-e3-deployment-resources](./includes/copilot-e5-e3-deployment-resources.md)]

## Related content

- [Microsoft 365 Copilot requirements and prerequisites](/copilot/microsoft-365/microsoft-365-copilot-requirements)
- [Provision Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-setup)
- [Microsoft 365 Copilot adoption resources](https://adoption.microsoft.com/copilot)
- [Watch: Oversharing Control at Enterprise Scale](https://www.youtube.com/watch?v=F1ARVMTBAak)
