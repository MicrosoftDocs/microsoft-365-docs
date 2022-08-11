---
title: Overview - Advanced hunting
description: Learn about advanced hunting queries in Microsoft 365 and how to use them to proactively find threats and weaknesses in your network
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, custom detections, schema, kusto
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.custom: seo-marvel-apr2020
ms.technology: m365d
---

# Choose between guided and advanced modes when hunting in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

You can find the **advanced hunting** page by going to the left navigation bar in Microsoft 365 Defender and selecting **Hunting** > **Advanced hunting**. If the navigation bar is collapse, look for the ![hunting icon](../../media/guided-hunting/hunting-icon.png) icon. 

:::image type="content" source="../../media/guided-hunting/hunting-icon.png" alt-text="{alt-text}":::

When you go to the **advanced hunting** page, you can choose from the following modes:
- **Guided mode** – craft queries with the query builder
- **Advanced mode** – craft KQL queries with the query editor 

The main difference between the two modes is that the advanced mode requires the user to know the KQL language in order to create a query from scratch. Guided mode, on the other hand, has an easy-to-use, visual, building block style of constructing queries through dropdown filters and conditions. 

## Take the tour

When you open the advanced hunting page for the first time after guided hunting is made available to you, you are invited to take the tour to learn more about the different parts of the page like the tabs and query areas. Select **Try out guided hunting** when it appears once you open the **advanced hunting** page from the left-hand navigation pane in Microsoft 365 Defender.


[ ![banner inviting user to take the tour](../../media/guided-hunting/1-guided-hunting-banner.png) ](../../media/guided-hunting/1-guided-hunting-banner.png#lightbox)

This takes you through the tour, which suggests some queries to get you started, like how to get a list of high-confidence phishing emails sent to your organization, a list of activities performed by a file you specify, or a list of alerts where a certain user is involved. These sample queries can be found in the **Getting started** section. Simply select **Load example** to edit the query, and run it by selecting **Run query**.

You can take the tour again at any time by going to **Help resources** > **Learn more** and selecting **Take the tour**.

## Get started with guided hunting mode
Getting started in guided mode is easy. For a description of the different 

| Learning goal | Description | Resource |
|--|--|--|
| **Get started with query builder** | Give description | [Change link](advanced-hunting-guided-hunting.md) |
| **Refine your query in guided mode** |  Give description | [Change link](advanced-hunting-working-guided-mode.md) |
| **Learn how to use the query results** | Learn about charts and various ways you can view or export your results. Explore how you can quickly tweak queries, drill down to get richer information, and take response actions. | - [Work with query results in guided mode](advanced-hunting-query-results-guided.md)<br /> - [Take action on query results](advanced-hunting-take-action.md) <br /> - [Link query results to an incident](advanced-hunting-link-to-incident.md) |
| **Create custom detection rules** | Understand how you can use advanced hunting queries to trigger alerts and take response actions automatically. | - [Custom detections overview](custom-detections-overview.md) <br />- [Custom detection rules](custom-detection-rules.md) |

## Get started with advanced hunting mode
We recommend going through several steps to quickly get started with advanced hunting.

| Learning goal | Description | Resource |
|--|--|--|
| **Learn the language** | Advanced hunting is based on [Kusto query language](/azure/kusto/query/), supporting the same syntax and operators. Start learning the query language by running your first query. | [Query language overview](advanced-hunting-query-language.md) |
| **Learn how to use the query results** | Learn about charts and various ways you can view or export your results. Explore how you can quickly tweak queries, drill down to get richer information, and take response actions. | - [Work with query results in advanced mode](advanced-hunting-query-results.md)<br /> - [Take action on query results](advanced-hunting-take-action.md) <br /> - [Link query results to an incident](advanced-hunting-link-to-incident.md)  |
| **Understand the schema** | Get a good, high-level understanding of the tables in the schema and their columns. Learn where to look for data when constructing your queries. | - [Schema reference](advanced-hunting-schema-tables.md) <br />- [Transition from Microsoft Defender for Endpoint](advanced-hunting-migrate-from-mde.md) |
| **Get expert tips and examples** | Train for free with guides from Microsoft experts. Explore collections of predefined queries covering different threat hunting scenarios. | - [Get expert training](advanced-hunting-expert-training.md) <br />- [Use shared queries](advanced-hunting-shared-queries.md) <br />- [Go hunt](advanced-hunting-go-hunt.md) <br />- [Hunt for threats across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md) |
| **Optimize queries and handle errors** | Understand how to create efficient and error-free queries. | - [Query best practices](advanced-hunting-best-practices.md)<br />- [Handle errors](advanced-hunting-errors.md) |
| **Create custom detection rules** | Understand how you can use advanced hunting queries to trigger alerts and take response actions automatically. | - [Custom detections overview](custom-detections-overview.md) <br />- [Custom detection rules](custom-detection-rules.md)|

## See also