---
title: "Configure cloud settings for use with Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/01/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- tier1
search.appverid:
- MOE150
- MET150
description: "Set up your Azure and other non-Microsoft services for using Microsoft Purview Compliance Manager to assesss compliance across multiple cloud services."
---

# Configure cloud settings for use with Compliance Manager

**In this article:** Learn how Compliance Manager supports your multi-cloud environment.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Follow these steps

WHAT NEEDS TO BE reflected here based on private preview scenarios doc?

- Microsoft Defender for Cloud (is MDC same as MS Defender for Cloud apps?) [service description details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-defender-for-cloud-apps).
- CM roles required
- Azure roles required
- Azure setup
- Google setup
- AWS setup

## Setup stages

Compliance Manager relies on integration with [Microsoft Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) in order to provide multiservice support. Organizations must have a subcription to Microsoft Azure and then enable Microsoft Defender for Cloud so that Compliance Manager can receive the necessary signals to monitor your cloud services. Once you have Defender for Cloud, you need to assign the relevant industry and regulatory standards to your subscription.

Depending on what your organization already has or doesn't have,  you can jump to the section below that aligns to your situation in order to get started:

- You don't already have Auzre: Get Azure and create a subscription
- You don't have Defender for Cloud: Enable Defender for Cloud on your Azure subscription
- You have Defender for Cloud but haven't assigned standards: Assign standards to your 

## Get Azure and create a subscription

abc

## Enable Defender for Cloud

abc

## Add standards to your

## Resources

- [Quickstart: Set up Microsoft Defender for Cloud](/azure/defender-for-cloud/get-started)