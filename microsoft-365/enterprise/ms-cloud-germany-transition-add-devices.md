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

1. Users from a Azure AD Joined devices will no longer be able to sign in after your migration enters the [Service Endpoints disabled](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase.
2. Users from hybrid joined devices as well as Workplace Joined devices will not be able to leverage a seamless SSO experiences after your tenant enters the [Service Endpoints disabled](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase.

Therefore, ensure that all of your devices are registered with the worldwide endpoint at the appropriate point outlined in this documentation.

**When do my users need to re-register their devices?**

It's critical to your success that you only un-register and re-register your devices **AFTER** your organization enters the [Finalize Azure AD & Clean Up](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase, but **BEFORE** [Service Endpoints disabled](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase.

> [!NOTE]
> If the re-registration is performed at the wrong point in time, data loss might occur since the device (especially Azure AD Joined devices) will not be accessible any more.

> [!NOTE]
> As soon as your tenant is between phase 2 and phase 9 of the [migration](ms-cloud-germany-transition.md#how-is-the-migration-organized), **no** new device registrations can take place. Only after your tenant completed phase 9 new device registrations can be performed again.

**How do I restore my device state after migration?**

For hybrid Azure AD–joined and company-owned Windows devices that are registered (Workplace Joined) with Azure AD, administrators will be able to manage the migration of these devices through remotely triggered workflows that will un-register the old device states.
  
For all other devices, including personal Windows devices that are registered (Workplace Joined) in Azure AD, the end user must perform these steps manually. For Azure AD–joined devices, users need to have a local administrator account to un-register and then re-register their devices.

Microsoft will publish instructions for how to successfully restore device state. 

**How do I know that all my devices are registered in the public cloud?**

To check whether your devices are registered in the public cloud, you should export and download the list of devices from the Azure AD portal to an Excel spreadsheet. Then, filter the devices that are registered (by using the _registeredTime_ column) after the [Finalize Azure AD & Clean Up](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase.

**Considerations for customers that disabled device registration in Microsoft Cloud Deutschland**

Device registration is automatically activated after the [Azure AD](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase of the tenant completed and cannot be enabled or disabled via the portal. If customers still want to disable device registration in general and do not use Microsoft Intune, the following command has to be executed by leveraging the Azure AD PowerShell module:

```powershell
Get-AzureADServicePrincipal -All:$true | Where-Object -Property AppId -eq "0000000a-0000-0000-c000-000000000000" | Set-AzureADServicePrincipal -AccountEnabled:$false
```

## Migration Guidance for device types

> [!NOTE]
> It's critical to your success that you only un-register and re-register your devices **AFTER** your organization enters the [Finalize Azure AD & Clean Up](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase, but **BEFORE** [Service Endpoints disabled](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase. If the re-registration is performed at the wrong point in time, data loss might occur since the device (especially Azure AD Joined devices) will not be accessible any more.

### Hybrid Azure AD join

#### **Windows down-level**

_Windows down-level devices_ are Windows devices that currently run earlier versions of Windows (such as Windows 8.1 or Windows 7), or that run Windows Server versions earlier than 2019 and 2016. If such devices were hybrid joined before, you'll need to un-register and re-register those devices.  

To determine whether a Windows down-level device was previously joined to Azure AD, run following command on the down-level device directly:

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

The **affected** devices will have the "Device state" with value of "Unknown". If the output is "Device not joined" or "Device state" value is "Okay", ignore the following guidance.

Only for devices that show that the device is joined (by virtue of deviceId, thumbprint, and so on) and whose "Device state" value is "Unknown", admins should run the following command in the context of a domain user signing in on such a down-level device:

```console
"%programfiles%\Microsoft Workplace Join\autoworkplace /leave"
```

The preceding command only needs to be run once per domain user signing in on the Windows down-level device. This command should be run in the context of the domain user signing in.

> [!NOTE]
> Sufficient care must be taken to not run this command when the user subsequently signs in. When the preceding command runs, it will clear the joined state of the local hybrid Azure AD–joined computer for the user who signed in. And, if the computer is still configured to be hybrid Azure AD–joined in the tenant, it will attempt to join when the user signs in again.

#### **Windows Current**

##### **Un-join**

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

The preceding command only needs to be run **once** in an **administrative context** on the Windows device.

##### **Hybrid AD Join\Re-Registration**

The device is automatically joined to Azure AD without user or admin intervention as long as the device has network connectivity to global Azure AD endpoints and hybrid Azure AD Join is still configured in the customer environment based on Microsoft guidelines.

### Azure AD Join

#### **Un-join** 

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

User: If the device is Azure AD joined, a user can un-join the device from the settings. Verify that there is a local administrator account on the device before un-joining the device from Azure AD. The local administrator account is required to sign back into the device.

Admin: If the organization's admin wants to un-join the users' devices that are Azure AD–joined, they can do so by running the following command on each of the devices by using a mechanism such as Group Policy. The admin must verify that there is a local administrator account on the device before un-joining the device from Azure AD. The local administrator account is needed to sign back into the device.

```console
%SystemRoot%\system32\dsregcmd.exe /leave
```

The preceding command only needs to be run **once** in an **administrative context** on the Windows device.

> [!NOTE]
> If no local administrator is present on the device data loss might occur, because access to the device will be denied in subsequent login attempts.

#### Azure AD Join/Re-Registration

The user can join the device to Azure AD from Windows settings: **Settings > Accounts > Access Work Or School > Connect**.

### Azure AD Registered (Workplace Joined) - Personal

> [!NOTE]
> _Personal_ in this context implies the Workplace Join for this device was performed on a device the user owns and company IT has no access/possibilities to perform administrative actions.

To determine whether the Windows 10 device is Azure AD–registered, run the following command on the device in an un-elevated CMD:

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

To remove the existing Azure AD-registered account on the device the **user** has to do the following:

1. Open **Settings**.
2. Select **Accounts**.
3. Select "Access work or school account"
3. Disconnect the affected work or school account by selecting it and clicking **Disconnect**.

### Azure AD Registered (Workplace Joined) - Company-owned

> [!NOTE]
> _Company-owned_ in this context implies the Workplace Join for this device was performed on a domain-joined device which the company administrator can target via group policy or other means of automation in their organization.

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

To disable future prompts to register the device in Azure AD, add this registry value: 

- Location: HKLM\SOFTWARE\Policies\Microsoft\Windows\WorkplaceJoin
- Type: DWORD (32 bit)
- Name: BlockAADWorkplaceJoin
- Value data: 1

The presence of this registry value should block workplace join and prevent users from seeing prompts to join the device again.

## Android

For Android, users will need to un-register and re-register their devices. This can be done via the Microsoft Authenticator app, the Company Portal app or the Android Settings pane.

To un-register and re-register the device on Android by using the _Microsoft Authenticator_ app:

1. Open the Microsoft Authenticator app and go to **Settings**.
2. Select **Device registration**.
3. Un-register the device by selecting **Un-register**.
4. For **Device registration**, re-register the device by typing your email address, and then select **Register**.

To un-register and re-register the device on Android from _Company Portal_:

1. Launch Company Portal and go to **Devices** tab.
2. Select the device to see the device details.
3. From the ellipses (three dots) menu, select **Remove Device**, and complete the removal by confirming in the dialog.
4. You should now be logged out of the Company Portal app. Select **Sign in** to re-register the device.

To un-register and re-register an Android device with the _Android Settings_ page:

1. Open **Device Settings** and go to **Accounts**.
2. Select the work account that you want to re-register and select **Remove account**.
3. After the account is removed, from the **Accounts** page, select **Add Account > Work account**.
4. For **Workplace Join**, type your email address and select **Join** to complete registering the device.

For more information about any actions required during the migration phases or impact to administration or usage, review the information about Azure Active Directory (Azure AD) in [Additional Azure AD information for the migration from Microsoft Cloud Deutschland](ms-cloud-germany-transition-azure-ad.md).

## iOS

On iOS devices, a user will need to manually remove any cached accounts from the Microsoft Authenticator, un-register the device, and sign out from any native apps on the device.

### Step 1: If present, remove the account from the Microsoft Authenticator app

1. Tap the account in the Microsoft Authenticator app.
2. Tap the **Settings** icon in the top-right corner. If you don't see the **Settings** icon, you might not be using the latest version of Microsoft Authenticator.
3. Tap the **Remove account** button.
4. Tap **All apps on this device**.

### Step 2: Un-register the device from the Microsoft Authenticator app

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