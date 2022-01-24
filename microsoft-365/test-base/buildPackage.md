---
title: 'Build a package'
description: Details on how to build a .zip package file
search.appverid: xx
author: mansipatel-usl
ms.author: mapatel
manager: rshastri
audience: Software-Vendor
ms.topic: how-to
ms.date: 01/24/2022
ms.service: virtual-desktop
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: mapatel
f1.keywords: NOCSH
---

# Build a package
A package is a .zip file containing your application binary and test scripts, which is the prerequisite to use Test Base. This quickstart will guide you to build your first package, with which you can perform Out-of-box test on your application. 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*An **Out-of-Box (OOB)** test performs an install, launch, close, and uninstall of your application. After the install, the launch-close routine is repeated 30 times before a single uninstall is run.*

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*The OOB test provides you with standardized telemetry on your package to compare across Windows builds.*
    
Optionally, you can download the  [sample package](https://aka.ms/testbase-sample-package) to refer and start with. 

## Create a folder structure 

In your local computer, create a folder structure as follows:<br> 
![Folder structure](Media/BuildPackage1.png)

These folders are used:
* **App\bin**: save the application and dependency binaries.<br> 
* **App\scripts**: save scripts to install, launch, close and uninstall your application.<br> 
* **App\logs**: scripts should output logs to this folder, then you can download and analyze logs after test is finished.<br> 

## Copy binary file(s)
Copy your application installation files to **App\bin**. If your application has dependencies, they need to be installed first. Also, copy the dependency installation files to **App\bin** too.<br> 
![Folder structure](Media/BuildPackage2.png)

## Add PowerShell scripts
To perform OOB test, it needs PowerShell scripts to install, launch, close, and uninstall your application. <br> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*Note: In OOB test, install, launch, and close scripts are required, while uninstall script is optional*.<br>
The script should be added in the folder as follows:<br> 
![Folder structure](Media/BuildPackage3.png)

A script usually includes the following behaviors:<br> 
-	**Run the commands to install/launch/close/uninstall the application**. E.g., if your application is MSI file, run [msiexec](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/msiexec) to install it. <br> 
-	**Check the result of install/launch/close/uninstall operation**, return zero exit code if the result is expected. Test Base will mark a script run as failure if it returns a non-zero exit code.<br> 
-	**Save enough logs**, save proper logs for future use.<br> 

Please refer to the following examples, you can simply copy them to your filess and make changes accordingly. <br>

**Example of install script (App\scripts\install\job.ps1)**

        push-location $PSScriptRoot
        $exit_code = 0
        $script_name = $myinvocation.mycommand.name
        $log_dir = "$PSScriptRoot\..\..\logs"
        $log_file = "$log_dir\$script_name.log"


        if(-not (test-path -path $log_dir )) {
            new-item -itemtype directory -path $log_dir
        }

        Function log {
           Param ([string]$log_string)
           write-host $log_string
           add-content $log_file -value $log_string
        }

        log("Installing TestBaseM365 Digital Clock")
        push-location "..\..\bin"
        if ([Environment]::Is64BitProcess) {
            $installer_name = "TestBaseM365DigitalClock.msi"
        }
        else {
            $installer_name = "TestBaseM365DigitalClock.msi"
        }
        $arguments = "/i "+$installer_name+" /quiet /L*v "+"$log_dir"+"\atp-client-installation.log"

        $installer = Start-Process msiexec.exe $arguments -wait -passthru
        pop-location

        if ($installer.exitcode -eq 0) {
            log("Installation succesful as $($installer.exitcode)")
        }
        else {
            log("Error: Installation failed as $($installer.exitcode)")
            $exit_code = $installer.exitcode
        }

        log("Installation script finished as $exit_code")
        pop-location
        exit $exit_code

**Example of launch script (App\scripts\launch\job.ps1)**

        push-location $PSScriptRoot
        $exit_code = 0
        $script_name = $myinvocation.mycommand.name
        $log_dir = "$PSScriptRoot\..\..\logs"
        $log_file = "$log_dir\$script_name.log"

        if(-not (test-path -path $log_dir )) {
            new-item -itemtype directory -path $log_dir
        }

        Function log {
           Param ([string]$log_string)
           write-host $log_string
           add-content $log_file -value $log_string
        }

        log("Launch TestBaseM365 Digital Clock")

        $PROCESS_NAME = "DigitalClock"
        $exePath = "C:\Program Files\Test Base M365\DigitalClock\DigitalClock.exe"

        Start-Process -FilePath $exePath

         if (Get-Process -Name $PROCESS_NAME) {
                log("Launch successfully $PROCESS_NAME...") 
                $exit_code = 0
         }
         else {
            log("Not launched $PROCESS_NAME...") 
            $exit_code = 1
         }

        log("Launch script finished as $exit_code")
        pop-location
        exit $exit_code 




