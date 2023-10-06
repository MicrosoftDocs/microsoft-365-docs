---
title: Details of custom permissions in Microsoft 365 Defender Unified role-based access control (RBAC)
description: Learn about the custom permissions available in Microsoft 365 Defender Security role-based access control (RBAC)
ms.service: microsoft-365-security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier3
ms.custom:
ms.topic: how-to
ms.subservice: mde
ms.date: 08/03/2023
ms.reviewer:
search.appverid: met150
---

# Permissions in Microsoft 365 Defender Unified role-based access control (RBAC)

In Microsoft 365 Defender Unified role-based access control (RBAC) you can select permissions from each permission group to customize a role.

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)
- [Microsoft Defender Vulnerability Management](https://go.microsoft.com/fwlink/?linkid=2229011)

[!include[Prerelease information](../../includes/prerelease.md)]

## Microsoft 365 Defender Unified RBAC permission details

The following table lists the permissions available to configure for your users based on the tasks they need to do:

> [!NOTE]
> Unless otherwise stated, all permissions are applicable to all supported workloads and will be applied to the data scope selected during the data source and assignment stage.

### Security operations – Security data

Permissions for managing day-to-day operations and responding to incidents and advisories.

|Permission name|Level|Description|
|---|---|---|
|Security data basic|Read|View info about incidents, alerts, investigations, advanced hunting, devices, submissions, evaluation lab, and reports.|
|Alerts|Manage|Manage alerts, start automated investigations, run scans, collect investigation packages, and manage device tags.|
|Response|Manage|Take response actions on a device, approve or dismiss pending remediation actions, and manage blocked and allowed lists for automation.|
|Basic live response|Manage|Initiate a live response session, download files, and perform read-only actions on devices remotely.|
|Advanced live response|Manage|Create live response sessions and perform advanced actions, including uploading files and running scripts on devices remotely.|
|File collection|Manage|Collect or download relevant files for analysis, including executable files.|
|Email quarantine|Manage|View and release email from quarantine.|
|Email advanced actions|Manage|Move or Delete email to the junk email folder, deleted items or inbox, including soft and hard delete of email.|

### Security operations – Raw data (Email & collaboration)

|Permission name|Level|Description|
|---|---|---|---|
|Email message headers|Read|View email and collaboration data in a hunting scenarios, including advanced hunting, threat explorer, campaigns, and email entity.|
|Email content|Read|View and download email content and attachments.|

### Security posture – Posture management

Permissions for managing the organization's security posture and performing vulnerability management.

|Permission name|Level|Description|
|---|---|---|
|Vulnerability management|Read|View Defender Vulnerability Management data for the following: software and software inventory, weaknesses, missing KBs, advanced hunting, security baselines assessment, and devices.|
|Exception handling|Manage|Create security recommendation exceptions and manage active exceptions in Defender Vulnerability Management.|
|Remediation handling|Manage|Create remediation tickets, submit new requests, and manage remediation activities in Defender Vulnerability Management.|
|Application handling|Manage|Manage vulnerable applications and software, including blocking and unblocking them in Defender Vulnerability Management.|
|Security baseline assessment|Manage|Create and manage profiles so you can assess if your devices comply to security industry baselines.|
|Secure Score|Read / Manage|Manage permissions to Secure Score data including which users have access to the data and the products for which they will see Secure Score data.|

### Authorization and settings

Permissions to manages the security and system settings and to create and assign roles.

|Permission name|Level|Description|
|---|---|---|
|Authorization|Read / Manage|View or manage device groups, and custom and built-in roles.|
|Core security settings|Read / Manage|View or manage core security settings for the Microsoft 365 Defender portal.|
|Detection tuning| Manage |Manage tasks related to detections in the Microsoft 365 Defender portal including Custom detections, Alerts Tuning and Threat Indicators of compromise.|
|System settings|Read / Manage|View or manage general systems settings for the Microsoft 365 Defender portal.|

> [!NOTE]
> Scenarios that adhere to Exchange Online roles are not impacted by this new model and will still be managed by Exchange Online. The Microsoft 365 Defender Unified RBAC model will initially be available for organizations with Microsoft Defender for Office Plan 2 licenses.

## Next steps

- [Create custom roles](create-custom-rbac-roles.md)
- [Activate Microsoft 365 Defender Unified RBAC](activate-defender-rbac.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
