---
title: Microsoft Defender for Endpoint APIs connection to Power BI
ms.reviewer:
description: Create a Power Business Intelligence (BI) report on top of Microsoft Defender for Endpoint APIs.
keywords: apis, supported apis, Power BI, reports
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier3
- must-keep
ms.topic: conceptual
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 12/18/2020
---

# Create custom reports using Power BI

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

In this section you will learn to create a Power BI report on top of Defender for Endpoint APIs.

The first example demonstrates how to connect Power BI to Advanced Hunting API, and the second example demonstrates a connection to our OData APIs, such as Machine Actions or Alerts.

## Connect Power BI to Advanced Hunting API

1. Open Microsoft Power BI.

2. Select **Get Data** \> **Blank Query**.
   :::image type="content" source="images/power-bi-create-blank-query.png" alt-text="The Blank Query option under the Get Data menu item" lightbox="images/power-bi-create-blank-query.png":::

3. Select **Advanced Editor**.
   :::image type="content" source="images/power-bi-open-advanced-editor.png" alt-text="The Advanced Editor menu item" lightbox="images/power-bi-open-advanced-editor.png":::

4. Copy the below and paste it in the editor:

   ```
       let
           AdvancedHuntingQuery = "DeviceEvents | where ActionType contains 'Anti' | limit 20",
   
           HuntingUrl = "https://api.securitycenter.microsoft.com/api/advancedqueries",
   
           Response = Json.Document(Web.Contents(HuntingUrl, [Query=[key=AdvancedHuntingQuery]])),
   
           TypeMap = #table(
               { "Type", "PowerBiType" },
               {
                   { "Double",   Double.Type },
                   { "Int64",    Int64.Type },
                   { "Int32",    Int32.Type },
                   { "Int16",    Int16.Type },
                   { "UInt64",   Number.Type },
                   { "UInt32",   Number.Type },
                   { "UInt16",   Number.Type },
                   { "Byte",     Byte.Type },
                   { "Single",   Single.Type },
                   { "Decimal",  Decimal.Type },
                   { "TimeSpan", Duration.Type },
                   { "DateTime", DateTimeZone.Type },
                   { "String",   Text.Type },
                   { "Boolean",  Logical.Type },
                   { "SByte",    Logical.Type },
                   { "Guid",     Text.Type }
               }),
   
           Schema = Table.FromRecords(Response[Schema]),
           TypedSchema = Table.Join(Table.SelectColumns(Schema, {"Name", "Type"}), {"Type"}, TypeMap , {"Type"}),
           Results = Response[Results],
           Rows = Table.FromRecords(Results, Schema[Name]),
           Table = Table.TransformColumnTypes(Rows, Table.ToList(TypedSchema, (c) => {c{0}, c{2}}))
   
       in Table
   ```

5. Select **Done**.

6. Select **Edit Credentials**.

   :::image type="content" source="images/power-bi-edit-credentials.png" alt-text="The Edit Credentials menu item" lightbox="images/power-bi-edit-credentials.png":::

7. Select **Organizational account** \> **Sign in**.

   :::image type="content" source="images/power-bi-set-credentials-organizational.png" alt-text="The Sign in option in the Organizational account menu item" lightbox="images/power-bi-set-credentials-organizational.png":::

8. Enter your credentials and wait to be signed in.

9. Select **Connect**.

   :::image type="content" source="images/power-bi-set-credentials-organizational-cont.png" alt-text="The sign-in confirmation message in the Organizational account menu item" lightbox="images/power-bi-set-credentials-organizational-cont.png":::

Now the results of your query will appear as a table and you can start to build visualizations on top of it!

You can duplicate this table, rename it, and edit the Advanced Hunting query inside to get any data you would like.

## Connect Power BI to OData APIs

The only difference from the previous example is the query inside the editor. Follow steps 1-3 above.

At step 4, instead of the code in that example, copy the code below and paste it in the editor to pull all **Machine Actions** from your organization:

```
    let

        Query = "MachineActions",

        Source = OData.Feed("https://api.securitycenter.microsoft.com/api/" & Query, null, [Implementation="2.0", MoreColumns=true])
    in
        Source
```

You can do the same for **Alerts** and **Machines**.
You also can use OData queries for queries filters, see [Using OData Queries](exposed-apis-odata-samples.md).

## Power BI dashboard samples in GitHub

For more information see the [Power BI report templates](https://github.com/microsoft/MicrosoftDefenderATP-PowerBI).

## Sample reports

View the Microsoft Defender for Endpoint Power BI report samples. For more information, see [Browse code samples](/samples/browse/?products=mdatp).

## Related topics

- [Defender for Endpoint APIs](apis-intro.md)
- [Advanced Hunting API](run-advanced-query-api.md)
- [Using OData Queries](exposed-apis-odata-samples.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
