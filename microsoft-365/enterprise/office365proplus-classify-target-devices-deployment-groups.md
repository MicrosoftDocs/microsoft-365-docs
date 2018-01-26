---
title: "Step 2 : Classify the target devices into deployment groups"
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

# Step 2 : Classify the target devices into deployment groups

The target devices that share common characteristics can be collected into deployment groups.  For example, if they share a common business role, operating system, the users' local permissions, network location, and how frequently they should receive feature updates you will probably use the same deployment methodology for all of them. This makes managing the deployment easier because you can match a deployment methodology to a class of devices rather than figuring out how to deploy to each device individually.  

You can use these criteria for creating your deployment groups:

1. Business role of the device - Target devices that share a common business role, like being used in accounting, or human resources, or purchasing or IT will likely need to have similar Office 365 ProPlus configurations.
2. Desired frequency to receive feature updates - This helps you plan what update channels to place the target devices in.
3. User permissions - Does the primary user have local administrative rights or not? This can help you rule in or out certain deployment methodologies
4. Network location - What is the network capacity between the target device and the Office 365 ProPlus source files? 
5. Current hardware/OS/Office version specs -Office 365 ProPlus comes in a 32 bit or 64-bit architecture and depending on the apps that are being installed will required a certain amount of disk space. Finally, target devices that have the same version of Office already installed, and maybe are running the same VBA apps will have similar upgrade requirements.
6. Managed or unmanaged - Target devices that are managed centrally can take advantage of deployment methodologies that are different from target devices that are owned and maintained by the individual user (BYOD)

For more information on factors you can use to classify your target devices see [Best Practices: Planning your deployment of Office 365 ProPlus](https://docs.microsoft.com/en-us/DeployOffice/best-practices/best-practices-planning-your-deployment-of-office-365-proplus).

As an interim checkpoint, ensure that you have met the [Exit criteria](office365proplus-exit-criteria) for this step.  When those criteria are met, you can return to this point and continue with the next step.

## Next step

[Step 3: Match deployment methods to groups](office365proplus-match-deployment-methods-groups)
