---
title: "Phase 1: Networking infrastructure exit criteria"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/05/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Ensure that your configuration meets Microsoft 365 Enterprise criteria for networking infrastructure.
---

# Phase 1: Networking infrastructure exit criteria

If your networking infrastructure meets the following conditions, you’re ready to move to Phase 2.

<a name="crit-networking-step1"></a>
## Required: Your Internet bandwidth is sufficient for Microsoft’s cloud services

The Internet bandwidth for your central office and branch offices can handle daily access to cloud resources, peak usage, and future growth. If your Internet bandwidth isn’t sufficient, the performance of your connectivity and the productivity of your staff might suffer, especially during peak periods of processing. 

If needed, [Step 1](networking-provide-bandwidth-cloud-services.md) can help you with this requirement.

<a name="crit-networking-step2"></a>
## Required: Your local offices have local Internet name resolution

You configured each local office with Internet access through a local ISP whose DNS servers use a local public IP address that identifies their location on the Internet. This ensures the best possible performance for users who access Office 365 and Intune.

If you don’t use a local ISP for each branch office, performance can suffer because network traffic must traverse an organization’s backbone or data requests are serviced by remote front-end servers.

### How to test
Use a tool or web site from a device in that office to determine the public IP address that the proxy server is using. For example, use the [What Is My IP Address](https://www.whatismypublicip.com/) web page. This public IP address assigned by your ISP should be geographically local. It should not be from a public IP address range for a central office or from a cloud-based network security vendor.

If needed, [Step 2](networking-dns-resolution-same-location.md) can help you with this requirement.

<a name="crit-networking-step3"></a>
## Optional: Your network perimeter devices perform minimal processing of Office 365 traffic

You configured your network perimeter devices—such as proxy servers, firewalls, and SSL inspection devices— to use Office 365 endpoints (URLs and IP address ranges) and to minimally process traffic from Office 365.

If you haven’t done this, your perimeter devices perform unnecessary processing and Office 365 performance will suffer, causing delays for users of cloud-based services.

### How to test

Use the logging tools on your network perimeter devices to ensure that traffic to Office 365 destinations isn’t being inspected, decrypted, or otherwise hindered.

If needed, [Step 3](networking-configure-proxies-firewalls.md) can help you with this option.

<a name="crit-networking-step4"></a>
## Optional: A plan to manage ongoing changes in Office 365 endpoints is in place

Your IT department has a plan to update endpoints—both URLs to Office 365 services and IP address ranges—for your network perimeter devices that perform minimal processing traffic to and from Office 365.

If you don’t have a plan in place, connectivity can be interrupted when IP addresses are moved from one service to another or are no longer in use by a service. Additionally, traffic to new servers of an exisiting service that aren’t configured as new endpoints can cause your traffic to be sent to a distant front-end server, resulting in non-optimal performance.

If needed, [Step 4](networking-implement-endpoint-change-mgmt.md) can help you with this option.

<a name="crit-networking-step5"></a>
## Optional: Your clients and Office 365 applications are configured for optimal performance

You have optimized the Transmssion Control Protocol (TCP) settings on your client devices and for Exchange Online, Skype for Business Online, SharePoint Online, and Project Online services.

If needed, [Step 5](networking-optimize-tcp-performance.md) can help you with this option.

## Next phase
Your next phase in the end-to-end deployment process for Microsoft 365 Enterprise is [identity](identity-infrastructure.md).
