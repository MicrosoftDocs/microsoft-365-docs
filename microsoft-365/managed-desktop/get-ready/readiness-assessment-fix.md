---
title: Fix issues found by the readiness assessment tool
description:  Detailed actions to take for each issue the tool finds
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
audience: Admin
---

# Fix issues found by the readiness assessment tool

For each check, the tool will report one of four possible results:


|Result  |Meaning  |
|---------|---------|
|Ready     | No action is required before completing enrollment.        |
|Advisory    | Follow the steps in the tool or this article for the best experience with enrollment and for users. You *can* complete enrollment, but you must fix these issues before you deploy your first device.        |
|Not ready | *Enrollment will fail if you don't fix these issues.* Follow the steps in the tool or this article to resolve them.        |
|Error | The Azure Active Directory (AD) role you're using doesn't have sufficient permission to run this check. |

> [!NOTE]
> The results reported by this tool reflect the status of your settings only at the specific point in time that you ran it. If you later make any changes to policies in Microsoft Intune, Azure Active Directory, or Microsoft 365, items that were "Ready" can become "Not ready." To avoid problems with Microsoft Managed Desktop operations, check the specific settings described in this article before you change any policies.

## Microsoft Intune settings

You can access Intune settings at the Microsoft Endpoint Manager [admin center](https://endpoint.microsoft.com).

### Autopilot deployment profile

You shouldn't have any existing Autopilot profiles that target assigned or dynamic groups with Microsoft Managed Desktop devices. Microsoft Managed Desktop uses Autopilot to provision new devices.

**Not ready**

You have an Autopilot profile that is assigned to all devices. For steps, see 
[Enroll Windows devices in Intune by using Windows Autopilot](/mem/autopilot/enrollment-autopilot). After Microsoft Managed Desktop enrollment, set your Autopilot policy to exclude the **Modern Workplace Devices -All** Azure AD group.

**Advisory**

Make sure that your Autopilot profiles target an assigned or dynamic Azure AD group that doesn't include Microsoft Managed Desktop devices. For steps, see 
[Enroll Windows devices in Intune by using Windows Autopilot](/mem/autopilot/enrollment-autopilot). After Microsoft Managed Desktop enrollment, set your Autopilot profiles to exclude the **Modern Workplace Devices -All** Azure AD group.


### Certificate connectors

If you have any certificate connectors that will be used by the devices you want to enroll in Microsoft Managed Desktop, the connectors should not have any errors. Only one of the following advisories will apply to your situation, so check them carefully.

**Advisory**

No certificate connectors are present. It's possible you don't need any connectors, but you should evaluate whether you might need some for network connectivity on your Microsoft Managed Desktop devices. For more information, see [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md).

**Advisory**

At least one certificate connector has an error. If you need this connector for providing certificates to Microsoft Managed Desktop devices, you must resolve the error. For more information, see [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md).


**Advisory**

You have at least one certificate connector and no errors are reported. However, in preparation for deployment, you might need to create a profile to reuse the connector for Microsoft Managed Desktop devices. For more information, see [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md).


### Conditional access policies

Conditional access policies must not prevent Microsoft Managed Desktop from managing your Azure AD organization (tenant) in Intune and Azure AD.

**Not ready**

You have at least one conditional access policy that targets all users. During enrollment, we will exclude Microsoft Managed Desktop service accounts from relevant conditional access policies and apply new conditional access policies to restrict access to these accounts. After enrollment, you can review the Microsoft Managed Desktop conditional access policy in Microsoft Endpoint Manager. For more about these service accounts, see [Standard operating procedures](../service-description/operations-and-monitoring.md#standard-operating-procedures).

**Advisory**

You have conditional access policies that could prevent Microsoft Managed Desktop from managing the Microsoft Managed Desktop service. During enrollment, we will exclude Microsoft Managed Desktop service accounts from relevant conditional access policies and apply new conditional access policies to restrict access to these accounts. For more about these service accounts, see [Standard operating procedures](../service-description/operations-and-monitoring.md#standard-operating-procedures).

**Error**

The Intune Administrator role doesn't have sufficient permissions for this check. You'll also need any of these Azure AD roles assigned to run this check:

- Security Reader
- Security Administrator
- Conditional Access Administrator
- Global Reader
- Devices Administrator


### Device Compliance policies

Intune Device Compliance policies in your Azure AD organization might impact Microsoft Managed Desktop devices.

**Not ready**

You have at least one compliance policy that targets all users. Microsoft Managed Desktop includes compliance policies that will target your Microsoft Managed Desktop devices.  Change the policy to target a specific Azure AD group that does not include any Microsoft Managed Desktop users or devices. For steps, see [Create a compliance policy in Microsoft Intune](/mem/intune/protect/create-compliance-policy).

**Advisory**

Make sure that any compliance policies you have don't target any Microsoft Managed Desktop users. For steps, see [Create a compliance policy in Microsoft Intune](/mem/intune/protect/create-compliance-policy).



### Device Configuration profiles

Intune Device Configuration profiles in your Azure AD organization must not target any Microsoft Manage Desktop devices or users.

**Not ready**

You have at least one configuration profile that targets all users, all devices, or both. Reset the profile to target a specific Azure AD group that does not include any Microsoft Managed Desktop devices. For steps, see [Create a profile with custom settings in Microsoft Intune](/mem/intune/configuration/custom-settings-configure).

**Advisory**

Make sure that any configuration policies you have don't include any Microsoft Managed Desktop devices or users. For steps, see [Create a profile with custom settings in Microsoft Intune](/mem/intune/configuration/custom-settings-configure).



### Device type restrictions

Microsoft Managed Desktop devices must be allowed to enroll in Intune.

**Not ready**

You currently have at least one enrollment restriction policy configured to prevent Windows devices from enrollment in Intune. Follow the steps in [Set enrollment restrictions](/mem/intune/enrollment/enrollment-restrictions-set) for each enrollment restriction policy that targets Microsoft Managed Desktop users and change the **Windows (MDM)** setting to **Allow**. You can, however, set any **personally owned** **Windows (MDM)** devices to **Block**. 


### Enrollment Status Page

You currently have the Enrollment Status Page (ESP) enabled. If you intend to participate in the Microsoft Managed Desktop public preview of this feature, you can ignore this item. For more information, see [First-run experience with Autopilot and the Enrollment Status Page](../get-started/esp-first-run.md).

**Not ready**

You have the ESP default profile set to **Show app and profile configuration progress**. Disable this setting or make sure that assignments to any Azure AD group do not include Microsoft Managed Desktop devices by following the steps in [Set up the Enrollment Status Page](/mem/intune/enrollment/windows-enrollment-status).

**Advisory**

Make sure that any profiles that have the **Show app and profile configuration progress** setting are not assigned to any Azure AD group that includes Microsoft Managed Desktop devices. For more information, see [Set up the Enrollment Status Page](/mem/intune/enrollment/windows-enrollment-status).

### Microsoft Store for Business

We use Microsoft Store for Business and deploy the Company Portal app on Microsoft Managed Desktop to allow users to optionally install some apps, such as Microsoft Project and Microsoft Visio (where permitted).

**Not ready**

Microsoft Store for Business either isn't enabled or isn't synced with Intune. For more information, see [How to manage volume purchased apps from the Microsoft Store for Business with Microsoft Intune](/mem/intune/apps/windows-store-for-business) and [Install Intune Company Portal on devices](../get-started/company-portal.md).

### Multifactor authentication

Multifactor authentication must not prevent Microsoft Managed Desktop from managing your Azure AD organization (tenant) in Intune and Azure AD.


**Not ready**

You have some multifactor authentication policies set as **required** for conditional access policies that are assigned to all users. During enrollment, we will exclude Microsoft Managed Desktop service accounts from relevant conditional access policies and apply new conditional access policies to restrict access to these accounts. For more about these service accounts, see [Standard operating procedures](../service-description/operations-and-monitoring.md#standard-operating-procedures).

**Advisory**

You have multifactor authentication required on conditional access policies that could prevent Microsoft Managed Desktop from managing the Microsoft Managed Desktop service. During enrollment, we will exclude Microsoft Managed Desktop service accounts from relevant conditional access policies and apply new conditional access policies to restrict access to these accounts. For more about these service accounts, see [Standard operating procedures](../service-description/operations-and-monitoring.md#standard-operating-procedures).

**Error**

The Intune Administrator role doesn't have sufficient permissions for this check. You'll also need any of these Azure AD roles assigned to run this check:

- Security Reader
- Security Administrator
- Conditional Access Administrator
- Global Reader
- Devices Administrator


### PowerShell scripts

Windows PowerShell scripts can't be assigned in a way that would target Microsoft Managed Desktop devices.  

**Advisory**

Make sure that Windows PowerShell scripts in your Azure AD organization don't target any Microsoft Manage Desktop devices or users. Do not assign a PowerShell script to target all users, all devices, or both. Change the policy to use an Assignment that targets a specific Azure AD group that doesn't include any Microsoft Managed Desktop devices or users. For more information, see [Use PowerShell scripts on Windows 10 devices in Intune](/mem/intune/apps/intune-management-extension).

### Region

Your region must be supported by Microsoft Managed Desktop.

**Not ready**

Your Azure AD organization region isn't currently supported by Microsoft Managed Desktop. For more information, see [Microsoft Managed Desktop supported regions and languages](../service-description/regions-languages.md).

**Advisory**

One or more of the countries where your Azure AD organization is located isn't supported by Microsoft Managed Desktop. For more information, see [Microsoft Managed Desktop supported regions and languages](../service-description/regions-languages.md).


### Security baselines

Security baseline policies should not target any Microsoft Managed Desktop devices.

**Not ready**

You have a security baseline profile that targets all users, all devices, or both. Change the policy to use an assignment that targets a specific Azure AD group that doesn't include any Microsoft Managed Desktop devices. For steps, see [Use security baselines to configure Windows 10 devices in Intune](/mem/intune/protect/security-baselines). During enrollment, we apply a new security baseline to all Microsoft Managed Desktop devices. After enrollment, you can review the Microsoft Managed Desktop security baseline policy in the **Configuration policy** area of Microsoft Endpoint Manager.

**Advisory**

Make sure that any security baseline policies you have exclude Microsoft Managed Desktop devices. For steps, see [Use security baselines to configure Windows 10 devices in Intune](/mem/intune/protect/security-baselines). During enrollment, we apply a new security baseline to all Microsoft Managed Desktop devices. The **Modern Workplace Devices -All** Azure AD group is a dynamic group that we create when you enroll in Microsoft Managed Desktop, so you'll have to come back to exclude this group after enrollment. 


### Windows apps

Review apps you want your Microsoft Managed Desktop users to have.

**Advisory**

You should prepare an inventory of the apps that you want your Microsoft Managed Desktop users to have. Since these apps must be deployed by Intune, evaluate reusing existing Intune apps. Consider using Company Portal (see [Install Intune Company Portal on devices](../get-started/company-portal.md) and Enrollment Status Page (ESP) to distribute apps to your users. For more information, see [Apps in Microsoft Managed Desktop](apps.md) and [First-run experience with Autopilot and the Enrollment Status Page](../get-started/esp-first-run.md).

You can ask your Microsoft account representative for a query in Microsoft Endpoint Configuration Manager to identify those apps that are ready to migrate to Intune or need adjustment.


### Windows Hello for Business

Microsoft Managed Desktop requires Windows Hello for Business to be enabled.

**Not ready**

Windows Hello for Business is disabled. Enable it by following the steps in [Create a Windows Hello for Business policy](/mem/intune/protect/windows-hello#create-a-windows-hello-for-business-policy)

**Advisory**

Windows Hello for Business is not set up. Enable it by following the steps in [Create a Windows Hello for Business policy](/mem/intune/protect/windows-hello#create-a-windows-hello-for-business-policy).


### Windows 10 update rings

Your "Windows 10 update ring" policy in Intune must not target any Microsoft Managed Desktop devices.

**Not ready**

You have an "update ring" policy that targets all devices, all users, or both. Change the policy to use an Assignment that targets a specific Azure AD group that doesn't include any Microsoft Managed Desktop devices. For steps, see [Manage Windows 10 software updates in Intune](/mem/intune/protect/windows-update-for-business-configure).

**Advisory**

Make sure that any update ring policies you have exclude the **Modern Workplace Devices -All** Azure AD group. If you have assigned Azure AD user groups to these policies, make sure that any update ring policies you have also excluded the **Modern Workplace -All** Azure AD group that you add your Microsoft Managed Desktop users to (or an equivalent group). For steps, see [Manage Windows 10 software updates in Intune](/mem/intune/protect/windows-update-for-business-configure). Both the **Modern Workplace Devices -All** and **Modern Workplace -All** Azure AD groups are groups that we create when you enroll in Microsoft Managed Desktop, so you'll have to come back to exclude this group after enrollment.


## Azure Active Directory settings

You can access Azure Active Directory settings at the [Azure portal](https://portal.azure.com).

### Intune enrollment

Windows 10 devices in your Azure AD organization must be able to automatically enroll in Intune.

**Advisory**

Make sure the **MDM User scope** is set to **Some** or **All**, not **None**. If you choose **Some**, come back after enrollment and select the **Modern Workplace -All** Azure AD group for **Groups** or an equivalent group targeting all of your Microsoft Managed Desktop users.  See [Set up enrollment for Windows devices by using Microsoft Intune](/mem/intune/enrollment/windows-enroll#enable-windows-10-automatic-enrollment).


### Ad hoc subscriptions

Advises how to check a setting that (if set to "false") might prevent Enterprise State Roaming from working correctly.

**Advisory**

Ensure that **AllowAdHocSubscriptions** is set to **True**. Otherwise, Enterprise State Roaming might not work. For more information, see [Set-MsolCompanySettings](/powershell/module/msonline/set-msolcompanysettings?view=azureadps-1.0).


### Enterprise State Roaming

Enterprise State Roaming should be enabled.

**Advisory**

Make sure that Enterprise State Roaming is enabled for **All** or for **Selected** groups. For more information, see [Enable Enterprise State Roaming in Azure Active Directory](/azure/active-directory/devices/enterprise-state-roaming-enable).

### Licenses

A number of licenses are required to use Microsoft Managed Desktop.

**Not Ready**

You don't have all the licenses you need to use Microsoft Managed Desktop. For more information, see [Microsoft Managed Desktop technologies](../intro/technologies.md) and [More about licenses](prerequisites.md#more-about-licenses).


### Microsoft Managed Desktop service accounts

Certain account names could conflict with account names created by Microsoft Managed Desktop to manage the Microsoft Managed Desktop service.

**Not ready**

You have at least one account name that will conflict with account names created by Microsoft Managed Desktop. Work with your Microsoft account representative to exclude these account names. We don't list the account names publicly to minimize security risk. 


### Security administrator roles

Users with certain security roles must have those roles assigned in Microsoft Defender for Endpoint.

**Advisory**

If you have users assigned to any of these roles in your Azure AD organization, make sure they also have these roles assigned in Microsoft Defender for Endpoint. Otherwise, administrators with these roles won't be able to access the Admin portal.

- Security Operator
- Global Reader

For more information, see [Create and manage roles for role-based access control](/windows/security/threat-protection/microsoft-defender-atp/user-roles).


### Security default

Security defaults in Azure Active Directory will prevent Microsoft Managed Desktop from managing your devices.

**Not ready**

You have Security defaults turned on. Turn off Security defaults and set up conditional access policies. For more information, see [Common Conditional Access policies](/azure/active-directory/conditional-access/concept-conditional-access-policy-common).

### Self-service Password Reset

Self-service Password Reset (SSPR) can be enabled for all Microsoft Managed Desktop users excluding Microsoft Managed Desktop service accounts. For more information, see [Tutorial: Enable users to unlock their account or reset passwords using Azure Active Directory self-service password reset](/azure/active-directory/authentication/tutorial-enable-sspr).

**Advisory**

Make sure that the SSPR **Selected** setting includes Microsoft Managed Desktop users but excludes Microsoft Managed Desktop service accounts. Microsoft Managed Desktop service accounts cannot work as expected when SSPR is enabled.  


### Standard user role

Other than those users who are assigned Azure AD roles of Global administrator and Device administrator, Microsoft Managed Desktop users will be standard users without local administrator privileges. All other users will be assigned a standard user role when they start their Microsoft Managed Desktop device.

**Advisory**

Microsoft Managed Desktop users will not have local administrator privileges on their Microsoft Managed Desktop devices after enrolling.

## Microsoft 365 Apps for enterprise

### OneDrive

The **Allow syncing only on PCs joined to specific domains** setting will conflict with Microsoft Managed Desktop. You can access OneDrive settings at the OneDrive [admin center](https://admin.onedrive.com).

**Advisory**

You're using the **Allow syncing only on PCs joined to specific domains** setting. This setting won't work with Microsoft Managed Desktop. Disable this setting, and instead set up OneDrive to use a conditional access policy. See [Plan a Conditional Access deployment](/azure/active-directory/conditional-access/plan-conditional-access) for help.