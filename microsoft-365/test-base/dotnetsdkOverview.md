---
title: Test Base SDK for .NET #Required; page title displayed in search results. Include the brand.
description: n/a #Required; article description that is displayed in search results.
author: v-zhifufeng #Required; your GitHub user alias, with correct capitalization.
ms.author: v-zhifufeng #Required; microsoft alias of author; optional team alias.
ms.service: virtual-desktop #Required; service per approved list. service slug assigned to your service by ACOM.
ms.topic: faq #Required
ms.date: 01/04/2021 #Required; mm/dd/yyyy format.
---

# Test Base SDK for .NET

## Overview
Use test base SDK to interact with the Azure Test Base Resource. (i.e. manage your application package, include create package, edit package and delete package)

Test summaries and Analysis Results which can be gotten with SDK include : scriptExecution, reliability, memoryUtilization, cpuUtilization, memoryRegression, cpuRegression.

With the Test Base SDK, you can integrate Test Base in your CI/CD runs.

## Visual Studio Package Manager

-   Install the Test Base package with Nuget.
```
nuget add package Microsoft.Testbase
```
 
## Example