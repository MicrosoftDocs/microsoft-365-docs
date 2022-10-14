---
title: "Overview of the Tenants page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms-reviewer: kywirpel
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about the Tenants page."
---

# Overview of the Tenants page in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse lets you manage tenant accounts by selecting **Tenants** in the left navigation pane to open the Tenants page. The Tenants page contains a list of all your tenants. You can select a tenant to view detailed information including contact details and deployment status.

The Tenants page also includes the following options:

- **Export:** Select to export tenant data to an Excel comma-separated values (.csv) file.
- **Manage Tags:** Select to add, edit, or delete a tag.
- **Assign Tags:** Select to assign a tag to a tenant.
- **Search:** Enter keywords to quickly locate a specific tenant in the list.

:::image type="content" source="../media/m365-lighthouse-tenants-page-overview/tenant-page-overview.png" alt-text="Screenshot of the Tenant page.":::

## Tenant list

The tenant list provides insights into the different tenants you have a contract with, including their tenant Lighthouse onboarding status. The tenant list also lets you tag tenants to provide different filters throughout Lighthouse, and drill down to learn more about a given tenant and the status of its deployment plan.

After your tenants meet the [Lighthouse onboarding requirements](m365-lighthouse-requirements.md), its status will show as **Active** in the tenant list.

The tenant list lets you:

- Automatically sort tenants by active, inactive, and ineligible.
- Export the tenant list.
- Assign and manage tags.
- Search for tenants by name.
- Filter tenants by status, delegated administrative privilege (DAP), and tags.

To inactivate the tenant or view and manage tags, select the three dots (more actions) next to the tenant name. You can view individual tenants by either selecting the tenant name or by selecting one of the tags assigned to the tenant.

For information on how to add tenants, see [Add and manage multiple tenants in your Partner Center account](/partner-center/multi-tenant-account).

## Tenant status

The following table shows the different statuses and their meaning. For information on how to troubleshoot customer tenant statuses, see [Troubleshoot error messages and problems in Microsoft 365 Lighthouse: Customer tenant onboarding](m365-lighthouse-troubleshoot.md#customer-tenant-onboarding).<br><br>

| Status                                   | Description                                                                                             |
|------------------------------------------|---------------------------------------------------------------------------------------------------------|
| Active                                   | Tenant onboarding and data flow have started.                                                           |
| Inactive                                 | Tenant was offboarded at the request of the MSP and is no longer being managed in Lighthouse.           |
| In process                               | Tenant discovered but not fully onboarded.                                                              |
| Ineligible - DAP or GDAP isn't set up    | Partner must have delegated (DAP) or granular delegated (GDAP) admin privileges set up with the tenant. |
| Ineligible - Required license is missing | Tenant doesn't have the required license.                                                               |
| Ineligible - User count exceeded         | Tenant has more users than allowed.                                                                     |
| Ineligible - Geo check failed            | Partner and customer must reside in the same geographic location.                                       |

Once you inactivate a tenant, you can't take action on the tenant until the inactivation process completes. It may take up to 48 hours for inactivation to complete. If you decide to reactivate a tenant, it may take up to 48 hours for data to reappear.

## Tenant tags

To help organize your tenants and easily filter the existing views, you can create and assign tags to your tenants. To learn more, see [Manage your tenant list in Microsoft 365 Lighthouse](m365-lighthouse-manage-tenant-list.md).

> [!NOTE]
> You can create up to 30 tags across all tenant.

## Tenant details page

To view detailed tenant information, select a tenant from the list of tenants. The tenant details page contains contact information and deployment plan status.

:::image type="content" source="../media/m365-lighthouse-tenants-page-overview/tenant-details-page.png" alt-text="Screenshot of the Tenant details page.":::

### Overview tab

On the Overview tab, you can view tenant overview, contact information, and Microsoft 365 service usage.

#### Tenant overview section

The Tenant overview section provides information about the tenant from its Microsoft 365 account.<br><br>

| Tenant information    | Description|
|-----------------------|------------------|
| Headquarters    | Where the tenant is located.|
| Industry    |The organization's industry.|
| Website    |The organization's website. You may edit this field if no data is provided.|
| Customer domain    |The organization's domain.|
| Total users    |The number of users assigned in the tenant. You may select this number to open the Users page for that tenant.|
| Total devices|The number of devices enrolled in the tenant. You may select this number to open the Devices page for that tenant.|

#### Contacts section

The Contacts section provides information for key contacts within the tenants you manage, such as:

- Name
- Title
- Phone
- Email
- Notes

The **Notes** column shows information for the tenant, such as engagement preferences, location, time zone, and details about their role within the organization.

To edit details, add notes, or delete an existing contact, select the contact name from the list. In the **Edit contact** pane, edit or delete the contact. To add another contact, select **+Add contact**.

#### Microsoft 365 services usage section

Lighthouse provides insights into Microsoft 365 services usage, including how many users within a tenant are licensed and actively using each service. The **Active users & devices** column indicates the number of users or devices that have signed in to the service at least once in the past 28 days. The **Change in activity** column indicates change in active users and devices since last month.

The **Microsoft 365 services usage** section contains two sub-sections:

- **Microsoft 365 Lighthouse-enabled services:** Services that can be managed within the Lighthouse portal.
- **Additional Microsoft 365 services:** Services that are included in the Microsoft 365 suite but can't be managed within the Microsoft 365 Lighthouse portal at this time.

### Deployment Plan tab

The Deployment Plans tab provides status on a tenant's deployment plan. The deployment steps in the list are based on the baseline applied to the tenant. To see deployment step details, select a deployment step from the list.

The Deployment Plan tab also includes the following options:

- **Export:** Select to export deployment step data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current deployment step data.
- **Search:** Enter keywords to quickly locate a specific deployment step in the list.

## Related content

[Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[Manage your tenant list in Microsoft 365 Lighthouse](m365-lighthouse-manage-tenant-list.md) (article)\
[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Deploy Microsoft 365 Lighthouse baselines](m365-lighthouse-deploy-baselines.md) (article)
