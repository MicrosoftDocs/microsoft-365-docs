---
title: Upload Application Binaries
description: How to get started using Test Base for M365 #Required; article description that is displayed in search results.
search.appverid: MET150
author: mansipatel-usl
ms.author: mapatel
manager: rshastri
audience: Software-Vendor
ms.topic: how-to
ms.date: 07/06/2021
ms.service: virtual-desktop
localization_priority: Normal
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: mapatel
f1.keywords: NOCSH 
---

# Step 3: Upload your binaries, dependencies, and scripts

On this tab, you will upload a single zip package containing your binaries, dependencies and scripts used to run your test suite.

## Upload package zip file

![Upload your binaries](Media/AddBinaries.png)

  - Uploaded dependencies can include test frameworks, scripting engines or data that will be accessed to run your application or test cases. For example, you can upload Selenium and a webdriver installer to help run browser-based tests.
  - It is best practice to ensure your script activities are kept modular i.e. 
    - The ```Install``` script only performs install operations.
    - The ```Launch``` script only launches the application.
    - The ```Close``` script only closes the application.
    - The optional ```Uninstall``` script only uninstalls the application.

**Currently, the portal only supports PowerShell scripts.**


## Next steps 

Advance to the next article to go onto Step 4: **Set your Test Tasks**.
> [!div class="nextstepaction"]
> [Go back](uploadApplication.md)
> [!div class="nextstepaction"]
> [Next step](testtask.md)

