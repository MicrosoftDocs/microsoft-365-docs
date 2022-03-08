---
title: "Deploy Microsoft 365 Lighthouse baselines"
f1.keywords: CSH
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to deploy Microsoft 365 Lighthouse baselines."
---

# Deploy Microsoft 365 Lighthouse baselines 

Microsoft 365 Lighthouse baselines let you deploy standard managed-tenant configurations to secure users, devices, and data within customer tenants. There are seven default baseline configurations that come standard with Lighthouse:

- Require MFA for admins
- Require MFA for end-users
- Block Legacy Authentication
- Set up Device Enrollment
- Configure Microsoft Defender Antivirus for Windows 10 and later
- Configure a device compliance policy for Windows 10 and later
- Configure Microsoft Defender Firewall

## Before you begin

Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).


## Deploy a baseline configuration  

1. In the left navigation pane in Lighthouse, select **Tenants** to view a list of your onboarded tenants.

2. Select the tenant you want to deploy the baseline configuration to.

3. Select the **Deployment Plans** tab to see all the deployment steps from the baseline that have been added to the tenant's deployment plan.

4. Select a deployment step to open the deployment step page.

5. Select **Review and Apply** to apply the selected deployment step to the tenant. If the deployment step indicates "This action requires a manual step", make sure to complete the manual step so the deployment step is applied correctly.

## Related content

[Overview of using baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Microsoft 365 lighthouse Tenants page overview](m365-lighthouse-tenants-page-overview.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article) 