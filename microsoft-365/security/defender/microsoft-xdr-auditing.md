---
title: Microsoft Defender XDR audit activities
description: Learn about the Microsoft Defender XDR activities at are logged in the Microsoft Defender XDR audit logs.
ms.service: defender-xdr
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.custom: 
ms.topic: overview
ms.date: 2/21/2024
ms.reviewer: 
search.appverid: met150
---

# Microsoft Defender XDR audit activities

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

## Requirements

- To use the auditing functionality, your organization must have Microsoft 365 E3/E5 or Office E3/E5 subscriptions.
- To access the audit log, you need to have the **View-Only Audit Logs** or **Audit Logs** role in Exchange Online. By default, those roles are assigned to the Compliance Management and Organization Management role groups.

>[!Note]
> Global administrators in Office 365 and Microsoft 365 are automatically added as members of the Organization Management role group in Exchange Online.

- Activities retention:
   - For users assigned an Office E5 or Microsoft 365 E5 license the audit records are retained for one year by default.
   - For users assigned any other (non-E5) license, audit records are retained for 90 days.

For more information, see [Manage audit log retention policies](/purview/audit-log-retention-policies).

|Solution|Description|
|---|---|
|Microsoft Defender XDR|Centralized permissions management for Microsoft Defender XDR experiences.|
|Microsoft Defender for Endpoint|Full support for all endpoint data and actions. All roles are compatible with the device group's scope as defined on the device groups page.|

## Enable the auditing feature

1. Log in to [Microsoft Defender XDR](https://security.microsoft.com/homepage) using an account with the Security administrator or Global administrator role assigned.
2. In the navigation pane, select **Settings** \> **Endpoints** \> **Advanced features**.
3. Scroll own to **Unified audit log** and toggle the setting to **On**.

   :::image type="content" source="../../media/defender/unified-audit-log.png" alt-text="Screenshot of the unified audit log toggle in Microsoft Defender XDR advanced settings" lightbox="../../media/defender/unified-audit-log.png":::

4. Select **Save preferences**.

## Using the audit log

1. Navigate to the [Microsoft Defender XDR Audit page](https://security.microsoft.com/auditlogsearch)

   :::image type="content" source="../../media/defender/unified-audit-log-xdr.png" alt-text="Screenshot of the unified audit log page in Microsoft Defender XDR " lightbox="../../media/defender/unified-audit-log-xdr.png":::

>[!Note]
>The Audit log page can also be accessed from the [Compliance portal](https://compliance.microsoft.com/auditlogsearch).

2. Open the activities dropdown or click View all activities to open the side pane:

## Using a PowerShell script

You can use the following PowerShell code snippet to query the Office 365 Management API:

```PowerShell
$cred = Get-Credential
$s = New-PSSession -ConfigurationName microsoft.exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $cred -Authentication Basic -AllowRedirection 
Import-PSSession $s
Search-UnifiedAuditLog -StartDate 2023/03/12 -EndDate 2023/03/20 -RecordType <ID>
```
>
>[!Note] See the API column in Audit activities included for the record type values.

## Additional resources

- Search the audit log in the compliance center
- Use a PowerShell script to search the audit log
- Detailed properties in the audit log
- Export, configure, and view audit log records
- Office 365 Management Activity API reference