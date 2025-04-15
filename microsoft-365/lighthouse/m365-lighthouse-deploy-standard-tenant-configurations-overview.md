---
title: "Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: jatingupta
ms.date: 02/14/2024
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-manage
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about using baselines to deploy standard tenant configurations."
---

# Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations

Microsoft 365 Lighthouse baselines provide a repeatable and scalable way for you to manage Microsoft 365 security settings across multiple customer tenants. Baselines provide standard tenant configurations that deploy core security policies and compliance standards that keep your tenants' users, devices, and data secure and healthy.

To view the Microsoft 365 Lighthouse default baseline that applies to all tenants, select **Deployment** > **Baselines** in the left navigation pane in [Lighthouse](https://lighthouse.microsoft.com).

## Watch: Deploy baselines

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=2460eb16-7ca6-4956-ae2a-2dadceac7eb1]

Check out the other [Microsoft 365 Lighthouse videos](https://www.youtube.com/playlist?list=PLnWjfDdQkUQSCbV-ftVD311_fZxghB22C) on our YouTube channel.

## Microsoft 365 Lighthouse default baseline

The Microsoft 365 Lighthouse default baseline is designed to ensure all managed tenants are healthy and secure. To view the deployment tasks included in the default baseline, select **Default baseline** from the list. Select any of the deployment tasks to view additional details about the task and the associated user impact.

:::image type="content" source="../media/m365-lighthouse-deploy-baselines/default-baseline-page.png" alt-text="Screenshot of the Default baseline page." lightbox="../media/m365-lighthouse-deploy-baselines/default-baseline-page.png":::

### Default baseline categories and deployment task descriptions

|Default baseline category|Description of deployment tasks in the category|
|---|---|
|Identity protection|Tasks within this category standardize configurations to help protect a customer's identity and apply best practices to help manage customer identities.|
|Email and apps protection|Tasks within this category standardize the configuration of email standards and productivity applications to help secure the applications. The tasks also apply best-practice recommendations to ensure customers are protected from malicious content within the applications.|
|Endpoint enrollment|Tasks within this category ensure all eligible devices in a customer's tenant are properly enrolled, appropriately managed, and are using a standardized installation of Microsoft 365 applications.|
|Endpoint protection|Tasks within this category build upon tasks in the Endpoint enrollment category by configuring the appropriate security standards and applying best practices for day-to-day device management.|
|Data protection|Tasks within this category apply best-practice recommendations for protecting a customer tenant from data loss and accidental leakage of sensitive data in productivity applications.|
|End-user experience|Tasks within this category help configure training to assist with end-user education and onboarding. The tasks also standardize branding across customer tenants for a more seamless experience.|

## Related content

[Review a deployment plan](m365-lighthouse-review-deployment-plan.md) (article)\
[Overview of deployment tasks](m365-lighthouse-overview-deployment-task.md) (article)\
[Common Conditional Access policies](/azure/active-directory/conditional-access/concept-conditional-access-policy-common) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
