---
title: "Phase 4: Office 365 ProPlus"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/13/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: The steps and exit criteria to deploy the Office 365 ProPlus infrastructure for Microsoft 365 Enterprise.
---

# Phase 4: Office 365 ProPlus

Microsoft 365 Enterprise includes Office 365 ProPlus, the subscription version of Office. Like Office 2016, Office 365 ProPlus includes all the Office applications, and those applications are installed directly on your client devices. Unlike Office 2016, Office 365 ProPlus is updated with new features on a regular basis and has a user-based licensing model that allows people to install Office on up to 5 devices. For more details, see [About Office 365 ProPlus in the enterprise](https://docs.microsoft.com/en-us/deployoffice/about-office-365-proplus-in-the-enterprise).

In this phase, you deploy Office 365 ProPlus to client devices as part of Microsoft 365 Enterprise. In addition to this guidance, we recommend you use [Microsoft Fastrack](https://fasttrack.microsoft.com/office) to help with your deployment. 

>[!Note]
>If you already have Office 365 ProPlus deployed, please see the [exit criteria](office365proplus-exit-criteria.md) for this phase to make sure that it meets the required conditions for Microsoft 365 Enterprise.
>

## Step 1: Assess your environment

Before deploying Office 365 ProPlus, follow the guidance in [Assess your environment and requirements for deploying Office 365 ProPlus](https://docs.microsoft.com/deployoffice/best-practices/best-practices-assessing-your-infrastructure). That assessment includes system requirements, details of your client devices (such as architectures and required languages), licensing requirements, network capability, and application compatibility. Completing the assessment will help you make key decisions as part of planning your deployment.

## Step 2: Plan your deployment

After assessing your environment, follow the guidance in [Plan your deployment of Office 365 ProPlus](https://docs.microsoft.com/deployoffice/best-practices/best-practices-planning-your-deployment-of-office-365-proplus) to create a deployment plan. This plan includes the following decisions: 

- How to deploy Office, including what tool to use (such as System Center Configuration Manger or the Office Deployment Tool) and where to install Office from
- How to manage updates to Office
- Which update channels to use. Update channels for Office control how frequently your users receive feature updates to their Office applications
- The Office installation packages and deployment groups you want to use, including which Office applications and langauges should be installed for which users

The [planning article](https://docs.microsoft.com/deployoffice/best-practices/best-practices-planning-your-deployment-of-office-365-proplus) includes best practices for all these options, including managing your deployment, managing your updates, defining installation packages, and creating deployment groups. 

## Step 3: Deploy

As part of the deployment plan, you chose how to deploy and manage Office 365 ProPlus in your organization, including deciding among the main deployment scenarios:

- **Deploy from a local source with Configuration Manager:** Manage your deployment with Configuration Manager, and download and deploy Office from distribution points on your network

- **Deploy from the cloud with the Office Deployment Tool:** Manage your deployment with the ODT, and install Office on client devices directly from the Office CDN
 
- **Deploy from a local source with the Office Deployment Tool:** Manage your deployment with the ODT, and download and deploy Office from a local source on your network 

- **Self-install from the cloud:** Manage your deployment from the Office portal and have your users install Office on their client devices directly from the portal

Many organizations will use a combination of these options for different users. For example, an organization might use Configuration Manager to deploy Office to most of their users, but enable self-install for a small group of workers who are not frequently connected to the internal network. 

If your organization uses Configuration Manager, we recommend upgrading to the Current Branch and updating to the current release. For more details, see [Which branch of Configuration Manager should I use?](https://docs.microsoft.com/en-us/sccm/core/understand/which-branch-should-i-use)

Depending on your deployment plan, go to one of the following articles:

- [Deploy Office 365 ProPlus with System Center Configuration Manager](https://docs.microsoft.com/en-us/sccm/sum/deploy-use/manage-office-365-proplus-updates)
- [Deploy Office 365 ProPlus with the ODT from the cloud](https://docs.microsoft.com/deployoffice/deploy-office-365-proplus-from-the-cloud.md)
- [Deploy Office 365 ProPlus with the ODT from a local source](https://docs.microsoft.com/deployoffice/deploy-office-365-proplus-from-a-local-source.md)
- [Self-install Office 365 ProPlus from the Office portal](https://support.office.com/article/Download-and-install-or-reinstall-Office-365-or-Office-2016-on-a-PC-or-Mac-4414EAAF-0478-48BE-9C42-23ADC4716658)

## Next step

When you've completed these steps, go to the [exit criteria](office365proplus-exit-criteria.md) for this phase to ensure that you meet the required conditions for Microsoft 365 Enterprise.