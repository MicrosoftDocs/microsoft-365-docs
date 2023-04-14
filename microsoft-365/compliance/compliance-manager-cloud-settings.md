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

- **You don't have Auzre**: [Get an Azure subscription](#get-an-azure-subscription)
- **You have Azure but don't have Defender for Cloud**: [Enable Defender for Cloud on your Azure subscription](#enable-defender-for-cloud)
- **You have Defender for Cloud but haven't assigned standards**: [Assign standards to your cloud service subscriptions](#add-standards-to-your-subscriptions)

## Get an Azure subscription

A subscription to Microsoft Azure is a prerequisite for getting started with Defender for Cloud. If you don't already have a subscription, you can sign up for a free account. Visit the [Azure free account site](https://azure.microsoft.com/pricing/free-trial/) to learn more about starting a free account and other Azure pricing offerings.

## Enable Defender for Cloud

Visit [Quickstart: Set up Microsoft Defender for Cloud](/azure/defender-for-cloud/get-started). Follow the simple steps to enable Defender for Cloud on your Azure subscription, and become familiar with the Defender for Cloud Overview page.

Most setup functions require the user to hold the [Owner role in Azure](/azure/role-based-access-control/built-in-roles#owner). Get more details about [User roles and permissions for Defender for Cloud](/azure/defender-for-cloud/permissions).

Once you've enabled Defender for Cloud, follow the specific instructions below to make sure you're set up for Compliance Manager integration:

1. Go to [Microsoft Defender for Cloud | Regulatory compliance](https://portal.azure.com/#view/Microsoft_Azure_Security/SecurityMenuBlade/~/22).
1. Validate that you see a dashboard like this:



## Add standards to your subscriptions

## Resources

- [Quickstart: Set up Microsoft Defender for Cloud](/azure/defender-for-cloud/get-started)
- [User roles and permissions for Defender for Cloud](/azure/defender-for-cloud/permissions)