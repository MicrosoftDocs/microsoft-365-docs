---
title: Details of custom permissions in Microsoft 365 Defender role-based access control (RBAC)
description: Learn about the custom permissions available in Microsoft 365 Defender Security role-based access control (RBAC)
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
ms.topic: how-to
ms.subservice: mde
ms.date: 11/10/2022
ms.reviewer:
search.appverid: met150
---

# Permissions in Microsoft 365 Defender role-based access control (RBAC)

In Microsoft 365 Defender role-based access control (RBAC) you can select permissions from each permission group to customize a role.

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)

[!include[Prerelease information](../../includes/prerelease.md)]

## Microsoft 365 Defender RBAC permission details

The following table lists the permissions available to configure for your users based on the tasks they need to do:

> [!NOTE]
> Unless otherwise stated, all permissions are applicable to all supported workloads and will be applied to the data scope selected during the data source and assignment stage.

### Security operations – Security data

Permissions for managing day-to-day operations and responding to incidents and advisories.

|Permission name|Level|Description|
|---|---|---|
|Security data basic|Read|View info about incidents, alerts, investigations, advanced hunting (MDE), devices, submissions, evaluation lab, and reports.|
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

Permissions for managing the organization's security posture and performing threat and vulnerability management.

|Permission name|Level|Description|
|---|---|---|
|Vulnerability management|Read|View threat and vulnerability management data for the following: software and software inventory, weaknesses, missing KBs, advanced hunting, security baselines assessment, and devices.|
|Exception handling|Manage|Create security recommendation exceptions and manage active exceptions in threat and vulnerability management.|
|Remediation handling|Manage|Create remediation tickets, submit new requests, and manage remediation activities in threat and vulnerability management.|
|Application handling|Manage|Manage vulnerable applications and software, including blocking and unblocking them in threat and vulnerability management.|
|Security baseline assessment|Manage|Create and manage profiles so you can assess if your devices comply to security industry baselines.|

### Authorization and settings

Permissions to manages the security and system settings and to create and assign roles.

|Permission name|Level|Description|
|---|---|---|
|Authorization|Read / Manage|View or manage device groups, and custom and built-in roles.|
|Security settings|Read / Manage|View or manage general security settings for the Microsoft 365 Defender portal.|
|System settings|Read / Manage|View or manage general systems settings for the Microsoft 365 Defender portal.|

> [!NOTE]
> Scenarios that adhere to Exchange Online roles are not impacted by this new model and will still be managed by Exchange Online. The Microsoft 365 Defender RBAC model will initially be available for organizations with Microsoft Defender for Office Plan 2 licenses.

## Next steps

- [Create custom roles](create-custom-rbac-roles.md)
- [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
