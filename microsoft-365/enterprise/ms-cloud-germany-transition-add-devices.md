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

## Frequently asked questions

**How can I tell if my organization is affected?**

Administrators should check `https://portal.microsoftazure.de` to determine if they have any registered devices. If your organization has registered devices, you're affected.

**What is the impact on my users?**

Users from a registered device will no longer be able to sign in after your migration enters the stage "Finalize Azure AD."  

Ensure that all of your devices are registered with the worldwide endpoint before your organization is disconnected from Microsoft Cloud Deutschland.
  
**When do my users re-register their devices?**

It's critical to your success that you only unregister and re-register your devices during the migration stage, "Separate from Microsoft Cloud Deutschland."

**How do I restore my device state after migration?**

For hybrid Azure AD–joined and company-owned Windows devices that are registered with Azure AD, administrators will be able to manage the migration of these devices through remotely triggered workflows that will unregister the old device states.
  
For all other devices, including personal Windows devices that are registered in Azure AD, the end user must perform these steps manually. For Azure AD–joined devices, users need to have a local administrator account to unregister and then re-register their devices.

Microsoft will publish instructions for how to successfully restore device state. 
 
**How do I know that all my devices are registered in public cloud?**

To check whether your devices are registered in the public cloud, you should export and download the list of devices from the Azure AD portal to an Excel spreadsheet. Then, filter the devices that are registered (by using the _registeredTime_ column) after migration stage "Separate from Microsoft Cloud Deutschland."

## Windows Hybrid Azure AD join

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
%programfiles%\Microsoft Workplace Join\autoworkplace /leave
```

The preceding command only needs to be run once per domain user signing in on the Windows down-level device. This command should be run in the context of the domain user signing in. 

Sufficient care must be taken to not run this command when the user subsequently signs in. When the preceding command runs, it will clear the joined state of the local hybrid Azure AD–joined computer for the user who signed in. And, if the computer is still configured to be hybrid Azure AD–joined in the tenant, it will attempt to join when the user signs in again.

### Windows Current

#### Unjoin

To determine whether the Windows 10 device was previously joined to Azure AD, run the following command on the device:

```console
%SystemRoot%\system32\dsregcmd.exe /status"
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

The device is automatically joined to Azure AD without user or admin intervention as long as the device has network connectivity to global Azure AD endpoints. 


## Windows Azure AD Join

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
 

## Windows Azure AD Registered (Company owned)

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

To remove the existing Azure AD Register/Add Work Account /Workplace Join account on the device:

- To remove the Azure AD–registered account on the device, use CleanupWPJ, a tool that you can download from here: [CleanupWPJ.zip](https://download.microsoft.com/download/8/e/f/8ef13ae0-6aa8-48a2-8697-5b1711134730/WPJCleanUp.zip).

- Extract the ZIP file and run **WPJCleanup.cmd**. This tool will launch the right executable based on the version of Windows on the device.

- By using a mechanism like Group Policy, the admin can run the command on the device in the context of any user who is signed in on the device.

To disable Web Account Manager prompts to register the device in Azure AD, add this registry key: 

```console
HKLM\SOFTWARE\Policies\Microsoft\Windows\WorkplaceJoin, "BlockAADWorkplaceJoin"=dword:1
``` 

The presence of this registry key should block workplace join and prevent users from seeing prompts to join the device.

## Android

For Android, users will need to unregister and re-register their devices. This can be done via the Authenticator app or the Company Portal app. 

- From the Authenticator app, users can go to **Settings > Device Registration**. From there users can unregister and re-register their device.
 
- From the Company Portal, users can go to **Devices** tab and remove the device. After that, re-enroll the device by using Company Portal.
 
- Users can also unregister and re-register by removing the account from the account settings page and then re-adding the work account.

To unregister and re-register the device on Android by using the Authenticator app:

1.	Open the Authenticator app and go to **Settings**.
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

For more information about any actions required during the migration phase of this workload, or impact to administration or usage, review the information about Azure Active Directory in [Additional general information for the migration from Microsoft Cloud Deutschland](ms-cloud-germany-transition-add-general.md#azure-active-directory).

## iOS

On iOS devices, a user will need to manually remove any cached accounts from the Authenticator, unregister the device, and sign out from any native apps on the device.

### Step 1: If present, remove the account from the Authenticator app

1. Tap the account in the Authenticator app.
2. Tap the **Settings** icon in the top-right corner. If you don't see the **Settings** icon, you might not be using the latest version of Authenticator.
3. Tap the **Remove account** button.
4. Tap **All apps on this device**.
 
### Step 2: Unregister the device from the Authenticator app

1. Tap the menu icon in the top-right corner.
2. Tap **Settings** and then **Device Registration**.
4. If your account is shown, tap **Unregister device** and **Continue** in the dialog. You should see no account after that.
 
### Step 3: Sign out from individual apps if necessary

Users can go to individual apps like Outlook, Teams, and OneDrive, and remove accounts from those apps.

## More information

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
