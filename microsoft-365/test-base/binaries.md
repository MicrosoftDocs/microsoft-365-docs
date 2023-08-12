---
title: Upload Application Binaries
description: How to get started using Test Base for Microsoft 365 #Required; article description that is displayed in search results.
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

# Step 3: Upload your binaries, dependencies, and scripts

On this tab, you'll upload a single zip package containing your binaries, dependencies and scripts used to run your test suite.

> [!NOTE]
> The size of the zip package should be between a minimum of 10 MB and a maximum of 2 GB.

## Upload package zip file

:::image type="content" alt-text="Upload your binaries." source="Media/AddBinaries.png":::

  - Uploaded dependencies can include test frameworks, scripting engines or data that will be accessed to run your application or test cases. For example, you can upload Selenium and a web driver installer to help run browser-based tests.
  - It's best practice to ensure your script activities are kept modular that is.
    - The `Install` script only performs install operations.
    - The `Launch` script only launches the application.
    - The `Close` script only closes the application.
    - The optional `Uninstall` script only uninstalls the application.

**Currently, the portal only supports PowerShell scripts.**


## Next steps 

Advance to the next article to go onto Step 4: **Set your Test Tasks**.
> [!div class="nextstepaction"]
> [Go back](uploadApplication.md)
> [!div class="nextstepaction"]
> [Next step](testtask.md)

