---
title: Use shared queries in Microsoft 365 Defender advanced hunting
description: Start threat hunting immediately with predefined and shared queries. Share your queries to the public or to your organization.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, custom detections, schema, kusto, github repo, my queries, shared queries
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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
ms.collection: m365-security-compliance
ms.topic: article
ms.technology: m365d
---

# Use shared queries in advanced hunting

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint



[Advanced hunting](advanced-hunting-overview.md) queries can be shared among users in the same organization. You can also find queries shared publicly on GitHub. These queries let you quickly pursue specific threat hunting scenarios without having to write queries from scratch.

:::image type="content" source="../../media/shared-query-1.png" alt-text="The shared queries information in the Microsoft 365 Defender portal" lightbox="../../media/shared-query-1.png":::

## Save, modify, and share a query
You can save a new or existing query so that it is only accessible to you or shared with other users in your organization. 

1. Create or modify a query. 

2. Click the **Save query** drop-down button and select **Save as**.
    
3. Enter a name for the query. 

   :::image type="content" source="../../media/shared-query-2.png" alt-text="The new query that is about to be saved in the Microsoft 365 Defender portal" lightbox="../../media/shared-query-2.png":::

4. Select the folder where you'd like to save the query.
    - **Shared queries** — shared to all users your organization
    - **My queries** — accessible only to you
    
5. Select **Save**. 

## Delete or rename a query
1. Select the three dots to the right of a query you want to rename or delete.

    :::image type="content" source="../../media/shared-query-3.png" alt-text="The options for a shared query in the Advanced Hunting page in the Microsoft 365 Defender portal" lightbox="../../media/shared-query-3.png":::

2. Select **Delete** and confirm deletion. Or select **Rename** and provide a new name for the query.

## Create a direct link to a query
To generate a link that opens your query directly in the advanced hunting query editor, finalize your query and select **Share link**.

## Access queries in the GitHub repository  
Microsoft security researchers regularly share advanced hunting queries in a [designated public repository on GitHub](https://aka.ms/hunting-queries). This repository is open to contributions. To contribute, [join GitHub for free](https://github.com/).

>[!tip]
>Microsoft security researchers also provide advanced hunting queries that you can use to locate activities and indicators associated with emerging threats. These queries are provided as part of the [threat analytics](/windows/security/threat-protection/microsoft-defender-atp/threat-analytics) reports in Microsoft 365 Defender.


## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)