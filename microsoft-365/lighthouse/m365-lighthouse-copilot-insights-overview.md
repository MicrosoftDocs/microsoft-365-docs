---
title: "Overview of Copilot insights in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: viratsingh
ms.date: 11/08/2024
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- magic-ai-copilot
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to use Copilot insights in Lighthouse to help you manage and monitor Microsoft 365 Copilot success across your customer tenants."
---

# Overview of Copilot insights in Microsoft 365 Lighthouse

> [!NOTE]
> We're continuously enhancing Copilot insights. Let us know what improvements you'd like us to make to this feature to help you drive and manage Microsoft 365 Copilot usage by providing feedback. In <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select the **Give feedback** widget in the lower-right corner of any page, or go to the [Microsoft 365 Lighthouse feedback page](https://aka.ms/m365lighthouseuservoice).

Copilot insights help you easily manage and monitor Microsoft 365 Copilot success across your customer tenants&mdash;from a single **Copilot insights** page in Lighthouse. In addition to recommending customers who are likely to benefit from Copilot, the page shows Copilot usage and license assignments, Copilot adoption insights, and links to key resources to help you become a Copilot expert, including Copilot Prompt Gallery, learning paths, training videos, the latest Copilot product updates, and more. The page also provides links to resources that you can share with your customers to help them succeed with Copilot.

## Access Copilot insights

To access the customer data on the **Copilot insights** page, you must set up granular delegated administrative privileges (GDAP) for each customer whose data you want to view. To learn more, see [Set up GDAP in Microsoft 365 Lighthouse](m365-lighthouse-setup-gdap.md).

To see customer insights on the **Opportunities** tab, you must hold one of the following Microsoft Entra roles in the customer tenant:

- License Administrator
- Global Reader
- Global Administrator

To see customer insights on the **Adoption** tab, you must hold one of the following Microsoft Entra roles in the customer tenant:

- User Experience Success Manger
- Usage Summary Reports Reader
- Reports Reader
- Teams Administrator
- Teams Communications Administrator
- Skype for Business Administrator
- SharePoint Administrator
- Exchange Administrator 
- Global Reader
- Global Administrator

> [!CAUTION]
> To help keep your organization secure, Microsoft recommends that you use roles with the minimum level of permissions needed to perform a job. Global Administrator is a highly privileged role that should be limited to scenarios where you can't use a less-privileged role.

## Copilot opportunities

In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Copilot insights**, and then select the **Opportunities** tab. At the top of this tab is an overview of how many of your customers are likely to find value in Copilot. The tab also includes a list of customer tenants identified as likely to find value in Copilot, along with additional Copilot insights related to those tenants. These insights are based on Microsoft 365 usage and licensing signals.

The list of tenants includes the following information about each tenant:

- **Probability**: Likelihood that the customer will find value in Microsoft 365 Copilot. 
- **Copilot prerequisite licenses:** Number of Copilot-eligible licenses available in the customer tenant. 
- **Identified on:** Date the customer opportunity was first identified. Recommendations are refreshed regularly to capture the latest customer signals.
 
## Copilot adoption

In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Copilot insights**, and then select the **Adoption** tab. This tab provides the following information:

- **Adoption trends:** Information on how Copilot license enablement and active usage changed across all of your customer tenants over the past six months. 
- **Resources for you:** List of resources&mdash;including learning paths, adoption guides, video tutorials, and more&mdash;that you can share with your customers to help drive engagement and boost their productivity using Copilot. 

At the bottom of the **Adoption** tab is a list of customer tenants that have at least one Microsoft 365 Copilot license. The list of tenants includes the following information about each tenant:

- **Active user rate:** Percentage of enabled users in the customer tenant who were active users within the last month. For more information on how Copilot usage is determined and reported, see [Interpret the Microsoft 365 Copilot usage report](../admin/activity-reports/microsoft-365-copilot-usage.md#interpret-the-microsoft-365-copilot-usage-report).  
- **Copilot licenses:** Total number of Microsoft 365 Copilot licenses in the customer tenant. 
- **Unassigned licenses:** Total number of unassigned Microsoft 365 Copilot licenses in the customer tenant.

## Related content

[Get started with Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-setup) (article)\
[Microsoft 365 Copilot requirements](/copilot/microsoft-365/microsoft-365-copilot-requirements) (article)\
[Enable users for Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-enable-users) (article)\
[Overview of the Delegated access page in Microsoft 365 Lighthouse](m365-lighthouse-delegated-access-overview.md) (article)\
[Set up GDAP in Microsoft 365 Lighthouse](m365-lighthouse-setup-gdap.md) (article)