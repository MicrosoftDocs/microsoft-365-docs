---
title: Create custom Microsoft Defender XDR reports using Microsoft Graph security API and Power BI 
description: How to create custom Microsoft Defender XDR reports using Microsoft Graph security API and Power BI 
keywords: reports, Microsoft Defender XDR, Microsoft Graph security API, Power BI
ms.service: defender-xdr
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 01/03/2023
manager: dansimp
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---
# Create custom Microsoft Defender XDR reports using Microsoft Graph security API and Power BI 

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

Empowering security professionals to visualize their data enables them to quickly recognize complex patterns, anomalies, and trends that might otherwise be lurking underneath the noise. With visualizations, SOC teams can rapidly identify threats, make informed decisions, and communicate insights effectively across the organization.

There are multiple ways to visualize Microsoft Defender security data:

- Navigating built-in reports in the Microsoft Defender portal
- Using Microsoft Sentinel workbooks with prebuilt templates for every Defender product (requires integration with Microsoft Sentinel)
- Applying the render function in Advanced Hunting
- Using Power BI to expand existing reporting capabilities.

In this article we'll create a sample Security Operations Center (SOC) efficiency dashboard in Power BI using Microsoft Graph security API. We'll access it in user context, therefore user must have [corresponding permissions](manage-rbac.md) to be able to view alerts and incidents data.

> [!NOTE]
> **Example below is based on our new MS Graph security API**. Find out more at: [Use the Microsoft Graph security API](/graph/api/resources/security-api-overview).


## Importing data into Power BI

In this section we'll go through the steps required to get Microsoft Defender XDR data into Power BI, using Alerts data as an example.

1.	Open Microsoft Power BI Desktop.
2.	Select **Get Data > Blank Query**.
3.	Select **Advanced Editor**.

  	:::image type="content" source="../../../microsoft-365/media/defender/power-bi/manage-parameters.png" alt-text="Screenshot that shows how to create a new data query in PowerBI Desktop.." lightbox="../../../microsoft-365/media/defender/power-bi/manage-parameters.png":::

5.	Paste in Query:
    ```
    let
        Source = OData.Feed("https://graph.microsoft.com/v1.0/security/alerts_v2", null, [Implementation="2.0"])
    in
        Source
    ```
6.	Select **Done**.
7.	You'll be prompted for credentials, select **Edit Credentials**:
   
    :::image type="content" source="../../../microsoft-365/media/defender/power-bi/edit-credentials-api.png" alt-text="Screenshot of how to edit credentials for API connection." lightbox="../../../microsoft-365/media/defender/power-bi/edit-credentials-api.png":::

9.	Select **Organizational account > Sign in**.
    
    :::image type="content" source="../../../microsoft-365/media/defender/power-bi/sign-in-org-account.png" alt-text="Screenshot of the organizational account authentication window." lightbox="../../../microsoft-365/media/defender/power-bi/sign-in-org-account.png":::

11.	Enter credentials for account with access to Microsoft Defender XDR incidents data.
12.	Select **Connect**.

Now the results of your query appears as a table, and you can start building visualizations on top of it.

> [!TIP]
> If you are looking to visualize other forms of Microsoft Graph security data like Incidents, Advanced Hunting, Secure Score, etc., see [Microsoft Graph security API Overview](/graph/api/resources/security-api-overview).


## Filtering data

Microsoft Graph API supports OData protocol so that users don't have to worry about pagination - or requesting the next set of data. However, filtering data is essential to improving load times in a busy environment.

Microsoft Graph API supports [query parameters](/graph/filter-query-parameter), below are few examples of filters used in the report:

- The query below will return the list of alerts generated over the past three days. Note that using this query in environments with high volumes of data may result in hundreds of megabytes of data that could take a moment to load. By using this hardcoded approach, you'll be able to quickly see your most recent alerts over the last three days as soon as you open the report.

  ```
  let
      AlertDays = "3",
      TIME = "" & Date.ToText(Date.AddDays(Date.From(DateTime.LocalNow()), -AlertDays), "yyyy-MM-dd") & "",
      Source = OData.Feed("https://graph.microsoft.com/v1.0/security/alerts_v2?$filter=createdDateTime ge " & TIME & "", null, [Implementation="2.0"])
  in
      Source
  ```

- Instead of collecting data across a date range, we can gather alerts across more precise dates by inputting a date using the YYYY-MM-DD format.

  ```
  let
      StartDate = "YYYY-MM-DD",
      EndDate = "YYYY-MM-DD",
      Source = OData.Feed("https://graph.microsoft.com/v1.0/security/ alerts_v2?$filter=createdDateTime ge " & StartDate & " and createdDateTime lt " & EndDate & "", null, [Implementation="2.0"])
  in
      Source
  ```

- When historical data is required (for example, comparing the number of incidents per month), filtering by date isn't an option (since we want to go as far back as possible). In this case we need to pull a few selected fields shown below:

  ```
  let
      Source = OData.Feed("https://graph.microsoft.com/v1.0/security/alerts_v2?$filter=createdDateTime ge " & StartLookbackDate & " and createdDateTime lt " & EndLookbackDate & 
  "&$select=id,title,severity,createdDateTime", null, [Implementation="2.0"])
  in
      Source
  ```

## Introducing parameters

Instead of constantly querying the code to adjust the timeframe, use parameters to set a Start and End Date each time you open the report. To do this, follow the steps below:

1.	Go to **Query Editor**.
2.	Select **Manage Parameters > New Parameter**.
3.	Set desired parameters.

In the example below, we use two different time frames, Start and End dates.

:::image type="content" source="../../../microsoft-365/media/defender/power-bi/manage-parameters.png" alt-text="Screenshot of how to manage Parameters in PowerBI." lightbox="../../../microsoft-365/media/defender/power-bi/manage-parameters.png":::

4.	Remove hardcoded values from the queries and make sure that StartDate and EndDate variable names correspond to parameter names:

    ```
    let
        Source = OData.Feed("https://graph.microsoft.com/v1.0/security/incidents?$filter=createdDateTime ge " & StartDate & " and createdDateTime lt " & EndDate & "", null, [Implementation="2.0"])
    in
        Source
    ```

## Reviewing the report

Once the data has been queried and the parameters are set, now we can review the report. During the first launch of the .PBIT report file you'll be prompted to provide the parameters that we specified earlier:

:::image type="content" source="../../../microsoft-365/media/defender/power-bi/soc-overview-dashboard.png" alt-text="Screenshot of the PowerBI template parameter prompt window." lightbox="../../../microsoft-365/media/defender/power-bi/soc-overview-dashboard.png":::


The dashboard offers three tabs intended to provide SOC insights. The first tab provides a summary of all recent alerts (depending on the selected timeframe). This helps analysts clearly understand the security state over their environment using alert details broken down by detection source, severity, total number of alerts and mean-time-to-resolution.


:::image type="content" source="../../../microsoft-365/media/defender/power-bi/alert-tab-powerbi.png" alt-text="Screenshot of the alerts tab of resulting PowerBI report." lightbox="../../../microsoft-365/media/defender/power-bi/alert-tab-powerbi.png":::


The second tab offers more insight into the attack data collected across the incidents and alerts. This view can provide analysts with greater perspective into the types of attacks executed and how they map to the MITRE ATT&CK framework.

:::image type="content" source="../../../microsoft-365/media/defender/power-bi/insights-tab-powerbi.png" alt-text="Screenshot of the insights tab of resulting PowerBI report." lightbox="../../../microsoft-365/media/defender/power-bi/insights-tab-powerbi.png":::

## Power BI dashboard samples

For more information, see the 
[Power BI report templates sample file](https://download.microsoft.com/download/0/1/6/01686830-b4e4-4cc1-af5b-7e07eab3ff55/defender-xdr-soc-overview.zip).

## Related articles

- [Use Microsoft Graph security API](/graph/api/resources/security-api-overview)
