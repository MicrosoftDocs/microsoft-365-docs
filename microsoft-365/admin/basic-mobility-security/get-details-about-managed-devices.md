---
title: "Get details about Basic Mobility and Security managed devices"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
search.appverid:
- MET150
description: "Use Windows PowerShell to get details about Basic Mobility and Security devices in your organization."
---

# Get details about Basic Mobility and Security managed devices

This article shows you how to use Windows PowerShell to get details about the devices in your organization that you set up for Basic Mobility and Security.

Here's a breakdown for the device details available to you.

|**Detail**|**What to look for in PowerShell**|
|:----------------|:------------------------------------------------------------------------------|
|Device is enrolled in Basic Mobility and Security. For more info, see [Enroll your mobile device using Basic Mobility and Security](enroll-your-mobile-device.md)|The value of the *isManaged* parameter is:<br/>**True**= device is enrolled.<br/>**False**= device is not enrolled. |
|Device is compliant with your device security policies. For more info, see [Create device security policies](create-device-security-policies.md)|The value of the *isCompliant* parameter is:<br/>**True** = device is compliant with policies.<br/>**False** = device is not compliant with policies.|

:::image type="content" source="../../media/basic-mobility-security/bms-7-powershell-parameters.png" alt-text="Basic Mobility and Security PowerShell parameters":::

>[!NOTE]
>The commands and scripts in this article also return details about any devices managed by [Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune).

## Before you begin

There are a few things you need to set up to run the commands and scripts described in this article.

### Step 1: Download and install the Azure Active Directory Module for Windows PowerShell

For more info on these steps, see [Connect to Microsoft 365 with PowerShell](/office365/enterprise/powershell/connect-to-office-365-powershell).

1. Go to [Microsoft Online Services Sign-In Assistant for IT Professionals RTWl](https://download.microsoft.com/download/7/1/E/71EF1D05-A42C-4A1F-8162-96494B5E615C/msoidcli_32bit.msi) and select  **Download for Microsoft Online Services Sign-in Assistant**.

2. Install the Microsoft Azure Active Directory Module for Windows PowerShell with these steps:

    1. Open an administrator-level PowerShell command prompt.  

    2. Run the Install-Module MSOnline command.

    3. If prompted to install the NuGet provider, type Y and press ENTER.

    4. If prompted to install the module from PSGallery, type Y and press ENTER.

    5. After installation, close the PowerShell command window.

### Step 2: Connect to your Microsoft 365 subscription

1. In the Windows Azure Active Directory Module for Windows PowerShell, run the following command.  

    $UserCredential = Get-Credential

2. In the Windows PowerShell Credential Request dialog box, type the user name and password for your Microsoft 365 global admin account, and then select **OK**.

3. Run the following command.

    Connect-MsolService -Credential $UserCredential

### Step 3: Make sure you’re able to run PowerShell scripts

>[!NOTE]
>You can skip this step if you’re already set up to run PowerShell scripts.

To run the Get-MsolUserDeviceComplianceStatus.ps1 script, you need to enable the running of PowerShell scripts.

1. From your Windows Desktop, select **Start**, and then type Windows PowerShell. Right-click Windows PowerShell, and then select **Run as administrator**.

2. Run the following command.

    Set-ExecutionPolicy  RemoteSigned

3. When prompted, type Y and then press Enter.

**Run the Get-MsolDevice cmdlet to display details for all devices in your organization**

1. Open the Microsoft Azure Active Directory Module for Windows PowerShell.  

2. Run the following command.

    Get-MsolDevice -All -ReturnRegisteredOwners | Where-Object {$_.RegisteredOwners.Count -gt 0}

For more examples, see  [Get-MsolDevice](https://go.microsoft.com/fwlink/?linkid=2157939).

## Run a script to get device details

First, save the script to your computer.

1. Copy and paste the following text into Notepad.  

2.  param (

3.  [PSObject[]]$users = @(),

4.  [Switch]$export,

5.  [String]$exportFileName = "UserDeviceComplianceStatus_" + (Get-Date -Format "yyMMdd_HHMMss") + ".csv",

6.  [String]$exportPath = [Environment]::GetFolderPath("Desktop")

7.  )

9.  [System.Collections.IDictionary]$script:schema = @{

11.  DeviceId = ''

12.  DeviceOSType = ''

13.  DeviceOSVersion = ''

14.  DeviceTrustLevel = ''

15.  DisplayName = ''

16.  IsCompliant = ''

17.  IsManaged = ''

18.  ApproximateLastLogonTimestamp = ''

19.  DeviceObjectId = ''

20.  RegisteredOwnerUpn = ''

21.  RegisteredOwnerObjectId = ''
    

22.  RegisteredOwnerDisplayName = ''
    

23.  }
    

25.  function createResultObject
    

26.  {
    

28.  [PSObject]$resultObject = New-Object -TypeName PSObject -Property $script:schema
    

30.  return $resultObject
    

31.  }
    

33.  If ($users.Count -eq 0)
    

34.  {
    

35.  $users = Get-MsolUser
    

36.  }
    

38.  [PSObject[]]$result = foreach ($u in $users)
    

39.  {
    

41.  [PSObject]$devices = get-msoldevice -RegisteredOwnerUpn $u.UserPrincipalName
    

42.  foreach ($d in $devices)
    

43.  {
    

44.  [PSObject]$deviceResult = createResultObject
    

45.  $deviceResult.DeviceId = $d.DeviceId
    

46.  $deviceResult.DeviceOSType = $d.DeviceOSType
    

47.  $deviceResult.DeviceOSVersion = $d.DeviceOSVersion
    

48.  $deviceResult.DeviceTrustLevel = $d.DeviceTrustLevel
    

49.  $deviceResult.DisplayName = $d.DisplayName
    

50.  $deviceResult.IsCompliant = $d.GraphDeviceObject.IsCompliant
    

51.  $deviceResult.IsManaged = $d.GraphDeviceObject.IsManaged
    

52.  $deviceResult.DeviceObjectId = $d.ObjectId
    

53.  $deviceResult.RegisteredOwnerUpn = $u.UserPrincipalName
    

54.  $deviceResult.RegisteredOwnerObjectId = $u.ObjectId
    

55.  $deviceResult.RegisteredOwnerDisplayName = $u.DisplayName
    

56.  $deviceResult.ApproximateLastLogonTimestamp = $d.ApproximateLastLogonTimestamp
    

58.  $deviceResult
    

59.  }
    

61.  }
    

63.  If ($export)
    

64.  {
    

65.  $result | Export-Csv -path ($exportPath + "\" + $exportFileName) -NoTypeInformation
    

66.  }
    

67.  Else
    

68.  {
    

69.  $result
    

70.  }
    

71.  Save it as a Windows PowerShell script file by using the file extension .ps1; for example, Get-MsolUserDeviceComplianceStatus.ps1.   

## Run the script to get device information for a single user account

1. Open the Microsoft Azure Active Directory Module for Windows PowerShell.
    
2. Go to the folder where you saved the script. For example, if you saved it to C:\PS-Scripts, run the following command.
    
    cd C:\PS-Scripts

3. Run the following command to identify the user you want to get device details for. This example gets details for bar@example.com.
    
    $u = Get-MsolUser -UserPrincipalName bar@example.com

4. Run the following command to initiate the script.

    .\Get-MsolUserDeviceComplianceStatus.ps1 -User $u -Export

The information is exported to your Windows Desktop as a CSV file. You can use additional parameters to specify the file name and path of the CSV.

## Run the script to get device information for a group of users

1. Open the Microsoft Azure Active Directory Module for Windows PowerShell.
    
2. Go to the folder where you saved the script. For example, if you saved it to C:\PS-Scripts, run the following command.   

    cd C:\PS-Scripts

3. Run the following command to identify the group you want to get device details for. This example gets details for users in the FinanceStaff group. 

    $u = Get-MsolGroupMember -SearchString "FinanceStaff" | % { Get-MsolUser -ObjectId $_.ObjectId }

4. Run the following command to initiate the script.

    .\Get-MsolUserDeviceComplianceStatus.ps1 -User $u -Export

The information is exported to your Windows Desktop as a CSV file. You can use additional parameters to specify the file name and path of the CSV.

## Related topics

[Microsoft Connect Has Been Retired](/collaborate/connect-redirect)

[Overview of Basic Mobility and Security](overview.md)

[Get-MsolDevice](https://go.microsoft.com/fwlink/?linkid=2157939)