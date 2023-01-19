---
title: 'Understanding CPU Regression Analysis'
description: How to Understand CPU Regression Analysis
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

# Understanding CPU Regression Analysis

After uploading your application's binaries along with associated test scripts, the Test Base service will then run the test scripts, and automatically perform CPU and Memory regression analysis. The service will then check if the CPU utilization for the application on the pre-release version of the update for the target OS is in line with the CPU utilization for the released version of the OS.

CPU utilization is not likely to be a direct comparative match by operating system, given there can be differences for processes that are running on two different operating system versions. However, in these cases, the **Test Base** service analysis should be able to demonstrate whether CPU utilization for your application is impacted by an upcoming operating system update and specifically which processes have regressed from previous test runs.

In the figure that follows, there are two OS release versions against which CPU utilizations are compared for the same application. The list of processes should expose any significant regressions. The graphs show CPU % utilization over time along with the average % utilization per operating system version release.

> [!NOTE]
> Memory or CPU utilization might also improve as a result of an operating system update, rather than simply deteriorate.

:::image type="content" source="Media/understandingcpuregressionanalysis01.png" alt-text="Screenshot shows C P U Regression." lightbox="Media/understandingcpuregressionanalysis01.png":::

**Figure 5. CPU utilization data graph**
