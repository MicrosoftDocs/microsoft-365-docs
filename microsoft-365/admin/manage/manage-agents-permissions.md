---
title: "Understanding permissions for agents in the Microsoft 365 admin center"
f1.keywords:
- NOCSH
ms.author: smbhardwaj
author: smritib17
manager: dansimp
ms.date: 09/26/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- m365copilot
- magic-ai-copilot
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn about the common permissions available for agents in Microsoft 365 admin center."
---


# Understanding Permissions

In the Microsoft Admin Portal, when granting permissions to agents, there are two types of permissions to consider:

- **Application Permissions**
- **Delegated Permissions**

Each permission type allows agents to perform different actions on behalf of users, depending on the scope of the access granted. This document explains these two types of permissions and provides an overview of the common permissions available.

---

## Application Permissions

**Application Permissions** allow the agent to access data and perform actions **without requiring a user to be signed in**. These permissions let agents do tasks without needing a user to be signed in, like reading directory data, managing teams, or sending messages.

### Key features of Application Permissions

- **No user context required:** The agent can operate without an active user session.

- **Wide-reaching capabilities:** Agents with application permissions can act at the organizational level, allowing access to a large range of data.

- **Admin consent required:** Admin consent is typically required for granting application permissions.

### Common Application Permissions

| Permission                       | Details                                      |
|----------------------------------|----------------------------------------------|
| **Group.Read.All**               | Read all groups in the organization.        |
| **TeamsActivity.Send**           | Send a teamwork activity to any user.      |
| **RoleManagement.Read.Directory**| Read all directory RBAC settings.          |
| **User.Read.All**                | Read all users' full profiles.              |
| **Team.ReadBasic.All**           | Get a list of all teams in the organization. |

---

## Delegated Permissions

**Delegated Permissions** allow the agent to act on behalf of a user **when the user is signed in**. These permissions provide access to user-specific data and allow agents to perform actions in the context of a particular user.

Delegated permissions are typically used for applications where the agent needs to interact directly with the user's data or take actions on their behalf.

### Key features of Delegated Permissions

- **User context required:** The agent performs actions with the signed-in user's permission.

- **Granular access:** These permissions are typically more restricted, limiting access to only the user's data.

- **User consent may be required:** Depending on the permissions, users may need to grant consent for the application to act on their behalf.

### Common Delegated Permissions

| Permission                       | Details                                      |
|----------------------------------|----------------------------------------------|
| **User.ReadBasic.All**           | Read all users' basic profiles.             |
| **TeamsActivity.Send**           | Send a teamwork activity to any user.      |
| **RoleManagement.Read.Directory**| Read all directory RBAC settings.          |
| **User.Read.All**                | Read all users' full profiles.              |
| **Team.ReadBasic.All**           | Get a list of all teams.                    |

---

## Where can admins see all permissions of an agent?

You can find the details of all types of permissions in the **Permissions** tab on the agent details page.

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com).
2. In the left navigation pane, select **Copilot** > **Agents**.
3. Select an agent from the list to open the agent details page.
4. Select the **Permissions** tab to view all the permissions granted to the agent.

    :::image type="content" source="../../media/manage-agents-permissions/agent-permissions.png" alt-text="Screenshot showing the Permissions tab on the agent details page in the Microsoft 365 admin center." lightbox="../../media/manage-agents-permissions/agent-permissions.png":::