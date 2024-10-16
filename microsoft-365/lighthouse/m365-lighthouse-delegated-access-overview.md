---
title: "Overview of the Delegated access page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: taylorau
ms.date: 09/26/2024
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to manage your tenants' delegated access."
---

# Overview of the Delegated access page in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse provides delegated relationship insights across all your customer tenants in a single view. You can create and manage granular delegated administrative privileges (GDAP) relationships from the Delegated access page. Data is available for any customer tenant in Lighthouse, regardless of the customers' licensing, user count, or geographic region. To access these insights, select **Permissions** > **Delegated access** in the left navigation pane in [Lighthouse](https://lighthouse.microsoft.com).

:::image type="content" source="../media/m365-lighthouse-delegated-access-overview/m365-lighthouse-delegated-access-page.png" alt-text="Screenshot of Delegated access page." lightbox="../media/m365-lighthouse-delegated-access-overview/m365-lighthouse-delegated-access-page.png":::

## Role requirements

The following table outlines the role or roles that you must hold to manage GDAP relationships from the Delegated access page.

|  | Admin Agent<br>in Partner Center | Groups Administrator<br>in Microsoft Entra&nbsp;ID | User Administrator<br>in Microsoft Entra&nbsp;ID | Privileged Role Administrator<br>in Microsoft Entra&nbsp;ID |
|--|:--:|:--:|:--:|:--:|
| **View data on the Delegated access page** | &check; |  |  |  |
| **Create and edit Lighthouse GDAP templates** |  | &check; | &check; |  |
| **Assign Lighthouse GDAP templates to customer tenants** | &check; |  |  |  |
| **Set up Just-in-Time (JIT) access** |  |  |  | &check; |

## GDAP templates tab

From the GDAP templates tab, you can view, create, delete, and assign GDAP templates to customer tenants. The GDAP templates tab provides the following information:

- **Name:** The name of the GDAP template. 
- **Support roles:** The name of the Lighthouse support roles associated with each template.
- **Assigned tenants:** The number of customer tenants that the GDAP template is assigned to.

Select a GDAP template from the list to open the edit pane, where you can update the name, description, support roles, and security groups for the template.

To assign tenants to a GDAP template or delete a GDAP template, select the three dots (more actions) next to the template name.

The GDAP templates tab also includes the following options:
- **Export:** Select to export GDAP template data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current GDAP template data.
- **Search:** Enter keywords to quickly locate a specific GDAP template in the list. 

## Relationships tab

From the Relationships tab, you can view all GDAP relationships that you set up with your customers. The Relationships tab provides the following information:

- **Tenant and relationship:** Customer tenant name and associated GDAP relationship.
- **Status:**
    - An **Active** status means you have at least one active GDAP relationship with the customer.
    - A **Pending** status indicates a GDAP relationship was set up but the customer hasn't approved it yet.
- **Template:** Name of the GDAP template assigned to the customer tenant.
- **Security groups:** Number of security groups associated with the customer tenant.
- **Start date:** Date of the oldest GDAP relationship with the customer.
- **Expiration date:** Date of the next-expiring GDAP relationship.
- **Tags:** Tags associated with the customer tenant.

In the list of customer tenants, expand each tenant to show the active and pending GDAP relationship requests. After a customer approves a GDAP relationship request, you can select the relationship request from the list to open the relationship details pane and view the following information:

- All security groups and GDAP Microsoft Entra roles associated with the tenant. 
- A summary of all GDAP Microsoft Entra roles associated with the tenant.
 
The Relationships tab also includes the following options: 

- **Export:** Select to export GDAP relationship data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current GDAP relationship data.
- **Search:** Enter keywords to quickly locate a specific tenant or tenant tag in the list. 

## Related content

[Set up GDAP in Microsoft 365 Lighthouse](m365-lighthouse-setup-gdap.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Introduction to granular delegated admin privileges (GDAP) - Partner Center](/partner-center/gdap-introduction) (article)\
[Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference) (article)\
[Learn about groups and access rights in Microsoft Entra ID](/azure/active-directory/fundamentals/concept-learn-about-groups) (article)
