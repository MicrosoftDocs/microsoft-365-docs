---
title: "Office 365 ProPlus deployment for Contoso"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 10/01/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-modern-desktop
- Strat_O365_Enterprise
ms.custom:

description: Understand how Contoso uses Microsoft Endpoint Configuration Manager to deploy Office 365 ProPlus.
---

# Office 365 ProPlus deployment for Contoso

Contoso upgraded their PCs to Windows 10 Enterprise and Office 365 ProPlus to enable more effective collaboration, better security, and a more modern desktop experience. After assessing their infrastructure and business needs, Contoso identified these key requirements for the deployment:

- All PCs should run Office 365 ProPlus
- Deployment should use existing management tools and infrastructure when possible
- Deployment must support multiple languages and existing architectures on end-user devices
- PCs should stay up-to-date and secure with minimal IT administrative costs and with minimal impact to end-users

## Deployment tools

Based on their requirements, Contoso chose to deploy Windows 10 Enterprise and Office 365 ProPlus with Configuration Manager (Current Branch). Configuration Manager scales for large environments and provides extensive control over installation, updates, and settings. It also has built-in features to make it easier and more efficient to deploy and manage Office, including:

- Peer cache, which can help with limited network capacity when deploying to devices in remote locations
- The Office Client Management dashboard, which makes it easy to deploy Office and monitor updates and gives administrators access to the latest deployment and management features
- Intelligent language pack deployment, including automatically deploying the same language as the operating system
- Fully supported and easy-to-use method of removing existing versions of Office from a client during deployment

In addition to Configuration Manager, Contoso used the [Readiness Toolkit](https://docs.microsoft.com/deployoffice/use-the-readiness-toolkit-to-assess-application-compatibility-for-office-365-pro), a free tool from Microsoft, to assess compatibility issues with their Office macros and add-ins.

## Managing the deployment and updates

Office 365 ProPlus has a new release model: Office as a service. The service model makes it easy to stay up to date with new features, but often requires a change in approach for IT departments in how new releases are deployed and tested. To minimize any compatibility issues and to ensure their computers stayed up to date, Contoso deployed Windows and Office in two stages: 

- For the first stage, they deployed Office 365 ProPlus to a small set of representative devices across the organization. This pilot group was used to test apps, add-ins, and hardware with Office 365 ProPlus
- Four months later, after addressing all critical issues with apps, add-ins, and hardware in the pilot group, Contoso deployed Office 365 ProPlus to the rest of the devices in the organization (the broad group). 

Instead of managing updates to Office with Configuration Manager, Contoso enabled automatic updates from the cloud. Cloud-based updates reduced their administrative overhead while ensuring the devices stayed up to date. 

Contoso followed the same two-stage approach for feature updates that they used for deploying Office: devices in the pilot group received feature updates four months earlier than devices in the rest of the organization (the broad group). To enable this for Office, Contoso used two recommended [update channels](https://docs.microsoft.com/DeployOffice/overview-of-update-channels-for-office-365-proplus): 

- Semi-Annual Channel (Targeted) for updates to the pilot group 
- Semi-Annual Channel for updates to the broad group. 

Because the Semi-Annual (Targeted) Channel releases a version of Office 365 ProPlus four months earlier than the Semi-Annual Channel, Contoso has time to validate the updates without having to manage them. 

## Deployment process

To complete the deployment of Office, Contoso implemented the following process, which includes best practice recommendations from Microsoft:

1. Before deploying, they used the Readiness Toolkit to test their apps and Office add-ins to assess their compatibility with Office 365 ProPlus.
2. In Configuration Manager, Contoso enabled peer cache on their client devices, which helped with limited network capacity when deploying to client devices in remote locations. 
3. They defined two deployment groups as device collections in Configuration Manager: a pilot group and a broad group. The pilot group, which included a small set of representative devices across the organization, was used to do additional testing of apps, add-ins, and hardware with Windows 10 Enterprise and Office 365 ProPlus. 
4. They created deployment packages for Office using the Office Client Management dashboard and the Office 365 Installer wizard, both of which are part of the Configuration Manager console. They built two Office 365 ProPlus packages, one for the pilot group on the Semi-Annual Channel (Targeted) and one for the broad group on the Semi-Annual Channel. 
5. As part of each Office package, they included English, French, and German Language packs. If a device required a language not included in the Office package, it was automatically downloaded from the Office Content Delivery Network (CDN).
6. They used the built-in feature in the Office package to automatically remove all existing MSI versions of Office before installing Office 365 ProPlus.
7. In Configuration Manager, they deployed the Windows and Office packages to distribution points across their network, and then ran the Configuration Manager deployment task sequences to deploy the pilot Office 365 ProPlus package to the pilot group.
8. After addressing any compatibility issues with the pilot group, Contoso ran the task sequences to deploy the broad Office 365 ProPlus package to the broad group.

Because Contoso chose to automatically update devices from the cloud, there was no need to manage the process in Configuration Manager. Their devices are automatically updated directly from the cloud-based on the update channel that was defined as part of the initial deployment. 

Here is Contoso’s Office 365 ProPlus installation and ongoing updates deployment architecture.

![Contoso’s Office 365 ProPlus deployment infrastructure](../media/contoso-o365pp/contoso-o365pp-fig1.png)
 
## Next step

[Learn](contoso-mdm.md) how Contoso is using Microsoft Intune in Microsoft 365 Enterprise to manage its devices and the apps that run on them across its organization.

## See also

[Office 365 ProPlus for Microsoft 365 Enterprise](office365proplus-infrastructure.md)

[Deployment guide](deploy-microsoft-365-enterprise.md)

[Test lab guides](m365-enterprise-test-lab-guides.md)
