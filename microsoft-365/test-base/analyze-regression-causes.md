---
title: 'Analyzing the Causes of Regressions'
description: How to Analyze the Causes of Regressions
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

# Analyzing the Causes of Regressions

In order to understand the cause of a Memory or CPU utilization regression, you have various data sources and tools that you can utilize to assist you. As part of the Windows Assessment and Deployment Kit (Windows ADK), Windows Performance Recorder (WPR) is a performance recording tool based on Event Tracing for Windows (ETW). This tool assists you in gathering the right data from which you can gain an understanding of the cause(s) of a regression. It records system and application events in an .etl file, which you will thereafter use as input to the Windows Performance Analyzer (WPA). you can also use WPR and WPA together to investigate specific areas of performance and to gain an overall understanding of resource consumption.

Once a regression is detected, you can download the Windows Performance Analyzer toolkit and analyze reasons for Memory or CPU performance regressions, that is, after you provide the above mentioned .etl file as input to the WPA.

Note that these .etl files are available in the log files that are downloadable for test runs on the Test Base user portal.  After completing a test run, you can download zip files for one or more test executions run by clicking the **Log files: Download** link for a set of test results. Once downloaded, you can unzip the logs for the test run/s, then locate the associated WPR-generated .etl file/s, each within a separate **\trace** folder.

**To learn more** about Windows Performance Recorder, see the [Windows Performance Recorder](/windows-hardware/test/wpt/windows-performance-recorder) documentation on [learn.Microsoft.com](/).

**To learn more** about debugging Memory and CPU utilization regressions with Windows Performance Analyzer (WPA), see the [Windows Performance Analyzer](/windows-hardware/test/wpt/windows-performance-analyzer) documentation on [learn.Microsoft.com](/). It is an example of how to debug a type of regressions. More info on how to use WPA and our zip is not covered on this page.

**To learn more** about CPU regression analysis, see [Intelligent CPU regression analysis with Test Base for Microsoft 365](https://techcommunity.microsoft.com/t5/test-base-blog/intelligent-cpu-regression-analysis-with-test-base-for-microsoft/ba-p/2112977).

**To learn more** about Windows Event Tracing, see [ETW Framework Conceptual Tutorial](/message-analyzer/etw-framework-conceptual-tutorial).
