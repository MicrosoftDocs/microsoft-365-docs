---
title: "Step 1: Perform a technical inventory and environmental assessment for your business requirements"
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
description: Understand how to do an assessment for an Office 365 ProPlus deployment.
---

# Step 1: Perform a technical inventory and environmental assessment for your business requirements

## Environment assessment

A successful deployment of office 365 ProPlus starts with understanding the infrastructure it's going to be deployed into and your business goals. For assessment guidance, see [Best practices: Assessing your infrastructure](https://docs.microsoft.com/DeployOffice/best-practices/best-practices-assessing-your-infrastructure).

## Hardware, software inventory 

If you have a tool like System Center Configuration Manager 2012 R2 or Configuration Manager (current branch) deployed to all your clients and you have your mobile devices enrolled in Microsoft InTune, you'll already have a detailed inventory of your technical environment. If not, you'll need to gather the following items about each of the devices you want to deploy Office 365 ProPlus to:

- For all devices, whether the user has local administrative rights
- For all devices the job role the device is used in
- For all devices the desired frequency of feature updates
- The specifications for non-mobile devices such as operating system, current version of Office, processor, memory, and available disk space
- The specs for your mobile devices, such as the operating system and version
- The languages you need to deploy Office 365 ProPlus in. For more information, see [Overview of deploying languages and Office 365 ProPlus](https://docs.microsoft.com/DeployOffice/overview-of-deploying-languages-in-office-365-proplus). 

## Application compatibility

Once you have your hardware inventoried, you should look at your Microsoft Visual Basic for application macros and other add-ins that use Office. Use the [Readiness Toolkit](https://docs.microsoft.com/DeployOffice/use-the-readiness-toolkit-to-assess-application-compatibility-for-office-365-pro) to assess application compatibility for Office 365 ProPlus.

## Microsoft FastTrack for Office 365

FastTrack onboarding and adoption resources and services are available to help you envision your Office 365 ProPlus deployment, to bring your users onboard, and to drive adoption of Office 365 ProPlus. For a full description of your Office 365 ProPlus FastTrack benefits see [FastTrack Center Benefit for Office 365](https://technet.microsoft.com/library/dn783224.aspx).

Because this Office 365 Pro plus deployment is one component of your Microsoft 365 Enterprise implementation, it will be helpful for you to understand how it fits into the broader Microsoft 365 FastTrack services. For more information on Microsoft 365 resources, see [Microsoft 365 resources](https://fasttrack.microsoft.com/microsoft365/resources?view=office365). 

## Next step

[Step 2 : Classify the target devices into deployment groups](office365proplus-classify-target-devices-deployment-groups.md)