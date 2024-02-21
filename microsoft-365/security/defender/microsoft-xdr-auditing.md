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

## Enable the auditing feature

1. Log in to [Microsoft Defender XDR](https://security.microsoft.com/homepage) using an account with the Security administrator or Global administrator role assigned.
2. In the navigation pane, select **Settings** \> **Endpoints** \> **Advanced features**.
3. Scroll own to **Unified audit log** and toggle the setting to **On**.

   :::image type="content" source="../../media/defender/unified-audit-log.png" alt-text="Screenshot of the unified audit log toggle in Microsoft Defender XDR advanced settings" lightbox="../../media/defender/unified-audit-log.png":::

4. Select **Save preferences**.

## Using the audit search in Microsoft Defender XDR

1. Navigate to the [Microsoft Defender XDR Audit page](https://security.microsoft.com/auditlogsearch)

   :::image type="content" source="../../media/defender/unified-audit-log-xdr.png" alt-text="Screenshot of the unified audit log page in Microsoft Defender XDR " lightbox="../../media/defender/unified-audit-log-xdr.png":::

2. To narrow your scope and search for Microsoft Defender XDR or Microsoft Defender of Endpoint activities, in the **Activities - friendly names** type **Defender for Endpoint** or **Defender XDR**
3. Select search

   :::image type="content" source="../../media/defender/unified-audit-search.png" alt-text="Screenshot of the unified audit log search options in Microsoft Defender XDR " lightbox="../../media/defender/unified-audit-search.png":::

For more information on using the audit search, see [Audit New Search](/purview/audit-new-search).

For a full list of activities logged in the Microsoft 365 audit log, see [Audit Log Activities](/purview/audit-log-activities).

>[!Note]
>The Audit log page is also accessible from the [Compliance portal](https://compliance.microsoft.com/auditlogsearch).

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

- [Search the audit log in the compliance center](/purview/audit-new-search)
- [Use a PowerShell script to search the audit log](/purview/audit-log-search-script)
- [Detailed properties in the audit log](/purview/audit-log-detailed-properties)
- [Export, configure, and view audit log records](purview/audit-log-export-records)
- [Office 365 Management Activity API reference](office/office-365-management-api/office-365-management-activity-api-reference)
