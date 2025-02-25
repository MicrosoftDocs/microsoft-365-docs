---
title: "Create a baseline in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: jatingupta
ms.date: 09/27/2024
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to create a custom baseline."
---

# Create a baseline in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse empowers you to create your own baselines to deploy to customer tenants. Create your own baselines to accommodate customers with varying degrees of tenant maturity, customers from different industries, customers that have subscribed to different managed services from your company, or customers with varying licensing models.

## Before you begin

- Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

- You must hold either the Administrator or Author role in Lighthouse.

## Create a baseline

There are three ways to create a baseline in Lighthouse. You can clone an existing baseline, import a baseline, or create a new baseline.

To clone an existing baseline:

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Deployment** > **Baselines**.

2. From the baseline list, select the baseline you want to clone.

3. Select **Clone**

> [!NOTE]
> The new baseline will be the name of the baseline from which it was cloned with "(1)" added to the end.

To create a new baseline:

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Deployment** > **Baselines**.

2. Select **Create**.

3. Provide a display name and description for the new baseline.

4. Select **Create**.

To import a baseline:

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Deployment** > **Baselines**.

2. Select **Import**.

3. Select the desired baseline file.

4. Select **Import**.

> [!NOTE]
> Baselines can be edited, deleted, and exported from the page. The Default baseline can't be edited or deleted.
>
> All baselines, except for the default baseline, can be exported from Lighthouse as JSON files. Baselines can also be imported into Lighthouse by selecting a JSON file that has been:
>
>- Extracted from Lighthouse
>- Extracted from Lighthouse and then edited
>- Created outside of Lighthouse
>
>For more information, see [View formatted JSON](/microsoft-edge/devtools-guide-chromium/json-viewer/json-viewer).

## Add deployment task to a baseline

Baselines are composed of deployment tasks. You can add as many deployment tasks as you want to a baseline. There are two ways to add deployment tasks to a baseline. You can clone a deployment task from an existing baseline or extract a configuration from a managed tenant.

To clone a deployment task from an existing baseline:

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Deployment** > **Baselines**.
2. Select a baseline from the list.
3. Select **New task**.
4. From the list, select **Clone**.
5. From the **New task** panel, select the baseline that contains the task you want to clone.
6. Select the deployment task you want to clone.
7. Select **Clone**.

To extract a configuration from a managed tenant:

> [!IMPORTANT]
> Extracted configurations may contain tenant-specific setting values that should be removed from a baseline to avoid applying them to other managed tenants.

Lighthouse, where possible, detects configurations and policies that contain sensitive information and removes the tenant-specific value from the baseline. However, there are some configuration types where sensitive setting values must be detected and removed manually to ensure they aren't included in the baseline.

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Deployment** > **Baselines**.
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
> To edit a deployment task, select the pencil icon in the **Action** column. To delete a deployment task, select the trash can icon in the **Action** column. To make a task higher or lower priority, select an arrow in the **Priority** column.

## Next steps

Once a baseline is created, you can assign the baseline to a tenant. For more information, see [Assign a baseline](m365-lighthouse-assign-a-baseline.md).

## Related content

[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
