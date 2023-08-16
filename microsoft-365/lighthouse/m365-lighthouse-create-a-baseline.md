---
title: "Create a baseline in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: shcallaw, kywirpel
ms.date: 08/16/2023
audience: Admin
ms.topic: article
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to create a custom baseline."
---

# Create baselines in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse empowers you to create your own baselines to deploy to customer tenants. Create your own baselines to accommodate customers with varying degrees of tenant maturity, customers from different industries, customers that have subscribed to different managed services from your company, or customers with varying licensing models.

> [!NOTE]
> Some features get rolled out at different speeds to our customers. If you aren't seeing a feature yet, you should see it soon.
>
> To see which new features are currently available in your partner tenant, go to the **Home** page of Microsoft 365 Lighthouse, and then either select the **What's new** link in the upper-right corner of the page or select **What's new** on the **What's new & learning resources** card.

## Before you begin

Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

Additionally, each partner tenant user must be a Microsoft 365 Lighthouse admin.

## Create a baseline

There are three ways to create a baseline in Lighthouse. You can clone an existing baseline, import a baseline, or create a new baseline.

To clone an existing baseline:

1. In the left navigation pane in Lighthouse, select **Deployment \> Baselines**.

2. From the baseline list, select the baseline you want to clone.

3. Select **Clone**

> [!NOTE]
> The new baseline will be the name of the baseline from which it was cloned with “(1)” added to the end.

To import a baseline:

1. In the left navigation pane in Lighthouse, select **Deployment \> Baselines**.

2. Select **Import**.

3. Select the desired baseline file.

4. Select **Import**.

To create a new baseline:

1. In the left navigation pane in Lighthouse, select **Deployment \> Baselines**.

2. Select **Create**.

3. Provide a display name and description for the new baseline.

4. Select **Create**.

> [!NOTE]
> Baselines can be edited, deleted, and exported from the page. The Default baseline can’t be edited or deleted.

## Add deployment task to a baseline

Baselines are composed of deployment tasks. You can add as many deployment tasks as you want to a baseline. There are two ways to add deployment tasks to a baseline. You can clone a deployment task from an existing baseline or extract a configuration from a managed tenant.

To clone a deployment task from an existing baseline:

1. In the left navigation pane in Lighthouse, select **Deployment \> Baselines**.
2. Select a baseline from the list.
3. Select **New task**.
4. From the list, select **Clone**.
5. From the **New task** panel, select the baseline that contains the task you want to clone.
6. Select the deployment task you want to clone.
7. Select **Import**.

To extract a configuration from a managed tenant:

> [!IMPORTANT]
> Extracted configurations may contain tenant-specific setting values that should be removed from a baseline to avoid applying them to other managed tenants.

Lighthouse will, where possible, detect configurations and policies that contain sensitive information and remove the tenant-specific value from the baseline. There are some configuration types where sensitive setting values must be detected and removed manually to ensure they aren't included in the baseline.

Lighthouse admins must review the extracted configuration and remove any tenant-specific setting values that shouldn't be applied to other managed tenants.

1. In the left navigation pane in Lighthouse, select **Deployment \> Baselines**.
2. Select a baseline from the list.
3. Select **New task**.
4. From the list, select the desired configuration.
5. Select the tenant from which you want to extract the configuration.
6. Select the configuration you want to extract.
7. Select **Next**.
8. Provide the display name, description, and user impact details.
9. Review the task to ensure that any tenant-specific setting values that shouldn't be applied to other managed tenants are removed.
10. If applicable, select the **Remove** icon to remove any tenant-specific setting values
11. Select **Create**.

> [!NOTE]
> Deployment tasks can be edited or deleted by accessing the ellipsis menu for the task and can be prioritized by selecting the **Priority** arrows to make a task a higher or lower priority.

## Next steps

Once a baseline is created, you can assign the baseline to a tenant. For more information, see [Assign a baseline](m365-lighthouse-assign-a-baseline.md).

## Related content

[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
