---
title: 'Downloading and Analyzing Test Result Files'
description: How to Downloading and Analyzing Test Result Files
search.appverid: MET150
author: Tinacyt
ms.author: tinachen
manager: rshastri
audience: Software-Vendor
ms.topic: troubleshooting
ms.date: 10/13/2022
ms.service: test-base
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:
ms.reviewer: Tinacyt
f1.keywords: NOCSH
---

# Downloading and Analyzing Test Result Files

**Test Base for Microsoft 365** generates downloadable event trace log (ETL) files that collect low-level data based on application testing. These trace files contain event data that is captured during test execution, from which memory utilization, CPU utilization, and other performance data is derived.

Additional relevant test execution results data that you can analyze is described in the table that follows. The data folders listed in the table below exist within the a **logs.zip** folder that is accessible from the **Log files: Download** link in the Test Base results for an application that completed testing against a specified operating system version.

## Table 1. Data Sources for Performance and Results Analysis

| Data Folder | Performance or Results Data Source | FileType | Description |
|----|----|----|----|
|package|Application installation results (.log)|.log|See app installation and script logs.|
|performance|Performance counters (.csv)|.csv|Review Perf counter data.|
|results|Exit codes (.csv)|.csv|See application exit codes.|
|scripts|Script log files (.log)|.log|Analyze script stderr and stdout logs.|
|systemInfo|System information (.json)|.json|Review system information data.|
|trace|% Memory utilization by process|.csv|Evaluate utilization results data.|
|trace|% CPU utilization by process|.csv|Evaluate utilization results data.|
|trace|WPA Trace|.etl|Performance trace to be analyzed in WPA.|
|winEvt|Event Viewer (.evtx)|.evtx|Examine application event logs.|

If you choose not to download the log files because you would rather analyze data in the **Test Base** web view, you have the option to observe certain data from the **Script execution** tab. To do so, click the linked name of an individual script and view the **Log Output** directly in the portal, as shown in the right-hand sector of the figure that follows.

:::image type="content" source="Media/downloadingandanalyzingtestresultfiles01.png" alt-text="Screenshot shows Scripts Execution Results." lightbox="Media/downloadingandanalyzingtestresultfiles01.png":::

**Figure 6. Viewing log output in the Script Execution tab**
