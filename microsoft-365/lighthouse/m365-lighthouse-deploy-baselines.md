---
title: "Deploy Microsoft 365 Lighthouse baselines"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
localization_priority: Normal
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to deploy Microsoft 365 Lighthouse baselines."
---

# Deploy Microsoft 365 Lighthouse baselines 

> [!NOTE]
> The features described in this article are in Preview, are subject to change, and are only available to partners who meet the [requirements](m365-lighthouse-requirements.md). If your organization does not have Microsoft 365 Lighthouse, see [Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md).

Microsoft 365 Lighthouse baselines let you deploy standard managed tenant configurations to secure tenant users, devices, and data. There are six default baseline configurations that come standard with Microsoft 365 Lighthouse:

- Require MFA for admins
- Require MFA for end users
- Block Legacy Authentication
- Set up Device Enrollment in Microsoft Endpoint Manager – Azure AD Join
- Configure Defender Anti-virus policy for Windows devices
- Configure Compliance Policy for Windows devices

## Before you begin

Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

## Learn more about the default baseline

Select **Baselines** from the left navigation pane to open the Baselines page. You'll see that the default baseline has already been added to the Default tenant group (all tenants). To view the default baseline configurations, select **View baseline** to open the Default baseline page. The configurations are listed as deployment steps. Select any of the deployment steps to view deployment details and user impact.

:::image type="content" source="../media/m365-lighthouse-deploy-baselines/default-baseline-page.png" alt-text="Screenshot of the Default baseline page.>.":::

## Deploy a baseline configuration  

1. In the left navigation page, select **Tenants** to view a list of your onboarded tenants.

2. Select the tenant you want to deploy the baseline configuration to.

3. Select the **Deployment plan** tab to see all the deployment steps from the baseline that have been added to the tenant's deployment plan.

4. Select a deployment step to open the deployment step page.

5. Select **Apply** to apply the selected deployment step to the tenant. If the deployment step indicates "This action requires a manual step", make sure to complete the manual step so the deployment step is applied correctly.

## Related content

[Overview of using baselines to deploy standard tenant configurations](m365-lighthouse-deploying-standard-tenant-configurations-overview.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)