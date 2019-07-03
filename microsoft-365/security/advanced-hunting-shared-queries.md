---
title: Use shared and sample queries in Microsoft 365 advanced hunting
description: Learn where to get sample queries and shared queries. Share your queries to the public and to your organization.
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Use shared and sample queries in advanced hunting

**Applies to**:
- Microsoft 365


## Use shared queries
Shared queries are prepopulated queries that give you a starting point on running queries on your organization's data. It includes a couple of examples that help demonstrate the query language capabilities.

![Image of shared queries](images/atp-shared-queries.png)

You can save, edit, update, or delete queries.

### Save a query
You can create or modify a query and save it as your own query or share it with users who are in the same tenant. 

1. Create or modify a query. 

2. Click the **Save query** drop-down button and select **Save as**.
    
3. Enter a name for the query. 

   ![Image of saving a query](images/advanced-hunting-save-query.png)

4. Select the folder where you'd like to save the query.
    - Shared queries - Allows other users in the tenant to access the query
    - My query - Accessible only to the user who saved the query
    
5. Click **Save**. 

### Update a query
These steps guide you on modifying and overwriting an existing query.

1. Edit an existing query. 

2. Click the **Save**.

### Delete a query
1. Right-click on a query you want to delete.

    ![Image of delete query](images/atp-delete-query.png)

2. Select **Delete** and confirm that you want to delete the query.

## Public Advanced hunting query GitHub repository  
Check out the [Advanced hunting repository](https://github.com/Microsoft/WindowsDefenderATP-Hunting-Queries). Contribute and use example queries shared by our customers. 


>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhunting-belowfoldlink)

## Related topics
- [Proactively hunt for threats](advanced-hunting.md)
- [Learn the query language](advanced-hunting-language-overview.md)
- [Understand the data tables](advanced-hunting-schema-tables.md)
- [Understand the data columns](advanced-hunting-column-reference.md)
- [Find miscellaneous events](advanced-hunting-misc-events.md)
- [Apply query best practices](advanced-hunting-best-practices.md)



