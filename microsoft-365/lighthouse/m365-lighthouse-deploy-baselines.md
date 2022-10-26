---
title: "Deploy Microsoft 365 Lighthouse baselines"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: shcallaw, kywirpel
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to deploy Microsoft 365 Lighthouse baselines."
---

# Deploy Microsoft 365 Lighthouse baselines

Microsoft 365 Lighthouse lets you deploy standard managed-tenant configurations to secure users, devices, and data within customer tenants. There are seven [default baseline configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) that come standard with Lighthouse. Using the Lighthouse deployment plan feature, you can view, test, and deploy security configurations across all your tenants. A deployment plan is only available to active tenants. Once a tenant is onboarded, you can compare your customers' current configuration against the default baseline configuration and take the appropriate actions.

## Before you begin

Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

## View a deployment plan

1. In the left navigation pane in Lighthouse, select **Tenants**.

2. From the list of tenants, select the tenant you want to view.

3. Select the **Deployment Plan** tab.

    The Deployment Plan tab provides a searchable and exportable list of each deployment step that is included in the tenant's deployment plan that includes the following information for each deployment step:

    | Column            | Description |
    |-----------------|-------------------------------------------------------------------------------------|
    | Deployment step | Description of deployment step.                                                     |
    | Status          | The status of the deployment step.                                                  |
    | Baseline        | The baseline from which the deployment step is derived.                             |
    | Category        | Whether the deployment step is associated with managing Devices, Identity, or Data. |
    | Last updated    | The date at which the deployment step was last updated.                             |

4. From the list of deployment steps, select the deployment step that you want to review.

    The deployment step details page provides the following information:

    | Column            | Description |
    |-------------------|-----------------------------------------------------------------------------------------------|
    | Summary        | A summary of the deployment step's purpose.                                         |
    | Baseline       | The baseline from which the deployment step is derived.                             |
    | Category       | Whether the deployment step is associated with managing Devices, Identity, or Data. |
    | Required SKU   | SKUs required to complete the deployment step.                                      |
    | User impact    | The impact of deploying the step to the tenant's users.                             |
    | For your users | Links to resources the tenant's users may find helpful.                             |
    | Next steps     | Links and guidance around any applicable next steps.                                |

    Deployment steps include one or more processes that need to be completed. The deployment step details page includes a table that lists each process included in the deployment step and provides the following information:

    | Column            | Description |
    |-------------------|-------------------------------------------------------------|
    | Process name      | The name of the process, which, when selected, will open the applicable process tab.          |
    | Status            | Detected status of the setting configurations included in the deployment process.           |
    | Management portal | The portal through which the configurations settings associated with the process are managed. |

## Deploy a deployment step

1. In the left navigation page, select **Tenants**.

2. From the list of tenants, select the tenant that you want to view.

3. Select the **Deployment Plan** tab.

4. From the list of deployment steps, select the deployment step that you want to deploy.

5. Select **Review and deploy**.

6. In the **Confirm configuration** pane, select **Deploy**.

## Test a deployment step

For deployment steps deployed through Conditional Access policies, you can compare the configuration settings in the deployment step with settings in any existing policies without deploying the settings to the tenant.

1. In the left navigation page, select **Tenants**.

2. From the list of tenants, select the tenant that you want to view.

3. Select the **Deployment Plan** tab.

4. From the list of deployment steps, select the deployment step that you want to deploy.

5. Select **Review and deploy**.

6. In the **Confirm configuration** pane, select **Test these settings without a deployment**.

7. Select **Test**.

The **Confirm configuration** pane closes and displays the policy comparison. Each policy within the existing tenant is listed in the Detected settings table.

The Detected settings table lists each existing policy and summarizes the number of settings and, in parentheses, the number of users that have one of the following statuses:

| Status         | Description
|-------------|------------------------------------------------------------|
| Equal settings       | Total number of configuration settings in the deployment plan with an equivalent value in the tenant.      |
| Missing settings     | Total number of configuration settings in the deployment plan that are missing a value in the tenant.      |
| Conflicting settings | Total number of configuration settings in the deployment plan that have a conflicting value in the tenant. |

You can also view detected settings in a modular table that provides configuration setting details for each policy at the setting and user level and you can sort the table by the following setting statuses:

| Status         | Description
|-------------|------------------------------------------------------------|
| Total settings       | Total number of configuration settings that are included in the deployment process.                        |
| Equal settings       | Total number of configuration settings in the deployment plan with an equivalent value in the tenant.      |
| Missing settings     | Total number of configuration settings in the deployment plan that are missing a value in the tenant.      |
| Conflicting settings | Total number of configuration settings in the deployment plan that have a conflicting value in the tenant. |
| Extra settings       | Total number of configuration settings with a value in the tenant but no value in the deployment plan.     |

When this comparison is made, Lighthouse automatically updates the Detected status, Deployment status, and Deployment Step status.

If there are no existing policies to compare, select **Review and deploy** to reopen the **Confirm configuration** pane, and then select **Deploy**.

If there are existing policies with which to compare, you can either:

- Edit the configuration settings of the deployment plan and retest them against the existing policies, select **Review and deploy** to reopen the **Confirm configuration** pane, adjust the desired configuration settings, reselect the checkbox, and then select **Test** at the bottom of the pane.

- Edit the existing policies within the applicable management portal to reconcile the differences by either:
  - Applying missing settings
  - Editing conflicting settings
  - Deleting existing policies

For each deployment process that can be automated through Lighthouse, there's both a deployment status and a detected status.

- The detected status indicates to what extent the settings in this process are currently deployed.
- The deployment status is the status of the last deployment to the tenant.

You can deploy deployment steps regardless of existing policies but they won't be considered complete until there are no conflicting settings. Failure to resolve these conflicting settings may impact the user experience. 

The deployment of the deployment step in instances when there are equal settings present in the tenant from an existing policy results in duplication of the existing settings within the tenant but won't impact the user experience. 

Extra settings are provided for your awareness but don't require you to take action.

For more information on policy conflict management, see [Azure AD Conditional Access documentation](/azure/active-directory/conditional-access/).

## Update deployment step status

1. In the left navigation page in Lighthouse, select **Tenants**.

2. From the list of tenants, select the tenant that you want to view.

3. Select the **Deployment Plan** tab.

4. From the list of deployment steps, select the deployment step that you want to update.

5. From the **To address** dropdown list, select an action status.

    | Action status | Description |
    |--|--|
    | To address | The default state of all deployment steps that do NOT include multiple deployment step processes. |
    | Planned | The deployment step has been planned but has yet to be completed. |
    | Risk accepted | The user has accepted the risk that would otherwise have been averted by applying the deployment step. |
    | Risk Resolved Through Third Party | The risk has been resolved by the implementation of a third-party application or software. |
    | Resolved through alternate means | The risk has been resolved through alternate means, such as the implementation of an internal tool. |
    | Manual configuration applied | The configuration prescribed in the deployment plan has been manually applied. |

## Share deployment step

1. In the left navigation page, select **Tenants**.

2. From the list of tenants, select the tenant you want to view.

3. Select the **Deployment Plan** tab.

4. From the list of deployment steps, select the deployment step that you want to share.

5. From the **Share** dropdown list, select one of the following options.

    | Option  | Description |
    |-----------|-------------------------------------------------------------------------|
    | Copy  | Copies a link to the deployment step into your clipboard.                                     |
    | Email | Opens your new email message on your local machine and inserts a link to the deployment step. |

    The link allows anyone with permissions in your organization to view the tenant's deployment plan.


## Related content

[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of the Windows 365 (Cloud PCs) page in Microsoft 365 Lighthouse](m365-lighthouse-tenants-page-overview.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article) 