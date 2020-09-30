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

For each check, the tool will report one of three possible results:


|Result  |Meaning  |
|---------|---------|
|Ready     | No action is required before completing enrollment.        |
|Advisory    | Follow the steps in the tool or this article for the best experience with enrollment and for users. You *can* complete enrollment, but you must fix these issues before you deploy your first device.        |
|Not ready | *You can't complete enrollment without fixing these issues.* Follow the steps in the tool or this article to resolve them.        |

## Microsoft Intune settings

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

You shouldn't have any existing Autopilot profiles that target assigned or dynamic groups with Autopilot profiles used by Microsoft Managed Desktop. This is because Microsoft Managed Desktop uses Autopilot to provision new devices.

If you use Azure AD dynamic groups to assign Autopilot profiles with membership rules that use the ZTDID field to assign devices, follow these steps depending on your situation:

If your dynamic group uses a generic rule that could include both Microsoft Managed Desktop devices and other devices Use the example guidance below to help you’re your required remediation actions:  {IT'S UNCLEAR IF THIS AND THE PRECEDING PARA ARE TWO DIFFERENT SCENARIOS, TWO WAYS OF STATING THE SAME ONE, OR IF ONE IS A SUBSET OF THE OTHER--PLZ CLARIFY}

**I use the Autopilot "catch all devices" rule:**

An example is **(device.devicePhysicalIDs -any _ -contains "[ZTDId]")**. Instead, either use a different group that doesn't use the ZTDID query or modify the membership rule to use a less generic query. For example, you could use OrderIDs to limit the group to include only the ones that have a specific **Order ID:  (device.devicePhysicalIds -any _ -eq "[OrderID]:123456789")**.

**I use a Windows-based "catch all devices" rule*:**

Any group using this rule will include devices including those managed by Microsoft Managed Desktop, since those are also based on Windows.

Instead, either use a more specific assignment group or exclude the Modern Workplace Devices -all group from each device-targeted assignment.

**I use a hardware-based "catch all devices" rule:**

An example is **(device.deviceModel -contains "Surface")**. Any group that uses this rule could include Microsoft Managed Desktop devices that happen to have the same manufacturer or model.

Instead, either use a more specific assignment group or exclude the Modern Workplace Devices -all group from each device-targeted assignment.

### Autopilot devices

{PER SPEC: "One or multiple (documentation to be written)"}

### Windows Hello for Business

Microsoft Managed Desktop requires Windows Hello for Business to be enabled. For more information, see [Integrate Windows Hello for Business with Microsoft Intune](https://docs.microsoft.com/mem/intune/protect/windows-hello)

### Device compliance policies

Make sure that device compliance policies in your Azure AD organization do *not* target any Microsoft Manage Desktop devices or users.

### Device configuration policies

Make sure that device configuration policies in your Azure AD organization do *not* target any Microsoft Manage Desktop devices or users.

### PowerShell scripts

Make sure that Windows PowerShell scripts in your Azure AD organization do *not* target any Microsoft Manage Desktop devices or users. For more information, see [Use PowerShell scripts on Windows 10 devices in Intune](https://docs.microsoft.com/mem/intune/apps/intune-management-extension)

### Certificate connectors

No certificate connectors are present. You need at least one and it must have no errors. For more information, see [Use certificates for authentication in Microsoft Intune](https://docs.microsoft.com/mem/intune/protect/certificates-configure)

### Conditional access policies

Make sure that no conditional access policies in your Azure AD organization target any Microsoft Managed Desktop users. For more information, see [Adjust conditional access](https://docs.microsoft.com/microsoft-365/managed-desktop/get-started/conditional-access?view=o365-worldwide)

### Review apps

Review the listed apps. {LOOKING FOR WHAT?}

### Microsoft Store for Business

Microsoft Store for Business must be enabled and syncing with Intune. For more information, see [Deploy apps to devices](https://docs.microsoft.com/microsoft-365/managed-desktop/get-started/deploy-apps?view=o365-worldwide)

### Windows deployment groups

Ensure that any policies you might have regarding Windows update deployment groups do *not* target any Microsoft Managed Desktop devices or users. {DO YOU WANT TO MENTION UPDATE BASELINES?}

### Security baselines

Ensure that any security baselines you might have in your Azure AD organization do *not* target any Microsoft Managed Desktop devices or users.


## Azure Active Directory settings


### Azure Active Directory device registration

Make sure that the **Users may join devices to Azure AD** setting is set to **All** or **Selected**. This allows Microsoft Managed Desktop users to successfully enroll in the service.

If you use the **Selected** setting, it must include the Modern Workplace -all group once you have enrolled in Microsoft Managed Desktop. 

### Users as local administrators

Check that the reported number of local administrators is correct and in accordance with your policy.

### Enterprise State Roaming

Make sure that Enterprise State Roaming is enabled for all or for select groups. For more information, see [Enable Enterprise State Roaming](../get-started/enterprise-state-roaming.md).


### Multi-factor authentication

Ensure that any multi-factor authentication configurations you might have in your Azure AD organization do *not* target any Microsoft Managed Desktop devices or users.

### Reserved names

If you have any of these names in an account in your Azure AD organization, rename them:

- Msadmin
- Msadminint
- Mwaas_wdgsoc
- Mwaas_soc_ro
- MSTest

### Reserved roles

If you have any accounts with any of these roles assigned, make sure they have {MDATP RBAC --i think this has a new name}. Otherwise, they won't be able to access the console.

- Use of Security Reader
- Security Operator
- Global Reader


### Self-service Password Reset

Make sure that Self-service Password Reset (SSPR) is enabled for all users. If it isn't, the Microsoft Managed Desktop service accounts can't work. For more information, see [Tutorial: Enable users to unlock their account or reset passwords using Azure Active Directory self-service password reset](https://docs.microsoft.com/azure/active-directory/authentication/tutorial-enable-sspr)


### Ad-hoc subscriptions

Ensure that **AllowAdHocSubscriptions** is set to **True**. Otherwise, Enterprise State Roaming might not work. For more information, see [Set-MsolCompanySettings](https://docs.microsoft.com/powershell/module/msonline/set-msolcompanysettings?view=azureadps-1.0).


## Microsoft 365 Apps for enterprise

### OneDrive

Make sure that OneDrive is configured using a CA policy {WHAT'S CA?} instead of the domain GUID.

## {OnMMD what does this mean?}

### Region

Your region isn't currently supported by Microsoft Managed Desktop. For more information, see [Microsoft Managed Desktop supported regions and languages](../service-description/regions-languages.md).

### Licenses

The listed licenses will expire in the stated number of days. You must renew these licenses to enroll in the service. For more information, see [Microsoft Managed Desktop technologies](../intro/technologies.md) and [More about licenses](prerequisites.md#more-about-licenses).

### Co-management

Co-management should *not* be enabled. For more information, see [What is co-management?](https://docs.microsoft.com/mem/configmgr/comanage/overview).

### Configuration Manager agent

Ensure that the Configuration Manager agent does *not* target any Microsoft Managed Desktop devices or users. For more information, see [What is co-management?](https://docs.microsoft.com/mem/configmgr/comanage/overview). 