---
title: Compare permissions with Microsoft 365 Defender role-based access control (RBAC)
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

# Compare permissions with Microsoft 365 Defender role-based access control (RBAC)

To assist you in verifying parity between individual RBAC role definitions and your new Microsoft 365 Defender RBAC roles, we’ve created a mapping table for each product.

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

## Map Defender for Endpoint permissions to the Microsoft 365 Defender RBAC permissions

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

## Map Defender for Office 365 (Exchange Online Protection) roles to the Microsoft 365 Defender RBAC permissions

| Defender for Office (EOP) role group| Microsoft 365 Defender RBAC permission|
|:-------|:-----|:-------|
|Security Reader| Security operations\ security data basics\ read only<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read<p>Security operations\ security data\response\ manage<p>Configuration\System settings\ read only <p> Configuration\Security setting\ read only|
|Global Reader|Security operations\ security data basics\ read only</p><p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read<p>Security operations\ security data\response\ manage</p>Configuration\System settings\ read only</p><p>Configuration\Security setting\ read only</p>
|Security Admin| Security operations\ security data basics\ read only</p><p>Security operations\ security data\ alerts\ manage</p><p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p><p>Security operations\ security data\response\ manage </p><p>Security operations\ security data\ Email quarantine\ manage </p><p>Configuration\ Authorization\ read only </p><p>Configuration\System settings\ manage </p><p>Configuration\Security setting\ manage </p>
|Organization Management|<p>Security operations\ security data basics\ read only</p><p>Security operations\ security data\ alerts\ manage </p><p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p><p>Security operations\ security data\response\ manage </p><p>Security operations\ security data\ Email advanced actions\ manage </p><p>Security operations\ security data\ Email quarantine\ manage </p><p>Configuration\ Authorization\ manage </p><p>Configuration\System settings\ manage </p><p>Configuration\Security setting\ manage </p>|
|View-Only Recipients|<p>Security operations\ security data basics\ read only</p><p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>|
|Preview|<p>Security operations\ Email &amp; collaboration raw data\ User email content\ read </p>|
|Search and Purge|<p>Security operations\ security data\ Email advanced actions\ manage </p>|
|View-Only Manage Alerts|Security operations\ security data basics\ read only|
|Manage Alerts|<p>Security operations\ security data basics\ read only</p><p>Security operations\ security data\ alerts\ manage </p>|
|View-only Audit Logs|<p>Security operations\ security data basics\ read only</p>|
|Audit Logs|<p>Security operations\ security data basics\ read only</p>|
|Quarantine|<p>Security operations\ security data\ Email quarantine\ manage|
|Role Management|Configuration\ Authorization\ manage|

## Map Microsoft Defender for Identity permissions to the Microsoft 365 Defender RBAC permissions

| Defender for Identity permission| Unified RBAC permission|
|:-------|:-----|:-------|
|MDI Admin|<p>Configuration\ security setting \read</p><p>Configuration\ security setting \manage</p><p>Configuration\ system setting \read</p><p>Configuration\ system setting \manage</p>
<p>Security operations\security data\alerts\manage </p><p>Security operations\security data\read only </p><p>Configuration\authorization\manage Configuration\authorization\read</p>
|MDI User|<p>Security operations\security data\read only </p><p>Configuration\ system setting \read</p><p>Configuration\ security setting \read</p><p>Security operations\security data\alerts\manage </p><p>Configuration\ security setting \manage</p><p>MDI Viewer</p><p>Security operations\security data\read only</p>
<p>Configuration\ system setting \read</p><p>Configuration\ security setting \read</p>

>[!NOTE]
> Defender for Identity experiences will also adhere to permissions granted from portal.cloudapsecurity.com. Learn more [here](https://go.microsoft.com/fwlink/?linkid=2202729)*

## Azure Active Directory Global roles access

Users assigned with Azure AD global roles might also have access to the Microsoft 365 Defender portal.

Use this table to learn about the permissions assigned by default to each global Azure AD role. Only the Azure AD roles listed below grant access to any Defender for Endpoint, Defender for Office 365, Defender for Identity and Microsoft 365 Defender data or experiences.

| AAD role| Microsoft 365 Defender RBAC permissions - Defender for Endpoint scope | Microsoft 365 Defender RBAC permissions – Defender for Office 365 scope|
|:-------|:-----|:-------|
|Global Administrator|<p>Security operations\security data basics\read only</p><p>Security posture\threat and vulnerability management\vulnerability management\read only</p><p>Security operations\security data\alerts\manage </p><p>Security operations\ security data\response\ manage </p><p>Security posture\threat and vulnerability management\exception handling\manage </p><p>Security posture\threat and vulnerability management\remediation handling\manage </p><p>Security posture\threat and vulnerability management\application handling\manage </p><p>Security operations\basic live response\manage </p><p>Security operations\advanced live response\manage </p><p>Configuration\security setting\manage </p><p>Configuration\system setting\manage </p><p>Configuration\manage security settings in Endpoint manager </p>|<p>Security operations\ security data basics\ read only</p><p>Security operations\ security data\ alerts\ manage  </p><p>Security operations\ security data\response\ manage  </p><p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read  </p><p>Security operations\ security data\ Email quarantine\ manage  </p><p>Security operations\ security data\ Email advanced actions\ manage /p><p>Configuration\ Authorization\ manage </p><p>Configuration\System settings\ manage</p>
<p>Configuration\Security settings\ manage </p>
|Security Administrator|<p>Same permissions as for the Global administrator </p>|<p>Security operations\ security data basics\ read only  </p><p>Security operations\ security data\ alerts\ manage </p><p>Security operations\ security data\response\ manage  </p><p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p><p>Security operations\ security data\ Email quarantine\ manage  </p><p>Configuration\ Authorization\ manage </p><p>Configuration\System settings\ manage </p><p>Configuration\Security settings\ manage </p>
|Global Reader|<p>Security operations\security data basics\read only</p><p>Security posture\threat and vulnerability management\vulnerability management\read only</p>|
<p>Security operations\ security data basics\ read only </p><p>Security operations\ security data\response\ manage  </p><p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p><p>Configuration\ Authorization\ read only Configuration\System settings\ read only  </p><p>Configuration\Security setting\ read only </p>
|Security Reader|Security operations\security data basics\read only</p><p>Security posture\threat and vulnerability management\vulnerability management\read only</p>|<p>Security operations\ security data basics\ read only</p><p>Security operations\ security data\response\ manage </p><p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read  </p>
<p>Configuration\System settings\ read only </p>Configuration\Security setting\ read only </p>|
|Security Operator|<p>Security operations\security data basics\read only</p><p>Security posture\threat and vulnerability management\vulnerability management\read only</p><p>Security operations\security data\alerts\manage </p><p>Security operations\ security data\response\ manage </p><p>Security posture\threat and vulnerability management\exception handling\manage </p><p>Security posture\threat and vulnerability management\remediation handling\manage </p><p>Security operations\basic live response\manage </p><p>Security operations\advanced live response\manage </p><p>Configuration\security setting\manage </p>|<p>Security operations\ security data basics\ read only</p><p>Security operations\ security data\ alerts\ manage </p>
<p>Security operations\ security data\response\ manage </p><p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p><p>Configuration\System settings\ manage </
<p>Configuration\Security settings\ manage </p>|
|Compliance Administrator||<p>Security operations\ security data basics\ read only</p>|<p>Security operations\ security data\ alerts\ manage </p>|
|Compliance Data Administrator||<p>Security operations\ security data basics\ read only</p><p>Security operations\ security data\ alerts\ manage </p>|

By activating the Microsoft 365 Defender RBAC model, users with Security Reader and Global Reader roles will have access to Defender for Endpoint data.

## Next steps

- [Import existing RBAC roles](import-rbac-roles.md)
- [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)
