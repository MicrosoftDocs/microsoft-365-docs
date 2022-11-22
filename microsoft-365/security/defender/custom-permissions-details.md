---
title: Details of custom permissions in Microsoft 365 Defender role-based access control (RBAC) 
description: Manage permissions and access to Microsoft 365 Defender Security portal experiences using role-based access control (RBAC)
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

### Security operations – Security data

Permissions for managing day-to-day operations and responding to incidents and advisories.

| **Permission name**    | **Description**                                                                                                                         | **Level** |
|------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|-----------|
| Security data basic    | View info about incidents, alerts, investigations, advanced hunting (MDE), devices, submissions, evaluation lab, and reports.           | Read      |
| Alerts                 | Manage alerts, start automated investigations, run scans, collect investigation packages, and manage device tags.                       | Manage    |
| Response               | Take response actions on a device, approve or dismiss pending remediation actions, and manage blocked and allowed lists for automation. | Manage    |
| Basic live response    | Initiate a live response session, download files, and perform read-only actions on devices remotely.                                    | Manage    |
| Advanced live response | Create live response sessions and perform advanced actions, including uploading files and running scripts on devices remotely.          | Manage    |
| Email quarantine       | View and release email from quarantine.                                                                                                 | Manage    |
| Email advanced actions | Move or Delete email to the junk email folder, deleted items or inbox, including soft and hard delete of email.                         | Manage    |

### Security operations – Raw data (Email & collaboration)

| **Permission name**   | **Description**                                                                                                                     | **Level** |
|-----------------------|-------------------------------------------------------------------------------------------------------------------------------------|-----------|
| Email message headers | View email and collaboration data in a hunting scenarios, including advanced hunting, threat explorer, campaigns, and email entity. | Read      |
| Email content         | View and download email content and attachments.                                                                                    | Read      |

### Security posture – Posture management

Permissions for managing the organization's security posture and performing threat and vulnerability management.

| **Permission name**   | **Description**                                                                                                                     | **Level** |
|-----------------------|-------------------------------------------------------------------------------------------------------------------------------------|-----------|
| Vulnerability management     | View threat and vulnerability management data for the following: software and software inventory, weaknesses, missing KBs, advanced hunting, security baselines assessment, and devices. | Read      |
| Exception handling           | Create security recommendation exceptions and manage active exceptions in threat and vulnerability management.                                                                           | Manage    |
| Remediation handling         | Create remediation tickets, submit new requests, and manage remediation activities in threat and vulnerability management.                                                               | Manage    |
| Application handling         | Manage vulnerable applications and software, including blocking and unblocking them in threat and vulnerability management.                                                              | Manage    |
| Security baseline assessment | Create and manage profiles so you can assess if your devices comply to security industry baselines.                                                                                      | Manage    |

### Configuration

Permissions to manages the security and system settings and to create and assign roles.

| **Permission name** | **Description**                                                                 | **Level**     |
|---------------------|---------------------------------------------------------------------------------|---------------|
| Authorization       | View or manage device groups, and custom and built-in roles.                    | Read / Manage |
| Security settings   | View or manage general security settings for the Microsoft 365 Defender portal. | Read / Manage |
| System settings     | View or manage general systems settings for the Microsoft 365 Defender portal.  | Read / Manage |

## Next steps

- [Create custom roles](create-custom-rbac-roles.md)
- [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)
