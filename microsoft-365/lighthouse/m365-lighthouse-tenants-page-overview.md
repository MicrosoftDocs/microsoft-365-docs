---
title: "Overview of the Tenants page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: ebamoh
ms.date: 07/30/2024
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-manage
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about the Tenants page."
---

# Overview of the Tenants page in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse lets you manage customer tenant accounts by selecting **Tenants** in the left navigation pane to open the **Tenants** page. The **Tenants** page contains a list of all your customer tenants. You can select a tenant to view detailed information including contact details and deployment status.

The **Tenants** page also includes the following options:

- **Export:** Select to export tenant data to an Excel comma-separated values (.csv) file.
- **Manage Tags:** Select to add, edit, or delete a tag.
- **Assign Tags:** Select to assign a tag to a tenant.
- **Assign baseline:** Select to assign a baseline to a tenant.
- **Search:** Enter keywords to quickly locate a specific tenant in the list.

:::image type="content" source="../media/m365-lighthouse-tenants-page-overview/tenant-page-overview.png" alt-text="Screenshot of the Tenants page." lightbox="../media/m365-lighthouse-tenants-page-overview/tenant-page-overview.png":::

## Tenant list

The tenant list provides insights into the different customer tenants that you have a contract with, including their Lighthouse management status. The tenant list also lets you tag tenants to provide different filters throughout Lighthouse, manage services for tenants in the applicable admin center, and drill down to learn more about a given tenant and the status of its deployment plan.

After your customer tenants meet the [Lighthouse onboarding requirements](m365-lighthouse-requirements.md), their Lighthouse management status will show as **Managed** in the tenant list.

The tenant list lets you:

- Access applicable admin centers to manage services for your customer tenants.
- Automatically sort tenants by Managed, Limited, Removed by partner, or Removed by customer.
- Export the tenant list.
- Assign and manage tags.
- Assign a baseline.
- Search for tenants by name.
- Filter tenants by Lighthouse management status, Delegated access, or Tags.

To remove a tenant, manage tenant services, or view and manage tags, select the three dots (more actions) next to the tenant name. You can view individual tenants by either selecting the tenant name or by selecting one of the tags assigned to the tenant.

> [!TIP]
> You can also use the Tenants filter at the top of any page in Lighthouse to select a tenant and then access applicable admin centers to manage services for that tenant.

For information on how to add customer tenants, see [Add and manage multiple tenants in your Partner Center account](/partner-center/multi-tenant-account).

## Statuses

The following table describes the different statuses that you might see in one or more columns for each customer tenant. For information on how to troubleshoot statuses, see [Troubleshoot error messages and problems in Microsoft 365 Lighthouse: Customer tenant onboarding](m365-lighthouse-troubleshoot.md#customer-tenant-onboarding).

| Status           | Description                                                                                                        |
|------------------|--------------------------------------------------------------------------------------------------------------------|
| Access needed    | You don't have the appropriate granular delegated administrative privileges (GDAP) to view the information. Reach out to an admin in your partner tenant who can assign you the appropriate GDAP role to view data on the Tenants page.<br><br>To see which GDAP roles provide access to Microsoft Secure Score, see [Microsoft Secure Score: Microsoft Entra global roles permissions](/defender-xdr/microsoft-secure-score#microsoft-entra-global-roles-permissions).<br><br>To see which GDAP roles provide access to apps and services usage, see [Microsoft 365 Reports in the admin center: Who can see reports](../admin/activity-reports/activity-reports.md#who-can-see-reports). |
| Error       | An error occurred during the onboarding process for this customer tenant and we're working on a fix. If this error persists for more than 24 hours, contact Support. |
| Limited          | This customer tenant has access to only a limited set of experiences in Lighthouse, including GDAP setup and management, user search, user details, tenant tagging, and service health.<br><br>Select the tenant name to see a detailed status of Lighthouse management requirements. For more information, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).|
| Managed          | This customer tenant can be actively managed and monitored in Lighthouse for users and devices with required licenses.  |
| Not available | No data is available to show. |
| Removed by customer | The customer chose to disallow the use of Microsoft 365 Lighthouse to manage their tenant. To allow the use of Microsoft 365 Lighthouse to manage their tenant, an admin in the customer tenant needs to go to **Org settings** in the Microsoft 365 admin center, select **Microsoft 365 Lighthouse** on the **Services** tab, and then select the option to allow the use of Microsoft 365 Lighthouse customer management experiences in their tenant. |
| Removed by partner  | Your organization excluded this customer tenant from Lighthouse management. To reactivate the tenant for management by Lighthouse, go to the **Tenants** page, select the three dots (more actions) next to the tenant, and then select **Manage tenant**. |

> [!NOTE]
> Once you remove a customer tenant, you can't take action on the tenant until the removal process completes. It may take up to 48 hours for this process to complete. If you decide to manage the customer tenant again, it may take up to 48 hours for data to reappear.

## Tenant tags

To help organize your customer tenants and easily filter the existing views, you can create and assign tags to your tenants. To learn more, see [Manage your tenant list in Microsoft 365 Lighthouse](m365-lighthouse-manage-tenant-list.md).

> [!NOTE]
> You can create up to 30 tags across all tenant.

## Tenant details page

To view detailed customer tenant information, select a tenant from the list of tenants. The tenant details page contains contact information and deployment plan status.

:::image type="content" source="../media/m365-lighthouse-tenants-page-overview/tenant-details-page.png" alt-text="Screenshot of the Tenant details page." lightbox="../media/m365-lighthouse-tenants-page-overview/tenant-details-page.png":::

### Metadata area

The metadata area at the top of the page provides basic information about the customer tenant from its Microsoft 365 account. 

| Tenant information | Description |
|--|--|
| Tenant ID | The organization's tenant ID. |
| Total enabled users | The number of users assigned in the customer tenant. |
| Total devices | The number of devices enrolled in the customer tenant and managed through Microsoft Intune. Select **View devices** to open the **Devices** page to see a list of devices and device compliance insights for the tenant. |
| Lighthouse management | The management status of the customer tenant in Lighthouse: **Managed**, **Limited**, **Removed by partner**, or **Removed by customer**. Select **View details** to open the Lighthouse management details pane for the tenant. |
| Your permissions | The number of roles assigned to you in the customer tenant. Roles determine which tasks you can complete for customers and what data you can view. Select **View roles** to open the **Roles** page to see which roles are assigned to you in the tenant. |
| Tags | The tags assigned to the customer tenant in Lighthouse. |

### Overview tab

On the **Overview** tab, you can view a summary of key insights, customer information, Secure Score, Exposure Score, and adoption insights.

#### Summary

The **Summary** section provides a high-level summary of key insights for the customer tenant around baseline compliance, security and adoption posture, critical alerts, and information about the customer tenant's subscriptions and mailbox storage status.

#### Customer information

The **Customer information** section provides a place to record basic customer information, such as service plans the customer is on and notes about the customer to ensure everyone in your organization is on the same page about the latest engagement with the customer.  

If your organization limits how often and who can reach out directly to customers, you can list customer engagement managers on this tab so others in your organization know who's authorized to contact the customer.  

Lastly, you can use this tab to store customer contact information, including name, title, phone, email, and notes about the contact. 

#### Secure Score

The **Secure Score** section provides Microsoft Secure Score information about the customer organization to help you assess their security posture. Microsoft Secure Score is a measurement of an organization's security posture. The higher the score, the better protected the organization is from threats. Microsoft provides recommendations for how to increase an organization's Secure Score, which improves its security posture. To learn more, see [Microsoft Secure Score](../security/defender/microsoft-secure-score.md).

#### Adoption insights

The **Adoption insights** section provides a subset of the Microsoft Adoption Score insights for the customer organization. Adoption insights tell you how the customer organization uses Microsoft products and features so you can help them improve their productivity and use the products more efficiently. To learn more, see [Microsoft Adoption Score](../admin/adoption/adoption-score.md).

### Action items tab

The **Action items** tab displays a summary of key issues in the customer tenant that require attention.

#### Devices

The **Devices** section provides a summary of the number of customer device issues that require attention across the tenant, including compliance, threat protection, device health, Windows 365 issues, and Windows event logs. This section also provides links to the associated pages where you can view details about the issues.

#### Users and email

The **Users and email** section helps you to quickly assess issues related to risky users, multifactor authentication (MFA), and quarantined messages.

### Deployment plan tab

The **Deployment plan** tab provides status on a customer tenant's deployment plan. The deployment steps in the list are based on the baseline applied to the tenant. To see deployment step details, select a deployment step from the list.

The **Deployment plan** tab also includes the following options:

- **Refresh:** Select to retrieve the most current deployment step data.
- **Search:** Enter keywords to quickly locate a specific deployment step in the list.

### Users tab

The **Users** tab provides data relevant to users in the customer tenant.

#### Summary

The **Summary** section provides an overview of insights related to users in the customer tenant, specifically around deployment task progress by user and the mailbox storage status of each user.

#### Deployment progress

The **Deployment progress** section provides the deployment status of each user for tasks that support user progress reporting. Select any user to see more details. Deployment progress is only available for licensed tasks. User progress is only reported for tasks that are **Compliant**, **Not compliant**, or **Dismissed**. 

The **Deployment progress** section also includes the following options:

- **Export:** Select to export tenant data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current deployment step data.
- **Search:** Enter keywords to quickly locate a specific deployment step in the list.

#### Mailbox usage

The **Mailbox usage** section provides details on the storage status for user mailboxes and shared mailboxes. This section also includes filters to help you manage the list of mailboxes, including the ability to identify the archive status of a mailbox.

### Product details and usage tab

The **Product details and usage** tab contains all data related to subscriptions and license usage.

#### Apps and services usage

The **Apps and services usage** section provides insights into Microsoft 365 services usage, including how many users within a customer tenant are licensed and actively using each service.

This section includes information about the following services:

- **Services managed in Microsoft 365 Lighthouse:** These services can be managed within the Lighthouse portal.
- **Services managed in the Microsoft 365 admin center:** These services are included in the Microsoft 365 subscription but can't be managed within the Lighthouse portal.

Within the lists of services, the **Active users & devices** column indicates the number of users or devices that signed in to the service at least once in the past 28 days. The **Change in activity** column indicates a change in active users and devices since last month. 

#### Subscriptions list

The **Subscriptions list** section shows all the subscriptions your organization sold to the customer through the Cloud Solution Provider (CSP) channel. The product information is limited to subscriptions bought through the New Commerce Experience (NCE) and excludes Azure subscriptions. 

The following information is captured for subscriptions: 

| Subscription information | Description                                                                                                                                    |
|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| Product name             | The name of the subscription.                                                                                                                      |
| Subscription ID          | The ID number of the subscription.                                                                                                                 |
| State                    | The state of the subscription: **Active**, **Expired**, or **In grace** (meaning it's in a grace period after expiring and before it's canceled). |
| End date                 | The date the subscription ends.                                                                                                                    |
| Type                     | Whether the subscription is **Paid** or **Trial**.                                                                                             |
| Recurring billing        | Whether the customer enabled the subscription for autorenew at the end of the subscription period.                                               |
| Paid licenses            | The number of paid licenses on the subscription.                                                                                                   |
| Billing frequency        | The billing cycle for the subscription.                                                                                                            |
| Purchase channel         | The channel through which the subscription was purchased.                                                                                          |

### Scripts tab

The **Scripts** tab lets you create and deploy PowerShell scripts and check script results for Intune-managed devices within the customer tenant. 

For more information about creating and deploying PowerShell scripts, see [Deploy a PowerShell script from Microsoft 365 Lighthouse](m365-lighthouse-deploy-powershell-script.md).

## Related content

[Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[Manage your tenant list in Microsoft 365 Lighthouse](m365-lighthouse-manage-tenant-list.md) (article)\
[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Microsoft Secure Score](../security/defender/microsoft-secure-score.md) (article)\
[Microsoft Adoption Score](../admin/adoption/adoption-score.md) (article)
