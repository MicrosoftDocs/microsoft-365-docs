---
title: Map Microsoft Defender XDR Unified role-based access control (RBAC) permissions
description: Compare permissions and access to Microsoft Defender XDR Security portal experiences using role-based access control (RBAC)
ms.service: defender-xdr
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.custom: 
ms.topic: reference
ms.date: 11/8/2023
ms.reviewer: 
search.appverid: met150
---

# Map Microsoft Defender XDR Unified role-based access control (RBAC) permissions

All permissions listed within the Microsoft Defender XDR Unified RBAC model align to existing permissions in the individual RBAC models. Once you activate the Microsoft Defender XDR Unified RBAC model the permissions and assignments configured in your imported roles will replace the existing roles in the individual RBAC models.

This article describes how existing roles and permissions in Microsoft Defender for Endpoint, Microsoft Defender Vulnerability Management, Microsoft Defender for Office 365, Microsoft Defender for Identity, and Microsoft Entra roles map to the roles and permission in the Microsoft Defender XDR Unified RBAC model.

[!INCLUDE[Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/p/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/p/?LinkID=2198108)
- [Microsoft Defender for Office 365 Plan 2](https://go.microsoft.com/fwlink/p/?LinkID=2158212)
- [Microsoft Defender Vulnerability Management](https://go.microsoft.com/fwlink/p/?linkid=2229011)
- [Microsoft Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction)

<a name='map-microsoft-365-defender-unified-rbac-permissions-to-existing-rbac-permissions'></a>

## Map Microsoft Defender XDR Unified RBAC permissions to existing RBAC permissions

Use the tables in the following sections to learn more about how your existing individual RBAC role definitions map to your new Microsoft Defender XDR Unified RBAC roles:

1. [Map Defender for Endpoint and Defender Vulnerability Management permissions](#map-defender-for-endpoint-and-defender-vulnerability-management-permissions-to-the-microsoft-365-defender-rbac-permissions)
2. [Map Defender for Office 365 permissions to the Microsoft Defender XDR Unified RBAC permissions](#map-defender-for-office-365-permissions-to-the-microsoft-365-defender-unified-rbac-permissions)
3. [Map Microsoft Defender for Identity permissions](#map-microsoft-defender-for-identity-permissions-to-the-microsoft-365-defender-unified-rbac-permissions)
4. [Microsoft Entra Global roles access](#azure-active-directory-global-roles-access)

<a name='map-defender-for-endpoint-and-defender-vulnerability-management-permissions-to-the-microsoft-365-defender-rbac-permissions'></a>

### Map Defender for Endpoint and Defender Vulnerability Management permissions to the Microsoft Defender XDR RBAC permissions

|Defender for Endpoint and Defender Vulnerability Management permissions|Microsoft Defender XDR Unified RBAC permission|
|---|---|---|
|View data - Security operations|Security operations \ Security data \ Security data basics (read)|
|View data - Defender Vulnerability Management|Security posture \ Posture management \ Vulnerability management (read)|
|Alerts investigation|Security operations \ Security data \ Alerts (manage)|
|Active remediation actions - Security operations|Security operations \ Security data \ Response (manage)|
|Active remediation actions - Defender Vulnerability Management - Exception handling|Security posture \ Posture management \ Exception handling (manage)|
|Active remediation actions - Defender Vulnerability Management - Remediation handling|Security posture \ posture management \ Remediation handling (manage)|
|Active remediation actions - Defender Vulnerability Management - Application handling|Security posture \ Posture management \ Application handling (manage)|
|Defender Vulnerability management – Manage security baselines assessment profiles|Security posture \ posture management \ Security baselines assessment (manage)|
|Live response capabilities|Security operations \ Basic live response (manage)|
|Live response capabilities - advanced|Security operations \ Advanced live response (manage) </br> Security operations \ Security data \ File collection (manage)|
|Manage security settings in the Security Center | Authorization and settings \ Security settings \ Core security settings (manage) </br> Authorization and settings\Security settings \ Detection tuning (manage)|
|Manage portal system settings|Authorization and settings \ System setting (Read and manage)|
|Manage endpoint security settings in Microsoft Intune|Not supported - this permission is managed in the Microsoft Intune admin center|

<a name='map-defender-for-office-365-permissions-to-the-microsoft-365-defender-unified-rbac-permissions'></a>

### Map Defender for Office 365 permissions to the Microsoft Defender XDR Unified RBAC permissions

Use the following tables to learn how your existing Email & collaboration and protection-related Exchange Online permissions for Defender for Office 365 map to the new Microsoft Defender XDR Unified RBAC permissions:

- [Email & collaboration permissions mapping](#email--collaboration-permissions-mapping)
- [Exchange Online permissions mapping](#exchange-online-permissions-mapping)

#### Email & collaboration permissions mapping

You configured Email & collaboration permissions in the Defender portal at <https://security.microsoft.com/emailandcollabpermissions>.

|Email & collaboration permission|Type|Microsoft Defender XDR Unified RBAC permission|
|---|---|---|
|Global Reader|Role group|Security operations \ Security data \ Security data basics (read) </br> Security operations \ Raw data (Email & collaboration) \ Email message headers (read) </br> Security operations \ Security data \ Response (manage) </br> Authorization and settings \ Security settings \ Core security settings (read) </br> Authorization and settings \ System setting (read)|
|Organization Management|Role group|Security operations \ Security data \ Security data basics (read) </br> Security operations \ Security data \ Alerts (manage) </br> Security operations \ Raw data (Email & collaboration) \ Email message headers (read) </br> Security operations \ Security data \ Response (manage) </br> Security operations \ Security data \ Email advanced actions (manage) </br> Security operations \ Security data \ Email quarantine (manage) </br> Authorization and settings \ Authorization (Read and manage) </br> Authorization and settings \ Security setting (All permissions) </br> Authorization and settings \ System settings (Read and manage)|
|Security Administrator|Role group|Security operations \ Security data \ Security data basics (read) </br>Security operations \ Security data \ Alerts (manage) </br> Security operations \ Raw data (Email & collaboration) \ Email message headers (read) </br> Security operations \ Security data \ Response (manage) </br> Security operations \ Security data \ Email quarantine (manage) </br> Authorization and settings \ Authorization (read) </br> Authorization and settings \ Security setting (All permissions) </br> Authorization and settings \ System settings (Read and manage)|
|Security Reader|Role group|Security operations \ Security data \Security data basics (read) </br> Security operations \ Raw data (Email & collaboration) \ Email message headers (read) </br> Security operations \ Security data \ Response (manage) </br> Authorization and settings \ Security settings \ Core security settings (read) </br> Authorization and settings \ System setting (read)|
|Audit Logs|Role|Security operations \ Security data \ Security data basics (read)|
|Manage Alerts|Role|Security operations \ Security data \ Security data basics (read) </br> Security operations \ Security data \ Alerts (manage)|
|Preview|Role|Security operations\ Security operations \ Raw data (Email & collaboration) \ Email content (read)|
|Quarantine|Role|Security operations \ Security data \ Email quarantine (manage)|
|Role Management|Role|Authorization and settings \ Authorization (Read and manage)|
|Search and Purge|Role|Security operations \ Security data \ Email advanced actions (manage)|
|View-Only Manage Alerts|Role|Security operations \ Security data \ Security data basics (read)|
|View-Only Recipients|Role|Security operations \ Security data \ Security data basics (read) </br> Security operations \ Raw data (Email & collaboration) \ Email message headers (read)|
|View-only Audit Logs|Role|Security operations \ Security data \ Security data basics (read)|

#### Exchange Online permissions mapping

You configured protection-related Exchange Online permissions in the Exchange admin center (EAC) at <https://admin.exchange.microsoft.com/#/adminRoles>.

|Exchange Online permission|Type|Microsoft Defender XDR Unified RBAC permission|
|---|---|---|
|Hygiene Management|Role group|Security operations \ Security data \ Email quarantine (manage) </br> Authorization and settings \ Security settings \ Core security settings (manage) </br> Authorization and settings \ Security settings \ Detection tuning (manage)|
|Organization Management|Role group|Security operations \ Raw data (email & collaboration) \ Email message headers (read) </br> Authorization and settings \ Security settings \ Core security settings (manage) </br> Authorization and settings \ Security settings \ Detection tuning (manage) </br> Authorization and settings \ System settings (Read and manage)|
|Security Administrator|Role group|Authorization and settings \ Security settings \ Detection tuning (manage) </br> Authorization and settings \ System settings (Read and manage)|
|View-Only Organization Management|Role group|Authorization and settings \ Security settings (Read-only) </br> Authorization and settings \ System settings (Read-only)|
|Tenant AllowBlockList Manager|Role|Authorization and settings \ Security settings \ Detection tuning (manage)|
|View-only Recipients|Role|Security operations \ Raw data (email & collaboration) \ Email message headers (read)|

<a name='map-microsoft-defender-for-identity-permissions-to-the-microsoft-365-defender-unified-rbac-permissions'></a>

### Map Microsoft Defender for Identity permissions to the Microsoft Defender XDR Unified RBAC permissions

|Defender for Identity permission|Unified RBAC permission|
|---|---|---|
|MDI admin|Security operations \ Security data \ Security data basics (read)</br>Security operations \ Security data \ Alerts (manage)</br>Authorization and settings \ Authorization (Read and manage) </br>Authorization and settings \ Security setting (All permissions) </br>Authorization and settings \ System settings (Read and manage)|
|MDI user|Security operations \ Security data \ Security data basics (read) </br>Security operations \ Security data \ Alerts (manage)</br>Authorization and settings \ Security setting (All permissions) </br>Authorization and settings \ System setting (read)|
|MDI viewer|Security operations \ Security data \ Security data basics (read)</br>Authorization and settings \ Security settings \ Core security settings (read) </br>Authorization and settings \ System setting (read)|

> [!NOTE]
> Defender for Identity experiences will also adhere to permissions granted from [Microsoft Defender for Cloud Apps](https://security.microsoft.com/cloudapps/permissions/roles). For more information, see [Microsoft Defender for Identity role groups](https://go.microsoft.com/fwlink/?linkid=2202729).

<a name='azure-active-directory-global-roles-access'></a>

### Microsoft Entra Global roles access

Users assigned with Microsoft Entra global roles may also have access to the [Microsoft Defender portal](https://security.microsoft.com).

Use this table to learn about the permissions assigned by default for each workload (Defender for Endpoint, Defender Vulnerability Management, Defender for Office and Defender for Identity) in Microsoft Defender XDR Unified RBAC to each global Microsoft Entra role.

|Microsoft Entra role|Microsoft Defender XDR Unified RBAC assigned permissions for all workloads|Microsoft Defender XDR Unified RBAC assigned permissions – workload specific|
|---|---|---|---|
|Global administrator|Security operations \ Security data \ Security data basics (read)</br>Security operations \ Security data \ Alerts (manage) </br>Security operations \ Security data \ Response (manage)</br>Security posture \ Posture management \ Secure Score (read) </br> Security posture \ Posture management \ Secure Score (manage)</br>Authorization and settings \ Authorization (Read and manage)</br>Authorization and settings \ Security settings (All permissions)</br>Authorization and settings \ System settings (Read and manage) |_**Defender for Endpoint and Defender Vulnerability Management permissions only permissions**_ </br>Security operations \ Basic live response (manage)</br>Security operations \ Advanced live response (manage) </br> Security operations  \ Security data \ File collection (manage) </br>Security posture \ Posture management \ Vulnerability management (read)</br>Security posture \ Posture management \ Exception handling (manage)</br>Security posture \ Posture management \ Remediation handling (manage)</br>Security posture \ Posture management \ Application handling (manage)</br>Security posture \ Posture management \ Security baseline assessment (manage)</br></br> _**Defender for Office only permissions**_ </br> Security operations \ Security data \ Email quarantine (manage)</br>Security operations \ Security data \ Email advanced actions (manage)</br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read)|
|Security administrator|Same as Global administrator|Same as Global administrator|
|Global reader|Security operations \ Security data \ Security data basics (read)</br>Security posture \ Posture management \ Secure Score (read) </br>|_**Defender for Endpoint and Defender Vulnerability Management permissions only permissions**_ </br>Security posture \ Posture management \ Vulnerability management (read)</br></br> _**Defender for Office only permissions**_ </br> Security operations \ Security data \ Response (manage)</br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read)</br>Authorization and settings \ Authorization (read) </br></br>_**Defender for Office and Defender for Identity only permissions**_ </br>Authorization and settings \ Security settings \ Core security settings (read)</br>Authorization and settings \ System settings (read)|
|Security reader|Security operations \ Security data \ Security data basics (read)</br>Security posture \ Posture management \ Secure Score (read) </br>|_**Defender for Endpoint and Defender Vulnerability Management permissions only permissions**_ </br>Security posture \ Posture management \ Vulnerability management (read)</br></br> _**Defender for Office only permissions**_ </br> Security operations \ Security data \ Response (manage)</br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read) </br></br>_**Defender for Office and Defender for Identity only permissions**_ </br>Authorization and settings \ Security settings \ Core security settings (read)</br>Authorization and settings \ System settings (read)|
|Security operator|Security operations \ Security data \ Security data basics (read)</br>Security operations \ Security data \ Alerts (manage) </br>Security operations \ Security data \ Response (manage)</br>Security posture \ Posture management \ Secure Score (read)</br>Authorization and settings \ Security settings (All permissions)|_**Defender for Endpoint and Defender Vulnerability Management permissions only permissions**_</br>Security operations  \ Security data \ Basic live response (manage)</br>Security operations  \ Security data \ Advanced live response (manage)</br> Security operations \ Security data \ File collection (manage) </br>Security posture \ Posture management \ Vulnerability management (read)</br>Security posture \ Posture management \ Exception handling (manage)</br>Security posture \ Posture management \ Remediation handling (manage)</br></br>_**Defender for Office only permissions**_ </br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read)</br>Authorization and settings \ System settings (Read and manage)</br></br>_**Defender for Identity only permissions**_ </br>Authorization and settings \ System settings (read)|
|Exchange Administrator|Security posture \ Posture management \ Secure Score (read) </br> Security posture \ Posture management \ Secure Score (manage)|_**Defender for Office only permissions**_ </br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read)</br>Authorization and settings \ System settings (Read and manage)|
|SharePoint Administrator|Security posture \ Posture management \ Secure Score (read) </br> Security posture \ Posture management \ Secure Score (manage)|not applicable|
|Service Support Administrator|Security posture \ Posture management \ Secure Score (read) |not applicable|
|User Administrator|Security posture \ Posture management \ Secure Score (read) |not applicable|
|HelpDesk Administrator|Security posture \ Posture management \ Secure Score (read) |not applicable|
|Compliance administrator|not applicable|_**Defender for Office only permissions**_ </br> Security operations \ Security data \ Security data basics (read)</br> Security operations \ Security data \ Alerts (manage)|
|Compliance data administrator|not applicable|Same as Compliance administrator|
|Billing admin|not applicable|not applicable|

> [!NOTE]
> By activating the Microsoft Defender XDR Unified RBAC model, users with Security reader and Global reader roles will have access to Defender for Endpoint data.

## Next steps

- [Import existing RBAC roles](import-rbac-roles.md)
- [Activate Microsoft Defender XDR Unified RBAC](activate-defender-rbac.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
