---
title: "Step 4: Deploying Office 365 ProPlus"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/09/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Understand the process of deploying Office 365 ProPlus.
---

# Step 3: Deploy Office 365 ProPlus


Before you begin:

- If you haven't already, complete the [planning for your deployment](office365proplus-classify-target-devices-deployment-groups.md).
- If you're using Configuration Manager, we recommend you use the Current Branch of Configuration Manager. With this version, you can deploy and manage Office from the Office Client Management dashboard. For more details on the Current Branch, see [Which branch of Configuration Manager should I use?](https://docs.microsoft.com/sccm/core/understand/which-branch-should-i-use)

## Update Group Policy settings
Make sure that you have reviewed and approved the group policy settings as part of your deployment plan, and then implement the settings. For more details, see [Best practices: Implementing group policy](https://docs.microsoft.com/deployoffice/best-practices/best-practices-implementing-group-policy).

## Create deployment groups

If you’re using Configuration Manager, create a collection for each deployment group. 

If you're using the Office Deployment Tool (ODT), create a separate configuration file for each deployment group.

## Deploy Office 365 ProPlus

Based on the deployment method you choose earlier, see the links below to deploy Office 365:

- [Deploy with Configuration Manager](https://docs.microsoft.com/sccm/sum/deploy-use/manage-office-365-proplus-updates)
- [Deploy with the Office Deployment Tool from the cloud](https://docs.microsoft.com/DeployOffice/deploy-office-365-proplus-from-the-cloud)
- [Self-install from the cloud](https://support.office.com/article/manage-user-software-in-office-365-c13051e6-f75c-4737-bc0d-7685dcedf360)

## Next step

[Office 365 ProPlus infrastructure exit criteria](office365proplus-exit-criteria.md)
