---
title: "Understand opportunities and data in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: dansimp
author: SKjerland
manager: scotv
ms.reviewer: avaishnav
ms.date: 05/06/2025
audience: Admin
ms.topic: concept-article
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how Lighthouse uses machine learning (ML) models to recommend growth, retention, and acquisition opportunities (formerly under Sales Advisor) to help drive ongoing conversations with customers."
---

# Understand opportunities and data in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse uses machine learning (ML) models to recommend growth, retention, and acquisition opportunities&mdash;and provides reasons for the recommendations&mdash;to help drive ongoing conversations with your customers throughout the entire customer lifecycle. The data used in the ML models combines insights about each customer, current subscriptions, and usage and engagement metrics for each product they use. Opportunities are displayed on the **Opportunities** page in Lighthouse (formerly under **Sales Advisor**). 

## Opportunities page

The **Opportunities** page includes an **All opportunities** tab that provides an overview of opportunities across all your customers. It includes a total count of opportunities at the top of the tab, and a total count of opportunities filtered by product. The tab also includes a list of opportunities for each customer. 

Each opportunity in the list contains the following information:

- **Tenant:** Name of the customer tenant. Select any tenant in the list to view recommendation details, insights, suggested actions, resources, subscriptions, and usage data for the customer. 

- **Recommendation:** Recommended action for the opportunity. 

- **Probability:** Likelihood that a prediction is correct. Probability values are **High**, **Medium**, and **Low**. 

- **Product:** Product associated with the opportunity (not visible for Retention opportunities). 

- **Opportunity type:** General category of the opportunity: **Upsell**, **Engagement**, **Retention**, **Expansion**, or **Trial**.

- **Total licenses:** Number of paid licenses in the customer tenant. 

- **Date created:** Date the opportunity was first created for the customer. Recommendations are refreshed regularly to capture the most recent customer signals. If there's no change to the customer signals, the opportunity remains, regardless of when it was first created.

> [!NOTE]
> Each customer can have zero, one, or more opportunities. Only customers with one or more opportunities are shown in the opportunities list.

All tabs on the **Opportunities** page include the following options: 

- **Export:** Select to export opportunities data to an Excel comma-separated values (.csv) file. 
- **Search**: Enter keywords to quickly locate something specific in the opportunities list.

## Opportunity type

Lighthouse categorizes opportunities by their associated customer lifecycle phase: customer acquisition, customer retention, or customer growth. To view opportunities by lifecycle phase, select from the following tabs: 

### Customer acquisition tab

This tab shows opportunities to acquire new users via converting trial subscriptions to paid offerings. The following opportunity type is associate with this customer lifecycle phase: Trial.

### Customer retention tab

This tab shows opportunities to increase adoption and mitigate churn. Direct engagement might help to retain these customers. The following opportunity types are associate with this customer lifecycle phase: Engagement and Retention.

### Customer growth tab

This tab shows opportunities to grow your business by upgrading customers to higher-value subscriptions. See which customers are ready for the next step in their digital transformation based on usage patterns and behavior of similar customers. The following opportunity types are associate with this customer lifecycle phase: Upsell and Expansion.

### Models available by customer lifecycle phase

The following table lists the opportunity data models currently available as recommendations by customer lifecycle phase.

| Opportunity model     | Customer lifecycle phase | Based on     | Products/plans covered     |
|--------------------------------------|----------------------|------------------|--------------|
| Microsoft 365 Business plans   | Customer growth      | Machine Learning | Standalone, Business Basic, Business Standard, Business Premium        |
| Microsoft 365 Enterprise plans | Customer growth      | Machine Learning | Office 365 E3, Microsoft 365 E3, Microsoft 365 E5, Enterprise Mobility + Security E5              |
| Churn Risk                           | Customer retention   | Machine Learning | Core Apps, Teams, SMB Tenants                                          |
| SMB Tenant Engagement                | Customer retention   | Business rule    | Email, Core Apps, Teams, SharePoint, OneDrive             |
| MDO Growth Recommendation            | Customer growth      | Decision Tree    | Microsoft 365 Business Premium or Microsoft Defender for Office 365 P2 |
| MFA Engagement Recommendation        | Customer engagement  | Decision Tree    | Multifactor authentication in Microsoft Entra ID                                |
| MDB Growth Recommendation            | Customer growth      | Decision Tree    | Microsoft Defender for Business (MDB)                                  |
| Trials                               | Customer acquisition | Business rule    | Teams Exploratory                                                      |

## Terminology

The following table provides important terms and definitions used on the **Opportunities** page.


| Term   |Definition  |
|--------------------------------------|----------------------|
| Active usage                 | Aggregate number of active users or devices based on intentional actions, which varies with each application. Use active usage data to calculate usage metrics such as Daily Active Users (DAU) and Monthly Active Users (MAU).  |
| Active users                 | Number of users actively using a product or service.  |
| Assigned users               | Number of users licensed to use a product or service.       |
| Customer acquisition         | The first phase in the customer lifecycle. The following opportunity type is associate with this customer lifecycle phase: Trial.  |
| Customer growth              | The third phase in the customer lifecycle. The following opportunity types are associated with this customer lifecycle phase: Upsell and Expansion. |
| Customer insights            | Characteristics of the selected customer based on historical data, and an explanation of why Lighthouse suggests the specific recommendation.        |
| Customer lifecycle phases    | The different phases an MSP goes through in their relationship with a customer. To categorize opportunities, Lighthouse uses three phases: customer acquisition, customer retention, and customer growth. 
| Customer retention           | The second phase in the customer lifecycle. The following opportunity types are associated with this customer lifecycle phase: Engagement and Retention.   |
| Customer usage information   | Information about how users are using Microsoft 365 services within the products they own. Includes a graph showing usage per user, number of assigned users, active users, and trends. |
| Customers with opportunities | Customers who have one or more opportunities.  |
| Opportunity                  | Opportunities are generated by machine learning (ML) models. Each opportunity contains a recommendation for a particular customer, insights, suggested actions, resources, subscriptions, and usage data. |
| Opportunity type         | Type, or category, of opportunity. There are five opportunity types: Upsell, Engagement, Retention, Expansion, and Trial. Each opportunity type is associated with a specific phase of the customer lifecycle. |
| Probability status           | The likelihood that the prediction is correct. Probability values include: **High**, **Medium**, and **Low**. |
| Product                      | Microsoft product associated with an opportunity.    |
| Recommendation               | Recommended action for an opportunity.  |
| Resources                    | Within a recommendation, resources include playbooks, demos, cheat sheets, and email templates to help you prepare for conversations with the customer regarding the opportunity.  |
| Seats                        | Number of paid licenses in the customer tenant.  |
| Subscription                 | Product or service purchased by a customer from your organization or from Microsoft directly. |
| Suggested actions            | Specific actions you can take to act on a recommendation, such as running a workshop. |
| Trend                        | Monthly active usage over the previous three months. Trend values include: **No change**, **Positive**, and **Negative**. |
| Usage per user               | Monthly Active Usage per workload per user.  |
| Workload                     | Product or service.   |

## Related content

[View opportunities in Microsoft 365 Lighthouse](m365-lighthouse-view-opportunities.md) (article)\
[Microsoft 365 Lighthouse frequently asked questions (FAQs) about managing opportunities](m365-lighthouse-faq.yml#managing-opportunities) (article)
