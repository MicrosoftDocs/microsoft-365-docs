---
title: Activate Microsoft 365 Defender role-based access control (RBAC)
description: Activate Microsoft 365 Defender Security role-based access control (RBAC)
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

# Activate Microsoft 365 Defender role-based access control (RBAC)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)

[!include[Prerelease information](../../includes/prerelease.md)]

For the Microsoft 365 Defender security portal to start enforcing the permissions and assignments configured in your new [custom roles](create-custom-rbac-roles.md) or [imported roles](import-rbac-roles.md) you must activate the Microsoft 365 Defender RBAC model for some or all of your workloads.

## Activate Microsoft 365 Defender RBAC

The following steps guide you on how to activate the Microsoft 365 Defender RBAC model. You can activate your workloads in the following ways:

1. [Activate in the permissions and roles page](#activate-from-the-permissions-and-roles-page)
2. [Activate in Microsoft 365 Defender settings](#activate-in-microsoft-365-defender-settings)

>[!Important]
>You must be a Global Administrator or Security Administrator in Azure Active Directory or have all the **Authorization** permissions assigned in Microsoft 365 Defender RBAC to perform this task. For more information on permissions, see [Permission pre-requisites](../defender/manage-rbac.md#permissions-pre-requisites).

### Activate from the Permissions and roles page

Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com).In the navigation pane, select **Permissions** and select **Roles** under Microsoft 365 Defender to get to the Permissions and roles page.

You can activate your workloads in two ways from the Permissions and roles page:

    :::image type="content" source="../../media/defender/m365-defender-rbac-activate-workloads1.png" alt-text="Screenshot of the activate workloads page" lightbox="../../media/defender/m365-defender-rbac-activate-workloads1.png":::

1. **Activate workloads**
    - Select **Activate workloads** on the banner above the list of roles.
    - This will bring you directly to the **Activate workloads** screen.
    - Select the workloads you want to activate.
    - Select **Activate** on the confirmation message.

    >[!Note]
    > The **Activate workloads** button is only available when there are existing roles in the roles list.

2. **Workload settings**.
    - Select **Workload settings**.
    - This brings you to the Microsoft 365 Defender **Permission and roles** page.
    - Select the workloads you want to activate.
    - Select **Activate** on the confirmation message.

### Activate in Microsoft 365 Defender settings

Follow these steps to activate your workloads directly in Microsoft 365 Defender settings:

1. Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com).
2. In the navigation pane, select **Settings**.
3. Select **Microsoft 365 Defender**.
4. Select **Permissions and roles**. This brings you to the **Activate workloads** page.
5. Select the workloads you want to activate.
6. Select **Activate** on the confirmation message.

>[!Note]
> The Microsoft 365 Defender RBAC model only impacts the Microsoft 365 Defender security portal. It does not impact the [Office 365 Security & Compliance center](https://protection.office.com/homepage), or the [Microsoft Compliance center](https://compliance.microsoft.com/homepage).

## Deactivate Microsoft 365 Defender RBAC

You can deactivate Microsoft 365 Defender RBAC and revert to the individual RBAC models from Defender for Endpoint, Defender for Identity, and Defender for Office 365 (Exchange Online Protection).

To Deactivate the workloads, repeat the steps above and select the workloads you want to deactivate. The status will be set to **Not Active**.

If you deactivate a workload, the roles created and edited within Microsoft 365 Defender RBAC won't be effective and you'll return to using the previous permissions model. This will remove any access that users assigned these roles have.

## Next steps

- [Edit or delete roles](edit-delete-rbac-roles.md)
