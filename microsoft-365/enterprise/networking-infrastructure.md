---
title: "Phase 1: Networking infrastructure for Microsoft 365 Enterprise"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 06/28/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
description: The steps to deploy the networking infrastructure for Microsoft 365 Enterprise.
---

# Phase 1: Networking infrastructure for Microsoft 365 Enterprise

![](./media/deploy-foundation-infrastructure/networking_icon.png)

Microsoft 365 Enterprise includes Office 365 and Windows Intune as part of Enterprise Management + Security (EMS). Both of these cloud-based services rely on the security, performance, and reliability of connections from client devices over the Internet or dedicated circuits. To host these services and make them available to customers all over the world, Microsoft has designed a networking infrastructure that emphasizes performance and integration. 

In this phase, you step through the key considerations for creating a performant connection to the cloud services of Microsoft 365 Enterprise. For an overview, see [Office 365 networking principles](https://techcommunity.microsoft.com/t5/Office-365-Blog/Getting-the-best-connectivity-and-performance-in-Office-365/ba-p/124694).

>[!Note]
>If you already have a networking infrastructure deployed, please see the [exit criteria](networking-exit-criteria.md) for this phase to make sure that it meets the required and optional conditions for Microsoft 365 Enterprise.

## Plan and deploy your Microsoft 365 Enterprise networking infrastructure 

Use the following steps to build out your networking infrastructure for the requirements and capabilities of Microsoft 365 Enterprise.

|||
|:-------|:-----|
|![](./media/stepnumbers/Step1.png)|[Check your Internet bandwidth](networking-provide-bandwidth-cloud-services.md)|
|![](./media/stepnumbers/Step2.png)|[Ensure that DNS resolution is local to the ISP](networking-dns-resolution-same-location.md)|
|![](./media/stepnumbers/Step3.png)|[Configure your proxy servers and firewalls](networking-configure-proxies-firewalls.md)|
|![](./media/stepnumbers/Step4.png)|[Plan for URL and IP address changes](networking-implement-endpoint-change-mgmt.md)|
|![](./media/stepnumbers/Step5.png)|[Optimize client and Office 365 service performance](networking-optimize-tcp-performance.md)|


When you've completed these steps, go to the [exit criteria](networking-exit-criteria.md) for this phase to ensure that you meet the required and optional conditions for Microsoft 365 Enterprise.

## How Microsoft does Microsoft 365 Enterprise

Peek inside Microsoft and learn how the company prepared for and optimized the Microsoft network for the Office 365 cloud services with [Optimizing network performance for Microsoft Office 365](https://www.microsoft.com/itshowcase/Article/Content/631/Optimizing-network-performance-for-Microsoft-Office-365).

## Next step

|||
|:-------|:-----|
|![](./media/stepnumbers/Step1.png)|[Check your Internet bandwidth](networking-provide-bandwidth-cloud-services.md)|

