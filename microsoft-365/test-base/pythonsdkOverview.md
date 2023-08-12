---
title: 'Test Base SDK for Python'
description: Details on understanding Test Base's SDK for Python
search.appverid: MET150
author: mansipatel-usl
ms.author: tinachen
manager: rshastri
audience: Software-Vendor
ms.topic: article
ms.date: 07/06/2021
ms.service: test-base
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: tinachen
f1.keywords: NOCSH
---
# Test Base SDK for Python

## Overview
The Test Base SDK can be used to interact with the Azure test base resource. (That is, manage your application package, include create package, edit package, and delete package).

With the SDK, the test summary and Analysis Result that can be gotten include: scriptExecution, reliability, memoryUtilization, cpuUtilization, memoryRegression, cpuRegression.

With the Test Base SDK, you can integrate test base in your CI/CD pipeline.

## Client Library

Install the test base package with pip.

~~~
pip install  Microsoft.Testbase
~~~
 
## Example
