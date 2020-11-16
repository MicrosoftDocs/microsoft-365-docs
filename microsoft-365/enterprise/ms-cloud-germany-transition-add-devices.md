---
title: "Additional device nformation for the migration from Microsoft Cloud Deutschland"
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

## Initial questions and their answers

**How can I tell if my organization is impacted?**

Administrators should check https://portal.microsoftazure.de to determine if they have any devices.  If your organization has devices registered, you are impacted.

**What is the impact on my users?**

Users from a registered device will no longer be able to sign-in once your migration enters stage Finalize Azure AD.  

Ensure all of your devices are registered with the worldwide endpoint before your organization is disconnected from the MCD cloud.  
  
**When do my users re-register their devices?**

It's critical to your success, that you only perform the un-registration and re-registration of your devices during migration stage Separate from MCD

**How do I restore my device state after migration?**

For Hybrid Azure AD joined and company owned Windows devices that are in Azure AD registered state, administrators will be able to manage the migration of these devices through remotely triggered workflows that will un-register the old device state. 
  
For all other devices including personal Windows Azure AD registered devices, the end user will have to perform these steps manually.  For Azure AD joined devices, users will need to have local administrator account to un-register and then re-register their device.

Microsoft will publish step by step instructions for how to successfully restore device state. 
 
**How do I know all my devices are registered in public cloud?**

To check that your devices are registered in public cloud, you should export/download the devices from Azure AD portal to an excel file, and then filter the devices that are registered (filter using registeredTime column) after migration stage Separate from MCD.

## Windows Hybrid Azure AD join

### Windows down-level

Windows down-level devices are Windows devices that currently run versions before Windows 10 (such as Windows 8.1 or Windows 7), or run Windows Server versions before 2019 and 2016. Such devices, if they are registered before, will need to un-register and re-register. 

To determine whether the Windows down-level device was previously joined to Azure AD, use following command on the device:

```
%programfiles%\Microsoft Workplace Join\autoworkplace /status
```

If the device was previously joined to Azure AD, and assuming that the device has network connectivity to public Azure AD endpoints, one would see the following output:

```example
+----------------------------------------------------------------------+
| Device Details                                                       |
+----------------------------------------------------------------------+
         DeviceId : AEE2B956-DA62-48D0-BB47-046DD992A110
       Thumbprint : 00fdfa2de5c32feae57489873a13aa6a3ff7433b
             User : user1@<tenantname>.de
Private key state : Okay
     Device state : Unknown
```

The affected devices will have the “Device state” with value of “Unknown”. If the output is “Device not joined” or whose “Device state” value is “Okay”, ignore the following guidance.

Only for such devices which show that the device is joined (by virtue of deviceId, thumbprint etc) and whose “Device state” value is “Unknown”, admin should run the following commands in sequence, in the context of domain user signing on such Windows down-level devices:

```
%programfiles%\Microsoft Workplace Join\autoworkplace /leave
```

The above set of commands only needs to be **run once per each domain user signing in** on the Windows down-level device. This command should be run in the context of the domain user signing in. Sufficient care must be taken to not run this command when the user subsequently signs in.

When the above command runs, it will clear the local hybrid Azure AD join state on the computer, for the user who signed in. And, if the computer is still configured to do hybrid Azure AD join in the tenant, it will attempt to do that when the user signs in again.

### Windows Current

#### Unjoin

To determine whether the Windows 10 device was previously joined to Azure AD, run the following command on the device:

```powershell
%SystemRoot%\system32\dsregcmd.exe /status”
```

If the device is Hybrid Azure AD joined, the admin would see the following output:

```example
+----------------------------------------------------------------------+
| Device State                                                         |
+----------------------------------------------------------------------+
 
             AzureAdJoined : YES
          EnterpriseJoined : NO
              DomainJoined : YES
```

If the output is “AzureAdJoined : No”, ignore the following guidance.

Only for devices which show that the device is joined to Azure AD, the following command should be run as an admin to unjoin the device.

```powershell
%SystemRoot%\system32\dsregcmd.exe /leave
```

The above command only needs to be run once in admin context on the Windows device. 

#### Hybrid AD Join\Re-Registration

The device is automatically joined to Azure AD without user or admin intervention as long as the device has network connectivity to public Azure AD endpoints. 


## Windows Azure AD Join

### Unjoin

To determine whether the Windows 10 device was previously joined to Azure AD, the user or admin can run the following command on the device:

```powershell
%SystemRoot%\system32\dsregcmd.exe /status
```

If the device is joined to Azure AD, the user or admin would see the following output:

```example
+----------------------------------------------------------------------+
| Device State                                                         |
+----------------------------------------------------------------------+
 
             AzureAdJoined : YES
          EnterpriseJoined : NO
              DomainJoined : NO
```

If the output is “AzureAdJoined : NO”, ignore the following guidance.

User: If the device is Azure AD joined, user can unjoin the device from the settings. Verify that there is local admin account on the device before un-joining the device from Azure AD. The local admin account is needed to sign back into the device.

Admin: If the organization’s admin wants to unjoin the users devices which are Azure AD joined, they can do so by running the following command on each of the device using a mechanism such as group policy or something similar. The admin must verify that there is local admin account on the device before un-joining the device from Azure AD. The local admin account is needed to sign back into the device.

```powershell
%SystemRoot%\system32\dsregcmd.exe /leave
```

The above command only needs to be run once in admin context on the Windows device. 

### Azure AD Join/Re-Registration

The user can Azure AD join the device from Windows settings (**Settings > Accounts > Access Work Or School > Connect**)
 

## Windows Azure AD Registered (Company owned)

To determine whether the Windows 10 device is Azure AD registered, the admin can run the following command on the device:

```powershell
%SystemRoot%\system32\dsregcmd.exe /status
```

If the device is Azure AD Registered, the admin would see the following output:

```example
+----------------------------------------------------------------------+
| User State                                                           |
+----------------------------------------------------------------------+
           WorkplaceJoined : YES
          WamDefaultSet : NO
          WamDefaultAuthority : organizations
```

To remove the existing Azure AD Register/Add Work Account /Workplace Join account on the device

- Use the CleanupWPJ tool found [here](https://download.microsoft.com/download/8/e/f/8ef13ae0-6aa8-48a2-8697-5b1711134730/WPJCleanUp.zip) to remove the Azure AD Registered account on the device.
- Run the “WPJCleanup.cmd” command. This command tool will pick the right executable based on the version of Windows on the device.
- The admin can run the command on the device by using a mechanism such as group policy or something similar in the context of any user who is signed in on the device.

To disable Web Account Manager prompts to Azure AD Register the device, add this registry key to block Workplace Join. 

```powershell
HKLM\SOFTWARE\Policies\Microsoft\Windows\WorkplaceJoin, "BlockAADWorkplaceJoin"=dword:1
``` 

This should block the users from seeing the anymore prompts to Workplace join the device.

## Android

For Android, users will need to un-register and re-register their devices. This can be done via the Authenticator app or the Company Portal app. 

- From the Authenticator app, users can go to **Settings > Device Registration**. From there users can un-register and re-register their device.
- From the Company Portal, users can go to **Devices** tab and the remove the device. After that re-enroll the device using Company Portal.
- Users can also un-register and re-register by removing the account from Android account settings page and then re-adding the work account.

How to un-register and re-register the device on Android via Authenticator app:

1.	Open the Authenticator app and go to **Settings**.
2.	Select **Device registration**.
3.	Unregister the device by selecting **Unregister**.
4.	For **Device registration**, re-register the device by typing your email address, and then select **Register**.

How to un-register and re-register the device on Android via Android Settings page

1.	Open **Device Settings** and go to **Accounts**.
2.	Select the work account that you want to re-register and click **Remove account**.
3.	After the account is removed, from the **Accounts** page, click **Add Account > Work account**.
4.	For **Workplace Join**, type your email address and click **Join** to complete registering the device

How to un-register and re-register the device on Android from Company Portal:

1.	Launch Company Portal and go to **Devices** tab.
2.	Select the device to see the device details
3.	From the 3-dot menu, select **Remove Device** and complete the removal by confirming in the dialog.
4.	The user should now be logged out of the Company Portal app. Click **Sign in** to re-register the device.

To find out more information about any actions needed during the migration phase of this workload or impact to administration or usage, review the [Azure AD section](ms-cloud-germany-transition-add-general.md#azure-active-directory).

## IOS

On iOS devices, user will need to manually remove any cached accounts from the Authenticator, un-register device as well as sign out from any native apps on their device.

### Step 1: If present, remove the account from the Authenticator app

1. Tap the account in the Authenticator app.
2. Select the **Settings** icon in the top right corner. If you don’t see the **Settings** icon, you might be not using the latest Authenticator version.
3. Tap the **Remove account** button.
4. Select **All apps on this device**.
 
### Step 2: Unregister device from the Authenticator app:

1. Tap the menu icon in the top right corner.
2. Tap **Settings** and then **Device Registration**.
4. If your account is shown, tap **Unregister device** and **Continue** in the dialog. You should see no account after that.
 
### Step 3: Sign out from individual apps if necessary.

Users can go to individual apps like Outlook, Teams, OneDrive, and remove accounts from those apps.

## More information

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
