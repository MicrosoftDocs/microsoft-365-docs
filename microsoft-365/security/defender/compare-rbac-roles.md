---
title: Compare Microsoft 365 Defender role-based access control (RBAC) 
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

# Compare Microsoft 365 Defender role-based access control (RBAC) permissions

All permissions listed within the Microsoft 365 Defender RBAC model align to existing permissions in the individual RBAC models. Once you activate the Microsoft 365 Defender RBAC model the permissions and assignments configured in your imported roles will replace the existing roles in the individual RBAC models.

This article describes how existing roles and permissions in Microsoft Defender for Endpoint, Microsoft Defender for Office (Exchange online protection), Microsoft Defender for Identity, and Azure Active Directory roles map to the roles and permission in the Microsoft 365 Defender RBAC model.

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

| Defender for Endpoint permission| Microsoft 365 Defender RBAC permission|
|:-------|:-----|:-------|
|View data - Security operations | Security operations\security data basics\read only |
|View data - Threat and vulnerability management|Security posture\threat and vulnerability management\vulnerability management\read only |
|Alerts investigation | Security operations\security data\alerts\manage|
|Active remediation actions - Security operations | Security operations\ security data\response\manage |
|Active remediation actions - Threat and vulnerability management - Exception handling |Security posture\threat and vulnerability management\exception handling\manage|
|Active remediation actions - Threat and vulnerability management - Remediation handling | Security posture\threat and vulnerability management\remediation handling\manage |
|Active remediation actions - Threat and vulnerability management - Application handling| Security posture\threat and vulnerability management\application handling\manage|
|Vulnerability management – Manage security baselines assessment profiles| Security posture\threat and vulnerability management\Security baselines assessment\manage|
|Live response capabilities|Security operations\basic live response\manage|
|Live response capabilities - advanced|Security operations\advanced live response\manage|
|Manage security settings in the Security Center |Configuration\security setting\manage |
|Manage portal system settings |Configuration\system setting\manage |
|Manage endpoint security settings in Microsoft Endpoint Manager|Not supported - this permission is managed in the Microsoft Endpoint Management portal|

### Map Defender for Office 365 (Exchange Online Protection) roles to the Microsoft 365 Defender RBAC permissions

| Defender for Office (EOP) role group| Microsoft 365 Defender RBAC permission|
|:-------|:-----|:-------|
|Security Reader| Security operations\ security data basics\ read only</br>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read</br>Security operations\ security data\response\ manage</br>Configuration\System settings\ read only </br> Configuration\Security setting\ read only|
|Global Reader| Security operations\ security data basics\ read only</br>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read</br>Security operations\ security data\response\ manage</br>Configuration\System settings\ read only</br>Configuration\Security setting\ read only|
|Security Admin| Security operations\ security data basics\ read only</br>Security operations\ security data\ alerts\ manage</br>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </br>Security operations\ security data\response\ manage </br>Security operations\ security data\ Email quarantine\ manage</br>Configuration\ Authorization\ read only </br>Configuration\System settings\ manage </br>Configuration\Security setting\ manage|
|Organization Management|Security operations\ security data basics\ read only</br>Security operations\ security data\ alerts\ manage </br>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </br>Security operations\ security data\response\ manage </br>Security operations\ security data\ Email advanced actions\ manage </br>Security operations\ security data\ Email quarantine\ manage </br>Configuration\ Authorization\ manage </br>Configuration\System settings\ manage </br>Configuration\Security setting\ manage|
|View-Only Recipients| Security operations\ security data basics\ read only</br>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read |
|Preview|Security operations\ Email &amp; collaboration raw data\ User email content\ read|
|Search and Purge|Security operations\ security data\ Email advanced actions\ manage|
|View-Only Manage Alerts|Security operations\ security data basics\ read only|
|Manage Alerts|Security operations\ security data basics\ read only</br>Security operations\ security data\ alerts\ manage|
|View-only Audit Logs|Security operations\ security data basics\ read only|
|Audit Logs|Security operations\ security data basics\ read only|
|Quarantine|Security operations\ security data\ Email quarantine\ manage|
|Role Management|Configuration\ Authorization\ manage|

### Map Microsoft Defender for Identity permissions to the Microsoft 365 Defender RBAC permissions

| Defender for Identity permission| Unified RBAC permission|
|:-------|:-----|:-------|
|MDI Admin|Configuration\security setting \read</br> Configuration\ security setting \manage</br>Configuration\ system setting \read</br>Configuration\ system setting \manage</br>Security operations\security data\alerts\manage </br>Security operations\security data\read only </br>Configuration\authorization\manage Configuration\authorization\read|
|MDI User|Security operations\security data\read only </br>Configuration\ system setting \read</br>Configuration\ security setting \read</br>Security operations\security data\alerts\manage </br>Configuration\ security setting \manage|
|MDI Viewer|Security operations\security data\read only</br>Configuration\ system setting \read</br>Configuration\ security setting \read|

>[!NOTE]
> Defender for Identity experiences will also adhere to permissions granted from [Microsoft Defender for Cloud Apps](https://portal.cloudappsecurity.com). For more information, see [Microsoft Defender for Identity role groups](https://go.microsoft.com/fwlink/?linkid=2202729).

### Azure Active Directory Global roles access

Users assigned with Azure Active Directory global roles may also have access to the [Microsoft 365 Defender portal](https://security.microsoft.com).

Use this table to learn about the permissions assigned by default in the Microsoft 365 Defender RBAC to each global Azure Active Directory role.

| AAD role| Microsoft 365 Defender RBAC permissions - Defender for Endpoint scope | Microsoft 365 Defender RBAC permissions – Defender for Office 365 scope| Microsoft 365 Defender RBAC permissions – Defender for Identity scope |
|:-------|:-----|:-------|:-------|
|Global Administrator|Security operations\security data basics\read only</br>Security posture\threat and vulnerability management\vulnerability management\read only</br>Security operations\security data\alerts\manage </br>Security operations\ security data\response\ manage </br>Security posture\threat and vulnerability management\exception handling\manage </br>Security posture\threat and vulnerability management\remediation handling\manage </br>Security posture\threat and vulnerability management\application handling\manage </br>Security operations\basic live response\manage </br>Security operations\advanced live response\manage </br>Configuration\security setting\manage </br>Configuration\system setting\manage </br>Configuration\manage security settings in Endpoint manager |  Security operations\ security data basics\ read only</br>Security operations\ security data\ alerts\ manage </br>Security operations\ security data\response\ manage </br>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read  </br>Security operations\ security data\ Email quarantine\ manage </br>Security operations\ security data\ Email advanced actions\ manage p></br>Configuration\ Authorization\ manage </br>Configuration\System settings\ manage</br>Configuration\Security settings\ manage  | microsoft.xdr/secops/securitydata/basics/read </br>microsoft.xdr/secops/securitydata/alerts/manage </br>microsoft.xdr/secops/securitydata/response/manage </br>microsoft.xdr/configuration authorization/read </br>microsoft.xdr/configuration/authorization/manage </br>microsoft.xdr/configuration/security/read </br>microsoft.xdr/configuration/security/manage </br>microsoft.xdr/configuration/system/read </br>microsoft.xdr/configuration/system/manage |
|Security Administrator|Same permissions as for the Global administrator | Security operations\ security data basics\ read only </br>Security operations\ security data\ alerts\ manage </br>Security operations\ security data\response\manage </br>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </br>Security operations\ security data\ Email quarantine\ manage </br>Configuration\ Authorization\ manage </br>Configuration\System settings\manage </br>Configuration\Security settings\ manage| microsoft.xdr/secops/securitydata/basics/read </br>microsoft.xdr/secops/securitydata/alerts/manage </br>microsoft.xdr/secops/securitydata/response/manage </br>microsoft.xdr/configuration/authorization/read </br>microsoft.xdr/configuration/authorization/manage </br>microsoft.xdr/configuration/security/read </br>microsoft.xdr/configuration/security/manage </br>microsoft.xdr/configuration/system/read </br>microsoft.xdr/configuration/system/manage  | microsoft.xdr/secops/securitydata/basics/read </br>microsoft.xdr/secops/securitydata/alerts/manage </br>microsoft.xdr/secops/securitydata/response/manage </br>microsoft.xdr/configuration/authorization/read </br>microsoft.xdr/configuration/authorization/manage </br>microsoft.xdr/configuration/security/read </br>microsoft.xdr/configuration/security/manage </br>microsoft.xdr/configuration/system/read </br>microsoft.xdr/configuration/system/manage |
|Global Reader|  Security operations\security data basics\read only</br>Security posture\threat and vulnerability management\vulnerability management\read only | Security operations\ security data basics\ read only </br>Security operations\ security data\response\ manage </br>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </br>Configuration\ Authorization\ read only</br>Configuration\System settings\ read only</br>Configuration\Security setting\ read only |  microsoft.xdr/secops/securitydata/basics/read </br>microsoft.xdr/configuration/system/read</br>microsoft.xdr/configuration/security/read  |
|Security Reader|  Security operations\security data basics\read only</br>Security posture\threat and vulnerability management\vulnerability management\read only |  Security operations\ security data basics\ read only</br>Security operations\ security data\response\ manage </br>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read</br>Configuration\System settings\ read only </br>Configuration\Security setting\ read only  |  microsoft.xdr/secops/securitydata/basics/read </br>microsoft.xdr/configuration/system/read</br>microsoft.xdr/configuration/security/read  |
|Security Operator|  Security operations\security data basics\read only</br>Security posture\threat and vulnerability management\vulnerability management\read only</br>Security operations\security data\alerts\manage </br>Security operations\ security data\response\ manage </br>Security posture\threat and vulnerability management\exception handling\manage </br>Security posture\threat and vulnerability management\remediation handling\manage </br>Security operations\basic live response\manage </br>Security operations\advanced live response\manage </br>Configuration\security setting\manage</br>Security operations\ security data basics\ read only</br>Security operations\ security data\ alerts\ manage </br>Security operations\ security data\response\ manage </br>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </br>Configuration\System settings\ manage</br>Configuration\Security settings\ manage |  microsoft.xdr/secops/securitydata/basics/read</br>microsoft.xdr/secops/securitydata/alerts/manage</br>microsoft.xdr/secops/securitydata/response/manage</br>microsoft.xdr/configuration/security/read</br>microsoft.xdr/configuration/security/manage</br>microsoft.xdr/configuration/system/read  |
|Compliance Administrator||  Security operations\ security data basics\ read only</br>Security operations\ security data\ alerts\ manage  ||
|Compliance Data Administrator||  Security operations\ security data basics\ read only</br>Security operations\ security data\ alerts\ manage ||

>[!NOTE]
>By activating the Microsoft 365 Defender RBAC model, users with Security Reader and Global Reader roles will have access to Defender for Endpoint data.

## Next steps

- [Import existing RBAC roles](import-rbac-roles.md)
- [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)

### Azure Active Directory Global roles access - Temp

Users assigned with Azure Active Directory global roles may also have access to the [Microsoft 365 Defender portal](https://security.microsoft.com).

Use this table to learn about the permissions assigned by default for each workload (Defender for Endpoint, Defender for Office and Defender for Identity) in the Microsoft 365 Defender RBAC to each global Azure Active Directory role.

| AAD role| Microsoft 365 Defender RBAC permissions - All workloads | Microsoft 365 Defender RBAC permissions – per workload |
|:-------|:-----|:-------|:-------|
|Global Administrator|Security operations\security data basics\read only</br>Security operations\security data\alerts\manage </br>Security operations\ security data\response\ manage </br>Security operations\basic live response\manage </br>Security operations\advanced live response\manage </br>Configuration\security setting\manage </br>Configuration\system setting\manage </br>Configuration\manage security settings in Endpoint manager | **Defender for Endpoint only** </br>Security posture\threat and vulnerability management\vulnerability management\read only</br>Security posture\threat and vulnerability management\exception handling\manage </br>Security posture\threat and vulnerability management\remediation handling\manage </br>Security posture\threat and vulnerability management\application handling\manage </br>Security operations\basic live response\manage </br>Security operations\advanced live response\manage </br>Configuration\manage security settings in Endpoint manager </br></br> **Defender for Office only** </br>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read  </br>Security operations\ security data\ Email quarantine\ manage </br>Security operations\ security data\ Email advanced actions\ manage p></br>Configuration\ Authorization\ manage </br></br> **Defender for Identity only** </br> Configuration\system setting\manage </br>Configuration\system setting\manage </br>Configuration\system setting\manage|
|Global Administrator|Security operations\security data basics\read only</br>Security operations\security data\alerts\manage </br>Security operations\ security data\response\ manage </br>Security operations\basic live response\manage </br>Security operations\advanced live response\manage </br>Configuration\security setting\manage </br>Configuration\system setting\manage </br>Configuration\manage security settings in Endpoint manager | **Defender for Endpoint and Defender for Office only** </br>Security posture\threat and vulnerability management\vulnerability management\read only</br>Security posture\threat and vulnerability management\exception handling\manage </br>Security posture\threat and vulnerability management\remediation handling\manage </br>Security posture\threat and vulnerability management\application handling\manage </br>Security operations\basic live response\manage </br>Security operations\advanced live response\manage </br>Configuration\manage security settings in Endpoint manager </br></br> **Defender for Identity only** </br> Configuration\system setting\manage </br>Configuration\system setting\manage </br>Configuration\system setting\manage|
|Compliance Data Administrator|| **Defender for Endpoint only** </br> Security operations\ security data basics\ read only</br>Security operations\ security data\ alerts\ manage ||
