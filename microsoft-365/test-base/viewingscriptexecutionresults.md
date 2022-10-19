
---
title: 'Viewing Script Execution Results'
description: How to Viewing Script Execution Results
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

# Viewing Script Execution Results

To display the Test Results for script execution, perform the steps that follow.
1. Select the **Security update results** under the **Insights** menu category.
2. In the **Security update results** display, select the values for your package in the following drop-downs: **Package name, Package version, Operating system, Release**, and **Release build version**.
3. Under a test node such as **Functional test** or **Out of box test**, click **See details** in the **Script execution** row to view detailed script test results in the **Script execution** tab **Summary**. 

Detailed results appear, such as a script **Pass** or **Fail** indication in the test **Result** column; an **Exit Code, Start datetime, End datetime, Failed** %, and so on; versus the original security or feature update release dates from the Service team; for example, **5B** or **6B** (release dates for the second Tuesday of specified month, May (10) or June (7). See Figure 1 that follows for more details in the **Script execution** tab **Summary**.

An Execution request ID for tests related to each release is provided, as are KB articles for more technical information. Tests are typically run after a product team releases its orignal public updates. 

- **Note**
- Upon successful test execution, a script should return a value of zero (0). If an error occurs during execution, a script should return an error code with a non-    zero - value.

- **Important**
- Avoid coding your scripts to reboot a machine. If a reboot is necessary, please specify the Reboot enabled tag to the script during the script configuration and upload process, as described in Test Base documentation. For further details, see For more details, see Package guidelines and Application/Test rules.

