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

### Autopilot profile

You shouldn't have any existing Autopilot profiles that target assigned or dynamic groups with Autopilot profiles used by Microsoft Managed Desktop. This is because Microsoft Managed Desktop uses Autopilot to provision new devices.

**Not ready**

You have an Autopilot profile that is assigned to all devices. Reset the profile to target an assigned or dynamic group that does not conflict with the profile for Microsoft Managed Desktop. For steps, see 
[Enroll Windows devices in Intune by using Windows Autopilot](https://docs.microsoft.com/mem/autopilot/enrollment-autopilot).

**Advisory**

Make sure that your Autopilot profiles target an assigned or dynamic group that does not conflict with the profile for Microsoft Managed Desktop. For steps, see 
[Enroll Windows devices in Intune by using Windows Autopilot](https://docs.microsoft.com/mem/autopilot/enrollment-autopilot).


### Certificate connectors

**Advisory**

No certificate connectors are present. It's possible you don't need any connectors, but you should evaluate whether you might need some for network connectivity to Microsoft Managed Desktop devices. For more information, see [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md).

**Advisory**

At least one certificate connector has an error. If you need this connector for connectivity to Microsoft Managed Desktop devices, you must resolve the error. For more information, see [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md).


**Advisory**

You have at least one certificate connector and no errors are reported. However, you might need to create a profile to re-use the connector for Microsoft Managed Desktop devices. For more information, see [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md).


### Conditional access policies

Conditional access policies in your Azure AD organization must not target any Microsoft Manage Desktop devices or users.

**Not ready**

You have at least one conditional access policy that targets all devices. Reset the policy to target a specific Azure AD group that does not include any Microsoft Managed Desktop devices. For steps, see [Conditional Access: Users and groups](https://docs.microsoft.com/azure/active-directory/conditional-access/concept-conditional-access-users-groups).

**Advisory**

Make sure that any conditional access policies you have exclude the **Modern Workplace -All** Azure AD group. For steps, see [Adjust conditional access](https://docs.microsoft.com/microsoft-365/managed-desktop/get-started/conditional-access).


### Device compliance policies

Device compliance policies in your Azure AD organization must not target any Microsoft Manage Desktop devices or users.

**Not ready**

You have at least one compliance policy that targets all devices. Reset the policy to target a specific Azure AD group that does not include any Microsoft Managed Desktop devices. For steps, see [Create a compliance policy in Microsoft Intune](https://docs.microsoft.com/mem/intune/protect/create-compliance-policy).

**Advisory**

Make sure that any compliance policies you have that have assigned or dynamic groups do not include any Microsoft Managed Desktop devices. For steps, see [Create a compliance policy in Microsoft Intune](https://docs.microsoft.com/mem/intune/protect/create-compliance-policy).



### Device configuration policies

Device configuration policies in your Azure AD organization must not target any Microsoft Manage Desktop devices or users.

**Not ready**

You have at least one configuration policy that targets all devices. Reset the policy to target a specific Azure AD group that does not include any Microsoft Managed Desktop devices. For steps, see [Create a compliance policy in Microsoft Intune](https://docs.microsoft.com/mem/intune/configuration/custom-settings-configure).

**Advisory**

Make sure that any compliance policies you have that have assigned or dynamic groups do not include any Microsoft Managed Desktop devices. For steps, see [Create a compliance policy in Microsoft Intune](https://docs.microsoft.com/mem/intune/configuration/custom-settings-configure).



### Device type restrictions

Microsoft Managed Desktop devices must be allowed to enroll in Intune.

**Not ready**

Follow the steps in [Set enrollment restrictions](https://docs.microsoft.com/mem/intune/enrollment/enrollment-restrictions-set) to change the setting to **Allow**.


### Enrollment Status Page

You currently have the Enrollment Status Page (ESP) enabled. ESP isn't supported by Microsoft Managed Desktop.

**Not ready**

You have the ESP default profile set to **Show app and profile configuration progress**. Disable this setting by following the steps in [Set up the Enrollment Status Page](https://docs.microsoft.com/mem/intune/enrollment/windows-enrollment-status).

**Advisory**

Make sure that any profiles that have the **Show app and profile configuration progress** setting are not assigned to any Azure AD group that include Microsoft Managed Desktop devices. For more information, see [Set up the Enrollment Status Page](https://docs.microsoft.com/mem/intune/enrollment/windows-enrollment-status).

### Intune enrollment

**Not ready**

Users in your Azure AD organization aren't automatically enrolled in Microsoft Intune. Change the MDM User scope to exclude the **Modern Workplace -All** Azure AD group.


### Microsoft Store for Business

**Not ready**

Microsoft Store for Business must be enabled and syncing with Intune. For more information, see [How to manage volume purchased apps from the Microsoft Store for Business with Microsoft Intune](https://docs.microsoft.com/mem/intune/apps/windows-store-for-business).

### PowerShell scripts

**Advisory**

Make sure that Windows PowerShell scripts in your Azure AD organization do *not* target any Microsoft Manage Desktop devices or users. For more information, see [Use PowerShell scripts on Windows 10 devices in Intune](https://docs.microsoft.com/mem/intune/apps/intune-management-extension).


### Security baselines

**Not ready**

You have a security baseline profile that targets all devices. Change the policy to use an Assignment that targets a specific Azure AD group that doesn't include any Microsoft Managed Desktop devices. For steps, see [Use security baselines to configure Windows 10 devices in Intune](https://docs.microsoft.com/mem/intune/protect/security-baselines).

**Advisory**

Make sure that any security baseline policies you have exclude the **Modern Workplace -All** Azure AD group. For steps, see [Use security baselines to configure Windows 10 devices in Intune](https://docs.microsoft.com/mem/intune/protect/security-baselines).

### Region

**Not ready**

Your Azure AD organization region isn't currently supported by Microsoft Managed Desktop. For more information, see [Microsoft Managed Desktop supported regions and languages](../service-description/regions-languages.md).

**Advisory**

One or more of the countries where your Azure AD organization is located isn't supported by Microsoft Managed Desktop. For more information, see [Microsoft Managed Desktop supported regions and languages](../service-description/regions-languages.md).


### Standard user role

**Advisory**

{Microsoft Managed Desktop users are set as standard user without any local admin privileges -- I'M CONFUSED--should they be or not?} 

### Windows apps

**Advisory**

You should prepare an inventory of the apps that you want your Microsoft Managed Desktop users to have. Make sure these apps can be deployed by Intune. For more information, see 
[Apps in Microsoft Managed Desktop](apps.md).

You can ask your Microsoft account representative for a query in Microsoft Endpoint Configuration Manager to identify those that are ready to migrate to Intune or need adjustment.


### Windows Hello for Business

Microsoft Managed Desktop requires Windows Hello for Business to be enabled.

**Not ready**

Windows Hello for Business is disabled. Enable it by following the steps in [Create a Windows Hello for Business policy](https://docs.microsoft.com/mem/intune/protect/windows-hello#create-a-windows-hello-for-business-policy)

**Advisory**

Windows Hello for Business is not set up. Enable it by following the steps in [Create a Windows Hello for Business policy](https://docs.microsoft.com/mem/intune/protect/windows-hello#create-a-windows-hello-for-business-policy).


### Windows 10 update rings

**Not ready**

You have an "update ring" policy that targets all devices or users. Change the policy to use an Assignment that targets a specific Azure AD group that doesn't include any Microsoft Managed Desktop devices. For steps, see [Manage Windows 10 software updates in Intune](https://docs.microsoft.com/mem/intune/protect/windows-update-for-business-configure).

**Advisory**

Make sure that any update ring policies you have exclude the **Modern Workplace -All** Azure AD group. For steps, see [Manage Windows 10 software updates in Intune](https://docs.microsoft.com/mem/intune/protect/windows-update-for-business-configure).




## Azure Active Directory settings


### Ad-hoc subscriptions

**Advisory**

Ensure that **AllowAdHocSubscriptions** is set to **True**. Otherwise, Enterprise State Roaming might not work. For more information, see [Set-MsolCompanySettings](https://docs.microsoft.com/powershell/module/msonline/set-msolcompanysettings?view=azureadps-1.0).




### Enterprise State Roaming

**Advisory**

Make sure that Enterprise State Roaming is enabled for all or for select groups. For more information, see [Enable Enterprise State Roaming in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/devices/enterprise-state-roaming-enable).

### Licenses

**Not Ready**

You don't have all the licenses you need to use Microsoft Managed Desktop. For more information, see [Microsoft Managed Desktop technologies](../intro/technologies.md) and [More about licenses](prerequisites.md#more-about-licenses).


### Multi-factor authentication


**Not ready**

You have some multi-factor authentication (MFA) policies set to all users. Change the policy to use an Assignment that targets a specific Azure AD group that doesn't include any Microsoft Managed Desktop devices. For steps, see [Conditional Access: Require MFA for all users](https://docs.microsoft.com/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa).

**Advisory**

Make sure that any MFA policies you have exclude the **Modern Workplace -All** Azure AD group. For steps, see [Conditional Access: Require MFA for all users](https://docs.microsoft.com/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa).


### Reserved names {SERVICE ACCOUNTS in the spec--but possible to change? I think this name is more readily understandable--it's the name that's the problem....}

**Not ready**

You have at least one account name that will conflict with ones created by Microsoft Managed Desktop. {WE CAN add a link to the STP-hosted doc on this once it exists}


### Reserved roles {SECURITY administrator roles in the spec--but proposing this change for similar reasons.}

**Advisory**

If you have any accounts with any of these roles assigned, make sure they have these roles assigned in Microsoft Defender for Endpoint. Otherwise, they won't be able to access the console.

- Use of Security Reader
- Security Operator
- Global Reader

For more information, see [Create and manage roles for role-based access control](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles).


### Security default

**Not ready**

You have Security defaults turned on. Turn off Security defaults and set up conditional access policies. For more information, see [Common Conditional Access policies](https://docs.microsoft.com/azure/active-directory/conditional-access/concept-conditional-access-policy-common).

### Self-service Password Reset

**Not ready**

Self-service Password Reset (SSPR) must be enabled for all users. If it isn't, the Microsoft Managed Desktop service accounts can't work. For more information, see [Tutorial: Enable users to unlock their account or reset passwords using Azure Active Directory self-service password reset](https://docs.microsoft.com/azure/active-directory/authentication/tutorial-enable-sspr).

**Advisory**

Make sure that the SSPR **Selected** setting doesn't exclude any Azure AD groups used by Microsoft Managed Desktop.

### Standard user role?


## Microsoft 365 Apps for enterprise

### OneDrive for Business

**Advisory**

You're using the **Allow syncing only on PCs joined to specific domains" setting. That won't work with Microsoft Managed Desktop. Disable this setting, and instead set up OneDrive to use a conditional access policy. See [Plan a Conditional Access deployment](https://docs.microsoft.com/azure/active-directory/conditional-access/plan-conditional-access) for help.

