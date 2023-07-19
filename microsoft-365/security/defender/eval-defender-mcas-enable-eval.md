---
title: Enable the evaluation environment for Microsoft Defender for Cloud Apps
description: Learn the architecture of Defender for Cloud Apps within Microsoft Defender for Office 365 and understand interactions between the Microsoft 365 Defender products.
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: bcarter
author: brendacarter
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - m365solution-scenario
  - m365solution-evalutatemtp
  - zerotrust-solution
  - highpri
  - tier1
ms.topic: conceptual
ms.date: 05/14/2021
---

# Enable the evaluation environment for Microsoft Defender for Cloud Apps

**Applies to:**

- Microsoft 365 Defender

This article is [Step 2 of 2](eval-defender-mcas-overview.md) in the process of setting up the evaluation environment for Microsoft Defender for Cloud Apps. For more information about this process, see the [overview article](eval-defender-mcas-overview.md).

This article walks you through the process of accessing the Defender for Cloud Apps portal and configuring the necessary integration to collect cloud app traffic data.

To discover cloud apps used in your environment, you can implement one or both of the following methods:

- Get up and running quickly with Cloud Discovery by integrating with Microsoft Defender for Endpoint. This native integration enables you to immediately start collecting data on cloud traffic across your Windows 10 and Windows 11 devices, on and off your network.
- To discover all cloud apps accessed by all devices connected to your network, deploy the Defender for Cloud Apps log collector on your firewalls and other proxies. This deployment helps collect data from your endpoints and sends it to Defender for Cloud Apps for analysis. Defender for Cloud Apps natively integrates with some third-party proxies for even more capabilities.

This article includes guidance for both methods.

Use the following steps to set up Microsoft Defender for Cloud Apps.

:::image type="content" source="../../media/defender/m365-defender-mcas-eval-enable-steps.png" alt-text="The steps to enable Microsoft Microsoft Defender for Cloud Apps in the Microsoft Defender evaluation environment" lightbox="../../media/defender/m365-defender-mcas-eval-enable-steps.png":::

- [Step 1. Connect to the Defender for Cloud Apps portal](#step-1)
- [Step 2. Integrate with Microsoft Defender for Endpoint](#step-2)
- [Step 3. Deploy the Defender for Cloud Apps log collector on your firewalls and other proxies](#step-3)
- [Step 4. View the Cloud Discovery dashboard to see what apps are being used in your organization](#step-4)

<a name="step-1"></a>

## Step 1. Connect to the Defender for Cloud Apps portal

To verify licensing and to connect to the Defender for Cloud Apps portal, see [Quickstart: Get started with Microsoft Defender for Cloud Apps](/cloud-app-security/getting-started-with-cloud-app-security).

If you're not immediately able to connect to the portal, you might need to add the IP address to the allowlist of your firewall. See [Basic setup for Defender for Cloud Apps](/cloud-app-security/general-setup).

If you're still having trouble, review [Network requirements](/cloud-app-security/network-requirements).

<a name="step-2"></a>

## Step 2. Integrate with Microsoft Defender for Endpoint

Microsoft Defender for Cloud Apps integrates with Microsoft Defender for Endpoint natively. The integration simplifies roll out of Cloud Discovery, extends Cloud Discovery capabilities beyond your corporate network, and enables device-based investigation. This integration reveals cloud apps and services being accessed from IT-managed Windows 10 and Windows 11 devices.

If you've already set up Microsoft Defender for Endpoint, configuring integration with Defender for Cloud Apps is a toggle in Microsoft 365 Defender. After integration is turned on, you can return to the Defender for Cloud Apps portal and view rich data in the Cloud Discovery Dashboard.

To accomplish these tasks, see [Microsoft Defender for Endpoint integration with Microsoft Defender for Cloud Apps](/cloud-app-security/mde-integration).

<a name="step-3"></a>

## Step 3. Deploy the Defender for Cloud Apps log collector on your firewalls and other proxies

For coverage on all devices connected to your network, deploy the Defender for Cloud Apps log collector on your firewalls and other proxies to collect data from your endpoints and send it to Defender for Cloud Apps for analysis.

If you're using one of the following Secure Web Gateways (SWG), Defender for Cloud Apps provides seamless deployment and integration:

- Zscaler
- iboss
- Corrata
- Menlo Security

For more information on integrating with these network devices, see [Set up Cloud Discovery](/cloud-app-security/set-up-cloud-discovery).

<a name="step-4"></a>

## Step 4. View the Cloud Discovery dashboard to see what apps are being used in your organization

The Cloud Discovery dashboard is designed to give you more insight into how cloud apps are being used in your organization. It provides an at-a-glance overview of what kinds of apps are being used, your open alerts, and the risk levels of apps in your organization.

To get started using the Cloud Discovery dashboard, see [Working with discovered apps](/cloud-app-security/discovered-apps).

## Next steps

Step 3 of 3: [Pilot Microsoft Defender for Cloud Apps](eval-defender-mcas-pilot.md)

Return to the overview for [Evaluate Microsoft Defender for Cloud Apps](eval-defender-mcas-overview.md)

Return to the overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
