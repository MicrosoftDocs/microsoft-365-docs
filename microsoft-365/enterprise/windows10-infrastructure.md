---
title: Windows 10 Enterprise infrastructure for Microsoft 365 Enterprise | Microsoft docs
description: Provides a high-level guidance on the steps you need to deploy Windows 10 Enterprise on PCs as part of Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, deployment
author: CelesteDG
ms.localizationpriority: high
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 01/29/2018
ms.author: celested
---

# Phase 3: Windows 10 Enterprise infrastructure for Microsoft 365 Enterprise
Does your organization have Microsoft 365 Enterprise and you are looking for guidance to set up new Windows 10 devices or upgrade users' computers to Windows 10 with optional deployment of Office 365 apps, Windows Analytics, and Windows Defender Advanced Threat Protection<sup>[1](#footnote1)</sup>? If so, this guide is for you.

## Step 1: Choose your organization's Windows 10 deployment scenario
A Microsoft 365 powered device is a PC with Windows 10 Enterprise and Office 365 ProPlus, managed with Enterprise Mobility + Security (EMS). It is a fully-configured device for users that's ready for business and with built-in security. To start configuring a Microsoft 365 powered device, you'll need to select the deployment scenario for your organization:

* **Windows AutoPilot** - You're setting up new PCs that have Windows 10 Enterprise, version 1703 or later pre-installed. End users will initiate setup using the confirmation you specified by entering their work or school account credentials.
* **In-place upgrade** - You need to upgrade Windows 7, Windows 8, or Windows 8.1 PCs to the [current version](https://aka.ms/windows-10-release-information) of Windows 10 Enterprise, and you currently manage devices in your organization with System Center Configuration Manager. 
* **Deploy Windows 10 upgrades with Intune** - Your Windows PCs have Windows 10 Enterprise, version 1511 or later, and they are managed with Microsoft Intune.
* **Deploy Windows 10 upgrades with System Center Configuration Manager** - Your Windows PCs have Windows 10 Enterprise, version 1511 or later, and they are managed with the current branch of System Center Configuration Manager.
* **Other deployment methods** - See [Plan for Windows 10 deployment](https://docs.microsoft.com/en-us/windows/deployment/planning/) to plan on your own and learn about capabilities, scenarios, and tools supported in Windows.

For more in-depth descriptions of these and other deployment scenarios, see [Windows 10 deployment scenarios](https://docs.microsoft.com/windows/deployment/windows-10-deployment-scenarios).

## Step 2: Set Windows telemetry level
We recommend checking that the telemetry and diagnostics service is working properly on all endpoints in your organization. By default, this service is enabled, but it's good practice to ensure that you'll get sensor data from the endpoints.

See [Configure Windows telemetry in your organization](https://docs.microsoft.com/windows/configuration/configure-windows-telemetry-in-your-organization) to:
* Learn about the benefits of Windows telemetry and how telemetry data is used
* Learn about the different telemetry levels in Windows 10
* Adjust the telemetry level and manage specific components for your organization

## Step 3: TBD
TBD

## Learn more
[Microsoft 365 Enterprise product page](https://www.microsoft.com/microsoft-365/enterprise)

[Windows 10](https://docs.microsoft.com/windows/windows-10)

[Deploy and update Windows 10](https://docs.microsoft.com/windows/deployment/)


<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<a name="footnote1"></a><sup>1</sup> <small>Microsoft 365 Enterprise E5 plan only.</small>