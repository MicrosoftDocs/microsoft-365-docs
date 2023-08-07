---
title: Create and manage roles for role-based access control
description: Create roles and define the permissions assigned to the role as part of the role-based access control implementation in the Microsoft 365 Defender
keywords: user roles, roles, access rbac
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Create and manage roles for role-based access control

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-roles-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

## Create roles and assign the role to an Azure Active Directory group

The following steps guide you on how to create roles in Microsoft 365 Defender. It assumes that you have already created Azure Active Directory user groups.

1. Log in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> using account with a Security administrator or Global administrator role assigned.

2. In the navigation pane, select **Settings** \> **Endpoints** \> **Roles** (under **Permissions**).

3. Select **Add item**.

4. Enter the role name, description, and permissions you'd like to assign to the role.

5. Select **Next** to assign the role to an Azure AD Security group.

6. Use the filter to select the Azure AD group that you'd like to add to this role to.

7. **Save and close**.

8. Apply the configuration settings.

> [!IMPORTANT]
> After creating roles, you'll need to create a device group and provide access to the device group by assigning it to a role that you just created.

> [!NOTE]
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

### Permission options

- **View data**
  - **Security operations** - View all security operations data in the portal
  - **Threat and vulnerability management** - View Defender Vulnerability Management data in the portal

- **Active remediation actions**
  - **Security operations** - Take response actions, approve or dismiss pending remediation actions, manage allowed/blocked lists for automation and indicators
  - **Threat and vulnerability management - Exception handling** - Create new exceptions and manage active exceptions
  - **Threat and vulnerability management - Remediation handling** - Submit new remediation requests, create tickets, and manage existing remediation activities
  - **Threat and vulnerability management - Application handling** - Apply immediate mitigation actions by blocking vulnerable applications, as part of the remediation activity and manage the blocked apps and perform unblock actions

- **Security baselines**
  - **Threat and vulnerability management – Manage security baselines assessment profiles** - Create and manage profiles so you can assess if your devices comply to security industry baselines.

    > [!NOTE]
    > For the Defender Vulnerability Management public preview trial this permission is not required. Users with "Threat and vulnerability management - View data" permissions can manage security baselines. However, when the trial ends and a license is purchased, this permission is required.

- **Alerts investigation** - Manage alerts, initiate automated investigations, run scans, collect investigation packages, manage device tags, and download only portable executable (PE) files

- **Manage portal system settings** - Configure storage settings, SIEM and threat intel API settings (applies globally), advanced settings, automated file uploads, roles and device groups

    > [!NOTE]
    > This setting is only available in the Microsoft Defender for Endpoint administrator (default) role.

- **Manage security settings in Security Center** - Configure alert suppression settings, manage folder exclusions for automation, onboard and offboard devices, manage email notifications, manage evaluation lab, and manage allowed/blocked lists for indicators

- **Live response capabilities**
  - **Basic** commands:
    - Start a live-response session
    - Perform read-only live-response commands on remote device (excluding file copy and execution)
    - Download a file from the remote device via live response
  - **Advanced** commands:
    - Download PE and non-PE files from the file page
    - Upload a file to the remote device
    - View a script from the files library
    - Execute a script on the remote device from the files library

For more information on the available commands, see [Investigate devices using Live response](live-response.md).

## Edit roles

1. Log in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> using account with Security administrator or Global administrator role assigned.

2. In the navigation pane, select **Settings** \> **Endpoints** \> **Roles** (under **Permissions**).

3. Select the role you'd like to edit.

4. Click **Edit**.

5. Modify the details or the groups that are assigned to the role.

6. Click **Save and close**.

## Delete roles

1. Log in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> using account with Security administrator or Global administrator role assigned.

2. In the navigation pane, select **Settings** \> **Endpoints** \> **Roles** (under **Permissions**).

3. Select the role you'd like to delete.

4. Click the drop-down button and select **Delete role**.

## Related topic

- [User basic permissions to access the portal](basic-permissions.md)
- [Create and manage device groups](machine-groups.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
