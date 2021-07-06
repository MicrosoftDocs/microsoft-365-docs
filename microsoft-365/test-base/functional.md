---
title: Functional testing  #Required; page title displayed in search results. Include the brand.
description: n/a #Required; article description that is displayed in search results.
author: mansipatel-usl #Required; your GitHub user alias, with correct capitalization.
ms.author: mapatel #Required; microsoft alias of author; optional team alias.
ms.service: virtual-desktop #Required; service per approved list. service slug assigned to your service by ACOM.
ms.topic: how-to  #Required
ms.date: 01/04/2021 #Required; mm/dd/yyyy format.
---

# Functional testing

As a software vendor, you can now perform custom functional tests, using the test framework of your choice - via the self-serve Test Base for M365 portal. 

When we initially launched the service, we offered the Out-of-box tests, which is a pre-defined set of tests driven through standardized scripting. This, however, could not achieve full test coverage for many Independent Software Vendors (ISVs). 

Hence, in response to your feedback, we are providing our ISVs with the ability to upload automated functional tests.

To use this feature, follow the steps below:

1. Upload your files (binaries, dependencies and scripts) as a single .zip package.
2. Choose if you want to reboot the test Virtual Machines (VMs) at various points of execution.
3. Manage available options for your scripts.
4. Choose when to apply the Windows update on the VM during execution.

Detailed descriptions of the above steps are highlighted below:

**Upload a functional test package**

To get started, navigate to the Upload page, select Upload new application under Application catalog on the left-side navigation menu of the Test Base for M365 portal in Azure. From there:

Tab 1 - Enter basic information. Provide the name and version of your application. In the Type of test option, select ```Functional tests```. 

*Note that the Out-of-Box (OOB) option is required by default.*


![functional_testing](Media/functional_testing_tab1.png)

Tab 2 - Upload the components of your package by uploading a zip file with your entire test (binaries, dependencies, scripts etc). 

See aka.ms/usl-package-outline for details. (Note: Both the Out-of-Box test scripts and the Functional test contents should be placed into the same zip file). Currently, the file size is limited to 2GB.

Tab 3 - Configure the Out-of-Box and Functional test tasks. Here, choose the path(s) to the PowerShell scripts that will install, launch, close, and uninstall your application (for Out-of-Box) as well as the path(s) to all your custom scripts to perform your functional test. **(Note: A script to uninstall your application is optional).**

Currently, you can upload between 1 and 8 scripts for your functional tests. (Kindly comment on this post if you need more scripts!)

![functional_testing](Media/functional_testing_tab3.png)

(Optional) Configure a restart after installation. Some applications require a restart after installation. 

Select ```Reboot After Execution``` for the specific Script in the Tasks tab if you would like a restart to be conducted after the execution of that script.

Tab 4 - Choose when the Windows update gets installed: The application of the Windows Update patch is done before any script of your choice. It is recommended that you install a Windows update after the application's installation to closely mimic your real-world application use scenarios.

![functional_testing](Media/functional_testing_tab4.png)

Tab 5 - Review and create the package. Once you have completed the steps listed above, select ```Create``` to finish the uploading process.

Once your package has been created, you can check the verification status of your package.

We run an initial test to install, launch, close, and uninstall your application. This allows us to verify that your package can install on our service error-free.

The verification process could take up to 24 hours. Once verification is complete, you can see the status in the ```Manage packages``` menu, which would be one of two entries:

1. Verification succeeds: The package will be automatically tested against pre-release Windows updates for the OS builds you selected.
or
2. Verification fails: You will need to investigate the reasons for the failure, fix the issue, and re-upload your package.

You will also be notified of either outcome via the notification icon in the Azure portal.