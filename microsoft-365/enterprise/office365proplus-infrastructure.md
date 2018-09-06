---
title: "Phase 4: Office 365 ProPlus"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 08/15/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
description: The steps to deploy the Office 365 ProPlus infrastructure for Microsoft 365 Enterprise.
---

# Phase 4: Office 365 ProPlus

![](./media/deploy-foundation-infrastructure/O365proplus_icon.png)

*This applies to both the E3 and E5 versions of Microsoft 365 Enterprise and Microsoft 365 Education*

Microsoft 365 Enterprise includes Office 365 ProPlus, the subscription version of Office. Like Office 2016, Office 365 ProPlus includes all the Office applications, and those applications are installed directly on your client devices. Unlike Office 2016, Office 365 ProPlus is updated with new features on a regular basis and has a user-based licensing model that allows people to install Office on up to 5 devices. For more details, see [About Office 365 ProPlus in the enterprise](https://docs.microsoft.com/deployoffice/about-office-365-proplus-in-the-enterprise).

In this phase, you deploy Office 365 ProPlus to client devices as part of Microsoft 365 Enterprise. In addition to this guidance, we recommend you use [Microsoft Fastrack](https://fasttrack.microsoft.com/office) to help with your deployment. 

Office 365 ProPlus enables these strategic business scenarios for Microsoft 365 Enterprise:

- Collaborate on documents in real time or on your own time to simplify the cocreation process
- Harness collective knowledge and expertise by empowering people to discover, share, and progress files, information, and ideas across your organization
- Empower users to transform business processes and increase efficiency
- Manage projects, tasks, and deadlines to meet your business objectives
- Use intelligent assistance for design, writing, content discovery, and more to help your work shine
- Discover insights, analyze your data, and share your findings to help everyone make informed decisions
- Communicate with your team to stay informed, solicit input, and build cohesion and consensus
- Communicate with partners, colleagues, and customers around the world for scheduled and ad hoc calls and online meetings with groups of all sizes
- Store and share files inside and outside your organization to work seamlessly across organizational boundaries
- Work securely from anywhere, anytime across your device to achieve more while maintaining a flexible workstyle
- Provide peace-of-mind with controls and visibility for industry-verified conformity with global standards in compliance
- Protect your information and reduce the risk of data loss
- Get current and stay current on your desktop software and devices while reducing security risks and maximizing IT efficiency

For more information, see the [Discover Value tool](https://online.valuediscoveryworkshop.com/). 

>[!Note]
>If you already have Office 365 ProPlus deployed, please see the [exit criteria](office365proplus-exit-criteria.md) for this phase to make sure that it meets the required conditions for Microsoft 365 Enterprise.
>

## How Microsoft does Microsoft 365 Enterprise

To understand how IT experts at Microsoft planned for, deployed, and is managing updates for Office 365 ProPlus, see:

- [Preparing your organization for a seamless Office 365 ProPlus 2016 deployment](https://www.microsoft.com/itshowcase/Office365adoption)
- [Deploying and updating Microsoft Office 365 ProPlus](https://www.microsoft.com/itshowcase/Article/Content/757/Deploying-and-updating-Microsoft-Office-365-ProPlus)
- [Automation and update channels help deploy Microsoft Office 365 ProPlus](https://www.microsoft.com/itshowcase/Article/Content/794/Automation-and-update-channels-help-deploy-Microsoft-Office-365-ProPlus) (video)

## Step 1: Assess your environment

Before deploying Office 365 ProPlus, follow the guidance in [Assess your environment and requirements for deploying Office 365 ProPlus](https://docs.microsoft.com/DeployOffice/assess-office-365-proplus). This assessment includes system requirements, details of your client devices (such as architectures and required languages), licensing requirements, network capability, and application compatibility. Completing the assessment will help you make key decisions as part of planning your deployment.

## Step 2: Plan your deployment

After assessing your environment, follow the guidance in [Plan your deployment of Office 365 ProPlus](https://docs.microsoft.com/DeployOffice/plan-office-365-proplus) to create a deployment plan. This plan includes the following decisions: 

- How to deploy Office, including what tool to use (such as System Center Configuration Manger or the Office Deployment Tool [ODT]) and where to install Office from
- How to manage updates to Office
- Which update channels to use (update channels for Office control how frequently your users receive feature updates to their Office applications)
- The Office installation packages and deployment groups you want to use, including which Office applications and languages should be installed for which users

The [planning article](https://docs.microsoft.com/DeployOffice/plan-office-365-proplus) includes best practices for all these options, including managing your deployment, managing your updates, defining installation packages, and creating deployment groups. 

## Step 3: Deploy

Based on your deployment plan from step 2, choose how you want to deploy:

- **[Deploy Office 365 ProPlus with System Center Configuration Manager](https://docs.microsoft.com/sccm/sum/deploy-use/manage-office-365-proplus-updates):** Manage your deployment with Configuration Manager, and download and deploy Office from distribution points on your network

- **[Deploy Office 365 ProPlus with the ODT from the cloud](https://docs.microsoft.com/deployoffice/deploy-office-365-proplus-from-the-cloud.md):** Manage your deployment with the ODT, and install Office on client devices directly from the Office CDN
 
- **[Deploy Office 365 ProPlus with the ODT from a local source](https://docs.microsoft.com/deployoffice/deploy-office-365-proplus-from-a-local-source.md):** Manage your deployment with the ODT, and download and deploy Office from a local source on your network 

- **[Self-install Office 365 ProPlus from the Office portal](https://support.office.com/article/Download-and-install-or-reinstall-Office-365-or-Office-2016-on-a-PC-or-Mac-4414EAAF-0478-48BE-9C42-23ADC4716658):** Manage your deployment from the Office portal and have your users install Office on their client devices directly from the portal

Many organizations will use a combination of these options for different users. For example, an organization might use Configuration Manager to deploy Office to most of their users, but enable self-install for a small group of workers who are not frequently connected to the internal network. 

If your organization uses Configuration Manager, we recommend upgrading to the Current Branch and updating to the current release. For more details, see [Which branch of Configuration Manager should I use?](https://docs.microsoft.com/sccm/core/understand/which-branch-should-i-use)

## Next step

[Office 365 ProPlus infrastructure exit criteria](office365proplus-exit-criteria.md)
