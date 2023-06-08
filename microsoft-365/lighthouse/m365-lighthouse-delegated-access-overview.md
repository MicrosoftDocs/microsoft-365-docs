---
title: "Overview of Delegated Access in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: algreer
ms.date: 04/20/2023
audience: Admin
ms.topic: article
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

# Overview of Delegated Access in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse provides delegated relationship insights across all your customer tenants in a single view. You can track your transition away from Delegated Administrative Privileges (DAP) and ensure your Granular Delegated Administrative Privileges (GDAP) relationships are set up as intended. Data is available for any customer tenant in Lighthouse, regardless of the customers' licensing, user count, or geographic region. To access these insights, select **Permissions** > **Delegated access** in the left navigation pane in Lighthouse. You must hold the Admin agent role in Partner Center. 

## Delegated access page

From this page, you can see the status of all your customers' delegated relationships at a glance, including whether GDAP is set up, if a GDAP template has been assigned, and the next upcoming GDAP relationship expiration date for a customer tenant. In this sortable view by tenant, you can filter by the following information:

- **Delegated access:** The type of delegated relationships established with a customer tenant. For example, GDAP, GDAP & DAP, DAP, or None. 
- **GDAP template:** Created by your organization through Lighthouse, GDAP templates define the service tiers, Azure Active Directory (AAD) roles used to deploy GDAP to your tenants. To learn more about GDAP templates, see [Set up GDAP for your customers](m365-lighthouse-setup-gdap.md).
- **Security groups:** Assigned to GDAP relationships, security groups contain the users in your organization with delegated access to a customer tenant.
- **Pending GDAP relationships:** Indicates that a GDAP relationship has been set up but has yet to be approved by the customer tenant.

Select a tenant from the list to see more specific information about the customer tenant. From the tenant details pane, you can view more relationship details, including how many relationships exist, the expiration dates, and the names of all relationships between your organization and that customer tenant. If no GDAP relationship has been established for a customer tenant, select **Set up GDAP for your organization** to assign a GDAP template to that organization. New relationships may take up to 10 minutes to refresh on this page. If the relationship status is still pending, you can resend a relationship request through the GDAP Setup tool.

The Delegated access page also includes the following options:
- **Export:** Select to export tenant data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current tenant delegated access data.
- **Search:** Enter keywords to quickly locate a specific tenant or tenant tag in the list.

:::image type="content" source="../media/m365-lighthouse-delegated-access-overview/m365-lighthouse-delegated-access-page.png" alt-text="Screenshot of Delegated Access page" lightbox="../media/m365-lighthouse-delegated-access-overview/m365-lighthouse-delegated-access-page.png":::

## Related content

[Set up GDAP for your customers](m365-lighthouse-setup-gdap.md) (article)\
[Overview of permissions](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Introduction to granular delegated admin privileges (GDAP)](/partner-center/gdap-introduction) (article)\
[Azure AD built-in roles](/azure/active-directory/roles/permissions-reference) (article)\
[Learn about groups and access rights in Azure Active Directory](/azure/active-directory/fundamentals/concept-learn-about-groups) (article)
