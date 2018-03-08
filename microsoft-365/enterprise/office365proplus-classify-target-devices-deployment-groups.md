---
title: "Step 2: Plan the deployment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/02/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Understand how to plan your deployment of Office 365 ProPlus.
---

# Step 2: Plan the deployment

In Step 2, you choose how to deploy Office, how to manage updates to Office, and whether to deploy and install from a local source on your network or from the cloud.

## Choose a deployment method

To deploy Office 365, you choose one or more deployment methods and how to store the files—either locally on your network or as a download from the cloud-based Microsoft Content Data Network (CDN).

Here are the ways you can deploy Office 365:

- **Deploy with Configuration Manager:** We recommend Configuration Manager for organizations that already use it to distribute and manage software. Configuration Manager scales for large environments and enables extensive control over installation, updates, and settings. If you manage your deployment with Configuration Manager, you can choose whether to install Office on client devices directly from the Office CDN or download and deploy Office from distribution points on your network. We recommend choosing the option that best meets your infrastructure requirements and network capacity.
- **Deploy with the Office Deployment Tool:** If you want to manage your deployment but don’t have Configuration Manager, we recommend using the Office Deployment Tool (ODT). You can use the ODT as a standalone tool, or you can use it to download installation files that can be deployed using third-party software deployment tools. If you deploy with the ODT, we recommend deploying from the cloud: You manage your deployment with the ODT and install Office on client devices directly from the Office CDN.
- **Self-install from the cloud:** You can also have users self-install. You manage your deployment from the Office portal and have your users install Office on their client devices directly from the portal. This method requires the least amount of administrative setup, but gives you less control over the deployment. You can, however, still define how frequently your users receive updates. This option requires that your users have local administrative rights on their client devices.

You can use a combination of these options for different users. For example, you might use Configuration Manager to deploy Office to most of your users and enable self-install for a small group of workers who connect to the internal network infrequently.

## Choose how to manage Office updates

You can manage updates with the same tool that you deploy Office, but it's not required. You can also choose whether to have the updates install directly from the cloud or from a local source on your network.

We recommend managing your updates automatically from the cloud. You limit your administrative overhead and receive all the network efficiencies built into updating from the Office CDN.

## Choose how frequently Office updates

With Office 365 ProPlus, you can control how frequently your users receive feature updates to their Office applications. To do so, you deploy one of three update channels to your users:

- **Monthly Channel:** Provide users with the newest features of Office as soon as they're available.
- **Semi-Annual Channel:** Provide users with new features of Office every six months, in January and July
- **Semi-Annual Channel (Targeted):** Provide pilot users the opportunity to test the next Semi-Annual Channel. Releases every six months in March and September, four months ahead of the Semi-Annual Channel.

Which users should get which update channel depends on several factors, including how many line-of-business applications, add-ins, or macros that you need to test. To help you make this decision, see [Overview of update channels for Office 365 ProPlus](https://docs.microsoft.com/deployoffice/overview-of-update-channels-for-office-365-proplus).

## Choose Office apps and options

You can deploy all the Office applications in Office 365 ProPlus or exclude some. Applications that are initially excluded can be added back later, just as applications that are initially included can be removed later. You can also choose the languages and architectures (32-bit or 64-bit) to install.
We recommend identifying required languages in each region. You can deploy these languages directly as part of the first installation of Office, and then make additional languages available for user installation. For more details, see [Overview of deploying languages in Office 365 ProPlus](https://docs.microsoft.com/deployoffice/overview-of-deploying-languages-in-office-365-proplus).

For details on which architecture to choose, see [Choose the 32-bit or 64-bit version of Office](https://support.office.com/article/choose-between-the-64-bit-or-32-bit-version-of-office-2dee7807-8f95-4d0c-b5fe-6c6f49b8d261).

You can deploy Visio and Project at the same time you deploy Office 365. We recommend replacing existing MSI versions of Project and Visio with Click-to-Run versions. The new Click-to-Run versions support traditional volume licensing and Office 365 licensing models. For more details, see [Use the Office Deployment Tool to install volume licensed editions of Visio 2016 and Project 2016](https://docs.microsoft.com/deployoffice/use-the-office-deployment-tool-to-install-volume-licensed-editions-of-visio-2016).

## Define installation packages
When you deploy Office, you create an installation package that contains the Office files. The files are different for 32-bit and 64-bit versions of Office and are different for the different update channels. Because of this, you will likely need to create multiple installation packages based on the architectures and update channels you want to deploy.

## Define deployment groups

When you deploy Office, you can install different versions of Office for different groups of users. You do this by creating a configuration file for each group. The configuration file includes the architecture and update channel, specific applications (included or excluded), languages, the installation experience. 
Decide whether to uninstall older versions of Office

Microsoft supports installing Office 365 ProPlus alongside the most recent previous version of the Office suite, but we don't recommend it. If you plan to have two versions of Office on the same computer, you should plan to transition to using only Office 365 ProPlus when possible. Otherwise, you should uninstall other versions of Office before or during your Office 365 deployment.

## Next step

[Step 3: Deploy Office 365 ProPlus](office365proplus-deploy-office365-proplus.md)
