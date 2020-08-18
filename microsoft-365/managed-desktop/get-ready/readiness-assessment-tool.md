---
title: Readiness assessment tool
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

# Readiness assessment tool

For the smoothest possible experience when you enroll in Microsoft Managed Desktop, there are a number of settings and other parameters you must set ahead of time. You can use this tool to check those settings and receive detailed steps for fixing any that aren't right.

The tool checks settings in Microsoft Endpoint Manager (specifically, Microsoft Intune), Azure Active Directory (Azure AD), and Microsoft 365 to ensure they will work with Microsoft Managed Desktop. Microsoft Managed Desktop retains the data associated with these checks for 12 months after the last time you run a check in your Azure AD organization. After 12 months, the data is anonymized.

The assessment tool checks these items:



|Check  |Description  |
|---------|---------|
|Intune enrollment     | Verifies that Windows 10 devices in your Azure AD organization are automatically enrolled in Intune         |
|Device type restrictions     | Checks that Windows 10 devices in your organization are allowed to enroll in Intune        |
|Enrollment Status Page     | Confirms that Enrollment Status Page is not enabled      |
|Autopilot deployment profile     | Verifies that assignment of the Autopilot deployment profile does not apply to all devices (The profile should *not* be assigned to any Microsoft Managed Desktop devices.)       |
|Windows Hello for Business     | Checks that Windows Hello for Business is enabled        |
|Device Compliance policies     | Checks that Intune compliance policies are not assigned to all users (The policies should *not* be assigned to any Microsoft Managed Desktop devices.)    |
|Device Configuration profiles     | Confirms that configuration profiles are not assigned to all users or all devices (Configuration profiles should *not* be assigned to any Microsoft Managed Desktop devices.)     |
|Conditional Access     | Verifies that conditional access policies are not assigned to all users (Conditional access policies should *not* be assigned to Microsoft Managed Desktop service accounts.)    |
|Microsoft Store for Business     | Confirms that Microsoft Store for Business is enabled and synced with Intune        |
|Windows 10 update ring     | Checks that Intune's "Windows 10 update ring" policy doesn't target all users or all devices (The policy should *not* target any Microsoft Managed Desktop devices.)     |
|Security baselines     | Checks that the security baseline profile doesn't target all users or all devices (Security baseline policies should *not* target any Microsoft Managed Desktop devices.)       |
|Enterprise State Roaming     | Advises how to check that Enterprise State Roaming is enabled       |
|Multi-factor authentication     | Checks that multi-factor authentication is not applied to all users (Multi-factor authentication must not accidentally be applied to Microsoft Managed Desktop service accounts.)|
|Microsoft Managed Desktop service accounts     | Checks that no user names conflict with ones that Microsoft Managed Desktop reserves for its own use        |
|Self-service password reset     | Confirms that self-service password reset is enabled        |
|PowerShell scripts     | Checks that Windows PowerShell scripts are *not* assigned in a way that would target Microsoft Managed Desktop devices    |
|Certificate connectors     | Checks the state of certificate connectors to ensure they are active   |
|OneDrive for Business     | Checks whether OneDrive for Business is using unsupported settings.        |
|Security administrator roles     | Confirms that users with Security Reader, Security Operator, or Global Reader roles have been assigned those roles in Microsoft Defender Advanced Threat Protection         |
|"Ad hoc" subscriptions for Enterprise State Roaming     | Advises how to check a setting that (if set to "false") might prevent Enterprise State Roaming from working correctly  |
|Supported regions     | Checks that your region is supported by Microsoft Managed Desktop        |
|Licenses     | Checks that you have obtained the necessary [licenses](prerequisites.md#more-about-licenses)         |
|Windows apps     | Review which apps you want to assign to Microsoft Managed Desktop devices      |
|Standard user role     | Verifies that users are standard users and do not have local administrator rights         |
| Security defaults | Checks whether your Azure AD organization has security defaults enabled in Azure Active Directory |

For each check, the tool will report one of three possible results:


|Result  |Meaning  |
|---------|---------|
|Ready     | No action is required before completing enrollment.        |
|Advisory    | Follow the steps in the tool for the best experience with enrollment and for end users. You *can* complete enrollment, but you must fix these issues before you deploy your first device.        |
|Not ready | *You can't complete enrollment without fixing these issues.* Follow the steps in the tool to resolve them.        |
