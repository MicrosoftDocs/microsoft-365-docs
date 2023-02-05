---
title: Microsoft Teams Virtual Appointments Call Quality Dashboard
author: daisyfell
ms.author: daisyfeller
manager: pamgreen
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-frontline
ms.reviewer: ansantam
f1.keywords:
- NOCSH
ms.localizationpriority: medium
search.appverid: MET150
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - m365initiative-meetings
description: Learn how to use the Call Quality Dashboard for Virtual Appointments in Microsoft Teams to troubleshoot issues and analyze call quality.
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 1/30/2023
---
# Microsoft Teams Virtual Appointments call quality dashboard

The Call Quality Dashboard (CQD) is a self-service data environment that empowers you to access data on Teams usage throughout your organization, build reports to analyze call quality, and troubleshoot call issues. The Call Quality Dashboard analytics suite tracks several hundred data points on your organization's Teams calls and stores them in a database that you can easily access using a Power BI connector.

When you access this data, you can use it to analyze high-level metrics such as daily call errors and total call volume. You can also use it to determine things such as why a participant dropped a call or why a particular building has an unusually high rate of dropped calls. You do this analysis in Power BI by developing reports that can be published to the web, where they can automatically receive updated data at scheduled refresh times or at nearly real-time refresh rates. Once the reports are published to the web, you can distribute links within your organization and set permissions to allow users to explore the data themselves. This also allows users to export the underlying information to Excel.

> [!NOTE]
> Power BI reports published to the web are only accessible to authorized admins.

## Get started

You'll need to work with the [CQD support team](mailto:cqdsupport@microsoft.com) and your customer success contact to set up your Call Quality Dashboard. You can also [read the documentation to learn more about setting up CQD](/microsoftteams/turning-on-and-using-call-quality-dashboard).

1. [Sign into CQD](https://cqd.teams.microsoft.com) with your admin credentials.
1. From the menu bar, select **Analysis & Reports**.
1. Then, choose **Call Quality Dashboard**.

After you sign in for the first time, CQD will begin collecting and processing data.

> [!NOTE]
> It may take a few hours to process enough data to display meaningful results in the reports.

After the CQD environment has populated and finished setting up, you can begin to analyze data from the existing dashboards. You can find these in the dropdown menu at the top of the page. When the environment is populated, you can also use [Power BI desktop](https://www.microsoft.com/p/power-bi-desktop/9ntxr16hnw1t#activetab=pivot:overviewtab) to create highly customizable reports. Use the [CQD Power BI template files](/microsoftteams/cqd-data-and-reports#import-the-cqd-report-templates) to get started. These template files contain many of the most frequently requested call quality metrics and charts.

## Working with CQD in Power BI

Before you begin analyzing organizational call quality data, you'll need to [install](/p/power-bi-desktop/9ntxr16hnw1t#activetab=pivot:overviewtab) and [learn to use](https://powerbi.microsoft.com/learning/) Power BI desktop. To access the CQD database through Power BI, you'll need to [download and install the Teams CQD connector](/microsoftteams/cqd-power-bi-connector). Make sure to install the CQD connector in the relevant Documents folder.

Once you've installed the connector, you'll be able to access the CQD database in Power BI.

[![Example screenshot of CQD data in Power BI.](media/call-quality-dashboard.png)](media/call-quality-dashboard-big.png)

> [!TIP]
> You can get a head start by using the [CQD Power BI template files](/microsoftteams/cqd-data-and-reports#import-the-cqd-report-templates). The template files are already connected to the CQD data source. You still need to have the connector installed to use the template files.

### Start a report from scratch

If you choose not to use the template files, you can create a Power BI report from scratch.

1. Follow the [setup](/microsoftteams/cqd-power-bi-connector#setup) and [building queries](/microsoftteams/cqd-power-bi-connector#building-queries) instructions in the CQD connector documentation.
1. Select **Get Data** in Power BI.
1. Search the connectors for **Call Quality**.

## Use cases

You can analyze CQD data in several different ways.

- **[Teams admin center](https://admin.teams.microsoft.com/):** You can find a pre-made and easy to read set of insights immediately after setting up CQD. However, you can't extensively customize the insights shown in the Teams admin center.
    1. Select **Analytics and reports** from the left navigation in your Teams admin center.
    1. Choose **Call quality dashboard**.
- **[CQD portal](https://cqd.teams.microsoft.com/):** Here you can filter and customize reports that provide quick answers to many frequently asked questions.
- **[Power BI](/microsoftteams/cqd-power-bi-query-templates):** Using Power BI gives you the most customizable options for creating reports. Here you can use CQD data to understand user behavior, see usage patterns, and resolve individual call issues. You can use Power BI to supplement the aforementioned dashboards with answers that aren't available in the pre-made reports.

## Virtual appointments data

You can also use CQD to gather and analyze data specific to Virtual Appointments.

### Differentiate EHR and Bookings appointments

You can view the point of origin of a scheduled call by using the **Scheduling Source App ID** column. You can find this in the **Fields** list. Then drag and drop the slicer onto the canvas.

[![Screenshot of example CQD data in Power BI with the Scheduling Source App ID column.](media/cqd-app-source.png)](media/cqd-app-source-big.png)

EHR connector appointments have the ID e97edbaf-39b2-4546-ba61-0a24e1bef890.
Bookings appointments have the ID 0eaa6b95-4a35-4a5d-9919-e4fc61fb4bdb.

> [!NOTE]
> Scheduling Source App ID isn't one of the default slicers in the PBIT templates.

## Get help

You can get help by contacting CQD support at cqdsupport@microsoft.com. You can also reach out to your Designated Support Engineering POD for more support with Power BI.
