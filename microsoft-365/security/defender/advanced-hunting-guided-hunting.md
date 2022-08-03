---
title: Build queries using guided hunting
description: Learn about advanced hunting queries in Microsoft 365 and how to use them to proactively find threats and weaknesses in your network
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, custom detections, schema, kusto
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
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
---

# Build hunting queries using guided mode in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

Advanced hunting is a query-based threat hunting tool that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate threat indicators and entities. The flexible access to data enables unconstrained hunting for both known and potential threats.

To reduce the learning curve for hunting, remove the KQL challenge, and enable all analysts to hunt,  **Guided hunting** experience is supported. This is a hunting mode that enables all analysts to hunt—without knowing KQL or the data schema. In this mode, you can use a query builder to write your queries. You just need to know what you are looking for and you can easily filter for it. 

## Query in builder
In the **Advanced hunting** page, select **Create new** to open a new tab and select the **Query in builder** mode.

[IMAGE]

### Specify the data domain to hunt in
By default, the guided hunting scope includes data from all domains--devices, identities, email & collaboration, and cloud apps. You can control the scope of the hunt by selecting the **View in** control:
[IMAGE]

**View in** controls the filters. Selecting **All** allows you to filter the entire dataset while narrowing down to a specific domain allows filters relevant to that domain only. 

### Create conditions

