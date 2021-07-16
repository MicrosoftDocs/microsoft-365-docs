---
title: 'Upload your package'
description: How to upload your application, binaries and dependencies onto Test Base
search.appverid: MET150
author: mansipatel-usl
ms.author: mapatel
manager: rshastri
audience: Software-Vendor
ms.topic: troubleshooting
ms.date: 07/06/2021
ms.service: virtual-desktop
localization_priority: Normal
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: mapatel
f1.keywords: NOCSH
---

# Step 2: Uploading a Package

On the Test Base portal page, navigate to the **Upload new package** option on the left navigation bar as shown below:
![Upload a new package](Media/Upload-New-Package.png)

Once there, follow the steps below to upload a new package.

## Enter details for your package

On the Test details tab, type in your package's name, version, and other details as requested. 

**Out-of-Box** and **Functional testing** can be done via this dashboard.

The steps below provides a guide on how to fill out your package details:

1.	**Enter the name to be given your package in the ```Package name``` field.**

    > [!Note]  
    > The package name and version combination entered must be unique within your organization. This is validated by the checkmark as shown below.
  
    - If you choose to reuse a package's name, then the version number must be unique (that is, never been used with a package bearing that particular name).
    - If the combination of the package name + version doesn't pass the uniqueness check, you'll see an error message that reads, *“Package with this package version already exists”*. 

    ![Image for uploading package instructions](Media/Instructions.png)

2. **Enter a version in the “Package version” field.**

    ![Package version](Media/ApplicationVersion.png)

3.	**Select the type of test you want to run on this package**

    An **Out-of-Box (OOB)** test performs an *install*, *launch*, *close*, and *uninstall* of your package. After the install, the launch-close routine is repeated 30 times before a single uninstall is run. 
    
    This OOB test provides you with standardized telemetry on your package to compare across Windows builds.

    A **Functional test** would execute your uploaded test script(s) on your package. The scripts are run in upload sequence and a failure in a particular script will stop subsequent scripts from executing.

    > [!Note]
    > **All** scripts run for 80 minutes at the most. 
    
4.	**Select the OS update type**

    - The ‘Security updates’ enables your package to be tested against incremental churns of Windows pre-release monthly security updates. 
    - The ‘Feature updates’ enables your package to be tested against Windows pre-release bi-annual feature updates builds from the Windows Insider Program.
    <!---
    Change to the correct picture
    -->
    ![OS update type](Media/OSUpdateType.png)

5.	**Select the OS version(s) for Security update tests.**

    In the multi-select dropdown, select the OS version(s) of Windows your package will be installed on. 

    - To test your package only against Windows client operating systems, select the applicable Windows 11 OS versions from the menu list.
    - To test your package only against Windows Server operating systems, select the applicable Windows Server OS versions from the menu list.
    - To test your package only against Windows client and Windows Server operating systems, select all applicable operating systems from the menu list. 

    > [!Note]
    > If you select to test your package against both Server and Client OSes, please make sure that the package is compatible and can run on both OSes

    ![Selecting an OS version](Media/OSVersion.png)
    <!---
    Change to the correct picture
    -->

6.	**Select options for Feature update tests:**

    - On the option to “Select Insider Channel”, select the ```Windows Insider Program Channel``` as the build that your packages should be tested against.
  
      We currently use builds flighted in the Insider Beta Channel.

    - On the option to “Select OS baseline for Insight”, select the Windows OS version to be used as a baseline in comparing your test results. 

    > [!Note]
    > We DO NOT support Feature update testing for Server OSes at this time
    <!---
    Note to actual note format for markdown
    -->
    <!---
    Change to the correct picture
    -->
    ![Feature update testing](Media/FeatureUpdate.png)

7.	A completed Test details page should look like this: 

    ![Viewing test details](Media/TestDetails.png)

## Next steps

Our next article covers Uploading your Binaries to our service.
> [!div class="nextstepaction"]
> [Next step](binaries.md)

<!---
Add button for next page
-->

