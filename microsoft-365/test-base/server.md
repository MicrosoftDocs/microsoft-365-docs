---
title: 'Windows Server application testing'
description: How to validate with windows server application testing
search.appverid: MET150
author: mansipatel-usl
ms.author: tinachen
manager: rshastri
audience: Software-Vendor
ms.topic: how-to
ms.date: 07/06/2021
ms.service: test-base
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: tinachen
f1.keywords: NOCSH
---
# Windows Server Application Testing

[!INCLUDE [test-base-deprecation](./includes/test-base-deprecation.md)]

With Test Base for Microsoft 365, you can now validate your applications against Windows Server 2016 and 2019, including Server Core!

To get started with validating your uploaded applications against pre-release updates for Windows Server 2016 and 2019 operating systems on Test Base for Microsoft 365, kindly adhere to the following steps:

1. Log on to our self-service onboarding portal. From the left-side navigation menu, select `Upload new package` under `Package catalogue` and fill out the Test details.

2. Select `Security updates` as the OS update type:

   ![Select security updates.](Media/selecting-security-updates.png)

3. Under OS versions to test, select the applicable OS versions. You can select Windows Server OS versions or a combination of server and client OS versions.

   ![Select OS version.](Media/selecting-OS-versions.png)

4. Provide other required information, review the details provided, and upload your application package. After uploading, you can view package status on the Manage packages menu tab.

5. To view test results and insights from the validation of your application against pre-release security updates for Windows Server 2016 and 2019, go to the Test summary page or the Security update results page.

   ![View test results.](Media/access-test-results.png)

Advance to the next article to get started with **Functional testing**
> [!div class="nextstepaction"]
> [Next step](functional.md)
