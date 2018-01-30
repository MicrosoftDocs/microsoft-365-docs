---
title: "Microsoft 365 Office 365 ProPlus deployment exit criteria"
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
description: Ensure that your configuration meets Microsoft 365 Enterprise criteria for Office 365 ProPlus infrastructure.
---

# Microsoft 365 Enterprise deployment exit criteria for Office 365 ProPlus infrastructure

Before you move on to the next phase in the deployment process, ensure that your configuration meets the following criteria for Office 365 ProPlus infrastructure.

## Required exit criteria

The following criteria are required for your organization to have a Office 365 ProPlus infrastructure for Microsoft 365 Enterprise.

When a request comes in to deploy Office 365 ProPlus to a device that is intended for certain work role, the Office 365 ProPlus deployment team must be able to:

- Classify that device into one of the deployment groups based on:
    - The work role of the machine in the business and the requisite Office apps and language packs.
    - The desired (but not necessarily the current) Windows operating system version installed on the client. Note that Windows 10 is the minimum Windows operating system version that is required to be Microsoft 365 Enterprise-compliant.
    - The quality of network connectivity to the device.
    - Whether or not the user will have administrative rights to the device.
    - Desired frequency of feature updates.
    - For more information, see [Step 2 : Classify the target devices into deployment groups](office365proplus-classify-target-devices-deployment-groups.md).
- Reliably deploy Office 365 ProPlus to that device in a timely fashion using standardized procedures.
    - Have a method for validating that the installed configuration matches the intended configuration.
    - Validate the installed configuration.
    - For more information, see [Step 4: Deploy Office 365 ProPlus](office365proplus-deploy-office365-proplus.md).
- Reliably maintain the office 365 ProPlus deployment in the desired current state.

Before you can exit the Office 365 ProPlus deployment phase of the Microsoft 365 Enterprise guidance, you must:

- Have a proven method methodology for deploying Office 365 ProPlus to every category of device in your organization.
- Have a proven methodology for maintaining and updating Office 365 ProPlus to every category of device in your organization.
- Have a proven methodology for removing or retiring Office 365 ProPlus from every category of device in your organization.

## Next phase 

Your next phase in the end-to-end deployment process for Microsoft 365 Enteprise is [Phase 5-Mobile device management](mobility-infrastructure.md).
