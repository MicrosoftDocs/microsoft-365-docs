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
ms.date: 12/18/2023
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
- Using Microsoft Sentinel workbooks with pre-built templates for every Defender product (requires integration with Microsoft Sentinel)
- Applying the render function in Advanced Hunting
- Leveraging PowerBI to expand existing reporting capabilities.

In this article we will create a sample Security Operations Center (SOC) efficiency dashboard in PowerBI using Microsoft Graph security API. We will access it in user context, therefore user must have [corresponding permissions](https://learn.microsoft.com/microsoft-365/security/defender/manage-rbac?view=o365-worldwide) to be able to view alerts and incidents data.

> [!NOTE]
> **Example below is based on our new MS Graph security API**. Find out more at: [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](https://learn.microsoft.com/graph/api/resources/security-api-overview?view=graph-rest-1.0).


## Importing data into PowerBI

In this section we will go through the steps required to get Microsoft Defender XDR data into Power BI, using Alerts data as an example.

1.	Open Microsoft Power BI Desktop.
2.	Select **Get Data > Blank Query**.
3.	Select **Advanced Editor**.
![Create a new data query in PowerBI.](https://github.com/MicrosoftDocs/microsoft-365-docs-pr/assets/25099900/efa40754-e7a8-48ca-902b-5b41b00c0e65)

4.	Paste in Query:
```
let
    Source = OData.Feed("https://graph.microsoft.com/v1.0/security/alerts_v2", null, [Implementation="2.0"])
in
    Source
```
6.	Click **Done**.
7.	You will be prompted for credentials, click **Edit Credentials**:
![Edit credentials for API connection.](https://github.com/MicrosoftDocs/microsoft-365-docs-pr/assets/25099900/aa6caadc-943d-4760-b5f7-ad7f9e8317ed)

8.	Select **Organizational account > Sign in**.
![Organizational account authentication window.](https://github.com/MicrosoftDocs/microsoft-365-docs-pr/assets/25099900/c8e46dee-5fb8-4564-98a1-bdfc3cd9989f)

9.	Enter credentials for account with access to Microsoft Defender XDR incidents data.
10.	Click **Connect**.

Now the results of your query will appear as a table, and you can start building visualizations on top of it.

> [!TIP]
> If you are looking to visualize other forms of Microsoft Graph security data like Incidents, Advanced Hunting, Secure Score, etc., see [Microsoft Graph security API Overview](https://learn.microsoft.com/en-us/graph/api/resources/security-api-overview).


## Filtering data

Microsoft Graph API supports OData protocol so that users don't have to worry about pagination - or requesting the next set of data. However, filtering data is essential to improving load times in a busy environment.

Microsoft Graph API supports [query parameters](https://learn.microsoft.com/graph/filter-query-parameter), below are few examples of filters used in the report:

- The query below will return the list of alerts generated over the past 3 days. Please note that using this query in environments with high volumes of data mayy result in hundreds of megabytes of data that could take a moment to load. By using this hardcoded approach, you will be able to quickly see your most recent alerts over the last 3 days as soon as you open the report.

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

- When historical data is required (e.g., comparing the number of incidents per month), filtering by date is not an option (since we want to go as far back as possible). In this case we need to pull a few selected fields shown below:

```
let
    Source = OData.Feed("https://graph.microsoft.com/v1.0/security/alerts_v2?$filter=createdDateTime ge " & StartLookbackDate & " and createdDateTime lt " & EndLookbackDate & "&$select=id,title,severity,createdDateTime", null, [Implementation="2.0"])
in
    Source
```

## Introducing parameters

Instead of constantly querying the code to adjust the timeframe, use parameters to set a Start and End Date each time you open the report. To do this, follow the steps below:

1.	Go to **Query Editor**.
2.	Click **Manage Parameters > New Parameter**.
3.	Set desired parameters.

In the example below, we use two different time frames, Start and End dates.
![Manage Parameters in PowerBI.](https://github.com/MicrosoftDocs/microsoft-365-docs-pr/assets/25099900/c3443181-5742-413c-a15c-8e33990a1317)

4.	Remove hardcoded values from the queries and make sure that StartDate and EndDate variable names correspond to parameter names:

```
let
    Source = OData.Feed("https://graph.microsoft.com/v1.0/security/incidents?$filter=createdDateTime ge " & StartDate & " and createdDateTime lt " & EndDate & "", null, [Implementation="2.0"])
in
    Source
```

## Reviewing the report

Once the data has been queried and the parameters are set, now we can review the report. During the first launch of the .PBIT report file you will be prompted to provide the parameters that we specified earlier:

![PowerBI template parameter prompt window.](https://github.com/MicrosoftDocs/microsoft-365-docs-pr/assets/25099900/a30b8c59-606f-45bd-9386-43a754ed37a0)


The dashboard offers three tabs intended to provide SOC insights. The first tab provides a summary of all recent alerts (depending on the selected timeframe). This helps analysts clearly understand the security state over their environment using alert details broken down byby detection source, severity, total number of alerts and mean-time-to-resolution.

![Alerts tab of resulting PowerBI report.](https://github.com/MicrosoftDocs/microsoft-365-docs-pr/assets/25099900/8fd4aeb7-1187-4790-a74f-306ad2bee165)


The second tab offers moreinsight into the attack data collected across the incidents and alerts. This view can provide analysts with greater perspective into the types of attacks executed and how they map to the MITRE ATT&CK framework.

![Insights tab of resulting PowerBI report.](https://github.com/MicrosoftDocs/microsoft-365-docs-pr/assets/25099900/f29b6712-ed70-4748-9c7e-aa53d3d53f83)


## Power BI dashboard samples in GitHub

For more information see the Power BI report templates.

https://github.com/alzams/defender/tree/main/Reports

## Related topics

- [Use Microsoft Graph security API](https://learn.microsoft.com/graph/api/resources/security-api-overview)
