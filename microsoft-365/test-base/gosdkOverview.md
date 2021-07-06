---
title: Test Base libraries for GO #Required; page title displayed in search results. Include the brand.
description: n/a #Required; article description that is displayed in search results.
author: v-zhifufeng #Required; your GitHub user alias, with correct capitalization.
ms.author: v-zhifufeng #Required; microsoft alias of author; optional team alias.
ms.service: virtual-desktop #Required; service per approved list. service slug assigned to your service by ACOM.
ms.topic: faq #Required
ms.date: 01/04/2021 #Required; mm/dd/yyyy format.
---

# Test Base SDK for GO

## Overview

In this article, we explore how to use the Test Base SDK to interact with the Azure Test Base resource. i.e. manage your application package, include create package, edit package and delete package.

Also, using the SDK we can get our test summary and Analysis Result which includes: scriptExecution, reliability, memoryUtilization, cpuUtilization, memoryRegression, cpuRegression.

With test base SDK, we can integrate test base our CI/CD pipeline.

## Client Library

~~~
go get Microsoft.Testbase
~~~
 
## Example