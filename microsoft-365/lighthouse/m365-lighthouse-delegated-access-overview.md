---
title: "Overview of the Delegated access page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: taylorau
ms.date: 08/13/2024
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

Microsoft 365 Lighthouse provides delegated relationship insights across all your customer tenants in a single view. You can create and manage Granular Delegated Administrative Privileges (GDAP) relationships from the Delegated access page. Data is available for any customer tenant in Lighthouse, regardless of the customers' licensing, user count, or geographic region. To access these insights, select **Permissions** > **Delegated access** in the left navigation pane in [Lighthouse](https://lighthouse.microsoft.com).

> [!NOTE]
> You must hold the Lighthouse Administrator Microsoft Entra role to manage GDAP relationships from the Delegated access page. 

:::image type="content" source="../media/m365-lighthouse-delegated-access-overview/m365-lighthouse-delegated-access-page.png" alt-text="Screenshot of Delegated access page." lightbox="../media/m365-lighthouse-delegated-access-overview/m365-lighthouse-delegated-access-page.png":::

## GDAP templates tab

From the GDAP templates tab, you can view, create, and assign GDAP templates to customer tenants. The GDAP templates tab provides the following information:

- **Name:** The name of the GDAP template. 
- **Support roles:** The name of the Lighthouse support roles associated with each template. To learn more about GDAP templates, see [Set up GDAP for your customers](m365-lighthouse-setup-gdap.md).
- **Assigned tenants:** The number of customer tenants that the GDAP template is assigned to.

Select a GDAP template from the list to open the edit pane, where you can update the name, description, support roles, and security groups for the template.

To assign tenants to a GDAP template or delete a GDAP template, select the **More actions** (ellipsis icon) next to the template name.

The GDAP templates tab also includes the following options:
- **Export:** Select to export GDAP template data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current GDAP template data.
- **Search:** Enter keywords to quickly locate a specific GDAP template in the list. 

## Relationships tab

## Related content

[Set up GDAP for your customers](m365-lighthouse-setup-gdap.md) (article)\
[Overview of permissions](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Introduction to granular delegated admin privileges (GDAP)](/partner-center/gdap-introduction) (article)\
[Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference) (article)\
[Learn about groups and access rights in Microsoft Entra ID](/azure/active-directory/fundamentals/concept-learn-about-groups) (article)
