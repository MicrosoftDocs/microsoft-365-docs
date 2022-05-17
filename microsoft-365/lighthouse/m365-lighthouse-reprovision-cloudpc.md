---
title: "Reprovision a Windows 365 Cloud PC in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to reprovision a Windows 365 Cloud PC in Microsoft 365 Lighthouse."
---


# Reprovision a Windows 365 Cloud PC in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse supports reprovisioning Cloud PCs that have a provisioning policy. You may need to reprovision a device for a new user or if the device isn't working properly. When a reprovision is triggered, the Cloud PC will be deleted and recreated as a new Cloud PC. All user data, applications, customizations, and the like will be deleted.

## Before you begin

You must be a Cloud PC Administrator in the partner tenant.

## Reprovision a Windows 365 Cloud PC

1. In the left navigation pane in Lighthouse, select **Windows 365**.

2. Select the **All Cloud PCs** tab.

3. From the **Filters** drop-down list, select license type.

4. From the filtered list, select a device.

5. In the device details pane, select **Reprovision**.

6. In the confirmation dialog, select **Reprovision**.

> [!NOTE]
> The current user of the Cloud PC will be signed out immediately and all user data removed.

## Check the device action status

1. In the left navigation pane in Lighthouse, select **Windows 365**.

2. Select the **All Cloud PCs** tab.

3. From the device list, select a device.

4. In the device details pane, select **Device action status** tab.

The tab displays any current actions queued for this device, including the action type, status, and timestamp.

## Related content

[Provisioning Overview](/windows-365/enterprise/provisioning) (article)\
[Edit provisioning policies](/windows-365/enterprise/edit-provisioning-policy) (article)
