---
title: Map Microsoft 365 Defender role-based access control (RBAC) permissions
description: Compare permissions and access to Microsoft 365 Defender Security portal experiences using role-based access control (RBAC)
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
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
ms.subservice: mde
ms.date: 11/10/2022
ms.reviewer: 
search.appverid: met150
---

# Map Microsoft 365 Defender role-based access control (RBAC) permissions

All permissions listed within the Microsoft 365 Defender RBAC model align to existing permissions in the individual RBAC models. Once you activate the Microsoft 365 Defender RBAC model the permissions and assignments configured in your imported roles will replace the existing roles in the individual RBAC models.

This article describes how existing roles and permissions in Microsoft Defender for Endpoint, Microsoft Defender for Office 365 (Exchange Online Protection), Microsoft Defender for Identity, and Azure Active Directory roles map to the roles and permission in the Microsoft 365 Defender RBAC model.

[!INCLUDE[Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)

[!include[Prerelease information](../../includes/prerelease.md)]

## Map Microsoft 365 Defender RBAC permissions to existing RBAC permissions

Use the tables in the following sections to learn more about how your existing individual RBAC role definitions map to your new Microsoft 365 Defender RBAC roles:

1. [Map Defender for Endpoint permissions](#map-defender-for-endpoint-permissions-to-the-microsoft-365-defender-rbac-permissions)
2. [Map Defender for Office 365 (Exchange Online Protection) roles](#map-defender-for-office-365-exchange-online-protection-roles-to-the-microsoft-365-defender-rbac-permissions)
3. [Map Microsoft Defender for Identity permissions](#map-microsoft-defender-for-identity-permissions-to-the-microsoft-365-defender-rbac-permissions)
4. [Azure Active Directory Global roles access](#azure-active-directory-global-roles-access)

### Map Defender for Endpoint permissions to the Microsoft 365 Defender RBAC permissions

|Defender for Endpoint permission|Microsoft 365 Defender RBAC permission|
|---|---|---|
|View data - Security operations|Security operations \ Security data \ Security data basics (read)|
|View data - Threat and vulnerability management|Security posture \ Posture management \ Vulnerability management (read)|
|Alerts investigation|Security operations \ Security data \ Alerts (manage)|
|Active remediation actions - Security operations|Security operations \ Security data \ Response (manage)|
|Active remediation actions - Threat and vulnerability management - Exception handling|Security posture \ Posture management \ Exception handling (manage)|
|Active remediation actions - Threat and vulnerability management - Remediation handling|Security posture \ posture management \ Remediation handling (manage)|
|Active remediation actions - Threat and vulnerability management - Application handling|Security posture \ Posture management \ Application handling (manage)|
|Vulnerability management – Manage security baselines assessment profiles|Security posture \ posture management \ Security baselines assessment (manage)|
|Live response capabilities|Security operations \ Basic live response (manage)|
|Live response capabilities - advanced|Security operations \ Advanced live response (manage)|
|Manage security settings in the Security Center|Configuration \ Security setting (All permissions)|
|Manage portal system settings|Configuration \ System setting (All permissions)|
|Manage endpoint security settings in Microsoft Endpoint Manager|Not supported - this permission is managed in the Microsoft Endpoint Management portal|

### Map Defender for Office 365 (Exchange Online Protection) roles to the Microsoft 365 Defender RBAC permissions

|Defender for Office (EOP) role group|Microsoft 365 Defender RBAC permission|
|---|---|---|
|Security reader|Security operations \ Security data \Security data basics (read)</br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read)</br>Security operations \ Security data \ Response (manage) </br>Configuration \ Security setting (read) </br>Configuration \ System setting (read)|
|Global reader|Security operations \ Security data \ Security data basics (read)</br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read)</br>Security operations \ Security data \ Response (manage) </br>Configuration \ Security setting (read) </br>Configuration \ System setting (read)|
|Security administrator|Security operations \ Security data \ Security data basics (read) </br>Security operations \ Security data \ Alerts (manage)</br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read)</br>Security operations \ Security data \ Response (manage) </br>Security operations \ Security data \ Email quarantine (manage)</br>Configuration \ Authorization (read) </br> Configuration \ Security setting (All permissions) </br>Configuration \ System setting (All permissions)|
|Organization Management|Security operations \ Security data \ Security data basics (read) </br>Security operations \ Security data \ Alerts (manage)</br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read) </br>Security operations \ Security data \ Response (manage) </br>Security operations \ Security data \ Email advanced actions (manage)</br>Security operations \ Security data \ Email quarantine (manage)</br>Configuration \ Authorization (All permissions) </br> Configuration \ Security setting (All permissions) </br>Configuration \ System setting (All permissions)|
|View-Only Recipients|Security operations \ Security data \ Security data basics (read) </br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read)|
|Preview|Security operations\ Security operations \ Raw data (Email & collaboration) \ Email content (read)|
|Search and Purge|Security operations \ Security data \ Email advanced actions (manage)|
|View-Only Manage Alerts|Security operations \ Security data \ Security data basics (read)|
|Manage Alerts|Security operations \ Security data \ Security data basics (read) </br>Security operations \ Security data \ Alerts (manage)|
|View-only Audit Logs|Security operations \ Security data \ Security data basics (read)|
|Audit Logs|Security operations \ Security data \ Security data basics (read)|
|Quarantine|Security operations \ Security data \ Email quarantine (manage)|
|Role Management|Configuration \ Authorization (All permissions)|

### Map Microsoft Defender for Identity permissions to the Microsoft 365 Defender RBAC permissions

|Defender for Identity permission|Unified RBAC permission|
|---|---|---|
|MDI admin|Security operations \ Security data \ Security data basics (read)</br>Security operations \ Security data \ Alerts (manage)</br>Configuration \ Authorization (All permissions) </br>Configuration \ Security setting (All permissions) </br>Configuration \ System setting (All permissions)|
|MDI user|Security operations \ Security data \ Security data basics (read) </br>Security operations \ Security data \ Alerts (manage)</br>Configuration \ Security setting (All permissions) </br>Configuration \ System setting (read)|
|MDI viewer|Security operations \ Security data \ Security data basics (read)</br>Configuration \ Security setting (read) </br>Configuration \ System setting (read)|

> [!NOTE]
> Defender for Identity experiences will also adhere to permissions granted from [Microsoft Defender for Cloud Apps](https://security.microsoft.com/cloudapps/permissions/roles). For more information, see [Microsoft Defender for Identity role groups](https://go.microsoft.com/fwlink/?linkid=2202729).

### Azure Active Directory Global roles access

Users assigned with Azure Active Directory global roles may also have access to the [Microsoft 365 Defender portal](https://security.microsoft.com).

Use this table to learn about the permissions assigned by default for each workload (Defender for Endpoint, Defender for Office and Defender for Identity) in Microsoft 365 Defender RBAC to each global Azure Active Directory role.

|AAD role|Microsoft 365 Defender RBAC assigned permissions for all workloads|Microsoft 365 Defender RBAC assigned permissions – workload specific|
|---|---|---|---|
|Global administrator|Security operations \ Security data \ Security data basics (read)</br>Security operations \ Security data \ Alerts (manage) </br>Security operations \ Security data \ Response (manage)</br>Configuration \ Authorization \ (All permissions)</br>Configuration \ Security settings \ (All permissions)</br>Configuration \ System settings \ (All permissions)|_**Defender for Endpoint only permissions**_ </br>Security operations \ Basic live response (manage)</br>Security operations \ Advanced live response (manage)</br>Security posture \ Posture management \ Vulnerability management (read)</br>Security posture \ Posture management \ Exception handling (manage)</br>Security posture \ Posture management \ Remediation handling (manage)</br>Security posture \ Posture management \ Application handling (manage)</br>Security posture \ Posture management \ Security baseline assessment (manage)</br></br> _**Defender for Office only permissions**_ </br> Security operations \ Security data \ Email quarantine (manage)</br>Security operations \ Security data \ Email advanced actions (manage)</br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read)|
|Security administrator|Same as Global administrator|Same as Global administrator|
|Global reader|Security operations \ Security data \ Security data basics (read)|_**Defender for Endpoint and Defender for Identity only permissions**_ </br> Configuration \ Security settings \ (read)</br>Configuration \ System settings \ (read) </br></br> _**Defender for Office only permissions**_ </br> Security operations \ Security data \ Response (manage)</br>Security operations \ Raw data (Email & collaboration) \ Email message headers (read)</br>Configuration \ Authorization \ (read) </br></br>_**Defender for Identity only permissions**_ </br>Security posture \ Posture management \ Vulnerability management (read)|
|Security reader|Same as Global reader|Same as Global reader|
|Security operator|Security operations \ Security data \ Security data basics (read) </br>Security operations \ Security data \ Alerts (manage) </br>Security operations \ Security data \ Response (manage)</br>Configuration \ Security settings \ (All permissions)|_**Defender for Endpoint only permissions**_</br></br>Security operations \ Basic live response (manage)Security operations \ Advanced live response (manage)</br>Security posture \ Posture management \ Vulnerability management (read)</br>Security posture \ Posture management \ Exception handling (manage)</br>Security posture \ Posture management \ Remediation handling (manage)</br></br>_**Defender for Identity only permissions**_ </br>Configuration \ System settings \ (read)|
|Compliance administrator|not applicable|_**Defender for Office only permissions**_ </br> Security operations \ Security data \ Security data basics (read)</br> Security operations \ Security data \ Alerts (manage)|
|Compliance data administrator|not applicable|Same as Compliance administrator|
|Billing admin|not applicable|not applicable|

> [!NOTE]
> By activating the Microsoft 365 Defender RBAC model, users with Security reader and Global reader roles will have access to Defender for Endpoint data.

## Next steps

- [Import existing RBAC roles](import-rbac-roles.md)
- [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)
