---
title: 'Determining Relevant Processes for Regression Detection'
description: How to Determining Relevant Processes for Regression Detection
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

# Determining Relevant Processes for Regression Detection

To identify regressed processes in each application, different types of performance counters for every process running on a virtual machine during a test run should be tracked. Analyzing a performance regression involves assessing variables for many processes during application testing. Thus making the case for determining which are relevant for monitoring.

To decide which processes are relevant for a given application, Test Base uses a mutual information ranking algorithm. The application and process can both be considered a type of discrete random variable. The association of the two random variables is measured using conditional probabilities for relevance. Processes are currently not displayed based on relevance.

To learn more about mutual information ranking and how it is used in the **Test Base** service, see: [Infinite Segmentation: Scalable Mutual Information Ranking on Real World Graphs](//medium.com/microsoftazure/infinite-segmentation-scalable-mutual-information-ranking-on-real-world-graphs-f4983ba81be3).

> [!NOTE]
> On the **Reliability** tab, you can favorite a subset of processes that can be monitored along with relevant processes for Memory and CPU regression analysis. Favorited processes that are manually selected will be considered relevant by Test Base and included in the calculation of Memory and CPU regressions.
