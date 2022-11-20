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

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

## Map permissions to the Microsoft 365 Defender RBAC permissions

To assist you in verifying parity between individual RBAC role definitions and your new Microsoft 365 Defender RBAC roles, we’ve created a mapping table for each product. 

## Map Defender for Endpoint permissions to the Microsoft 365 Defender RBAC permissions

<table>
<thead>
<tr class="header">
<th><strong>Defender for Endpoint permission</strong> </th>
<th><strong>Microsoft 365 Defender RBAC permission</strong> </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>View data - Security operations </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data basics\read only</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>View data - Threat and vulnerability management </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security posture\threat and vulnerability management\vulnerability management\read only</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Alerts investigation </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data\alerts\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Active remediation actions - Security operations </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Active remediation actions - Threat and vulnerability management - Exception handling </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security posture\threat and vulnerability management\exception handling\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Active remediation actions - Threat and vulnerability management - Remediation handling </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security posture\threat and vulnerability management\remediation handling\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Active remediation actions - Threat and vulnerability management - Application handling </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security posture\threat and vulnerability management\application handling\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Threat and vulnerability management – Manage security baselines assessment profiles</p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security posture\threat and vulnerability management\Security baselines assessment\manage</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Live response capabilities - basic </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\basic live response\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Live response capabilities - advanced </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\advanced live response\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Manage security settings in the Security Center </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Configuration\security setting\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Manage portal system settings </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Configuration\system setting\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Manage endpoint security settings in Microsoft Endpoint Manager* </p>
</blockquote></td>
<td><blockquote>
<p>Not supported</p>
</blockquote></td>
</tr>
</tbody>
</table>

\* <u>Note</u>: for granting this permission, please access the Microsoft endpoint management portal

## Map Defender for Office 365 (Exchange Online Protection) roles to the Microsoft 365 Defender RBAC permissions

<table>
<thead>
<tr class="header">
<th><strong>Defender for Office (EOP) role group</strong> </th>
<th><strong>Microsoft 365 Defender RBAC permissions</strong> </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Security Reader </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ read only  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ read only </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Global Reader </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ read only </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ read only </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Security Admin </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email quarantine\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ Authorization\ read only </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Organization Management </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email advanced actions\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email quarantine\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ Authorization\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>View-Only Recipients </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Preview </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ User email content\ read </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Search and Purge </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data\ Email advanced actions\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>View-Only Manage Alerts </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Manage Alerts </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>View-only Audit Logs </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Audit Logs </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Quarantine </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data\ Email quarantine\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Role Management </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Configuration\ Authorization\ manage </p>
</blockquote></li>
</ul></td>
</tr>
</tbody>
</table>

## Map Microsoft Defender for Identity permissions to the Microsoft 365 Defender RBAC permissions

## 

<table>
<thead>
<tr class="header">
<th> <strong>Defender for Identity permission</strong>  </th>
<th><strong>Unified RBAC permission</strong>  </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>MDI Admin</p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Configuration\ security setting \read</p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ security setting \manage</p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ system setting \read</p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ system setting \manage</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\security data\alerts\manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\security data\read only  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\authorization\manage Configuration\authorization\read</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>MDI User</p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data\read only  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ system setting \read</p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ security setting \read</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\security data\alerts\manage  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ security setting \manage</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>MDI Viewer</p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data\read only  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ system setting \read</p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ security setting \read</p>
</blockquote></li>
</ul></td>
</tr>
</tbody>
</table>

*Note: Defender for Identity experiences will also adhere to permissions granted from portal.cloudapsecurity.com. Learn more [here](https://go.microsoft.com/fwlink/?linkid=2202729)*

## Azure Active Directory Global roles access 

Users assigned with Azure AD global roles might also have access to the Microsoft 365 Defender portal. 

Use this table to learn about the permissions assigned by default to each global Azure AD role. Only the Azure AD roles listed below grant access to any Defender for Endpoint, Defender for Office 365, Defender for Identity and Microsoft 365 Defender data or experiences.

<table>
<tbody>
<tr class="odd">
<td><strong>AAD role</strong> </td>
<td><p><strong>Microsoft 365 Defender RBAC permissions </strong> </p>
<p><strong>Defender for Endpoint scope </strong> </p></td>
<td><strong>Microsoft 365 Defender RBAC permissions – Defender for Office 365 scope</strong> </td>
</tr>
<tr class="even">
<td><blockquote>
<p>Global Administrator </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data basics\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\vulnerability management\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\security data\alerts\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\exception handling\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\remediation handling\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\application handling\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\basic live response\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\advanced live response\manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\security setting\manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\system setting\manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\manage security settings in Endpoint manager </p>
</blockquote></li>
</ul></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email quarantine\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email advanced actions\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ Authorization\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security settings\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Security Administrator </p>
</blockquote></td>
<td><blockquote>
<p>Same permissions as for the Global administrator  </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email quarantine\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ Authorization\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security settings\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Global Reader </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data basics\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\vulnerability management\read only</p>
</blockquote></li>
</ul></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ Authorization\ read only Configuration\System settings\ read only  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ read only </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Security Reader </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data basics\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\vulnerability management\read only</p>
</blockquote></li>
</ul></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ read only </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ read only </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Security Operator </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data basics\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\vulnerability management\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\security data\alerts\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\exception handling\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\remediation handling\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\basic live response\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\advanced live response\manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\security setting\manage </p>
</blockquote></li>
</ul></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security settings\ manage </p>
</blockquote></li>
</ul>
<p> </p></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Compliance Administrator </p>
</blockquote></td>
<td>- </td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Compliance Data Administrator </p>
</blockquote></td>
<td>- </td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
</ul></td>
</tr>
</tbody>
</table>

By activating the Microsoft 365 Defender RBAC model, users with Security Reader and Global Reader roles will have access to Defender for Endpoint data. 

## Next steps

- [Import existing RBAC roles](import-rbac-roles.md)
- [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)
