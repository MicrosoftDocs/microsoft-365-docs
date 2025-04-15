---
title: "Compare device compliance policy settings in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: prpath
ms.date: 10/01/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to compare device compliance policy settings."
---

# Compare device compliance policy settings in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse lets you view compliance policies across your tenants in a single view. You can drive security and standardization across your tenants by comparing policies. You can filter views to see settings that have been configured (versus settings that were left not configured), settings that differ in their configurations, or settings that match. You can also search for specific settings to see how they compare across policies.

## Before you begin

Make sure devices have a Microsoft Intune license and are enrolled in Microsoft Intune.

## Compare policy settings

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Devices** > **Device compliance**.

2. Select the **Policies** tab.

3. From the **OS** filter, select an operating system or platform.

   > [!NOTE]
   > You can only compare policies with the same operating system or platform.

4. From the filtered list, select up to three policies that you want to compare.

5. Select **Compare**.

   You can filter the results to see **Settings that differ**, **Settings that match**, or **Configured settings**.

## Configure policy settings

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Devices** > **Device compliance**.

2. Select the **Policies** tab.

3. From the list of policies, select the policy that you want to configure.

4. In the policy details pane, select **View this policy in Microsoft Intune admin center**.

5. In the Microsoft Intune admin center, configure the policy settings as needed.

## Next steps

As you make policy adjustments, make sure you assess your changes against your current baseline settings. For more information, see [Overview of using baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md).

## Related content

[What is device enrollment in Intune?](/mem/intune/enrollment/device-enrollment) (article)  
[Use compliance policies to set rules for devices you manage with Intune](/mem/intune/protect/device-compliance-get-started) (article)  
[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)