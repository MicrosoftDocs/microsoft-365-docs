---
title: "Manage device access settings in Basic Mobility and Security"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 11/11/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-basic-mobility-security
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg 
- M365-subscription-management
- Adm_O365
- Adm_TOC
- basic-mobility-security
ms.custom:
- AdminSurgePortfolio
- has-azure-ad-ps-ref
- azure-ad-ref-level-one-done
- basic-mobility-security
search.appverid:
- MET150
description: "For devices, you can't manage with Basic Mobility and Security, block Exchange ActiveSync app access to email and use Microsoft Graph PowerShell to get details about org devices."
---

# Manage device access settings in Basic Mobility and Security

If you're using Basic Mobility and Security, there might be devices that you can't manage with Basic Mobility and Security. If so, you should block Exchange ActiveSync app access to Microsoft 365 email for mobile devices that aren't supported by Basic Mobility and Security. Blocking Exchange ActiveSync app access helps secure your organization information across more devices.

Use these steps:

1. Sign in to Microsoft 365 with a [Compliance administrator](/entra/identity/role-based-access-control/permissions-reference) account.

2. In your browser, type: <https://compliance.microsoft.com/basicmobilityandsecurity>.

3. Go to **Organization Setting** tab.

4. Select **Access restriction for unsupported MDM device** and make sure **Allow access (device enrollment is required)** is selected.

To learn what devices Basic Mobility and Security supports, see [Capabilities of Basic Mobility and Security](capabilities.md).

## Get details about Basic Mobility and Security managed devices

Additionally, you can use [Microsoft Graph PowerShell](/powershell/microsoftgraph/overview) to get details about the devices in your organization that you set up for Basic Mobility and Security.

Here's a breakdown for the device details available to you.

|Detail|What to look for in PowerShell|
|---|---|
|Device is enrolled in Basic Mobility and Security. For more info, see [Enroll your mobile device using Basic Mobility and Security](enroll-your-mobile-device.md)|The value of the *isManaged* parameter is:<br/>**True**= device is enrolled.<br/>**False**= device isn't enrolled.|
|Device is compliant with your device security policies. For more info, see [Create device security policies](create-device-security-policies.md)|The value of the *isCompliant* parameter is:<br/>**True** = device is compliant with policies.<br/>**False** = device isn't compliant with policies.|

:::image type="content" source="../../media/basic-mobility-security/bms-7-powershell-parameters.png" alt-text="Basic Mobility and Security PowerShell parameters.":::

> [!NOTE]
> The commands and scripts that follow also return details about any devices managed by [Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune).

Here are a few things you need to set up to run the commands and scripts that follow:

### Step 1: Download and install the Microsoft Graph PowerShell SDK

For more info on these steps, see [Connect to Microsoft 365 with PowerShell](/powershell/microsoftgraph/installation).

1. Install the Microsoft Graph PowerShell SDK for Windows PowerShell with these steps:

    1. Open an administrator-level PowerShell command prompt.

    2. Run the following command:
         ```powershell
         Install-Module Microsoft.Graph -Scope AllUsers
         ```
    3. If prompted to install the NuGet provider, type Y and press ENTER.

    4. If prompted to install the module from PSGallery, type Y and press ENTER.

    5.  After installation, close the PowerShell command window.

### Step 2: Connect to your Microsoft 365 subscription

1. In Powershell window, run the following command.

   ```powershell
   Connect-MgGraph -Scopes Device.Read.All, User.Read.All
   ```

2. A popup opens for you to sign in. Provide the credentials of your Administrative Account and log in.

3. If your account has the necessary permissions, you see "Welcome To Microsoft Graph!" in the Powershell window.

### Step 3: Make sure you're able to run PowerShell scripts

> [!NOTE]
> You can skip this step if you're already set up to run PowerShell scripts.

To run the Get-GraphUserDeviceComplianceStatus.ps1 script, you need to enable the running of PowerShell scripts.

1. From your Windows Desktop, select **Start**, and then type Windows PowerShell. Right-click Windows PowerShell, and then select **Run as administrator**.

2. Run the following command.

   ```powershell
   Set-ExecutionPolicy RemoteSigned
   ```

1. When prompted, type **Y** and then press Enter.

#### Run the Get-MgDevice cmdlet to display details for all devices in your organization

1. Open the Microsoft Azure Active Directory module for Windows PowerShell.

2. Run the following command.

   ```powershell
   Get-MgDevice -All -ExpandProperty "registeredOwners" | Where-Object {($_.RegisteredOwners -ne $null) -and ($_.RegisteredOwners.Count -gt 0)}
   ```

For more examples, see [Get-MgDevice](/powershell/module/microsoft.graph.identity.directorymanagement/get-mgdevice).

### Run a script to get device details

First, save the script to your computer.

1. Copy and paste the following text into Notepad.

	```powershell
	   param (
		[Parameter(Mandatory = $false)]
		[PSObject[]]$users = @(),
		[Parameter(Mandatory = $false)]
		[Switch]$export,
		[Parameter(Mandatory = $false)]
		[String]$exportFileName = "UserDeviceOwnership_" + (Get-Date -Format "yyMMdd_HHMMss") + ".csv",
		[Parameter(Mandatory = $false)]
		[String]$exportPath = [Environment]::GetFolderPath("Desktop")
	)

	#Clearing the screen
	Clear-Host

	#Preparing the output object
	$deviceOwnership = @()


	if ($users.Count -eq 0) {
		Write-Output "No user has been provided, gathering data for all devices in the tenant"
		#Getting all Devices and their registered owners
		$devices = Get-MgDevice -All -Property * -ExpandProperty registeredOwners

		#For each device which has a registered owner, extract the device data and the registered owner data
		foreach ($device in $devices) {
			$DeviceOwners = $device | Select-Object -ExpandProperty 'RegisteredOwners'
			#Checking if the DeviceOwners Object is empty
			if ($DeviceOwners -ne $null) {
				foreach ($DeviceOwner in $DeviceOwners) {
					$OwnerDictionary = $DeviceOwner.AdditionalProperties
					$OwnerDisplayName = $OwnerDictionary.Item('displayName')
					$OwnerUPN = $OwnerDictionary.Item('userPrincipalName')
					$OwnerID = $deviceOwner.Id
					$deviceOwnership += [PSCustomObject]@{
						DeviceDisplayName             = $device.DisplayName
						DeviceId                      = $device.DeviceId
						DeviceOSType                  = $device.OperatingSystem
						DeviceOSVersion               = $device.OperatingSystemVersion
						DeviceTrustLevel              = $device.TrustType
						DeviceIsCompliant             = $device.IsCompliant
						DeviceIsManaged               = $device.IsManaged
						DeviceObjectId                = $device.Id
						DeviceOwnerID                 = $OwnerID
						DeviceOwnerDisplayName        = $OwnerDisplayName
						DeviceOwnerUPN                = $OwnerUPN
						ApproximateLastLogonTimestamp = $device.ApproximateLastSignInDateTime
					}
				}
			}

		}
	}

	else {
		#Checking that userid is present in the users object
		Write-Output "List of users has been provided, gathering data for all devices owned by the provided users"
		foreach ($user in $users) {
			$devices = Get-MgUserOwnedDevice -UserId $user.Id -Property *
			foreach ($device in $devices) {
				$DeviceHashTable = $device.AdditionalProperties
				$deviceOwnership += [PSCustomObject]@{
					DeviceId                      = $DeviceHashTable.Item('deviceId')
					DeviceOSType                  = $DeviceHashTable.Item('operatingSystem')
					DeviceOSVersion               = $DeviceHashTable.Item('operatingSystemVersion') 
					DeviceTrustLevel              = $DeviceHashTable.Item('trustType')
					DeviceDisplayName             = $DeviceHashTable.Item('displayName')
					DeviceIsCompliant             = $DeviceHashTable.Item('isCompliant')
					DeviceIsManaged               = $DeviceHashTable.Item('isManaged')
					DeviceObjectId                = $device.Id
					DeviceOwnerUPN                = $user.UserPrincipalName
					DeviceOwnerID                 = $user.Id
					DeviceOwnerDisplayName        = $user.DisplayName
					ApproximateLastLogonTimestamp = $DeviceHashTable.Item('approximateLastSignInDateTime')
				}
			}
		}

	}

	$deviceOwnership

	if ($export) {
		$exportFile = Join-Path -Path $exportPath -ChildPath $exportFileName
		$deviceOwnership | Export-Csv -Path $exportFile -NoTypeInformation
		Write-Output "Data has been exported to $exportFile"
	}
	```

2. Save it as a Windows PowerShell script file by using the file extension ".ps1". For example, Get-MgGraphDeviceOwnership.ps1.

	> [!NOTE]
	> The script is also available for download on [Github](https://github.com/Raindrops-dev/RAIN-MicrosoftGraphPowershellCode/blob/main/Get-MgGraphDeviceOwnership.ps1).

### Run the script to get device information for a single user account

1. Open Powershell.

2. Go to the folder where you saved the script. For example, if you saved it to C:\PS-Scripts, run the following command.

   ```powershell
   cd C:\PS-Scripts
   ```

3. Run the following command to identify the user you want to get device details for. This example gets details for user@contoso.com.

   ```powershell
   $user = Get-MgUser -UserId "user@contoso.com"
   ```

4. Run the following command.

   ```powershell
   .\Get-GraphUserDeviceComplianceStatus.ps1 -users $user -Export
   ```

The information is exported to your Windows Desktop as a CSV file. You can specify the file name and path of the CSV.

### Run the script to get device information for a group of users

1. Open Powershell.

2. Go to the folder where you saved the script. For example, if you saved it to C:\PS-Scripts, run the following command.

   ```powershell
   cd C:\PS-Scripts
   ```

3. Run the following command to identify the group you want to get device details for. This example gets details for users in the FinanceStaff group.

   ```powershell
   $groupId = Get-MgGroup -Filter "displayName eq 'FinanceStaff'" | Select-Object -ExpandProperty Id
   $Users = Get-MgGroupMember -GroupId $groupId | Select-Object -ExpandProperty Id | % { Get-MgUser -UserId $_ }
   ```

4. Run the following command to initiate the script.

   ```powershell
   .\Get-GraphUserDeviceComplianceStatus.ps1 -User $Users -Export
   ```

The information is exported to your Windows Desktop as a CSV file. You can use more parameters to specify the file name and path of the CSV.

## Related content

[Microsoft Connect retired](/collaborate/connect-redirect)

[Overview of Basic Mobility and Security](overview.md)

[Retirement announcement for MSOnline and AzureAD cmdlets](https://techcommunity.microsoft.com/t5/microsoft-entra-azure-ad-blog/important-azure-ad-graph-retirement-and-powershell-module/ba-p/3848270)

[Get-MgUser](/powershell/module/microsoft.graph.users/get-mguser)

[Get-MgDevice](/powershell/module/microsoft.graph.identity.directorymanagement/get-mgdevice)

[Get-MgUserOwnedDevice](/powershell/module/microsoft.graph.users/get-mguserowneddevice)
