---
title: Advanced hunting in Microsoft Defender
description: Advanced hunting in the portal unifying Defender XDR and Sentinel data
keywords: advanced hunting, query, Kusto, KQL, telemetry, Microsoft 365, Microsoft Defender XDR
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
ms.subservice: adv-hunting
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
  - m365-security
  - m365initiative-m365-defender
  - tier1
ms.topic: conceptual
ms.date: 03/01/2024
---

# Advanced hunting in the Microsoft Defender portal


**Applies to:**
- Microsoft Defender 


Advanced hunting in the unified portal allows you to view and query all data from Microsoft Defender XDR including data from various Microsoft security services and Microsoft Sentinel, which includes data from non-Microsoft products, in a single platform. You can also access and use all your existing Microsoft Sentinel workspace content, including queries and functions. 

Querying from a single portal across different data sets makes hunting more efficient and removes the need for context-switching.


## How to access

### Required roles and permissions
To query across Microsoft Sentinel and Microsoft Defender XDR data in the unified advanced hunting page, you must have access to Microsoft Defender XDR advanced hunting (see [Required roles and permissions](custom-roles.md#required-roles-and-permissions)) and at least Microsoft Sentinel Reader (see [Microsoft Sentinel-specific roles](https://learn.microsoft.com/azure/sentinel/roles#microsoft-sentinel-specific-roles)).

In the unified portal, you can query any data in any workload that you can currently access based on the roles and permissions you have. 

### Connect a workspace

In Microsoft Defender, you can connect workspaces by selecting **Connect a workspace** in the top banner. This button appears if you are eligible to onboard a Microsoft Sentinel workspace onto the unified Microsoft Defender portal. Follow the steps in: **[Onboarding a workspace](https://aka.ms/onboard-microsoft-sentinel)**.

## Unified advanced hunting

After connecting your Microsoft Sentinel workspace and Microsoft Defender XDR advanced hunting data, you can start querying Sentinel data from the advanced hunting page. For an overview of advanced hunting features, read [Proactively hunt for threats with advanced hunting](advanced-hunting-overview).

### What to expect for Defender XDR tables streamed to Sentinel
- **Use tables with longer data retention period in queries** – Advanced hunting follows the maximum data retention period configured for the Defender XDR tables. If you stream Defender XDR tables to Sentinel and have a data retention period longer than 30 days for said tables, you can query for the longer period in advanced hunting.
- **Use Kusto operators you’ve used in Sentinel** – In general, queries from Sentinel work in advanced hunting. There might be cases where IntelliSense warns you that the operators in your query don’t match the schema, however, you can still run the query and it should still be executed successfully.
- **Use the time filter dropdown instead of *Set in query*** – If you are filtering ingestion of Defender XDR tables to Sentinel instead of streaming the tables as is, do not use the **Set in query** option for filtering time as this might result in incomplete results. If the **Set in query** option is used, the streamed, filtered data from Sentinel will be queried because it usually has the longer data retention period. If you would like to make sure you are querying all Defender XDR data for up to 30 days, use the time filter dropdown provided in the query editor instead. 
- **View `SourceSystem` and `MachineGroup` columns for Defender XDR data that have been streamed from Sentinel** – Since the columns `SourceSystem` and `MachineGroup` are added to Defender XDR tables once they  have been streamed to Sentinel, they also appear in results in advanced hunting in Defender. However, they remain blank for Defender XDR tables that have not been streamed (tables that follow the default 30-day data retention period).



### Where to find your Sentinel data
You can use advanced hunting KQL queries to hunt through Microsoft Defender XDR and Microsoft Sentinel data.

When you open the advanced hunting page for the first time after connecting a workspace, you can find your Sentinel tables organized by solution after the Microsoft Defender XDR tables under the **Schema** tab.


:::image type="content" source="../../media/advanced-hunting-unified-sentinel-data.png" alt-text="The Link to incident option of the Results tab in the Microsoft Defender portal" lightbox="../../media/advanced-hunting-unified-sentinel-data.png":::


Likewise, you can find the functions from Sentinel in the **Functions** tab, and your shared and sample queries from Sentinel can be found in the **Queries** tab inside folders marked **Sentinel**.

### View schema information
To learn more about a schema table, select the vertical ellipses ( ![kebab icon](../../media/ah-kebab.png) ) to the right of any schema table name under the **Schema** tab, then select **View schema**.

In the unified portal, in addition to viewing the schema column names and descriptions, you can also view:

- Sample data – select **See preview data**, which loads a simple query like `TableName | take 5`
- **Schema type** – whether the table supports full query capabilities (advanced table) or not (basic logs table)
- **Data retention period** – how long the data is set to be kept
- **Tags** – available for Sentinel data tables

:::image type="content" source="../../media/advanced-hunting-unified-view-schema.png" alt-text="The Link to incident option of the Results tab in the Microsoft Defender portal" lightbox="../../media/advanced-hunting-unified-view-schema.png":::

### Use functions

To use a function from Sentinel, go to the **Functions** tab and scroll until you find the function that you want. Double-click the function name to insert the function in the query editor. 

You can also select the vertical ellipses ( ![kebab icon](../../media/ah-kebab.png) ) to the right of the function and select **Insert to query** to insert the function into a query in the query editor. 

Other options include:
- **View details** – opens the function side pane containing its details
- **Load function code** – opens a new tab containing the function code

For editable functions, additional options are available when you select the  ![kebab icon](../../media/ah-kebab.png):
- **Edit details** – opens the function side pane to allow you to edit details about the function (except folder names for Sentinel functions)
- **Delete** – deletes the function


### Use saved queries

To use a saved query from Sentinel, go to the **Queries** tab and scroll until you find the query that you want. Double-click the query name to load the query in the query editor. For more options, select the vertical ellipses ( ![kebab icon](../../media/ah-kebab.png) ) to the right of the query. From here, you can perform the following actions:

- **Run query** – loads the query in the query editor and runs it automatically
- **Open in query editor** – loads the query in the query editor
- **View details** – opens the query details side pane where you can inspect the query, run the query, or open the query in the editor

:::image type="content" source="../../media/advanced-hunting-unified-view-details.png" alt-text="The Link to incident option of the Results tab in the Microsoft Defender portal" lightbox="../../media/advanced-hunting-unified-view-details.png":::


For editable queries, additional options are available when you select the vertical ellipses ( ![kebab icon](../../media/ah-kebab.png) ):

- **Edit details** – opens the query details side pane with the option to edit the details like description (if applicable) and the query itself; only the folder names (location) of Sentinel queries can’t be edited
- **Delete** – deletes the query
- **Rename** – allows you to modify the query name

## Create custom analytics and detection rules

To help discover threats and anomalous behaviors in your environment, you can create custom detection policies. 

For analytics rules that apply to data ingested through the connected Sentinel workspace, select **Manage rules > Create analytics rule**. 

:::image type="content" source="../../media/advanced-hunting-unified-rules.png" alt-text="The Link to incident option of the Results tab in the Microsoft Defender portal" lightbox="../../media/advanced-hunting-unified-rules.png":::

The **Analytics rule wizard** appears. Fill up the required details as described in [Analytics rule wizard—General tab](https://learn.microsoft.com/azure/sentinel/detect-threats-custom#analytics-rule-wizardgeneral-tab).

For custom detection rules that apply to Microsoft Defender XDR data, select **Manage rules > Create custom detection**. Read [Create and manage custom detection rules](custom-detection-rules.md) for more information. 

## Explore results

Results of queries that you have run appear in the **Results** tab. You can export the results to a CSV file by selecting **Export**. 

:::image type="content" source="../../media/advanced-hunting-unified-results.png" alt-text="The Link to incident option of the Results tab in the Microsoft Defender portal" lightbox="../../media/advanced-hunting-unified-results.png":::

You can also explore the results in-line with the following features:

- Expand a result by selecting the dropdown arrow at the left of each result
- Where applicable, expand details for results that are in JSON or array format by selecting the dropdown arrow at the left of applicable result row for added readability
- Open the side pane to see a record’s details (concurrent with expanded rows)

You can also right-click on any result value in a row so that you can use it to add more filters to the existing query or copy the value for use in further investigation.

For Microsoft Defender XDR data, you can take further action by selecting the checkboxes to the left of each result row. Select **Link to incident** to link the selected results to an incident (read [Link query results to an incident](advanced-hunting-link-to-incident.md)) or **Take actions** to open the Take actions wizard (read [Take action on advanced hunting query results](advanced-hunting-take-action.md)).

## Known issues

- The `IdentityInf`o table from Sentinel is not available, as the IdentityInfo remains as is in Defender XDR. Sentinel features like analytics rules that query this table won’t be impacted as they are querying the Log Analytics workspace directly.
- The Sentinel `SecurityAlert` table is replaced by `AlertInfo` and `AlertEvidence` tables, which both contain all the data on alerts. While SecurityAlert is not available in the schema tab, you can still use it in queries using the advanced hunting editor. This provision is made so as not to break existing queries from Sentinel that use this table. 
- Guided hunting mode is supported for Defender XDR data only.
- Custom detections and take actions capabilities are supported for Defender XDR data only.
- Bookmarks are not supported in the advanced hunting experience.
- If you are streaming Defender XDR tables to Log Analytics, there might be a difference between the`Timestamp` and `TimeGenerated` columns. In case the data arrives to Log Analytics after 48 hours, it is being overridden upon ingestion to `now()`. Therefore, to get the actual time the event happened, we recommend relying on the `Timestamp` column.
- Full parity between the Log Analytics grid capabilities and advanced hunting is not yet available, but the most significant gaps are being closed. You can contact your Microsoft representative to share your feedback about your experience with advanced hunting in the unified portal.


