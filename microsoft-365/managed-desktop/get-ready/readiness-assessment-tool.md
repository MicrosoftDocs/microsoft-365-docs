---
title: Assessment readiness tool
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

# Assessment readiness tool

For the smoothest possible experience when you enroll in Microsoft Managed Desktop, there are a number of settings and other parameters you should set ahead of time. You can use this tool to check those settings and receive detailed steps for remedying any that aren't right.

The tool checks settings in Microsoft Endpoint Manager (specifically, Microsoft Intune), Azure Active Directory, and Microsoft 365 to ensure they will work with Microsoft Managed Desktop.

The assessment tool checks these items:



|Check  |Description  |
|---------|---------|
|Intune enrollment     | Verifies that Windows 10 devices in your Azure AD organization are automatically enrolled in Intune.         |
|Device type restrictions     | Checks that Windows 10 devices in your organization are allowed to enroll in Intune.        |
|Enrollment Status Page     | Confirms that Enrollment Status Page is enabled.      |
|Autopilot deployment profile     | Verifies that assignment of the Autopilot deployment profile applies to all devices.        |
|Windows Hello for Business     | Checks that Windows Hello for Business is enabled.        |
|Device Compliance policies     | Checks that Intune compliance policies are assigned to all users.        |
|Device Configuration profiles     | Confirms that configuration profiles are assigned to all users or all devices. {IS EITHER OK? OR SHOULD IT BE BOTH?}        |
|Conditional Access     | Verifies that conditional access policies are assigned to all users.        |
|Microsoft Store for Business     | Confirms that Microsoft Store for Business is enabled and synced with Intune.        |
|Windows 10 update ring     | Checks that Intune's "Windows 10 update ring" policy doesn't target all users or all devices. {SCOPE OF "ALL" ISN'T CLEAR--DOES THIS MEAN "ALL DEVICES I'M TRYING TO ENROLL IN MMD"? OR "ALL DEVICES I OWN THAT ARE KNOWN TO INTUNE? OR SOMETHING ELSE?}        |
|Security baselines     | Checks that the security baseline profile doesn't target all users or all devices.        |
|Enterprise State Roaming     | Confirms that Enterprise State Roaming is enabled       |
|Multi-factor authentication     | Checks whether multi-factor authentication is applied to all users. {SHOULD IT BE?}        |
|Microsoft Managed Desktop service accounts     | Checks that no user names conflict with ones that Microsoft Managed Desktop reserves for its own use.        |
|Self-service password reset     | Confirms that self-service password reset is enabled.        |
|Autopilot enrollment     | {???}        |
|PowerShell scripts     | Checks that Windows PowerShell scripts are assigned {TO WHAT? USERS?}         |
|Certificate connectors     | Checks the state of certificate connectors {WHAT STATE SHOULD THEY BE IN?}        |
|OneDrive for Business     | Checks whether OneDrive for Business is using unsupported settings.        |
|Security administrator roles     | Confirms that users with Security Reader, Security Operator, or Global Reader roles have been assigned those roles in Microsoft Defender Advanced Threat Protection.         |
|Ad hoc subscriptions for Enterprise State Roaming     | Verifies that Enterprise State Roaming is allowed to run. {CAN WE CALL THIS SOMETHING ELSE? WE ARE TO AVOID LATIN TERMS AND "AD HOC" IS NOT MENTIONED IN THE ESR DOCS.}       |
|Supported regions     | Checks that your region is supported by Microsoft Managed Desktop.        |
|Licenses     | Checks that you have obtained the necessary [licenses](prerequisites.md#more-about-licenses).         |
|Windows apps     | {???}        |
|Standard user role     | Verifies that users are standard users and do not have local administrator rights.         |

For each check, the tool will report one of three possible results:


|Result  |Meaning  |
|---------|---------|
|Ready     | No action required before completing enrollment        |
|Advisory    | Follow the steps in the tool for the best experience with enrollment. You *can* complete enrollment, but you must fix these issues before you deploy your first device.        |
|Not ready | *You can't complete enrollment without fixing these issues.* Follow the steps in the tool to resolve them.        |
