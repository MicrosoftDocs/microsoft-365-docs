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
ms.date: 06/02/2023
ms.localizationpriority: high
ms.collection: 
- tier1
- purview-compliance
search.appverid: 
- MOE150
- MET150
description: Learn how to create notifications for exact data match activities.
ms.custom: seo-marvel-apr2020
---

# Create notifications for exact data match activities

When you [create custom sensitive information types with exact data match (EDM)](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types), there are a number of activities that are created in the [audit log](audit-log-search.md#before-you-search-the-audit-log). You can use the [New-ProtectionAlert](/powershell/module/exchange/new-protectionalert) PowerShell cmdlet to create notifications that let you know when these activities occur:

- `CreateSchema`
- `EditSchema`
- `RemoveSchema`
- `UploadDataFailed`
- `UploadDataCompleted`

> [!NOTE]
> The ability to create notifications for EDM activities is available for the World Wide and GCC clouds only.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Prerequisites

The account you have one of the following roles:

- Global administrator
- Compliance administrator
- Exchange Online administrator

To learn more about DLP permissions, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

EDM-based classification is included in these subscriptions:

- Office 365 E5
- Microsoft 365 E5
- Microsoft 365 E5 Compliance
- Microsoft E5/A5 Information Protection and Governance

To learn more about DLP licensing, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection).

## Configure notifications for EDM activities

1. Connect to the [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

2. Run the `New-ProtectionAlert` cmdlet using the activity that you want to create the notification for.  For example, if you want to be notified when the `UploadDataCompleted` action occurred, run:

    ```powershell
    New-ProtectionAlert -Name "EdmUploadCompleteAlertPolicy" -Category Others -NotifyUser <address to send notification to> -ThreatType Activity -Operation UploadDataCompleted -Description "Custom alert policy to track when EDM upload Completed" -AggregationType None
    ```
    
    For the `UploadDataFailed` you can run:
    
    ```powershell
    New-ProtectionAlert -Name "EdmUploadFailAlertPolicy" -Category Others -NotifyUser <SMTP address to send notification to> -ThreatType Activity -Operation UploadDataFailed -Description "Custom alert policy to track when EDM upload Failed" -AggregationType None -Severity High
    ```

## Related articles

- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [New-ProtectionAlert](/powershell/module/exchange/new-protectionalert)
