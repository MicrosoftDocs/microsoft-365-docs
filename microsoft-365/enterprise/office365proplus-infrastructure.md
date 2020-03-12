---
title: "Phase 4: Microsoft 365 Apps for enterprise"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 10/23/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-modern-desktop
- Strat_O365_Enterprise
ms.custom:
description: The steps to deploy the Microsoft 365 Apps for enterprise infrastructure for Microsoft 365 Enterprise.
---

# Phase 4: Microsoft 365 Apps for enterprise

![Phase 4: Microsoft 365 Apps for enterprise](../media/deploy-foundation-infrastructure/O365proplus_icon.png)

*This applies to both the E3 and E5 versions of Microsoft 365 Enterprise and Microsoft 365 Education*

Microsoft 365 Enterprise includes Microsoft 365 Apps for enterprise, the subscription version of Office. Like Office 2019, Microsoft 365 Apps for enterprise includes all the Office applications, and those applications are installed directly on your client devices. Unlike Office 2019, Microsoft 365 Apps for enterprise is updated with new features on a regular basis and has a user-based licensing model that allows people to install Office on multiple devices. For more details, see [About Microsoft 365 Apps for enterprise in the enterprise](https://docs.microsoft.com/deployoffice/about-office-365-proplus-in-the-enterprise).

In this phase, you deploy Microsoft 365 Apps for enterprise to client devices as part of Microsoft 365 Enterprise. In addition to this guidance, we recommend you use [Microsoft Fastrack](https://fasttrack.microsoft.com/office) to help with your deployment. 

If you already have Microsoft 365 Apps for enterprise deployed, please see the [exit criteria](office365proplus-exit-criteria.md) for this phase to make sure that it meets the required conditions for Microsoft 365 Enterprise.

>[!Note]
>To deploy both Windows 10 Enterprise and Microsoft 365 Apps for enterprise together, see the [Desktop Deployment Center](desktop-deployment-center-home.md).
>

## Step 1: Assess your environment

Before deploying Microsoft 365 Apps for enterprise, follow the guidance in [Assess your environment and requirements for deploying Microsoft 365 Apps for enterprise](https://docs.microsoft.com/DeployOffice/assess-office-365-proplus). This assessment includes system requirements, details of your client devices (such as architectures and required languages), licensing requirements, network capability, and application compatibility. Completing the assessment will help you make key decisions as part of planning your deployment.

## Step 2: Plan your deployment

After assessing your environment, follow the guidance in [Plan your deployment of Microsoft 365 Apps for enterprise](https://docs.microsoft.com/DeployOffice/plan-office-365-proplus) to create a deployment plan. This plan includes the following decisions: 

- How to deploy Office, including what tool to use (such as Microsoft Endpoint Configuration Manager or the Office Deployment Tool) and where to install Office from
- How to manage updates to Office
- Which update channels to use (update channels for Office control how frequently your users receive feature updates to their Office applications)
- The Office installation packages and deployment groups you want to use, including which Office applications and languages should be installed for which users

The [planning article](https://docs.microsoft.com/DeployOffice/plan-office-365-proplus) includes best practices for all these options, including managing your deployment, managing your updates, defining installation packages, and creating deployment groups. 

## Step 3: Deploy

Based on your deployment plan, choose how you want to deploy:

- **[Deploy Microsoft 365 Apps for enterprise with Configuration Manager](https://docs.microsoft.com/deployoffice/deploy-office-365-proplus-with-system-center-configuration-manager):** Manage your deployment with Configuration Manager, and download and deploy Office from distribution points on your network

- **[Deploy Microsoft 365 Apps for enterprise with the ODT from the cloud](https://docs.microsoft.com/deployoffice/deploy-office-365-proplus-from-the-cloud):** Manage your deployment with the ODT, and install Office on client devices directly from the Office CDN
 
- **[Self-install Microsoft 365 Apps for enterprise from the Office portal](https://docs.microsoft.com/deployoffice/manage-software-download-settings-office-365):** Manage your deployment from the Office portal and have your users install Office on their client devices directly from the portal

Many organizations will use a combination of these options for different users. For example, an organization might use Configuration Manager to deploy Office to most of their users, but enable self-install for a small group of workers who are not frequently connected to the internal network. 

If your organization uses Configuration Manager, we recommend upgrading to the Current Branch and updating to the current release. For more details, see [Which branch of Configuration Manager should I use?](https://docs.microsoft.com/configmgr/core/understand/which-branch-should-i-use)

## How Microsoft does Microsoft 365 Enterprise

Learn how the experts at Microsoft are [deploying and managing updates for Microsoft 365 Apps for enterprise](https://www.microsoft.com/itshowcase/deploying-and-managing-microsoft-365#primaryR7).

## How Contoso did Microsoft 365 Enterprise

See how the Contoso Corporation, a fictional but representative multi-national business, [deployed Microsoft 365 Apps for enterprise](contoso-o365pp.md).

![The Contoso Corporation](../media/contoso-overview/contoso-icon.png)

## Next step

[Microsoft 365 Apps for enterprise infrastructure exit criteria](office365proplus-exit-criteria.md)
