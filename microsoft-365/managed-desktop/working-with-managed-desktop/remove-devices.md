---
title: Remove devices
description: Remove devices from Microsoft Managed Desktop management
ms.service: m365-md
author: tiaraquan
f1.keywords:
- NOCSH
ms.author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
manager: dougeby
ms.topic: article
audience: Admin
---

# Remove devices

You can remove devices from Microsoft Managed Desktop management by using the Admin portal. This action is permanent, but you can register them with Microsoft Managed Desktop again by following the [manual registration steps](../get-started/manual-registration.md).

When you remove a device, all of the following occur:

- We remove the device from Autopilot.
- We remove the device from  all "Modern Workplace" device groups.
- We remove the device from the **Devices** blade in the Admin portal.

When you remove a device, you can also remove it from Azure Active Directory (Azure AD) and Microsoft Intune.
  
> [!CAUTION]
> Removing the objects related to a device from Azure AD and Microsoft Intune is permanent. If you remove the objects, you won't be able to view or manage the devices from the Intune and Azure portals. The devices won't be able to access their company's corporate resources. Company data might be deleted from them if the devices try to sign in after they're deleted.

**To remove a device:**

1. In [Microsoft Endpoint Manager](https://endpoint.microsoft.com/), select **Devices** in the left navigation pane.
2. In the **Microsoft Managed Desktop** section, select **Devices**.
3. In the **Microsoft Managed Desktop Devices workspace**, select the devices you want to delete.
4. Select **Device actions**, and then select **Delete Device** which opens a fly-in to remove the devices.
5. In the fly-in, review the selected devices and then select **Remove devices**. If you want to also remove the Azure AD and Intune objects at the same time, select the checkbox. Device removal can take a few minutes to complete.

> [!NOTE]
> You can't remove devices that are in a **pending** registration state.
