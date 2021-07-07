---
title: 'Test Base SDK for .NET'
description: Details on the various types of SDKs Test Base interacts with.
search.appverid: MET150
author: mansipatel-usl
ms.author: mapatel
manager: rshastri
audience: Software-Vendor
ms.topic: how-to
ms.date: 07/06/2021
ms.prod: ms.prod
localization_priority: Normal
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: mapatel
f1.keywords: NOCSH
---
# Test Base SDK for .NET

## Overview
Use Test Base SDK to interact with the Azure Test Base Resource. (i.e. manage your application package, include create package, edit package and delete package)

Test summaries and analysis results which can be retrieved with a SDK include : scriptExecution, reliability, memoryUtilization, cpuUtilization, memoryRegression, cpuRegression.

With the Test Base SDK, you will be able to integrate Test Base in your CI/CD runs.

## Visual Studio package manager

-   Install the Test Base package with Nuget.
```
nuget add package Microsoft.Testbase
```
 
## Example
