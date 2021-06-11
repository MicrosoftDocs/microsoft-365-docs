---
title: "Additional device information for the migration from Microsoft Cloud Deutschland"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 12/01/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
f1.keywords:
- CSH
ms.custom:
- Ent_TLGs
description: "Summary: Additional device information on services when moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region."
---

# Additional device information for the migration from Microsoft Cloud Deutschland

<<<<<<< Updated upstream
## Frequently asked questions

**How can I tell if my organization is affected?**

Administrators should check `https://portal.microsoftazure.de` to determine if they have any registered devices. If your organization has registered devices, you're affected.

**What is the impact on my users?**

Users from a registered device will no longer be able to sign in after your migration enters the [Finalize Azure AD](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase.  

Ensure that all of your devices are registered with the worldwide endpoint before your organization is disconnected from Microsoft Cloud Deutschland.
  
**When do my users re-register their devices?**

It's critical to your success that you only unregister and re-register your devices during the [Separate from Microsoft Cloud Deutschland](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase.

**How do I restore my device state after migration?**

For hybrid Azure AD–joined and company-owned Windows devices that are registered with Azure AD, administrators will be able to manage the migration of these devices through remotely triggered workflows that will unregister the old device states.
  
For all other devices, including personal Windows devices that are registered in Azure AD, the end user must perform these steps manually. For Azure AD–joined devices, users need to have a local administrator account to unregister and then re-register their devices.

Microsoft will publish instructions for how to successfully restore device state. 
 
**How do I know that all my devices are registered in the public cloud?**

To check whether your devices are registered in the public cloud, you should export and download the list of devices from the Azure AD portal to an Excel spreadsheet. Then, filter the devices that are registered (by using the _registeredTime_ column) after the [Separate from Microsoft Cloud Deutschland](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase.

Device registration is deactivated after migration of the tenant and cannot be enabled or disabled. If Intune is not used, sign in to your subscription and run this command to re-activate the option:

```powershell
Get-AzureADServicePrincipal -All:$true |Where-object -Property AppId -eq "0000000a-0000-0000-c000-000000000000" | Set-AzureADServicePrincipal -AccountEnabled:$false
```

## Hybrid Azure AD join

### Windows down-level

_Windows down-level devices_ are Windows devices that currently run earlier versions of Windows (such as Windows 8.1 or Windows 7), or that run Windows Server versions earlier than 2019 and 2016. If such devices were registered before, you'll need to unregister and re-register those devices. 

To determine whether a Windows down-level device was previously joined to Azure AD, use following command on the device:

```console
%programfiles%\Microsoft Workplace Join\autoworkplace /status
```

If the device was previously joined to Azure AD, and if the device has network connectivity to global Azure AD endpoints, you would see the following output:

```console
+----------------------------------------------------------------------+
| Device Details                                                       |
+----------------------------------------------------------------------+
         DeviceId : AEE2B956-DA62-48D0-BB47-046DD992A110
       Thumbprint : 00fdfa2de5c32feae57489873a13aa6a3ff7433b
             User : user1@<tenantname>.de
Private key state : Okay
     Device state : Unknown
```

The affected devices will have the "Device state" with value of "Unknown". If the output is "Device not joined" or whose "Device state" value is "Okay", ignore the following guidance.

Only for devices that show that the device is joined (by virtue of deviceId, thumbprint, and so on) and whose "Device state" value is "Unknown", admins should run the following command in the context of a domain user signing in on such a down-level device:

```console
"%programfiles%\Microsoft Workplace Join\autoworkplace /leave"
```

The preceding command only needs to be run once per domain user signing in on the Windows down-level device. This command should be run in the context of the domain user signing in. 

Sufficient care must be taken to not run this command when the user subsequently signs in. When the preceding command runs, it will clear the joined state of the local hybrid Azure AD–joined computer for the user who signed in. And, if the computer is still configured to be hybrid Azure AD–joined in the tenant, it will attempt to join when the user signs in again.

### Windows Current

#### Unjoin

To determine whether the Windows 10 device was previously joined to Azure AD, run the following command on the device:

```console
%SystemRoot%\system32\dsregcmd.exe /status
```

If the device is hybrid Azure AD–joined, the admin would see the following output:

```console
+----------------------------------------------------------------------+
| Device State                                                         |
+----------------------------------------------------------------------+
 
             AzureAdJoined : YES
          EnterpriseJoined : NO
              DomainJoined : YES
```

If the output is "AzureAdJoined : No", ignore the following guidance.

Only for devices that show that the device is joined to Azure AD, run the following command as an admin to remove the joined state of the device.

```console
%SystemRoot%\system32\dsregcmd.exe /leave
```

The preceding command only needs to be run once in an administrative context on the Windows device.

#### Hybrid AD Join\Re-Registration
=======
Azure AD joined and registered devices connected to Microsoft Cloud Deutschland must be migrated after phase 9 and before phase 10. The migration of a device depends on the devices type, operating system and AAD relation. 

## Frequently asked questions

**How can I tell if my organization is affected?**

Administrators should check `https://portal.microsoftazure.de` to determine if they have any registered or Azure AD joined devices. If your organization has registered devices, you're affected.

**What is the impact on my users?**

Users from a registered device will no longer be able to sign in after [migration phase 10](ms-cloud-germany-transition-phases.md#phase-9--10-azure-ad-finalization) has been completed and the endpoints for Microsoft Cloud Deutschland have been disabled.  

Ensure that all of your devices are registered with the worldwide endpoint before your organization is disconnected from Microsoft Cloud Deutschland.
  
**When do my users re-register their devices?**

It's critical to your success that you only unregister and re-register your devices after [phase 9](ms-cloud-germany-transition-phases.md#phase-9--10-azure-ad-finalization) has been completed. You must finish the re-registration before phase 10 starts, otherwise you could lose access to your device.

**How do I restore my device state after migration?**

For company-owned Windows devices that are registered with Azure AD, administrators will be able to manage the migration of these devices through remotely triggered workflows that will unregister the old device states.
  
For all other devices, including personal Windows devices that are registered in Azure AD, the end user must perform these steps manually. For Azure AD–joined devices, users need to have a local administrator account to unregister and then re-register their devices.

Please refer to detailed instructions for how to successfully restore device states below. 
 
**How do I know that all my devices are registered in the public cloud?**

To check whether your devices are registered in the public cloud, you should export and download the list of devices from the Azure AD portal to an Excel spreadsheet. Then, filter the devices that are registered (by using the _registeredTime_ column) after the [Separate from Microsoft Cloud Deutschland](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase.

## Additional considerations
Device registration is deactivated after migration of the tenant and cannot be enabled or disabled. 

If Intune is not used, sign in to your subscription and run this command to re-activate the option:

```powershell
Get-AzureADServicePrincipal -All:$true |Where-object -Property AppId -eq "0000000a-0000-0000-c000-000000000000" | Set-AzureADServicePrincipal -AccountEnabled:$false
```
**IMPORTANT:** The Intune service principal will be enabled after commerce migration, which implies the activation of Azure AD Device Registration. If you blocked Azure AD Device Registration before migration, you must disable the Intune service principal with PowerShell to disable Azure AD Device Registration with the Azure AD portal again. You can disable the Intune service principal with this command in the Azure Active Directory PowerShell for Graph module.

```powershell
Get-AzureADServicePrincipal -All:$true |Where-object -Property AppId -eq "0000000a-0000-0000-c000-000000000000" | Set-AzureADServicePrincipal -AccountEnabled:$false
```


## Azure AD Join
This applies to Windows 10 devices. 

If a device is Azure AD joined, it must be disconnected from Azure AD and be connected again. 
>>>>>>> Stashed changes

The device is automatically joined to Azure AD without user or admin intervention as long as the device has network connectivity to global Azure AD endpoints. 


<<<<<<< Updated upstream
## Azure AD Join

**IMPORTANT:** The Intune service principal will be enabled after commerce migration, which implies the activation of Azure AD Device Registration. If you blocked Azure AD Device Registration before migration, you must disable the Intune service principal with PowerShell to disable Azure AD Device Registration with the Azure AD portal again. You can disable the Intune service principal with this command in the Azure Active Directory PowerShell for Graph module.

```powershell
Get-AzureADServicePrincipal -All:$true |Where-object -Property AppId -eq "0000000a-0000-0000-c000-000000000000" | Set-AzureADServicePrincipal -AccountEnabled:$false
```

### Unjoin

To determine whether the Windows 10 device was previously joined to Azure AD, the user or admin can run the following command on the device:

```console
%SystemRoot%\system32\dsregcmd.exe /status
```

If the device is joined to Azure AD, the user or admin would see the following output:

```console
+----------------------------------------------------------------------+
| Device State                                                         |
+----------------------------------------------------------------------+
 
             AzureAdJoined : YES
          EnterpriseJoined : NO
              DomainJoined : NO
```

If the output is "AzureAdJoined : NO", ignore the following guidance.

User: If the device is Azure AD joined, a user can unjoin the device from the settings. Verify that there is a local administrator account on the device before unjoining the device from Azure AD. The local administrator account is required to sign back into the device.

Admin: If the organization's admin wants to unjoin the users' devices that are Azure AD–joined, they can do so by running the following command on each of the devices by using a mechanism such as Group Policy. The admin must verify that there is a local administrator account on the device before unjoining the device from Azure AD. The local administrator account is needed to sign back into the device.

```console
%SystemRoot%\system32\dsregcmd.exe /leave
```

The preceding command only needs to be run once in an administrative context on the Windows device. 

### Azure AD Join/Re-Registration

The user can join the device to Azure AD from Windows settings: **Settings > Accounts > Access Work Or School > Connect**.
 

## Azure AD Registered (Company owned)

To determine whether the Windows 10 device is Azure AD–registered, run the following command on the device:

```console
%SystemRoot%\system32\dsregcmd.exe /status
```

If the device is Azure AD Registered, you would see the following output:

```console
+----------------------------------------------------------------------+
| User State                                                           |
+----------------------------------------------------------------------+
           WorkplaceJoined : YES
          WamDefaultSet : NO
          WamDefaultAuthority : organizations
```

To remove the existing Azure AD-registered account on the device:

- To remove the Azure AD–registered account on the device, use CleanupWPJ, a tool that you can download from here: [CleanupWPJ.zip](https://download.microsoft.com/download/8/e/f/8ef13ae0-6aa8-48a2-8697-5b1711134730/WPJCleanUp.zip).

- Extract the ZIP file and run **WPJCleanup.cmd**. This tool will launch the right executable based on the version of Windows on the device.

- By using a mechanism like Group Policy, the admin can run the command on the device in the context of any user who is signed in on the device.

=======
If the user is an administrator on the Windows 10 device, the user can unregister the device from Azure AD and re-join it again. If he has no administrator privileges, the user needs credentials of a local administrator account on this machine. 


An Administrator can create an local administrator account on the device following this configuration path:

*Settings > Accounts > Other Accounts > Credentials unknown > Add user without Microsoft-Account*

### Step 1: Determine if the device is Azure ID joined
1.	Sign In with users E-mail and password.
2.	Go to Settings > Accounts > Access Work Or School. 
3.	Look for a user in the list with **connected to … ‘s Azure AD**. 
4.	If a connected user exists, proceed with Step 2. If not, no further action is required.
### Step 2: Disconnect the device from Azure AD
1.	Tap **Disconnect** on the connected work or School Account. 
2.	Confirm the disconnect twice. 
3.	Enter the local administrator username and password. The device is disconnected.
4.	Restart the device.
### Step 3: Join the device to Azure AD
1.	the user signs in with the credentials of the local administrator
2.	Go to **Settings** then **Accounts** then **Access Work Or School**
3.	Tap **Connect**
4.	**IMPORTANT**: Tap **Join to Azure AD**
5.	Enter the e-mail address and password of the user. The device is connected
6.	Restart the device 
7.	sign with your e-mail address and password

## Azure AD Registered (Company owned)

To determine whether the Windows 10 device is Azure AD–registered, run the following command on the device:

```console
%SystemRoot%\system32\dsregcmd.exe /status
```

If the device is Azure AD Registered, you would see the following output:

```console
+----------------------------------------------------------------------+
| User State                                                           |
+----------------------------------------------------------------------+
           WorkplaceJoined : YES
          WamDefaultSet : NO
          WamDefaultAuthority : organizations
```

To remove the existing Azure AD-registered account on the device:

- To remove the Azure AD–registered account on the device, use CleanupWPJ, a tool that you can download from here: [CleanupWPJ.zip](https://download.microsoft.com/download/8/e/f/8ef13ae0-6aa8-48a2-8697-5b1711134730/WPJCleanUp.zip).

- Extract the ZIP file and run **WPJCleanup.cmd**. This tool will launch the right executable based on the version of Windows on the device.

- By using a mechanism like Group Policy, the admin can run the command on the device in the context of any user who is signed in on the device.

>>>>>>> Stashed changes
To disable Web Account Manager prompts to register the device in Azure AD, add this registry value: 

- Location: HKLM\SOFTWARE\Policies\Microsoft\Windows\WorkplaceJoin
- Type: DWORD (32 bit)
- Name: BlockAADWorkplaceJoin
- Value data: 1

The presence of this registry value should block workplace join and prevent users from seeing prompts to join the device.

## Android

For Android, users will need to unregister and re-register their devices. This can be done via the Microsoft Authenticator app or the Company Portal app. 

- From the Microsoft Authenticator app, users can go to **Settings > Device Registration**. From there users can unregister and re-register their device.
 
- From the Company Portal, users can go to **Devices** tab and remove the device. After that, re-enroll the device by using Company Portal.
 
- Users can also unregister and re-register by removing the account from the account settings page and then re-adding the work account.

To unregister and re-register the device on Android by using the Microsoft Authenticator app:

1.	Open the Microsoft Authenticator app and go to **Settings**.
2.	Select **Device registration**.
3.	Unregister the device by selecting **Unregister**.
4.	For **Device registration**, re-register the device by typing your email address, and then select **Register**.

To unregister and re-register an Android device with the Android Settings page:

1.	Open **Device Settings** and go to **Accounts**.
2.	Select the work account that you want to re-register and select **Remove account**.
3.	After the account is removed, from the **Accounts** page, select **Add Account > Work account**.
4.	For **Workplace Join**, type your email address and select **Join** to complete registering the device.

To unregister and re-register the device on Android from Company Portal:

1.	Launch Company Portal and go to **Devices** tab.
2.	Select the device to see the device details.
3.	From the ellipses (three dots) menu, select **Remove Device**, and complete the removal by confirming in the dialog.
4.	You should now be logged out of the Company Portal app. Select **Sign in** to re-register the device.

For more information about any actions required during the migration phase of this workload, or impact to administration or usage, review the information about Azure Active Directory (Azure AD) in [Additional Azure AD information for the migration from Microsoft Cloud Deutschland](ms-cloud-germany-transition-azure-ad.md).

## iOS

On iOS devices, a user will need to manually remove any cached accounts from the Microsoft Authenticator, unregister the device, and sign out from any native apps on the device.

### Step 1: If present, remove the account from the Microsoft Authenticator app

1. Tap the account in the Microsoft Authenticator app.
2. Tap the **Settings** icon in the top-right corner. If you don't see the **Settings** icon, you might not be using the latest version of Microsoft Authenticator.
3. Tap the **Remove account** button.
4. Tap **All apps on this device**.
 
### Step 2: Unregister the device from the Microsoft Authenticator app

1. Tap the menu icon in the top-right corner.
2. Tap **Settings** and then **Device Registration**.
4. If your account is shown, tap **Unregister device** and **Continue** in the dialog. You should see no account after that.
 
### Step 3: Sign out from individual apps if necessary

Users can go to individual apps like Outlook, Teams, and OneDrive, and remove accounts from those apps.

## More information

Getting started:

- [Migration from Microsoft Cloud Deutschland to Office 365 services in the new German datacenter regions](ms-cloud-germany-transition.md)
- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](ms-cloud-germany-migration-opt-in.md)
- [Customer experience during the migration](ms-cloud-germany-transition-experience.md)

Moving through the transition:

- [Migration phases actions and impacts](ms-cloud-germany-transition-phases.md)
- [Additional pre-work](ms-cloud-germany-transition-add-pre-work.md)
- Additional information for [Azure AD](ms-cloud-germany-transition-azure-ad.md), [devices](ms-cloud-germany-transition-add-devices.md), [experiences](ms-cloud-germany-transition-add-experience.md), and [AD FS](ms-cloud-germany-transition-add-adfs.md).

Cloud apps:

- [Dynamics 365 migration program information](/dynamics365/get-started/migrate-data-german-region)
- [Power BI migration program information](/power-bi/admin/service-admin-migrate-data-germany)
- [Getting started with your Microsoft Teams upgrade](/microsoftteams/upgrade-start-here)