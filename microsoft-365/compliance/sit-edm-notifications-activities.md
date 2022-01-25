---
title: "Create notifications for exact data match activities"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.date: 
ms.localizationpriority: high
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: Learn how to create notifications for exact data match activities.
ms.custom: seo-marvel-apr2020
---

# Create notifications for exact data match activities

When you [create custom sensitive information types with exact data match (EDM)](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types), there are a number of activities that are created in the [audit log](search-the-audit-log-in-security-and-compliance.md#before-you-search-the-audit-log). You can use the [New-ProtectionAlert](/powershell/module/exchange/new-protectionalert) PowerShell cmdlet to create notifications that let you know when these activities occur:

- CreateSchema
- EditSchema
- RemoveSchema
- UploadDataFailed
- UploadDataCompleted

> [!NOTE]
 The ability to create notifications for EDM activities is available for the World Wide and GCC clouds only.

## Pre-requisites

The account you use must be one of the following:

- A global admin
- Compliance administrator
- Exchange Online administrator

To learn more about DLP permissions, see [Permissions](data-loss-prevention-policies.md#permissions).

EDM-based classification is included in these subscriptions:

- Office 365 E5
- Microsoft 365 E5
- Microsoft 365 E5 Compliance
- Microsoft E5/A5 Information Protection and Governance

To learn more about DLP licensing, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection).

## Configure notifications for EDM activities

1. Connect to the [Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

2. Run the `New-ProtectionAlert` cmdlet using the activity that you want to create the notification for.  For example, if you want to be notified when the **UploadDataCompleted** action occurred, run:

    ```powershell
    New-ProtectionAlert -Name "EdmUploadCompleteAlertPolicy" -Category Others -NotifyUser <address to send notification to> -ThreatType Activity -Operation UploadDataCompleted -Description "Custom alert policy to track when EDM upload Completed" -AggregationType None
    ```
    
    For the **UploadDataFailed** you can run:
    
    ```powershell
    New-ProtectionAlert -Name "EdmUploadFailAlertPolicy" -Category Others -NotifyUser <SMTP address to send notification to> -ThreatType Activity -Operation UploadDataFailed -Description "Custom alert policy to track when EDM upload Failed" -AggregationType None -Severity High
    ```

## Related articles

- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [New-ProtectionAlert](/powershell/module/exchange/new-protectionalert)