---
title: Fix issues found by the readiness assessment tool
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Fix issues found by the readiness assessment tool



## Microsoft Intune



### Mobile Device Management (MDM) authority

The MDM Authority must be set to Intune. If you are using hybrid MDM, see [What happened to hybrid MDM?](https://docs.microsoft.com/mem/configmgr/mdm/understand/what-happened-to-hybrid) for steps to change this. {THERE DOESN'T SEEM TO BE AN ARTICLE ON "CHANGE YOUR MDM AUTHORITY." THE PROVIDED LINK JUST POINTS TO THE SAME ARTICLE}

### Windows devices managed by Intune

This item is just for your information, to let you know how many Windows devices you have managed by Intune.


### MDM user scope

For Microsoft Managed Desktop users to be able to enroll devices, the MDM user scope must be set to **All** or **Some**.

This setting will be adjusted when you enroll in Microsoft Managed Desktop. If it's set to **None** beforehand, we will set it to **Some** and select all Microsoft Managed Desktop groups. If it's set to **Some** beforehand, we will only add Microsoft Managed Desktop groups.

Users must be added {WHO DOES THIS? MMD OR THE ADMIN PRIOR TO ENROLLMENT?} to Modern Workplace -all {WHAT IS THIS? SO I KNOW HOW TO FORMAT IT} to allow registered Windows devices to enroll into Intune MDM.

### Device type restrictions

You must allow the Windows MDM platform {WHAT KIND OF ENTITY IS THIS?} to enroll into Intune.

Device enrollment restrictions are assigned to user groups.

**If you use the Default restriction (that applies to all users):**

Ensure that **Select Platforms > Windows (MDM)** is set to **Allow** and that **Configure platforms > Windows (MDM)** uses a minimum and maximum range (if required) that will allow Microsoft Managed Desktop devices. Microsoft Managed Desktop isn't affected by the **Personally owned** configuration.

**If you use multiple device enrollment restrictions:**

Ensure that Microsoft Managed Desktop users are not within the scope of any device restrictions that prevent corporate Windows enrollment from completing successfully.

You can do this by creating a new device restriction with a higher priority than other device enrollment restrictions that is targeted to the Modern Workplace -All group and that has the following settings:
  
- **Select Platforms > Windows (MDM)** set to **Allow**  
- **Configure platforms > Windows (MDM)** set to **Allow**  


### Enrollment Status Page

You currently have the Enrollment Status Page (ESP) enabled. ESP isn't supported by Microsoft Managed Desktop. Depending on your situation, you have these options to fix this:

**I use the Default Enrollment Status page in order to show app and profile installation progress, but I don't mind modifying it:**

Select the profile and choose **Settings**. Set **Show app and profile installation progress** to **No** and then select **Save**. 

**I use the Default Enrollment Status page to show app and profile installation progress, but I want to keep using it for my devices that aren't managed by Microsoft Managed Desktop:**

Select the profile and choose **Settings**. Set **Show app and profile installation progress** to **No** and then select **Save**.

In the **Enrollment Status Page** section, select **Create Profile** and create a new profile with **Show app and profile installation progress** enabled. Then assign this profile new profile to a group that contains your Autopilot devices that aren't managed by Microsoft Managed Desktop.

**I have both default and custom Enrollment Status Page profiles:**

Review the settings for your multiple enrollment status page profiles and ensure that any that have **Show app and profile installation progress** set to **Yes** don't have an assignment or priority that would mean they apply to Microsoft Managed Desktop devices.

For more information, see [Set up the Enrollment Status Page](https://docs.microsoft.com/en-au/mem/intune/enrollment/windows-enrollment-status).


### Autopilot profile

You shouldn't have any existing Autopilot profiles that target assigned or dynamic groups with Autopilot profiles used by Microsoft Managed Desktop.



### Autopilot devices


### Windows Hello for Business


### Device compliance policies

### Device configuration policies

### PowerShell scripts



### Certificate Connectors



### Conditional access policies


### Review apps


### Microsoft Store for Business



### Windows deployment groups



### Security baselines



## Azure


### Azure Active Directory device registration

### Users as local administrators



### Enterprise State Roaming



### Multi-factor authentication



### Reserved names


### Reserved roles


## Microsoft 365 Apps for enterprise

### OneDrive

