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
ms.topic:
ms.subservice: mde
ms.date: 11/10/2022
ms.reviewer: 
search.appverid: met150
---

# Compare Microsoft 365 Defender role-based access control (RBAC) permissions

All permissions listed within the Microsoft 365 Defender RBAC model align to existing permissions in the individual RBAC models. Once you activate the Microsoft 365 Defender RBAC model the permissions and assignments configured in your imported roles and will replace the existing roles in the individual RBAC models.

This article describes how existing roles and permissions in Microsoft Defender for Endpoint, Microsoft Defender for Office, Microsoft Defender for Identity, and Azure Active Directory roles map to the roles and permission in the Microsoft 365 Defender RBAC model.

[!INCLUDE[Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

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
|Manage endpoint security settings in Microsoft Endpoint Manager* |Not supported - this permission is managed in the Microsoft Endpoint Management portal|

### Map Defender for Office 365 (Exchange Online Protection) roles to the Microsoft 365 Defender RBAC permissions

| Defender for Office (EOP) role group| Microsoft 365 Defender RBAC permission|
|:-------|:-----|:-------|
|Security Reader| <ul><li> Security operations\ security data basics\ read only</li><li>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read</li><li>Security operations\ security data\response\ manage</li><li>Configuration\System settings\ read only </li><li> Configuration\Security setting\ read only|
|Global Reader|<ul><li> Security operations\ security data basics\ read only</li><li>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read</li><li>Security operations\ security data\response\ manage</li><li>Configuration\System settings\ read only</li><li>Configuration\Security setting\ read only</li></ul>|
|Security Admin| <ul><li>Security operations\ security data basics\ read only</li><li>Security operations\ security data\ alerts\ manage</li><li>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </li><li>Security operations\ security data\response\ manage </li><li>Security operations\ security data\ Email quarantine\ manage</li><li>Configuration\ Authorization\ read only </li><li>Configuration\System settings\ manage </li><li>Configuration\Security setting\ manage </li></ul>|
|Organization Management|<ul><li>Security operations\ security data basics\ read only</li><li>Security operations\ security data\ alerts\ manage </li><li>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </li><li>Security operations\ security data\response\ manage </li><li>Security operations\ security data\ Email advanced actions\ manage </li><li>Security operations\ security data\ Email quarantine\ manage </li><li>Configuration\ Authorization\ manage </li><li>Configuration\System settings\ manage </li><li>Configuration\Security setting\ manage </li></ul>|
|View-Only Recipients|<ul><li> Security operations\ security data basics\ read only</li><li>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </li></ul>|
|Preview|<ul><li>Security operations\ Email &amp; collaboration raw data\ User email content\ read</li></ul>|
|Search and Purge|<ul><li>Security operations\ security data\ Email advanced actions\ manage</li></ul>|
|View-Only Manage Alerts|<ul><li>Security operations\ security data basics\ read only|
|Manage Alerts|<ul><li>Security operations\ security data basics\ read only</li><li>Security operations\ security data\ alerts\ manage </li></ul>|
|View-only Audit Logs|<ul><li>Security operations\ security data basics\ read only</li></ul>|
|Audit Logs|<ul><li>Security operations\ security data basics\ read only</li></ul>|
|Quarantine|<ul><li>Security operations\ security data\ Email quarantine\ manage|
|Role Management|<ul><li>Configuration\ Authorization\ manage</li></ul>|

### Map Microsoft Defender for Identity permissions to the Microsoft 365 Defender RBAC permissions

| Defender for Identity permission| Unified RBAC permission|
|:-------|:-----|:-------|
|MDI Admin|<ul><li>Configuration\security setting \read</li><li> Configuration\ security setting \manage</li><li>Configuration\ system setting \read</li><li>Configuration\ system setting \manage</li><li>Security operations\security data\alerts\manage </li><li>Security operations\security data\read only </li><li>Configuration\authorization\manage Configuration\authorization\read</li></ul>|
|MDI User|<ul><li>Security operations\security data\read only </li><li>Configuration\ system setting \read</li><li>Configuration\ security setting \read</li><li>Security operations\security data\alerts\manage </li><li>Configuration\ security setting \manage</li></ul|
|<ul><li>MDI Viewer</li><li>Security operations\security data\read only</li><li>Configuration\ system setting \read</li><li>Configuration\ security setting \read</li></ul>|

>[!NOTE]
> Defender for Identity experiences will also adhere to permissions granted from portal.cloudapsecurity.com. Learn more [here](https://go.microsoft.com/fwlink/?linkid=2202729)*

### Azure Active Directory Global roles access

Users assigned with Azure AD global roles may also have access to the Microsoft 365 Defender portal.

Use this table to learn about the permissions assigned by default in the Microsoft 365 Defender RBAC to each global Azure Active Directory role.

| AAD role| Microsoft 365 Defender RBAC permissions - Defender for Endpoint scope | Microsoft 365 Defender RBAC permissions – Defender for Office 365 scope|
|:-------|:-----|:-------|
|Global Administrator|<ul><li>Security operations\security data basics\read only</li><li>Security posture\threat and vulnerability management\vulnerability management\read only</li><li>Security operations\security data\alerts\manage </li><li>Security operations\ security data\response\ manage </li><li>Security posture\threat and vulnerability management\exception handling\manage </li><li>Security posture\threat and vulnerability management\remediation handling\manage </li><li>Security posture\threat and vulnerability management\application handling\manage </li><li>Security operations\basic live response\manage </li><li>Security operations\advanced live response\manage </li><li>Configuration\security setting\manage </li><li>Configuration\system setting\manage </li><li>Configuration\manage security settings in Endpoint manager</li></ul>|<ul><li>Security operations\ security data basics\ read only</li><li>Security operations\ security data\ alerts\ manage  </li><li>Security operations\ security data\response\ manage </li><li>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read  </li><li>Security operations\ security data\ Email quarantine\ manage  </li><li>Security operations\ security data\ Email advanced actions\ manage p></li><li>Configuration\ Authorization\ manage </li><li>Configuration\System settings\ manage</li><li>Configuration\Security settings\ manage </li></ul>|
|Security Administrator|<ul><li>Same permissions as for the Global administrator</li></ul>|<ul><li>Security operations\ security data basics\ read only </li><li>Security operations\ security data\ alerts\ manage </li><li>Security operations\ security data\response\manage </li><li>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </li><li>Security operations\ security data\ Email quarantine\ manage </li><li>Configuration\ Authorization\ manage </li><li>Configuration\System settings\manage </li><li>Configuration\Security settings\ manage<li></ul>|
|Global Reader|<ul><li>Security operations\security data basics\read only</li><li>Security posture\threat and vulnerability management\vulnerability management\read only </li></ul>|<ul><li>Security operations\ security data basics\ read only </li><li>Security operations\ security data\response\ manage </li><li>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </li><li>Configuration\ Authorization\ read only</li><li>Configuration\System settings\ read only<li><li>Configuration\Security setting\ read only</li></ul>|
|Security Reader|<ul><li>Security operations\security data basics\read only</li><li>Security posture\threat and vulnerability management\vulnerability management\read only</li></ul>|<ul><li>Security operations\ security data basics\ read only</li><li>Security operations\ security data\response\ manage </li><li>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read</li><li>Configuration\System settings\ read only </li><li>Configuration\Security setting\ read only </li></ul>|
|Security Operator|<ul><li>Security operations\security data basics\read only</li><li>Security posture\threat and vulnerability management\vulnerability management\read only</li></ul>|<ul><li>Security operations\security data\alerts\manage </li><li>Security operations\ security data\response\ manage </li><li>Security posture\threat and vulnerability management\exception handling\manage </li><li>Security posture\threat and vulnerability management\remediation handling\manage </li><li>Security operations\basic live response\manage </li><li>Security operations\advanced live response\manage </li><li>Configuration\security setting\manage</li><li>Security operations\ security data basics\ read only</li><li>Security operations\ security data\ alerts\ manage </li><li>Security operations\ security data\response\ manage </li><li>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </li><li>Configuration\System settings\ manage</li><li>Configuration\Security settings\ manage</li></ul>|
|Compliance Administrator||<ul><li>Security operations\ security data basics\ read only</li><li>Security operations\ security data\ alerts\ manage </li></ul>|
|Compliance Data Administrator||<ul><li>Security operations\ security data basics\ read only</li><li>Security operations\ security data\ alerts\ manage </li></ul>|

By activating the Microsoft 365 Defender RBAC model, users with Security Reader and Global Reader roles will have access to Defender for Endpoint data.

## Next steps

- [Import existing RBAC roles](import-rbac-roles.md)
- [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)
