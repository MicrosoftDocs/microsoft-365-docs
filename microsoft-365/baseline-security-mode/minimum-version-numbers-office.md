---  
title: "Minimum versions for Baseline Security Mode mode in Office"  
description: Learn about minimum version numbers for Baseline Security Mode settings
author: kwekuako 
ms.author: kwekua  
manager:  scotv
ms.date: 08/13/2025  
ms.topic: overview
ms.service: microsoft-365-admin  
ms.localizationpriority: medium
ms.collection: RestrictedMode
ms.custom: QuickDraft  
ms.reviewer: kwekua
audience: admin
ai-usage: ai-assisted
ROBOTS: NOINDEX, NOFOLLOW
---

# Minimum versions for Baseline Security Mode settings in Office

As an admin, it's essential to ensure that your organization is using the correct version of Microsoft 365 apps to fully leverage Baseline Security Mode functionality. Baseline Security Mode settings in Office apps are implemented using Cloud Policy settings. This article provides information on the minimum version requirements for Baseline security mode settings functionality in Microsoft 365 for Windows. For more information, see [Baseline security mode settings](baseline-security-mode-settings.md).

## Minimum version requirements

The recommended minimum version for Baseline Security Mode functionality in Microsoft 365 for Windows is version 2510. Earlier versions do not support sending telemetry signals from Office clients to the Microsoft 365 admin center to display simulation mode data.

### Baseline Security Mode settings and minimum required versions

| Setting  | Minimum required version  |
|-------------------------------------------------------------------------|----------------------------------------------------------------------------|
| Open ancient legacy formats in Protected View and disallow editing  | 2506 [[1]](#footnote-1) |
| Open old legacy formats in Protected View and save as modern format| 2506 [[1]](#footnote-1) |
|Block ActiveX controls in the Microsoft 365 apps | Available in all currently supported versions of Microsoft 365 for Windows |
| Block OLE Graph and OrgChart objects  | 2503  |
| Block Dynamic Data Exchange (DDE) server launches in Excel | Available in all currently supported versions of Microsoft 365 for Windows |
| Block Microsoft Publisher | 2510 |
| Block Basic authentication prompts | Available in all currently supported versions of Microsoft 365 for Windows |
| Block insecure protocols for file opens | 2510 |
| Block FPRPC protocol for file opens | 2510 |

###### Footnote 1

All currently supported versions of Microsoft 365 for Windows support opening legacy formats in Protected View and enforcing File Block settings related to disallowing edit and/or preventing save in legacy formats. The minimum version to enforce the policy setting to not allow trusted files to bypass File Block settings is version 2502. The minimum version to enforce the policy setting to prevent external workbook links to blocked file types from refreshing is version 2506.

## Office Cloud Policy service

The [Baseline security mode settings](baseline-security-mode-settings.md) topic has details on which Cloud Policy settings support the Baseline Security Mode setting. Individual Cloud Policy settings can be used to modify Baseline Security Mode behavior. For example, allowing files in a specific old legacy format to bypass Protected View while continuing to open all other old legacy format files in Protected View, without turning off the entire Baseline Security Mode policy.

> [!NOTE]
> IIf you are managing Microsoft 365 apps using the Group Policy Editor, it is strongly recommended that you migrate to Cloud Policy service. When a policy is configured in both Group Policy and Cloud Policy, the Cloud Policy configuration will take precedence.
