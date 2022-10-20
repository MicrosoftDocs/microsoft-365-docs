---
title: 'Set your test tasks'
description: Set your test tasks
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

# Step 4: The tasks tab

On  the tasks tab, you're expected to provide the paths to your test scripts that are in the zip folder you uploaded under the binaries tab.

  - **Out of Box Test Scripts:** Type in the relative paths to your install, launch, close and uninstall scripts. You also can select extra settings for the install script.
  - **Functional Test Scripts:** Type in the relative path to each functional test script uploaded. Extra functional test scripts can be added using the ```Add Script``` button. You need a minimum of one (1) script and can add up to eight (8) functional test scripts. 
  
    The scripts run in the sequence they're listed. A failure in a particular script stops subsequent scripts from executing.
    You also have the option of selecting extra settings for each script provided.

## Set script path

![Image of test task.](Media/testtask.png)

Sample of how to provide the relative path on a folder structure is below:

_**Zip_file_uploaded**_
~~~
├── file1.exe

├── ScriptX.ps1

├── folder1

│   ├── file3.exe

│   ├── script.ps1
~~~
  - **ScriptX.ps1** would have. _ScriptX.ps1_ as the relative path.
  - **Script.ps1** would have _folder1/script.ps1_ as the relative path.


## Next steps

View details of the Test Options tab in the next article 
> [!div class="nextstepaction"]
> [Next step](testoptions.md)
