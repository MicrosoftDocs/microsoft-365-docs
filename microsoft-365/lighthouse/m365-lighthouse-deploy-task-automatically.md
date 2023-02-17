---
title: "Deploy a task automatically in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: shcallaw, kywirpel
ms.date: 11/29/2022
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to deploy a task automatically."
---

# Deploy a task automatically in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse lets you deploy configurations associated with eligible deployment tasks automatically. This capability helps ensure that the tenants you manage are healthy and secure.

## Before you begin

Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

Additionally, each partner tenant user must meet the following requirements:

- The partner tenant user must have DAP/GDAP access to the applicable tenant.

  - For DAP, an admin agent group membership.

  - For GDAP, a role that can create Conditional Access (CA) policies.

- The partner tenant user must enable MFA for their user account in the partner tenant.

## Deploy a task automatically

1. In the left navigation pane in Lighthouse, select **Tenants**.

2. From the list of tenants, select a tenant you want to view.

3. Select the **Deployment Plan** tab.

4. Select a task from the list.

5. In the task details pane, select **Deploy**.

6. In the **Review and edit deployment configuration** page, edit the default configuration as needed.

   1. Select whether to deploy the applicable configuration as **Enable** or **Report Only** mode if applicable.

   2. If applicable, edit the assignment of the task to:

      1. Include or exclude specific users.

      2. Include or exclude security groups.

      > [!NOTE]
      > Tasks implemented by a conditional access policy deployment include a drop-down menu to select the deployment state. Tasks are set to the deployment state of **Enabled** by default but can be manually adjusted to **Report Only** via the drop-down menu. Tasks deployed as **Enabled** will immediately impact user experience. Settings from configurations deployed in a **Report only** state will continue to be reported as **Not compliant** in Lighthouse until the deployment state of the applicable configuration is updated to **Enabled**.

7. Select **Next**.

8. In the **Review detected configurations** page, review detected configurations.

   The **Review detected configurations** page is provided for eligible tasks and lists any existing configurations detected within the tenant. From this page, you may either edit the existing configurations or deploy a new configuration through Lighthouse to fulfill the task's requirements.

   If existing configurations are detected, they'll be displayed in the detected configuration in the deployment plan comparison table. For each detected configuration, Lighthouse will determine whether the setting is **Compliant**, **Not compliant**, **Missing**, or **Extra**.

   The detected configurations table at the bottom of the page allows you to compare the detected configurations from the tenant to your deployment plan, inclusive of any selections made on the **Review and edit deployment configuration** page. This table can be filtered by configuration or setting status and searched by user.

   If there are no detected configurations, you'll be directed to the confirm and deploy page.

9. If applicable, edit existing configurations as needed.

   1. Open the appropriate management portal.

   2. Navigate to the appropriate configuration.

   3. Edit the configuration as required by the task.

   4. Save the updated configuration in the applicable management portal

   5. In Lighthouse, select **Refresh detected configurations** to refresh the results of the detected configuration.

   When editing existing configurations, the presence of **Extra** settings has no impact on the deployment status of the task. You may retain, edit, or discard, **Extra** settings at your discretion.

   Once Lighthouse sees no settings from the task that are missing for or not compliant for any of the users to whom the task is targeted, Lighthouse will update the task status to **Compliant**, and you'll be prompted to exit the wizard.

10. Select **Next**.

11. From the **Confirm and deploy** page, confirm the configuration and select **Confirm**.

12. From the **Complete** confirmation page, select **Close**.

Choosing to deploy a new configuration through Lighthouse will ensure that the security configuration is enforced but doesn't modify any of the existing configurations. This may result in settings with duplicate or conflicting values for users, which may prevent the status of the task from being updated to compliant. To make the task compliant, you'll need to edit or delete the settings that aren't compliant with the existing configuration.

## Related content

[Deploy a task manually](m365-lighthouse-deploy-task-manually.md) (article)\
[Dismiss a task](m365-lighthouse-dismiss-task.md) (article)\
[Reinstate a task](m365-lighthouse-reinstate-task.md) (article)\
[Overview of deployment tasks in Microsoft 365 Lighthouse](m365-lighthouse-overview-deployment-task.md) (article)\
[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
