---
title: Test Base SDK for Python #Required; page title displayed in search results. Include the brand.
description: n/a #Required; article description that is displayed in search results.
author: v-zhifufeng #Required; your GitHub user alias, with correct capitalization.
ms.author: v-zhifufeng #Required; microsoft alias of author; optional team alias.
ms.service: virtual-desktop #Required; service per approved list. service slug assigned to your service by ACOM.
ms.topic: faq #Required
ms.date: 01/04/2021 #Required; mm/dd/yyyy format.
---

# Test Base SDK for Python

## Overview
The Test Base SDK can be used to interact with the Azure test base resource. (i.e. manage your application package, include create package, edit package and delete package)

With the SDK, the test summary and Analysis Result which can be gotten include : scriptExecution, reliability, memoryUtilization, cpuUtilization, memoryRegression, cpuRegression.

With test base SDK, you can integrate test base in your CI/CD pipeline.

## Client Library

Install the test base package with pip.

~~~
pip install  Microsoft.Testbase
~~~
 
## Example