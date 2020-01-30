---
title: "Phase 1: Networking infrastructure for Microsoft 365 Enterprise"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/23/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:
description: The steps to deploy the networking infrastructure for Microsoft 365 Enterprise.
---

# Phase 1: Networking infrastructure for Microsoft 365 Enterprise

![Phase 1: Networking](./media/deploy-foundation-infrastructure/networking_icon.png)

Microsoft 365 Enterprise includes Office 365, Microsoft Intune, and many identity and security services of Microsoft Azure. All of these cloud-based services rely on the security, performance, and reliability of connections from client devices over the Internet or dedicated circuits. To host these services and make them available to customers all over the world, Microsoft has designed a networking infrastructure that emphasizes performance and integration. 

In this phase, you step through the key considerations for creating a performant connection to the cloud services of Microsoft 365 Enterprise. For an overview, see [Office 365 networking principles](https://techcommunity.microsoft.com/t5/Office-365-Blog/Getting-the-best-connectivity-and-performance-in-Office-365/ba-p/124694).

>[!Note]
>If you already have a networking infrastructure deployed, please see the [exit criteria](networking-exit-criteria.md) for this phase to make sure that it meets the required and optional conditions for Microsoft 365 Enterprise.

## Plan and deploy your Microsoft 365 Enterprise networking infrastructure 

Use the following steps to build out your networking infrastructure for the requirements and capabilities of Microsoft 365 Enterprise.

|||
|:-------|:-----|
|![Step 1](./media/stepnumbers/Step1.png)|[Prepare your network for Microsoft 365](networking-provide-bandwidth-cloud-services.md)|
|![Step 2](./media/stepnumbers/Step2.png)|[Configure local Internet connections for each office](networking-dns-resolution-same-location.md)|
|![Step 3](./media/stepnumbers/Step3.png)|[Avoid network hairpins](networking-avoid-network-hairpins.md)|
|![Step 4](./media/stepnumbers/Step4.png)|[Configure traffic bypass](networking-configure-proxies-firewalls.md)|
|![Step 5](./media/stepnumbers/Step5.png)|[Optimize client and Office 365 service performance](networking-optimize-tcp-performance.md)|


When you've completed these steps, go to the [exit criteria](networking-exit-criteria.md) for this phase to ensure that you meet the required and optional conditions for Microsoft 365 Enterprise.

## How Microsoft does Microsoft 365 Enterprise

Peek inside Microsoft and learn how the company [optimized the Microsoft network for cloud services](https://www.microsoft.com/itshowcase/deploying-and-managing-microsoft-365#primaryR4).

## How Contoso did Microsoft 365 Enterprise

See how the Contoso Corporation, a fictional but representative multi-national business, [optimized their network devices and Internet connections](contoso-networking.md) for Microsoft 365 cloud services.

![The Contoso Corporation](./media/contoso-overview/contoso-icon.png)

## Next step

|||
|:-------|:-----|
|![Step 1](./media/stepnumbers/Step1.png)|[Prepare your network for Microsoft 365](networking-provide-bandwidth-cloud-services.md)|

