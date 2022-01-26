---
title: "Compare device compliance policy settings"
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
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to compare device compliance policy settings."
---


# Compare device compliance policy settings

> [!NOTE]
> The features described in this article are in Preview, are subject to change, and are only available to partners who meet the [requirements](m365-lighthouse-requirements.md). If your organization does not have Microsoft 365 Lighthouse, see [Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md).

Microsoft 365 Lighthouse lets you view compliance policies across your tenants in a single view. You can drive security and standardization across your tenants by comparing policies. You can filter views to see settings that have been configured (versus settings that were left not configured), settings that differ in their configurations, or just the settings that match. You can also search for specific settings you’re interested in and see how that compares among the policies.

## Before you begin

- Devices must have an Intune license and be enrolled in Microsoft Endpoint Manager (MEM).

## Compare policy settings

1. In the left navigation pane in Lighthouse, select **Devices**.

2. Select the **Policies** tab.

3. From the **Filters** drop-down list, select an operating system/platform.

   > [!NOTE]
   > You can only compare policies with the same operating system/platform.

4. From the filtered list, select up to three policies you want to compare.

5. Select **Compare**.

You can filter the results to see **Settings that differ**, **Settings that match**, or **Configured settings**.

## Configure a policy setting

1. In the left navigation pane in Lighthouse, select **Devices**.

2. Select the **Policies** tab.

3. From the list, select a policy name.

4. From the Policy details pane, select **View this policy in Microsoft Endpoint Manager**.

5. In MEM, edit the policy settings as needed.

## Next steps

As you make policy adjustments, make sure you assess your changes against your current baseline settings. For more information, see [Overview of using baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md).

## Related content

[What is device enrollment in Intune?](/mem/intune/enrollment/device-enrollment) (article)  
[Use compliance policies to set rules for devices you manage with Intune](/mem/intune/protect/device-compliance-get-started) (article)  
[Overview of using baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)
