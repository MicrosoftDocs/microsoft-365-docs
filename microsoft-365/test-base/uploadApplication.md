---
title: 'Upload your package'
description: How to upload your application, binaries and dependencies onto Test Base
search.appverid: MET150
author: mansipatel-usl
ms.author: rshastri
manager: rshastri
audience: Software-Vendor
ms.topic: troubleshooting
ms.date: 07/06/2021
ms.service: virtual-desktop
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: mapatel
f1.keywords: NOCSH
---

# Upload your Test Base package (Zip) 

On the Test Base portal page, navigate to the **New package** option on the left navigation bar an then click **Legacy upload experience** to enable the Zip upload experience as shown below:

:::image type="content" alt-text="Upload a new package." source="Media/testapplication01.png" lightbox="Media/testapplication01.png":::

:::image type="content" alt-text="Apply the operation." source="Media/testapplication21.png" lightbox="Media/testapplication21.png":::

Once there, follow the steps below to upload a new package.

## Enter details for your package

On the Test details tab, type in your package's name, version, and other details as requested.

**Out-of-Box** and **Functional testing** can be done via this dashboard.

The steps below provides a guide on how to fill out your package details:

1. Enter the name to be given your package in the `Package name` field.

    > [!NOTE]
    > The package name and version combination entered must be unique within your organization. This is validated by the checkmark as shown below.

    - If you choose to reuse a package's name, then the version number must be unique (that is, never been used with a package bearing that particular name).

    - If the combination of the package name + version doesn't pass the uniqueness check, you'll see an error message that reads, *"Package with this package version already exists"*.

    :::image type="content" alt-text="Image for uploading package instructions." source="Media/Instructions.png":::

2. Enter a version in the "Package version" field.

    :::image type="content" alt-text="Package version." source="Media/ApplicationVersion.png":::

3. Select the type of test you want to run on this package.

    An **Out-of-Box (OOB)** test performs an *install*, *launch*, *close*, and *uninstall* of your package. After the install, the launch-close routine is repeated 30 times before a single uninstall is run.

    This OOB test provides you with standardized telemetry on your package to compare across Windows builds.

    A **Functional test** would execute your uploaded test script(s) on your package. The scripts are run in upload sequence and a failure in a particular script will stop subsequent scripts from executing.

    > [!NOTE]
    > **All** scripts run for 80 minutes at the most.

4. Select the OS update type.

    - The ‘Security updates’ enables your package to be tested against incremental churns of Windows pre-release monthly security updates.
    - The ‘Feature updates’ enables your package to be tested against Windows pre-release bi-annual feature updates builds from the Windows Insider Program.
    <!---
    Change to the correct picture
    -->
    :::image type="content" alt-text="OS update type." source="Media/OSUpdateType.png":::

5. Select the OS version(s) for Security update tests.

    In the multi-select dropdown, select the OS version(s) of Windows your package will be installed on.

    - To test your package only against Windows Client operating systems, select the applicable Windows Client OS versions from the menu list.
    - To test your package only against Windows Server operating systems, select the applicable Windows Server OS versions from the menu list.
    - To test your package against Windows Client and Windows Server operating systems, select all applicable operating systems from the menu list.

    > [!NOTE]
    > If you select to test your package against both Server and Client OSes, please make sure that the package is compatible and can run on both OSes

    :::image type="content" alt-text="Selecting an OS version." source="Media/OSVersion.png":::
    <!---
    Change to the correct picture
    -->

6. Select options for Feature update tests:

    - On the option to "Select Insider Channel", select the `Windows Insider Program Channel` as the build that your packages should be tested against.

      We currently use builds flighted in the Insider Beta Channel.

    - On the option to "Select OS baseline for Insight", select the Windows OS version to be used as a baseline in comparing your test results.

    > [!NOTE]
    > We DO NOT support Feature update testing for Server OSes at this time
    <!---
    Note to actual note format for markdown
    -->
    <!---
    Change to the correct picture
    -->
    :::image type="content" alt-text="Feature update testing." source="Media/FeatureUpdate.png":::

7. A completed Test details page should look like this:

    :::image type="content" alt-text="Viewing test details." source="Media/TestDetails.png":::



# Upload your binaries, dependencies, and scripts

On this tab, you will upload a single zip package containing your binaries, dependencies and scripts used to run your test suite.

> [!NOTE]
> The size of the zip package should be between a minimum of 10 MB and a maximum of 2 GB.

## Upload package zip file

:::image type="content" alt-text="Upload your binaries." source="Media/AddBinaries.png":::

  - Uploaded dependencies can include test frameworks, scripting engines or data that will be accessed to run your application or test cases. For example, you can upload Selenium and a web driver installer to help run browser-based tests.
  - It is best practice to ensure your script activities are kept modular i.e. 
    - The `Install` script only performs install operations.
    - The `Launch` script only launches the application.
    - The `Close` script only closes the application.
    - The optional `Uninstall` script only uninstalls the application.

**Currently, the portal only supports PowerShell scripts.**



# The tasks tab

On  the tasks tab, you are expected to provide the paths to your test scripts which are in the zip folder you uploaded under the binaries tab.

  - **Out of Box Test Scripts:** Type in the relative paths to your install, launch, close and uninstall scripts. You also have the option to select additional settings for the install script.
  - **Functional Test Scripts:** Type in the relative path to each functional test script uploaded. Additional functional test scripts can be added using the ```Add Script``` button. You need a minimum of one (1) script and can add up to eight (8) functional test scripts. 
  
    The scripts run in the sequence they are listed. A failure in a particular script stops subsequent scripts from executing.
    You also have the option of selecting additional settings for each script provided.

## Set script path

:::image type="content" alt-text="Image of test task." source="Media/testtask.png":::

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



# Choose your test options. 

The ```Test Options``` tab is for users who wish to perform functional tests to indicate when the Windows Update patch should be applied in the sequence of executing their functional test scripts.

:::image type="content" alt-text="Image of test options. Either out-of-box or functional tests." source="Media/testoptions.png":::

Select _**Review**_ to navigate to the next tab and review your selected test options.



# Review your selections to create your package.

1. On this tab, the service displays your test details and runs a quick completeness check.

    A **Validation passed** or **Validation failed** message shows whether you can proceed to next steps or not.

2. Review your test details and if satisfied, click on the **Create** button.

    :::image type="content" alt-text="View validation." source="Media/validation.png" lightbox="Media/validation.png":::

3. This will onboard your package to the Test Base environment. If your package is successfully created, an automated test which verifies whether your package can be successfully executed on Azure will be triggered.

    :::image type="content" alt-text="Successful result." source="Media/successful.png":::

    > [!NOTE]
    > You will get a notification from the Azure portal to notify you on the success or failure of the package verification.
    >
    > Please note that the process can take up to 24 hours, so it is likely your webpage will timeout if you are not active on it and hence, the notification will not inform you of the completion of this on-demand run.

    - Peradventure this happens, you can view the status of your package on the **Manage packages** tab.

      :::image type="content" alt-text="Image for managing packages." source="Media/managepackages.png" lightbox="Media/managepackages.png":::

    - For successful tests, their results can be seen via the **Test Summary**, **Security Updates Results** and **Feature Updates Results** pages at scheduled intervals, often starting a few days after your upload.
  
    - While failed tests, require you to upload a new package. 

      You can download the **test logs** for further analysis from the **Security update results** and **Feature updates results** pages.

    - If you experience repeated test failures, please reach out to testbasepreview@microsoft.com with details of your error.

## Next steps

Discover our Content Guidelines via the link below.

> [!div class="nextstepaction"]
> [Next step](contentguideline.md)
