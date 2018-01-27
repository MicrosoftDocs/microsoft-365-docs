---
title: "Step 3: Match deployment methods to groups"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 01/29/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: "Summary: <>."
---

# Step 3: Match deployment methods to groups

**Summary:** 

Once you have your target machines classified into deployment groups, you can match those groups to one of five different deployment methodologies. Before we get to that though, there are a few concepts you should be familiar with.

## Deployment methodology concepts

<<<<<<< HEAD
=======
<!-- Hiding this so that intro placeholder doesn't show in build. Remove comment tags if this gets filled out.
[intro]
-->

>>>>>>> 32c994737496ebf6bfbc223615ed9754a599016f
### Managed deployment

Office 365 ProPlus is deployed to the target devices by the administrator.  The user of the target device doesn't play a role in the installation.  Managed deployments allow greater control of the Office 365 ProPlus configuration options.

### Unmanaged deployment

The user of the target device initiates the installation, and must have local administrative rights. The only configuration options that are available are the choice of language and architecture (32/64).

Here's a comparison of the configuration options that can be controlled in Unmanaged and Managed deployments.

|Unmanaged deployment configuration options|Managed deployment configuration options|
|:---------|:---|
|One installed language|Define custom source paths|
|Office client architecture (32/64)|Office client architecture (32/64)|
||Feature update channel|
||Install multiple languages|
||Office apps to include or exclude|
||To check for automatic updates or not|
||Location to get updates from|
||Silent install|

### Local source

The Office 365 ProPlus source files have been downloaded from the Office Content Delivery Network (CDN) and are distributed from either a local file share or System Center Configuration Manager distribution point.

### Cloud source

The Office 365 ProPlus source files remain in the cloud and are accessed only from there.

### Office Deployment Toolkit

The Office 2016 Deployment Tool (ODT) is a command-line tool that you can use to download and deploy Office 365 ProPlus to your client computers. The ODT gives you more control over an Office installation: you can define which products and languages are installed, how those products should be updated, and whether or not to display the install experience to your users. For more information, see [Overview of the Office 2016 Deployment Tool](https://docs.microsoft.com/DeployOffice/overview-of-the-office-2016-deployment-tool).

## Overview of deployment methodologies

There are five different Office 365 Pro plus deployment methodologies. Read through the pros and cons of each of the deployment methodology in the following table to see which one is best suited to the scenarios of each of your deployment groups. For more information on choosing a deployment method, see [Choose how to deploy Office 365 ProPlus](https://docs.microsoft.com/DeployOffice/choose-how-to-deploy-office-365-proplus) and [Best practices: Deploying Office 365 ProPlus](https://docs.microsoft.com/DeployOffice/best-practices/best-practices-deploying-office-365-proplus). Links to the specific deployment procedures are included in the table.

|Deployment methodology|Pros|Cons|
|:---------|:---------|:---------|
|Type: Managed<br><br>Source: cloud<br><br>Tool: Office Deployment Toolkit (ODT)<br><br>Deployment instructions: [Deploy Office 365 ProPlus from the cloud](https://docs.microsoft.com/DeployOffice/deploy-office-365-proplus-from-the-cloud)|<ul><li>Most admin control over the configuration and deployment options</li><li>Good for Managed deployments where users may or may not have local administrator rights to their machines</li><li>Good for Managed deployments where the organization does not have System Center Configuration Manager in place</li><li>Good for organizations that don't have good network connectivity between the target device and source installation files but do have good connectivity between the target devices and the cloud</li></ul>|<ul><li>Requires custom scripting to be used during the installation to elevate install account privileges if the users don't have local administrative rights.</li><li>Greater administrator overhead; the installation administrators must use the Office Deployment Toolkit to define an Office package and feature update channels for each of your deployment groups</li><li>The install bits are pushed down separately to each target device. If you have a large # of machines that run the installation simultaneously, this could have an impact your network performance</li></ul>|
|Type: Managed<br><br>Source: cloud<br><br>Tool: Office Deployment Toolkit (ODT)<br><br>Deployment instructions: [Deploy Office 365 ProPlus from a local source](https://docs.microsoft.com/DeployOffice/deploy-office-365-proplus-from-a-local-source)|<ul><li>Best level of admin control over the configuration and deployment options</li><li>Good for Managed deployments where users may or may not have local administrator rights to their machines</li><li>Good for Managed deployments where the organization does not have Configuration Manager in place</li><li>Good for organizations that have good network connectivity between the target devices and source installation files</li><li>good for scaling since you can download and create multiple instances of the installation files across your network</li></ul>|<ul><li>Requires custom scripting to be used during the installation to elevate install account privileges if the users don't have local administrator rights.</li><li>Greater administrator overhead; the installation administrators must use the Office Deployment Toolkit to define an Office package and feature update channels for each of your deployment groups</li></ul>|
|Type: Managed<br><br>Source: local<br><br>Tool: System Center 2012 R2 Configuration Manager OR Configuration Manager (Current Branch)<br><br>Deployment instructions:<br><ul><li>[Deploy Office 365 ProPlus with System Center Configuration Manager (2012 R2)](https://docs.microsoft.com/DeployOffice/deploy-office-365-proplus-with-system-center-configuration-manager)</li></ul><br>OR<ul><li>[Manage Office 365 ProPlus with Configuration Manager (Current Branch)](https://docs.microsoft.com/sccm/sum/deploy-use/manage-office-365-proplus-updates)</li></ul>|<ul><li>Most admin control over the configuration and deployment options</li><li>Good for Managed deployments where users may or may not have local administrator rights to their machines</li><li>Good for Managed deployments where the organization has Configuration Manager in place</li><li>Good for organizations that have good network connectivity between the target device and source installation files</li><li>With Configuration Manager (Current Branch) you can change the client update channel after deployment</li></ul>|<ul><li>Using System Center Configuration Manager 2012 R2 or Configuration Manager (current branch) to deploy Office 365 ProPlus brings extra administrative overhead to the task.</li></ul>|
|Type: Managed<br><br>Source: cloud<br><br>Tool: System Center 2012 R2 Configuration Manager OR Configuration Manager (Current Branch)<br><br>Deployment instructions:<br><ul><li>[Deploy Office 365 ProPlus with System Center Configuration Manager (2012 R2)](https://docs.microsoft.com/DeployOffice/deploy-office-365-proplus-with-system-center-configuration-manager)</li></ul><br>OR<ul><li>[Manage Office 365 ProPlus with Configuration Manager (Current Branch)](https://docs.microsoft.com/sccm/sum/deploy-use/manage-office-365-proplus-updates)</li></ul>|<ul><li>Best level of admin control over the configuration and deployment options</li><li>good for organizations that have poor network connectivity between the target device and source installation files and better connectivity between the clients and the cloud</li><li>good for Managed deployments where the organization has Configuration Manager in place</li><li>With Configuration Manager (Current Branch)</li></ul>|<ul><li>Greater administrator overhead; the installation administrators must use the Office Deployment Toolkit to define an Office package and feature update channels for each of your deployment group</li></ul>|
|Type: Unmanaged<br><br>Source: cloud<br><br>Tool: Office Deployment Toolkit (ODT)<br><br>Deployment instructions: [Download or install or reinstall Office 365 of Office 2016 on a PC or Mac](https://support.office.com/article/Download-and-install-or-reinstall-Office-365-or-Office-2016-on-a-PC-or-Mac-4414EAAF-0478-48BE-9C42-23ADC4716658)|<ul><li>Good for cases where the users have local admin rights</li><li>Good for cases where users are highly mobile</li><li>Good for cases where less control over the configuration is acceptable</li><li>Good for cases where the users can more easily connect to the cloud for deployment bits rather than to corporate controlled resources</li><li>less administrator overhead</li></ul>|<ul><li>Requires users to have local administrator rights on their devices</li><li>Least administrative control over the configuration and feature update options</li></ul>|

## Next step

[Step 4: Deploy Office 365 ProPlus](office365proplus-deploy-office365-proplus.md)

