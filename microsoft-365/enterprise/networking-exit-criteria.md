---
title: "Phase 1: Networking infrastructure exit criteria"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 02/22/2018
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

If your networking infrastructure meets the following requirements, you’re ready to move to Phase 2.

## Required

The following criteria are required for your organization’s networking infrastructure for Microsoft 365 Enterprise.

<a name="crit-networking-step1"></a>
### Your Internet bandwidth is sufficient for Microsoft’s cloud services

The Internet bandwidth for your central office and branch offices can handle daily access to cloud resources, peak usage, and future growth. If your Internet bandwidth isn’t sufficient, the performance of your connectivity and the productivity of your staff might suffer, especially during peak periods of processing. If needed, adjust your bandwidth as described in [Step 1](networking-provide-bandwidth-cloud-services.md).

<a name="crit-networking-step2"></a>
### Your local offices have local Internet name resolution

You configured each office with Internet access through a local ISP whose DNS servers use a local public IP address that identifies their location on the Internet. This ensures the best possible performance for users who access Office 365 and Intune.

If you don’t use a local ISP for each branch office, performance can suffer as network traffic traverses an organization’s backbone or is serviced by a remote front-end server.

#### How to test
Use a tool or web site from a device in that office to determine the public IP address that the proxy server is using. For example, use the [What Is My IP Address](https://www.whatismypublicip.com/) web page.

This public IP address assigned by your ISP should be geographically local. It should not be from a public IP address range for a central office or from a cloud-based network security vendor.

If needed, configure a local ISP for each branch office as described in [Step 2](networking-dns-resolution-same-location.md).

## Optional but highly-recommended exit criteria

The following criteria are highly recommended for additional performance or ease in management.

<a name="crit-networking-step3"></a>
### Your network perimeter devices perform minimal processing of Office 365 traffic

You configured your network perimeter devices—such as proxy servers, firewalls, and SSL inspection devices— to use Office 365 endpoints (URLs and IP address ranges) and to minimally process traffic from Office 365.

If you haven’t done this, and your perimeter devices perform unnecessary processing, Office 365 performance will suffer, causing delays for users of cloud-based services.

#### How to test

Use the logging tools on your network perimeter devices to ensure that traffic to Office 365 destinations isn’t being inspected, decrypted, or otherwise hindered.

If needed, reconfigure your network perimeter devices as described in [Step 3](networking-configure-proxies-firewalls.md).

<a name="crit-networking-step4"></a>
### A plan to manage ongoing changes in Office 365 endpoints is in place

Your IT department has a plan to update endpoints—both URLs to Office 365 services and IP address ranges—for your network perimeter devices that perform minimal processing traffic to and from Office 365.

If you don’t have a plan in place, connectivity can be interrupted when IP addresses are moved from one service to another or are no longer in use by a service. Additionally, traffic to new points of presence on your network that aren’t configured as new endpoints can cause your traffic to be sent to a distant front-end server, resulting in non-optimal performance.

If needed, create a plan for managing changes to Office 365 endpoints as described in [Step 4](networking-implement-endpoint-change-mgmt.md).

<a name="crit-networking-step5"></a>

### Your clients and Office 365 applications are configured for optimal performance

You have optimized the TCP settings on your client devices and for Exchange Online, Skype for Business Online, SharePoint Online, and Project Online services.

If you haven’t optimized performance for clients and Office 365 services, overall client performance (TCP settings) and performance for Exchange Online, Skype for Business Online, SharePoint Online, and Project Online can suffer.

If needed, optimize your clients and Office 365 services as described in [Step 5](networking-optimize-tcp-performance.md).

## Next phase
Your next phase in the end-to-end deployment process for Microsoft 365 Enterprise is [identity](identity-infrastructure.md).

