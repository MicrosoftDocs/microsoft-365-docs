---
title: Readiness assessment tools
description:  Explains the two tools, the checks they run, and the meaning of the results
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

# Readiness assessment tools

For the smoothest possible experience when you enroll in Microsoft Managed Desktop, there are settings and other parameters you must set ahead of time, and certain device and network requirements to meet. One tool, accessed through the Microsoft Managed Desktop Admin portal, checks management-related settings. Another tool, which is downloadable, checks individual device requirements and network settings. You can use these tools to check those settings and receive detailed steps for fixing any that aren't right.

## Downloadable readiness assessment checker for devices and network

For details about using the downloadable readiness assessment checker, see [Downloadable readiness assessment checker](readiness-assessment-downloadable.md).

## Online readiness assessment tool for management settings

The [online tool](https://aka.ms/mmdart) checks settings in Microsoft Endpoint Manager (specifically, Microsoft Intune), Azure Active Directory (Azure AD), and Microsoft 365 to ensure they will work with Microsoft Managed Desktop. Microsoft Managed Desktop retains the data associated with these checks for 12 months after the last time you run a check in your Azure AD organization (tenant). After 12 months, we retain it in de-identified form. You can choose to delete the data we collect.

Anyone with at least the Global Reader along with Intune Administrator role will be able to run this tool, but two of the checks ([Conditional access policies](readiness-assessment-fix.md#conditional-access-policies) and [Multifactor authentication](readiness-assessment-fix.md#multifactor-authentication) require additional permissions.
 
The assessment tool checks these items:

## Microsoft Intune settings

|Check  |Description  |
|---------|---------|
|Autopilot deployment profile     | Verifies that assignment of the Autopilot deployment profile does not apply to all devices (The profile should *not* be assigned to any Microsoft Managed Desktop devices.)       |
|Certificate connectors     | Checks the state of certificate connectors to ensure they are active   |
|Conditional access     | Verifies that conditional access policies are not assigned to all users (Conditional access policies should *not* be assigned to Microsoft Managed Desktop service accounts.)    |
|Device Compliance policies     | Checks that Intune compliance policies are not assigned to all users (The policies should *not* be assigned to any Microsoft Managed Desktop devices.)    |
|Device Configuration profiles     | Confirms that configuration profiles are not assigned to all users or all devices (Configuration profiles should *not* be assigned to any Microsoft Managed Desktop devices.)     |
|Device type restrictions     | Checks that Windows 10 devices in your organization are allowed to enroll in Intune        |
|Enrollment Status Page     | Confirms that Enrollment Status Page is not enabled      |
|Intune enrollment     | Verifies that Windows 10 devices in your Azure AD organization are automatically enrolled in Intune         |
|Microsoft Store for Business     | Confirms that Microsoft Store for Business is enabled and synced with Intune        |
|Multifactor authentication | Verifies that multifactor authentication isn't applied to Microsoft Managed Desktop service accounts.
|PowerShell scripts     | Checks that Windows PowerShell scripts are *not* assigned in a way that would target Microsoft Managed Desktop devices    |
|Region     | Checks that your region is supported by Microsoft Managed Desktop        |
|Security baselines     | Checks that the security baseline profile doesn't target all users or all devices (Security baseline policies should *not* target any Microsoft Managed Desktop devices.)       |
|Windows apps     | Review which apps you want to assign to Microsoft Managed Desktop devices      |
|Windows Hello for Business     | Checks that Windows Hello for Business is enabled        |
|Windows 10 update ring     | Checks that Intune's "Windows 10 update ring" policy doesn't target all users or all devices (The policy should *not* target any Microsoft Managed Desktop devices.)     |


## Azure Active Directory settings

|Check  |Description  |
|---------|---------|
|"Ad hoc" subscriptions for Enterprise State Roaming     | Advises how to check a setting that (if set to "false") might prevent Enterprise State Roaming from working correctly  |
|Enterprise State Roaming     | Advises how to check that Enterprise State Roaming is enabled       |
|Licenses     | Checks that you have obtained the necessary [licenses](prerequisites.md#more-about-licenses)         |
|Multifactor authentication     | Checks that multifactor authentication is not applied to all users (Multifactor authentication must not accidentally be applied to Microsoft Managed Desktop service accounts.)|
|Security account names   | Checks that no user names conflict with ones that Microsoft Managed Desktop reserves for its own use        |
|Security administrator roles     | Confirms that users with Security Reader, Security Operator, or Global Reader roles have been assigned those roles in Microsoft Defender for Endpoint         |
|Security defaults | Checks whether your Azure AD organization has security defaults enabled in Azure Active Directory |
|Self-service password reset     | Confirms that self-service password reset is enabled        |
|Standard user role     | Verifies that users are standard users and do not have local administrator rights         |


## Microsoft 365 Apps for enterprise settings

|Check  |Description  |
|---------|---------|
|OneDrive for Business     | Checks whether OneDrive for Business is using unsupported settings.        |


For each check, the tool will report one of four possible results:


|Result  |Meaning  |
|---------|---------|
|Ready     | No action is required before you complete enrollment.        |
|Advisory    | Follow the steps in the tool for the best experience with enrollment and for users. You *can* complete enrollment, but you must fix these issues before you deploy your first device.        |
|Not ready | *Enrollment will fail* if you don't fix these issues. Follow the steps in the tool to resolve them.        |
|Error | The Azure Active Director (AD) role you're using doesn't have sufficient permission to run this check. |

## After enrollment

After you've completed enrollment in Microsoft Managed Desktop, remember to go back and adjust certain Intune and Azure AD settings. For details, see [Adjust settings after enrollment](../get-started/conditional-access.md).

## Steps to get ready

1. Review [prerequisites for Microsoft Managed Desktop](prerequisites.md).
2. Use [readiness assessment tools](readiness-assessment-tool.md). (This article)
3. [Prerequisites for guest accounts](guest-accounts.md)
4. [Network configuration for Microsoft Managed Desktop](network.md)
5. [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md)
6. [Prepare on-premises resources access for Microsoft Managed Desktop](authentication.md)
7. [Apps in Microsoft Managed Desktop](apps.md)
8. [Prepare mapped drives for Microsoft Managed Desktop](mapped-drives.md)
9. [Prepare printing resources for Microsoft Managed Desktop](printing.md)
