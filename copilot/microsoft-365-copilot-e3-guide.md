---
title: Get your data ready for Microsoft 365 Copilot with E3 + SAM licenses
description: Get started with M365 Copilot. The E3 deployment for Microsoft 365 Copilot uses a E3 license, SharePoint Advanced Management, and Microsoft Purview. These services help your organization get ready for Copilot. This IT admin guide helps you prevent oversharing, declutter data sources, and monitor site changes. Get your organization and data ready for Copilot by following the steps in this article.
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

# Microsoft 365 Copilot admin guide for E3 + SAM licenses

When you're preparing your organization for [Microsoft 365 Copilot](microsoft-365-copilot-overview.md) or you're ready to start using Copilot, there are features in your E3 + SAM licenses that can help get your data ready.

When users enter a prompt, Copilot can respond with data that the user has permission to access. Overshared and outdated data can lead to inaccurate results from Copilot.

This article provides guidance for IT admins with **Microsoft 365 E3** and **SharePoint Advanced Management (SAM)** licenses. With the features included in these licenses, you:

- Use SharePoint Advanced Management (SAM) to help prevent oversharing, declutter data sources, restrict SharePoint searches, and monitor SharePoint site changes.
- Use Microsoft Purview to create sensitivity labels, identify and protect sensitive data, and delete the content you don't need.

Use this article to get started with Microsoft 365 Copilot in your organization. When you use the features described in this article, your organization is better prepared for Copilot, including getting more accurate results from Copilot.

This article applies to:

- Microsoft 365 Copilot
- Microsoft SharePoint Premium - SharePoint Advanced Management (SAM)
- Microsoft Purview

> [!NOTE]
> If you have an E5 license, then see [Microsoft 365 Copilot admin guide for E5 licenses](microsoft-365-copilot-e5-guide.md). For a comparison of the features in the licenses, see [Compare Microsoft 365 Copilot license feature overview](microsoft-365-copilot-license-feature-overview.md).

## Before you begin

- Microsoft recommends you also follow the steps in [Microsoft 365 Copilot - best practices with SharePoint](/sharepoint/sharepoint-copilot-best-practices). It helps you optimize your search in SharePoint, update sharing settings in SharePoint & OneDrive, and check permissions & site access on your SharePoint sites.

- The following licenses are required to use the features in this article:

  - **[Microsoft 365 E3](https://www.microsoft.com/microsoft-365/enterprise/e3)** or **[Office 365 E3](https://www.microsoft.com/microsoft-365/enterprise/office-365-e3)**

    - **[Microsoft Purview](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-purview-service-description)** - Included with your E3 license

    For a list of the features and services you get with your license, see [Microsoft 365, Office 365, Enterprise Mobility + Security, and Windows 11 Subscriptions](https://aka.ms/M365EnterprisePlans).

  - **[Microsoft SharePoint Premium - SharePoint Advanced Management](/sharepoint/advanced-management#licensing)**

    Beginning in early 2025, Microsoft SharePoint Premium - SharePoint Advanced Management (SAM) will be included with your Microsoft 365 Copilot license. To learn more about SAM licensing, see [Microsoft SharePoint Premium - SharePoint Advanced Management](/sharepoint/advanced-management#licensing) license.

  - **[Microsoft 365 Copilot](microsoft-365-copilot-licensing.md)**

    Depending on your subscription plan, you might be able purchase Microsoft 365 Copilot licenses through the [Microsoft 365 admin center](https://admin.microsoft.com) (**Billing** > **Purchase services**), Microsoft partners, or your Microsoft account team.

    Microsoft 365 Copilot licenses are also available as an add-on to other licensing plans. To learn more, see [Understand licensing for Microsoft 365 Copilot](microsoft-365-copilot-licensing.md).

- This article uses the following admin centers. These admin centers require a specific role to complete the tasks in the article.

  - **[SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219)**: Sign in as the [SharePoint administrator](/sharepoint/sharepoint-admin-role).
  - **[Microsoft Purview portal](https://purview.microsoft.com)**: There are different roles, depending on the task you need to complete. To learn more, see:

    - [Permissions required to create and manage sensitivity labels](/purview/get-started-with-sensitivity-labels#permissions-required-to-create-and-manage-sensitivity-labels)
    - [Roles and role groups in Microsoft Defender for Office 365 and Microsoft Purview](/defender-office-365/scc-permissions)

## SharePoint admin task - Use SharePoint Advanced Management (SAM) features

[!INCLUDE [copilot-e5-e3-sharepoint-advanced-management](./includes/copilot-e5-e3-sharepoint-advanced-management.md)]

## SharePoint admin task - Restrict SharePoint Search (RSS)

✅ **Copilot goal: Expand the RSS allowed list**

As you get ready for Copilot, you review and configure the correct permissions on your SharePoint sites. The next step is to enable Restricted SharePoint Search (RSS).

RSS is a temporary solution that gives you time to review and configure the correct permissions on your SharePoint sites. You add the reviewed & corrected sites to an allowed list.

- If you enabled RSS, then add more sites to the allowed list. You can add up to 100 sites to the allowed list. Copilot can show data from the allowed list sites in user prompts.

To learn more, see:

- [Restricted SharePoint Search](/sharepoint/restricted-sharepoint-search)
- [Curate the allowed list for Restricted SharePoint Search](/sharepoint/restricted-sharepoint-search-allowed-list)
- [Blog - Introducing Restricted SharePoint Search to help you get started with Microsoft 365 Copilot](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/introducing-restricted-sharepoint-search-to-help-you-get-started/ba-p/4071060)

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

          :::image type="content" source="media/microsoft-365-copilot-e3-guide/sharepoint-active-sites-filter.png" alt-text="In SharePoint admin center, select active sites and then use the All sites filter.":::

2. Use the `Add-SPOTenantRestrictedSearchAllowedList` PowerShell cmdlet to add the sites to the allowed list.

    To learn more about this cmdlet, see [Use PowerShell Scripts for Restricted SharePoint Search](/sharepoint/restricted-sharepoint-search-admin-scripts).

## Purview admin tasks - Use Microsoft Purview features

There are features in Microsoft Purview that can help you get ready for Copilot.

✅ **Copilot goals with Purview**:

- Identify and label sensitive data in your Microsoft 365 and Office files.
- Detect and protect sensitive information from unauthorized sharing or leakage.
- Delete the content you don't need.
- Review and analyze Copilot prompts and responses.

To learn more about Microsoft Purview, see [Microsoft 365 Copilot in Microsoft Purview Overview](/purview/copilot-in-purview-overview).

### Identify and label sensitive data

[!INCLUDE [copilot-e5-e3-create-apply-sensitivity-labels](./includes/copilot-e5-e3-create-apply-sensitivity-labels.md)]

This section guides you through the steps to create and use sensitivity labels in Microsoft Purview. You create your own label names and configurations. To learn more about sensitivity labels, see:

- [Get started with sensitivity labels](/purview/get-started-with-sensitivity-labels)
- [Use Microsoft Purview to strengthen information protection for Copilot](/purview/ai-microsoft-purview#microsoft-purview-strengthens-information-protection-for-copilot)

#### 1. Create sensitivity labels

1. Sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as an admin in one of the groups listed at [Sensitivity labels - permissions](/purview/get-started-with-sensitivity-labels#permissions-required-to-create-and-manage-sensitivity-labels).
2. Select **Solutions** > **Information protection** > **Sensitivity labels** > **Create a label**.
3. In the scope, select **Files and other data assets**. This scope allows your labels to be applied to documents and emails.
4. Continue creating the sensitivity labels you need.

To learn more, see:

- [Create and configure sensitivity labels and their policies](/purview/create-sensitivity-labels)

#### 2. Publish your labels and educate your users

1. Add your labels to a publishing policy. When they're published, users can manually apply the labels in their Office apps. The publishing policies also have settings that you need to consider, like a default label and requiring users to label their data.

    To learn more, see [Publish sensitivity labels by creating a label policy](/purview/create-sensitivity-labels#publish-sensitivity-labels-by-creating-a-label-policy).

2. Educate your users and provide guidance on when to apply the correct sensitivity label.

    Users should change a label if needed, especially for more sensitive content.

    To help you with this step, see [End-user documentation for sensitivity labels](/purview/get-started-with-sensitivity-labels#end-user-documentation-for-sensitivity-labels).

3. Monitor your labels. Select **Information protection** > **Reports**. You can see the usage of your labels.

#### 3. Enable sensitivity labels for files in SharePoint and OneDrive

[!INCLUDE [copilot-e5-e3-enable-sensitivity-labels-sharepoint-onedrive](./includes/copilot-e5-e3-enable-sensitivity-labels-sharepoint-onedrive.md)]

#### 4. Apply a sensitivity label to your SharePoint document libraries

You can use a sensitivity label on your SharePoint document libraries, and make this label the default label that applies to all document libraries. This configuration is appropriate when your document libraries store files with the same level of sensitivity.

The SharePoint site admin can do this task.

1. In your SharePoint site, select **Documents** > **Settings** icon > **Library settings** > **More library settings**.
2. In **Default sensitivity labels** (Apply label to items in this list or library), select your custom sensitivity label from the drop-down list.
3. **Save** your changes.

When set:

- SharePoint automatically applies the label to the files, which can include [files with a lower sensitivity label](/purview/sensitivity-labels-sharepoint-default-label#will-an-existing-label-be-overridden).
- It provides a baseline level of protection that's specific to the document library. It doesn't require content inspection and doesn't rely on end users.

To learn more, see:

- [Overview - Default sensitivity labels for SharePoint document libraries](/purview/sensitivity-labels-sharepoint-default-label)
- [Steps - Add a sensitivity label to SharePoint document library](https://support.microsoft.com/office/add-a-sensitivity-label-to-sharepoint-document-library-54b1602b-db0a-4bcb-b9ac-5e20cbc28089)

### Detect sensitive information and protect it from unauthorized sharing or leakage

✅ **Use [data loss prevention (DLP) policies](/purview/dlp-learn-about-dlp) to help protect against unintentional sharing**

[Microsoft Purview Data Loss Prevention (DLP)](/purview/dlp-learn-about-dlp) helps organizations protect sensitive information by helping guard against unauthorized sharing or leakage. The intent is to dynamically protect sensitive information, like financial data, social security numbers, and health records, from being overshared.

You can create DLP policies to protect sensitive information with your Microsoft 365 services, like Exchange, SharePoint, and OneDrive accounts.

This section introduces you to the DLP policy creation process. DLP policies are a powerful tool. Make sure you:

- Understand the data you're protecting and the goals you want to achieve.
- Take time to design a policy before you implement it. You want to avoid any unintended issues. We don't recommend you create a policy, and then only tune the policy by trial-and-error.
- Work through [Data loss prevention - Before you begin](/purview/dlp-learn-about-dlp#before-you-begin) before you start designing a policy. This step helps you understand the concepts and the tools you use to create and manage DLP policies.

#### 1. Open the Microsoft Purview portal

[!INCLUDE [copilot-e5-e3-open-purview-portal](./includes/copilot-e5-e3-open-purview-portal.md)]

#### 2. Create DLP policies

[!INCLUDE [copilot-e5-e3-create-dlp-policy](./includes/copilot-e5-e3-create-dlp-policy.md)]

#### 3. Test and monitor your policies

For DLP policies, you can:

- **Test your policies** using [simulation mode](/purview/dlp-test-dlp-policies). Simulation mode allows you to see the effect of an individual policy without enforcing the policy. Use it to find the items that match your policy.

- **Monitor your policies** with alerts and built-in reports, including risky user activities outside of DLP policies.

To learn more, see:

- [Viewing policy application results](/purview/insider-risk-management-activities)
- [Get started with the data loss prevention analytics](/purview/dlp-analytics-get-started)

### Delete the content you don't need

✅ **Use [data lifecycle management](/purview/data-lifecycle-management) for automatic data retention or deletion**

[Data lifecycle management](/purview/data-lifecycle-management) uses retention policies and optionally, retention labels. They're typically used to retain content for compliance reasons and can also automatically delete stale information.

For example, your organization might have regulatory requirements that require you to keep content for a certain period of time. Or, you might have content that you want to delete because it's old, outdated, or no longer needed.

If you have stale data in your organization, then create and use retention policies. These policies help Copilot return more accurate information from your documents and emails.

Settings in a retention policy apply at the container level, like a SharePoint site or an Exchange mailbox. Data in that container automatically inherits these settings.

If you need [exceptions for individual emails or documents](/purview/create-retention-labels-data-lifecycle-management), then use retention labels. For example, you have a retention policy to delete data in OneDrive if the data is older than one year. But, users can apply retention labels to specific documents to keep these documents from automatic deletion.

1. To create retention policies, sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as a Compliance Administrator.

    To learn more about the permissions, see [Data Lifecycle Management - Permissions](/purview/get-started-with-data-lifecycle-management#permissions-for-retention-policies-and-retention-labels).

2. Select **Solutions** > **Data Lifecycle Management** > **Policies** > **Retention policies**.

3. Select **New retention policy** and follow the instructions.

    Retention policies manage automatic retention and deletion for Microsoft 365 workloads & Microsoft 365 Copilot interactions. To learn more, including the steps to create the policy, see [Create and configure retention policies](/purview/create-retention-policies).

4. Optional. Use retention labels when you need an exception to a retention policy. If you don't need an exception to a retention policy, then you don't need to create a retention label.

    - In **Data Lifecycle Management**, select **Retention labels** > **Create a label**.

    Follow the configuration instructions. To learn more, including the steps to create the policy, see [How to create retention labels for data lifecycle management](/purview/create-retention-labels-data-lifecycle-management#how-to-create-retention-labels-for-data-lifecycle-management).

    After you create the retention labels, publish the labels and apply the labels to documents and emails. To learn more, see [Publish retention labels and apply them in apps](/purview/create-apply-retention-labels).

5. If you applied retention labels, monitor them to see how they're being used.

    1. Sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as one of the admins listed at [Content explorer - Permissions](/purview/data-classification-content-explorer).

    2. Use [content explorer](/purview/data-classification-content-explorer) to get information on the items using retention labels.

        There are a few ways to open content explorer:

        - **Data Lifecycle Management** > **Explorers**
        - **Data Loss Prevention** > **Explorers**
        - **Information protection** > **Explorers**

To learn more, see:

- [Learn about retention policies and retention labels](/purview/retention)
- [Common settings for retention policies and retention label policies](/purview/retention-settings)

### Review and analyze Copilot prompts and responses

✅ **Use [eDiscovery](/purview/edisc) to analyze Copilot user prompts and responses**

When users enter a prompt and get a response from Copilot, you can view and search these interactions. Specifically, these features help you:

- Find sensitive information or inappropriate content included in Copilot activities.
- Respond to a data spillage incident when confidential or malicious information is released through Copilot-related activity.

[eDiscovery](/purview/edisc) uses cases to identify, hold, export, and analyze content found in mailboxes and sites. You can this feature to analyze Copilot prompts and responses.

1. Sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as an admin in one of the groups [eDiscovery - Permissions](/purview/ediscovery-assign-permissions).
2. Select **Solutions** > **eDiscovery** > **Cases**.
3. Create a **case** and a **search** query. A search query searches in-place content, like email, documents, and instant messaging conversations.

    When you create a search query, you enter the [Data sources that have Copilot data](/purview/edisc-search-copilot-data#data-sources-for-copilot-data).

4. The data returned is the Copilot prompts and responses. You can review and export this information. If the data contains sensitive information, you can also delete it.

To learn more, see [Search for Copilot interactions in eDiscovery](/purview/edisc-search-copilot-data).

## Technical and deployment resources available to you

[!INCLUDE [copilot-e5-e3-deployment-resources](./includes/copilot-e5-e3-deployment-resources.md)]

## Related content

- [Microsoft 365 Copilot requirements and prerequisites](/copilot/microsoft-365/microsoft-365-copilot-requirements)
- [Provision Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-setup)
- [Microsoft 365 Copilot adoption resources](https://adoption.microsoft.com/copilot)
- [Watch: Oversharing Control at Enterprise Scale](https://www.youtube.com/watch?v=F1ARVMTBAak)
