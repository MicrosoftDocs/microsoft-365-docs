---
title: Search the audit log for events in Microsoft Defender XDR
description: Learn about the Microsoft Defender XDR activities that are logged in the Microsoft 365 audit log.
ms.service: defender-xdr
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: overview
ms.date: 2/21/2024
search.appverid: met150
---

# Search the audit log for events in Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

The audit log can help you investigate specific activities across Microsoft 365 services. In the Microsoft Defender XDR portal, Microsoft Defender XDR and Microsoft Defender for Endpoint activities are audited. Some of the activities audited are:

- Changes to data retention settings
- Changes to advanced features
- Creation of indicators of compromise
- Isolation of devices
- Add\edit\deletion of security roles
- Create\edit custom detection rules
- Assign user to an incidents

For a complete list of Microsoft Defender XDR activities that are audited, see [Microsoft Defender XDR activities](#microsoft-defender-xdr-activities) and [Microsoft Defender for Endpoint activities](#microsoft-defender-for-endpoint-activities).

## Requirements

To access the audit log, you need to have the **View-Only Audit Logs** or **Audit Logs** role in Exchange Online. By default, those roles are assigned to the Compliance Management and Organization Management role groups.

>[!Note]
> Global administrators in Office 365 and Microsoft 365 are automatically added as members of the Organization Management role group in Exchange Online.

## Turn on auditing in Microsoft Defender XDR

Microsoft Defender XDR uses the [Microsoft Purview auditing solution](/purview/audit-solutions-overview), before you can look at the audit data in the Microsoft Defender XDR portal:

- You should confirm that auditing is turned on in the Microsoft Purview compliance portal. For more information, see [Turn auditing on or off](/purview/audit-log-enable-disable).

- Follow the steps below to enable the unified audit log in the Microsoft Defender XDR portal:
    1. Log in to [Microsoft Defender XDR](https://security.microsoft.com/homepage) using an account with the Security administrator or Global administrator role assigned.
    2. In the navigation pane, select **Settings** \> **Endpoints** \> **Advanced features**.
    3. Scroll own to **Unified audit log** and toggle the setting to **On**.

   :::image type="content" source="../../media/defender/unified-audit-log.png" alt-text="Screenshot of the unified audit log toggle in Microsoft Defender XDR advanced settings" lightbox="../../media/defender/unified-audit-log.png":::
    4. Select **Save preferences**.

## Using the audit search in Microsoft Defender XDR

1. To retrieve audit logs for Microsoft Defender XDR activities, navigate to the [Microsoft Defender XDR Audit page](https://security.microsoft.com/auditlogsearch) or go to the [Purview compliance portal](https://compliance.microsoft.com) and select **Audit**.

   :::image type="content" source="../../media/defender/unified-audit-log-xdr.png" alt-text="Screenshot of the unified audit log page in Microsoft Defender XDR " lightbox="../../media/defender/unified-audit-log-xdr.png":::

2. On the **New Search** page, filter the activities, dates, and users you want to audit.
3. Select **Search**

   :::image type="content" source="../../media/defender/unified-audit-search.png" alt-text="Screenshot of the unified audit log search options in Microsoft Defender XDR " lightbox="../../media/defender/unified-audit-search.png":::

4. Export your results to Excel for further analysis.

For step-by-step instructions, see [Search the audit log in the compliance portal](/purview/audit-new-search).

Audit log record retention is based on Microsoft Purview retention policies. For more information, see [Manage audit log retention policies](/purview/audit-log-retention-policies). 

The length of time that an audit record is retained and searchable in the audit log depends on your Microsoft 365 or Office 365 subscription, and specifically the type of license that's assigned to users. To learn more, see the [Security & Compliance Center service description](/office365/servicedescriptions/office-365-platform-service-description/office-365-securitycompliance-center).

## Microsoft Defender XDR activities

For a list of all events that are logged for user and admin activities in Microsoft Defender XDR in the Microsoft 365 audit log, see:

- [Custom detection activities in Microsoft Defender XDR in the audit log](/purview/audit-log-activities#microsoft-defender-xdr-custom-detection-activities)
- [Incident activities in Microsoft Defender XDR in the audit log](/purview/audit-log-activities#microsoft-defender-xdr-custom-detection-activities)
- [Suppression rule activities in Microsoft Defender XDR in the audit log](/purview/audit-log-activities#microsoft-defender-xdr-suppression-rule-activities)

## Microsoft Defender for Endpoint activities

For a list of all events that are logged for user and admin activities in Microsoft Defender for Endpoint in the Microsoft 365 audit log, see:

- [General settings activities in Defender for Endpoint in the audit log](/purview/audit-log-activities#microsoft-defender-for-endpoint-general-settings-activities)
- [Indicator settings activities in Defender for Endpoint in the audit log](/purview/audit-log-activities#microsoft-defender-for-endpoint-indicator-settings-activities)
- [Response action activities in Defender for Endpoint in the audit log](/purview/audit-log-activities#microsoft-defender-for-endpoint-reponse-actions-activities)
- [Roles settings activities in Defender for Endpoint in the audit log](/purview/audit-log-activities#microsoft-defender-for-endpoint-roles-settings-activities)

## Using a PowerShell script

You can use the following PowerShell code snippet to query the Office 365 Management API to retrieve information about Microsoft Defender XDR events:

```PowerShell
$cred = Get-Credential
$s = New-PSSession -ConfigurationName microsoft.exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $cred -Authentication Basic -AllowRedirection 
Import-PSSession $s
Search-UnifiedAuditLog -StartDate 2023/03/12 -EndDate 2023/03/20 -RecordType <ID>
```

>[!Note]
> See the API column in Audit activities included for the record type values.

## Additional resources

- [Search the audit log in the compliance center](/purview/audit-new-search)
- [Use a PowerShell script to search the audit log](/purview/audit-log-search-script)
- [Detailed properties in the audit log](/purview/audit-log-detailed-properties)
- [Export, configure, and view audit log records](/purview/audit-log-export-records)
- [Office 365 Management Activity API reference](/office/office-365-management-api/office-365-management-activity-api-reference)
