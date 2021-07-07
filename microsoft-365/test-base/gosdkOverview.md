---
title: 'Test Base libraries for GO'
description: Details on test base libraries. Not public yet.
search.appverid: MET150
author: mansipatel-usl
ms.author: mapatel
manager: rshastri
audience: Software-Vendor
ms.topic: article
ms.date: 07/06/2021
ms.service: virtual-desktop
localization_priority: Normal
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: mapatel
f1.keywords: NOCSH
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
