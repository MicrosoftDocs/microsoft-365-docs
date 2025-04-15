---
author: MandiOhlinger
ms.author: mandia
manager: laurawi
ms.reviewer: ruihu
ms.service: microsoft-365-copilot
ms.topic: include
description: Create and apply Microsoft Purview sensitivity labels for Microsoft 365 Copilot.
ms.date: 11/19/2024
---

There are features in [SharePoint Advanced Management (SAM)](/sharepoint/get-ready-copilot-sharepoint-advanced-management) that can help you get ready for Copilot.

✅ **Copilot goals with SAM**:

- Declutter data sources by finding and removing inactive SharePoint sites.
- Identify SharePoint sites with overshared or sensitive content.
- Use policy to restrict access to SharePoint sites that are business critical or have sensitive content.
- Monitor site changes.

This section walks you through different SAM features that can help you get your organization and your data ready for Copilot.

To learn more about SAM + Copilot, see [Get ready for Copilot with SharePoint Advanced Management](/sharepoint/get-ready-copilot-sharepoint-advanced-management).

### Ensure all sites have valid owners

✅ **Run a [Site Ownership policy](/sharepoint/create-sharepoint-site-ownership-policy) that finds any sites that don't have at least two owners**

A Site ownership policy automatically detects sites that don't have at least two owners and can help find potential owners. Set up the policy in simulation mode to identify owners based on your desired criteria. Then, upgrade the policy to Active mode to enable notifications to site owner candidates.

You need site owners to help confirm the site is still active, perform [Site access review](/sharepoint/site-access-review#review-everyone-except-external-users-site-access-review-requests-for-site-owners), update content permissions, and control access when needed.

1. Sign in to the [SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219) as a SharePoint administrator.
2. Expand **Policies** > select **Site lifecycle management**.
3. Select **Create a policy**, enter your parameters, and finish your policy.
4. When the policy runs, the report shows the number of sites that are noncompliant. You can also download the report.

To learn more about this policy and report, see [Site ownership policy](/sharepoint/create-sharepoint-site-ownership-policy).

### Find and cleanup inactive sites

✅ **Create a [site lifecycle management policy](/sharepoint/site-lifecycle-management#create-an-inactive-site-policy) that finds inactive sites**

A [site lifecycle management policy](/sharepoint/site-lifecycle-management#create-an-inactive-site-policy) automatically detects inactive sites and sends a notification email to the site owners. When you use the email, the site owners can confirm that the site is still active.

Copilot can show data from these inactive sites in user prompts, which can lead to inaccurate and cluttered Copilot results.

The policy also creates a report that you can download and review. The report shows the inactive sites, the last activity date, and the email notification status.

1. Sign in to the [SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219) as a SharePoint administrator.
2. Expand **Policies** > select **Site lifecycle management**.
3. Select **Create a policy**, enter your parameters, and finish your policy.
4. When the policy runs and finds inactive sites, the policy automatically emails the site owners. The site owners should confirm if the site is still active.
5. If the site owners confirm the sites aren't needed, then put inactive sites in [read-only mode with SAM](/sharepoint/site-lifecycle-management#read-only-mode), or move the sites to [Microsoft 365 Archive with SAM](/microsoft-365/archive/archive-setup).

To learn more about this policy and report, see [site lifecycle management policy](/sharepoint/site-lifecycle-management#create-an-inactive-site-policy).

#### Best practices for managing inactive SharePoint sites

- [**Use the policy execution report**](/sharepoint/site-lifecycle-management) to keep track on site owner action status in response to the notifications.
- Select the Get AI insights button to [**get AI insights**](/sharepoint/advanced-management#ai-insights) generated for the report to help you identify issues with the sites and possible actions to address these issues.
- **Give the site owners a timeline** to complete these tasks. If they don't complete the task within the timeframe, you can move the sites to [Microsoft 365 Archive](/microsoft-365/archive/archive-overview) using [SAM Inactive Sites - Archive capability](/sharepoint/site-lifecycle-management#create-an-inactive-site-policy) so that you can reactive them later if needed.

This action helps reduce outdated content that clutters Copilot's data source, which improves the accuracy of Copilot responses.

> [!TIP]
> Sites moved to Microsoft 365 Archive are no longer accessible by anyone in the organization outside of Microsoft Purview or admin search. Copilot won't include content from these sites when responding to user prompts.

### Identify sites with overshared or sensitive content

✅ **Run [Data access governance (DAG) reports](/SharePoint/data-access-governance-reports) in the SharePoint admin center**

The [DAG reports](/SharePoint/data-access-governance-reports) give more detailed information about site sharing links, sensitivity labels, and the **`Everyone except external users`** (EEEU) permissions on your SharePoint sites. Use these reports to find overshared sites.

Overshared sites are sites that are shared with more people than needed. Copilot can show data from these sites in responses.

1. Sign in to the [SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219) as a SharePoint administrator.
2. Select **Reports** > **Data access governance**. Your report options:

    | Report | Description | Task |
    | --- | --- | --- |
    | **Sharing links** | Shows the sites that have sharing links, including links shared with **Anyone**, shared with **People in your organization**, and shared with **Specific people** outside of your work or school. | Review these sites. <br/><br/>Make sure the sites are shared with only the users or groups that need access. Remove sharing for unneeded users and groups. |
    | **Sensitivity labels applied to files** | Shows sites with Office files that have sensitivity labels. | Review these sites.<br/><br/> Make sure the correct labels are applied. Update the labels as needed. To learn more, see [Identify and label sensitive data](#identify-and-label-sensitive-data) (in this article). |
    | **Shared with `Everyone except external users` (EEEU)** | Shows the sites that are shared with everyone in your organization except external users. | Review these sites. <br/><br/> Determine if EEEU permissions are appropriate. Many sites with EEEU are overshared. Remove the EEEU permission and assign to the users or groups as needed. |
    |**Oversharing Baseline Report for Sites, OneDrives and Files**|Scans all sites in your tenant, and lists sites that share content with more than a specified number of users (you specify the number).|Sort, filter or download the report, and identify the sites with potentially overshared content.|

You can run any of these reports individually or run all of them together. To learn more about these reports, see [Data access governance (DAG) reports](/sharepoint/data-access-governance-reports).

#### Best practices for managing the DAG reports

- **Run these reports weekly**, especially in the beginning stages of adopting Copilot. As you become more familiar with the reports and the data, you can adjust the frequency.

  If you have an admin team, create an admin task to run these reports and review the data.

  Your organization is paying for the license to run these reports and use the data to make decisions. Make sure you're getting the most out of it.

- [**Select Get AI insights**](/sharepoint/advanced-management#ai-insights) to generate a report that helps you identify issues with the sites and possible actions to address these issues.

### Control access to overshared SharePoint sites

✅ **Initiate [Site access reviews](/sharepoint/site-access-review) for site owners**

In a Data access governance (DAG) report, you can select sites with oversharing risks. Then, initiate site access reviews. Site Owners receive notification for each site that requires attention. They can use the Site reviews page to track and manage multiple review requests.

The site owner reviews access in two main areas: SharePoint groups and individual items. They can determine if broad sharing is appropriate, or if a site is overshared and requires remediation.

If the site owner determines that the content is overshared, they can use the Access Review dashboard to update permissions.

✅ **Use [restricted access control policy (RAC)](/sharepoint/restricted-access-control) in the SharePoint admin center**

A [restricted access control policy](/sharepoint/restricted-access-control) restricts access to a site with overshared content. It can restrict access to SharePoint sites and content to users in a specific group. Users not in the group can't access the site or its content, even if they previously had permissions or a shared link.

When users in the group have permissions to the content, then that content can show in Copilot results. Users not in the group don't see this info in their Copilot results. You can set up restricted access control for individual sites or OneDrive.

✅ **Use [restricted content discoverability policy (RCD)](/sharepoint/restricted-content-discovery) in the SharePoint admin center**

A [restricted content discoverability policy (RCD)](/sharepoint/restricted-content-discovery) doesn't change the site access. Instead, it changes the site's content discoverability. When you apply RCD to a site, the site's content isn't discoverable by Copilot or organization-wide search results for all users.

The SharePoint Admin can set restricted content discoverability on individual sites.

#### Best practices for control access to overshared SharePoint sites

- If your organization has a [Zero Trust](/security/zero-trust/copilots/zero-trust-microsoft-365-copilot) mindset, then you can apply restricted access control (RAC) to all sites. Then, adjust the permissions as needed. If you have many sites, this action can help you quickly secure your sites. But, it can cause disruptions to users.

- If you use RAC or RCD, make sure you communicate the changes and the reasons for the changes.

> [!TIP]
> For business-critical sites, you can also:
>
> - When you create new sites, configure a RAC or RCD policy as part of your custom site provisioning process. This step proactively avoids oversharing.
> - Consider blocking downloads from selected sites using a block download policy. For example, [block the download of Teams meeting recordings and transcripts](/microsoftteams/block-download-meeting-recording).
> - Apply encryption with "extract rights" enforced on business-critical office documents. To learn more, see [Microsoft Purview data security and compliance protections for generative AI apps](/purview/ai-microsoft-purview).

### Monitor changes

✅ **Run the [change history report](/sharepoint/change-history-report) in the SharePoint admin center**

The [change history report](/sharepoint/change-history-report) tracks and monitor changes, including what changed, when the change happened, and who initiated the change. The intent is to identify recent changes that could lead to oversharing, which impacts Copilot results.

Use this report to review the changes made to your SharePoint sites and organization settings.

1. Sign in to the [SharePoint admin center](https://go.microsoft.com/fwlink/?linkid=2185219) as a SharePoint administrator.
2. Expand **Reports** > select **Change history** > **New report**.
3. Your report options:

    | Report | Description | Task |
    | --- | --- | --- |
    | **Site settings report** | Shows the site property changes and actions ran by Site Administrators and SharePoint Administrators. | Review the changes and actions. Make sure the actions meet your security requirements. |
    | **Organization settings report** | Shows changes made to organization settings, like when a site is created and if external sharing is enabled. | Review the changes and actions. Make sure the changes meet your security requirements. |

#### Best practices for managing the change history reports

- **Run these reports weekly**, especially in the beginning stages of adopting Copilot. As you become more familiar with the reports and the data, you can adjust the frequency.

  If you have an admin team, create an admin task to run these reports and review the data.

  Your organization is paying for the license to run these reports and use the data to make decisions. Make sure you're getting the most out of it.

- Create a report for the **site level changes and the organization level changes**. The site level reports show changes made to the site properties and actions. The organization level reports show changes made to the organization settings.

- **Review the sharing settings and access control settings**. Make sure the changes align with your security requirements. If they don't align, then work with the site owners to correct the settings.

- **Apply [restricted access control (RAC)](/SharePoint/restricted-access-control)** to sites that appear to be overshared. Inform the site owners of the changes and why.

  If your organization has a [Zero Trust](/security/zero-trust/copilots/zero-trust-microsoft-365-copilot) mindset, then you can apply RAC to all sites. Then, adjust the permissions as needed. If you have many sites, this action can help you quickly secure your sites. But, it can also cause disruptions to users. Make sure you communicate the changes and the reasons for the changes.
