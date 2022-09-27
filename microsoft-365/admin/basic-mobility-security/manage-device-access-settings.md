---
title: "Manage device access settings in Basic Mobility and Security"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection:
- scotvorg 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
search.appverid:
- MET150
description: "For devices you can't manage with Basic Mobility and Security, block Exchange ActiveSync app access to email and use Azure AD PowerShell to get details about org devices."
---

# Manage device access settings in Basic Mobility and Security

If you're using Basic Mobility and Security, there might be devices that you can't manage with Basic Mobility and Security. If so, you should block Exchange ActiveSync app access to Microsoft 365 email for mobile devices that aren't supported by Basic Mobility and Security. This helps secure your organization information across more devices.

Use these steps:

1. Sign in to Microsoft 365 with your global admin account.

2. In your browser, type: <https://protection.office.com/>.

    > [!IMPORTANT]
    > If this is the first time you're using Basic Mobility and Security for Microsoft 365 Business Standard, activate it here: [Activate Basic Security and Mobility](https://admin.microsoft.com/EAdmin/Device/IntuneInventory.aspx). After you've activated it, manage your devices with [Office 365 Security & Compliance](https://protection.office.com/).

3. Go to **Data loss prevention** \> **Device management** \> **Device policies**, and select **Manage organization-wide device access settings**.

4. Select **Access**.

    :::image type="content" source="../../media/basic-mobility-security/basic-mobility-access.png" alt-text="Basic Mobility and Security block access checkbox.":::

5. Select **Save**.

To learn what devices Basic Mobility and Security supports, see [Capabilities of Basic Mobility and Security](capabilities.md).

## Get details about Basic Mobility and Security managed devices

Additionally, you can use Azure AD PowerShell to get details about the devices in your organization that you set up for Basic Mobility and Security.

Here's a breakdown for the device details available to you.

|Detail|What to look for in PowerShell|
|---|---|
|Device is enrolled in Basic Mobility and Security. For more info, see [Enroll your mobile device using Basic Mobility and Security](enroll-your-mobile-device.md)|The value of the *isManaged* parameter is:<br/>**True**= device is enrolled.<br/>**False**= device is not enrolled.|
|Device is compliant with your device security policies. For more info, see [Create device security policies](create-device-security-policies.md)|The value of the *isCompliant* parameter is:<br/>**True** = device is compliant with policies.<br/>**False** = device is not compliant with policies.|

:::image type="content" source="../../media/basic-mobility-security/bms-7-powershell-parameters.png" alt-text="Basic Mobility and Security PowerShell parameters.":::

> [!NOTE]
> The commands and scripts that follow also return details about any devices managed by [Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune).

Here are a few things you need to set up to run the commands and scripts that follow:

### Step 1: Download and install the Azure Active Directory Module for Windows PowerShell

For more info on these steps, see [Connect to Microsoft 365 with PowerShell](/office365/enterprise/powershell/connect-to-office-365-powershell).

1. Go to [Microsoft Online Services Sign-In Assistant for IT Professionals RTWl](https://download.microsoft.com/download/7/1/E/71EF1D05-A42C-4A1F-8162-96494B5E615C/msoidcli_32bit.msi) and select **Download for Microsoft Online Services Sign-in Assistant**.

2. Install the Microsoft Azure Active Directory Module for Windows PowerShell with these steps:

    1. Open an administrator-level PowerShell command prompt.

    2. Run the `Install-Module MSOnline` command.

    3. If prompted to install the NuGet provider, type Y and press ENTER.

    4. If prompted to install the module from PSGallery, type Y and press ENTER.

    5. After installation, close the PowerShell command window.

### Step 2: Connect to your Microsoft 365 subscription

1. In the Windows Azure Active Directory Module for Windows PowerShell, run the following command.

   ```powershell
   $UserCredential = Get-Credential
   ```

2. In the Windows PowerShell Credential Request dialog box, type the user name and password for your Microsoft 365 global admin account, and then select **OK**.

3. Run the following command.

   ```powershell
   Connect-MsolService -Credential $UserCredential
   ```

### Step 3: Make sure you're able to run PowerShell scripts

> [!NOTE]
> You can skip this step if you're already set up to run PowerShell scripts.

To run the Get-MsolUserDeviceComplianceStatus.ps1 script, you need to enable the running of PowerShell scripts.

1. From your Windows Desktop, select **Start**, and then type Windows PowerShell. Right-click Windows PowerShell, and then select **Run as administrator**.

2. Run the following command.

   ```powershell
   Set-ExecutionPolicy RemoteSigned
   ```

3. When prompted, type Y and then press Enter.

#### Run the Get-MsolDevice cmdlet to display details for all devices in your organization

1. Open the Microsoft Azure Active Directory Module for Windows PowerShell.

2. Run the following command.

   ```powershell
   Get-MsolDevice -All -ReturnRegisteredOwners | Where-Object {$_.RegisteredOwners.Count -gt 0}
   ```

For more examples, see [Get-MsolDevice](https://go.microsoft.com/fwlink/?linkid=2157939).

### Run a script to get device details

First, save the script to your computer.

1. Copy and paste the following text into Notepad.

   ```powershell
   param (
   [PSObject[]]$users = @(),
   [Switch]$export,
   [String]$exportFileName = "UserDeviceComplianceStatus_" + (Get-Date -Format "yyMMdd_HHMMss") + ".csv",
   [String]$exportPath = [Environment]::GetFolderPath("Desktop")
   )
   [System.Collections.IDictionary]$script:schema = @{
   DeviceId = ''
   DeviceOSType = ''
   DeviceOSVersion = ''
   DeviceTrustLevel = ''
   DisplayName = ''
   IsCompliant = ''
   IsManaged = ''
   ApproximateLastLogonTimestamp = ''
   DeviceObjectId = ''
   RegisteredOwnerUpn = ''
   RegisteredOwnerObjectId = ''
   RegisteredOwnerDisplayName = ''
   }
   function createResultObject
   {
   [PSObject]$resultObject = New-Object -TypeName PSObject -Property $script:schema
   return $resultObject
   }
   If ($users.Count -eq 0)
   {
   $users = Get-MsolUser
   }
   [PSObject[]]$result = foreach ($u in $users)
   {
   [PSObject]$devices = get-msoldevice -RegisteredOwnerUpn $u.UserPrincipalName
   foreach ($d in $devices)
   {
   [PSObject]$deviceResult = createResultObject
   $deviceResult.DeviceId = $d.DeviceId
   $deviceResult.DeviceOSType = $d.DeviceOSType
   $deviceResult.DeviceOSVersion = $d.DeviceOSVersion
   $deviceResult.DeviceTrustLevel = $d.DeviceTrustLevel
   $deviceResult.DisplayName = $d.DisplayName
   $deviceResult.IsCompliant = $d.GraphDeviceObject.IsCompliant
   $deviceResult.IsManaged = $d.GraphDeviceObject.IsManaged
   $deviceResult.DeviceObjectId = $d.ObjectId
   $deviceResult.RegisteredOwnerUpn = $u.UserPrincipalName
   $deviceResult.RegisteredOwnerObjectId = $u.ObjectId
   $deviceResult.RegisteredOwnerDisplayName = $u.DisplayName
   $deviceResult.ApproximateLastLogonTimestamp = $d.ApproximateLastLogonTimestamp
   $deviceResult
   }
   }
   If ($export)
   {
   $result | Export-Csv -path ($exportPath + "\" + $exportFileName) -NoTypeInformation
   }
   Else
   {
   $result
   }
   ```

2. Save it as a Windows PowerShell script file by using the file extension .ps1; for example, Get-MsolUserDeviceComplianceStatus.ps1.

### Run the script to get device information for a single user account

1. Open the Microsoft Azure Active Directory Module for Windows PowerShell.

2. Go to the folder where you saved the script. For example, if you saved it to C:\PS-Scripts, run the following command.

   ```powershell
   cd C:\PS-Scripts
   ```

3. Run the following command to identify the user you want to get device details for. This example gets details for bar@example.com.

   ```powershell
   $u = Get-MsolUser -UserPrincipalName bar@example.com
   ```

4. Run the following command to initiate the script.

   ```powershell
   .\Get-MsolUserDeviceComplianceStatus.ps1 -User $u -Export
   ```

The information is exported to your Windows Desktop as a CSV file. You can use additional parameters to specify the file name and path of the CSV.

### Run the script to get device information for a group of users

1. Open the Microsoft Azure Active Directory Module for Windows PowerShell.

2. Go to the folder where you saved the script. For example, if you saved it to C:\PS-Scripts, run the following command.

   ```powershell
   cd C:\PS-Scripts
   ```

3. Run the following command to identify the group you want to get device details for. This example gets details for users in the FinanceStaff group.

   ```powershell
   $u = Get-MsolGroupMember -SearchString "FinanceStaff" | % { Get-MsolUser -ObjectId $_.ObjectId }
   ```

4. Run the following command to initiate the script.

   ```powershell
   .\Get-MsolUserDeviceComplianceStatus.ps1 -User $u -Export
   ```

The information is exported to your Windows Desktop as a CSV file. You can use additional parameters to specify the file name and path of the CSV.

## Related content

[Microsoft Connect Has Been Retired](/collaborate/connect-redirect)

[Overview of Basic Mobility and Security](overview.md)

[Get-MsolDevice](https://go.microsoft.com/fwlink/?linkid=2157939)