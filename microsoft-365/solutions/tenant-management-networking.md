---
title: Step 2. Optimal networking for your Microsoft 365 for enterprise tenancies
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
- m365solution-tenantmanagement
ms.custom:
- Ent_Solutions
description: "Description."
---

# Step 2. Optimal networking for your Microsoft 365 for enterprise tenancies

Add overview

## Enterprise on-premises workers

For enterprise networks, you should optimize the end user experience by enabling the least restrictive access between clients and the closest Microsoft 365 endpoints. The quality of end user experience is directly related to the performance and responsiveness of the application that the user is using. For example, Microsoft Teams relies on low latency so that user phone calls, conferences and shared screen collaborations are glitch-free, and Outlook relies on great networking connectivity for instant search features that leverage server-side indexing and AI capabilities.

The primary goal in the network design should be to minimize latency by reducing the round-trip time (RTT) from client machines to the Microsoft Global Network, Microsoft's public network backbone that interconnects all of Microsoft's datacenters with low latency, high availability cloud application entry points spread around the world.

Here is an example of a traditional enterprise network.

![A traditional enterprise network with central access to the Internet](../media/tenant-management-overview/tenant-management-networking-traditional.png)

Here are the problems with this configuration for Microsoft 365 cloud services:

- Traffic gets sent to non-local front doors, increasing latency.
- Network hairpins perform duplicate packet processing for trusted traffic, increasing latency.
- Network edge devices perform unneeded and duplicate packet processing on trusted traffic, increasing latency.

Optimizing Microsoft 365 network performance doesn't need to be complicated. You can get the best possible performance by following a few key principles:

- Identify Microsoft 365 network traffic, which is trusted traffic bound to Microsoft cloud services.
- Allow local branch egress of Microsoft 365 network traffic to the internet from each location where users connect to Microsoft 365.
- Avoid network hairpins.
- Allow Microsoft 365 traffic to bypass proxies and packet inspection devices.

If you implement these principles, you get an enterprise network optimized for Microsoft 365.

![An enterprise network optimized for Microsoft 365](../media/tenant-management-overview/tenant-management-networking-optimized.png)

Here's are how this configuration solves the latency issues of a traditional enterprise network:

- Trusted Microsoft 365 traffic skips the WAN backbone and is sent to local front doors for all offices, decreasing latency.
- Network hairpins that perform duplicate packet processing are skipped for Microsoft 365 trusted traffic, decreasing latency.
- Network edge devices that perform unneeded and duplicate packet processing are skipped for Microsoft 365 trusted traffic, decreasing latency.

For more information, see [Microsoft 365 network connectivity overview](../enterprise/microsoft-365-networking-overview.md).

## Remote workers

If your remote workers are using a traditional VPN client to obtain remote access to your organization network, verify that the VPN client has split tunneling support. Without split tunneling, all of your remote work traffic gets sent across the VPN connection, where it must be forwarded to your organization’s edge devices, get processed, and then sent on the Internet. Here is an example.

![Network traffic from VPN clients without tunneling](../media/empower-people-to-work-remotely-remote-access/empower-people-to-work-remotely-remote-access-before-tunneling.png)

Microsoft 365 traffic must take an indirect route through your organization, which could be the forwarded to a Microsoft network entry point far away from the VPN client’s physical location. This indirect path adds latency to the network traffic and decreases overall performance. 

With split tunneling, you can configure your VPN client to exclude specific types of traffic from being sent over the VPN connection to the organization network.

To optimize access to Microsoft 365 cloud resources, configure your split tunneling VPN clients to exclude traffic to the **Optimize** category Microsoft 365 endpoints over the VPN connection. For more information, see [Office 365 endpoint categories](../enterprise/microsoft-365-network-connectivity-principles.md#new-office-365-endpoint-categories). See [the lists](../enterprise/microsoft-365-vpn-implement-split-tunnel.md#implement-vpn-split-tunneling) of Optimize category endpoints.

Here is the resulting traffic flow for split tunneling, in which most of the traffic to Microsoft 365 cloud apps bypass the VPN connection.

![Network traffic from VPN clients with tunneling](../media/empower-people-to-work-remotely-remote-access/empower-people-to-work-remotely-remote-access-after-tunneling.png)

This allows the VPN client to send and receive crucial Microsoft 365 cloud service traffic directly over the Internet and to the nearest entry point into the Microsoft network.

For more information and guidance, see [Optimize Office 365 connectivity for remote users using VPN split tunneling](../enterprise/microsoft-365-vpn-split-tunnel.md).

## Using Network Insights

**Network insights** are performance metrics collected from your Microsoft 365 tenant, and available to view only by administrative users in your tenant. Insights are displayed in the Microsoft 365 Admin Center at <https://portal.microsoft.com/adminportal/home#/networkperformance>.

Insights are intended to help in designing network perimeters for your office locations. Each insight provides live details about the performance characteristics for a specific common issue for each geographic location where users are accessing your tenant.

There are two tenant level network insights that may be shown for the tenant. These also appear in the producvitivy score pages:

- [Exchange sampled connections impacted by connectivity issues](../enterprise/office-365-network-mac-perf-insights.md#exchange-sampled-connections-impacted-by-connectivity-issues)
- [SharePoint sampled connections impacted by connectivity issues](../enterprise/office-365-network-mac-perf-insights.md#sharepoint-sampled-connections-impacted-by-connectivity-issues)

There are six specific network insights that may be shown for each office location:

- [Backhauled network egress](../enterprise/office-365-network-mac-perf-insights.md#backhauled-network-egress)
- [Better performance detected for customers near you](../enterprise/office-365-network-mac-perf-insights.md#better-performance-detected-for-customers-near-you)
- [Use of a non-optimal Exchange Online service front door](../enterprise/office-365-network-mac-perf-insights.md#use-of-a-non-optimal-exchange-online-service-front-door)
- [Use of a non-optimal SharePoint Online service front door](../enterprise/office-365-network-mac-perf-insights.md#use-of-a-non-optimal-sharepoint-online-service-front-door)
- [Low download speed from SharePoint front door](../enterprise/office-365-network-mac-perf-insights.md#low-download-speed-from-sharepoint-front-door)
- [China user optimal network egress](../enterprise/office-365-network-mac-perf-insights.md#china-user-optimal-network-egress)


>[!IMPORTANT]
>Network insights, performance recommendations and assessments in the Microsoft 365 Admin Center is currently in preview status, and is only available for Microsoft 365 tenants that have been enrolled in the feature preview program.

## SPO performance with the Office 365 CDN

You can use the built-in Office 365 Content Delivery Network (CDN) to host static assets to provide better performance for your SharePoint Online pages. The Office 365 CDN improves performance by caching static assets closer to the browsers requesting them, which helps to speed up downloads and reduce latency. Also, the Office 365 CDN uses the [HTTP/2 protocol](https://en.wikipedia.org/wiki/HTTP/2) for improved compression and HTTP pipelining. The Office 365 CDN service is included as part of your SharePoint Online subscription.

> [!NOTE]
> The Office 365 CDN is only available to tenants in the **Production** (worldwide) cloud. Tenants in the US Government, China and Germany clouds do not currently support the Office 365 CDN.

The Office 365 CDN is composed of multiple CDNs that allow you to host static assets in multiple locations, or _origins_, and serve them from global high-speed networks. Depending on the kind of content you want to host in the Office 365 CDN, you can add **public** origins, **private** origins or both. See [Choose whether each origin should be public or private](use-microsoft-365-cdn-with-spo.md#CDNOriginChoosePublicPrivate) for more information on the difference between public and private origins.

![Office 365 CDN conceptual diagram](../media/O365-CDN/o365-cdn-flow-transparent.svg "Office 365 CDN conceptual diagram")

If you are already familiar with the way that CDNs work, you only need to complete a few steps to enable the Office 365 CDN for your tenant. This topic describes how. Read on for information about how to get started hosting your static assets.

## Automated endpoint listing

To have your on-premises clients, edge devices, and cloud-based packet analysis services skip processing of trusted Microsoft 365 traffic, you must configure them with the set of endpoints (IP address ranges and DNS names) corresponding to Microsoft 365 services. These endpoints can be manually configured in firewalls and other edge security devices, PAC files for client computers, or SD-WAN devices at branch offices. Hoever, the endpoints change over time, requiring ongoing manual maintenance of the endpoint lists in these locations.

To automate the listing and change management for Microsoft 365 endpoints in your client PAC files and network devices and services, use the Office 365 IP Address and URL REST-based web service. This services helps you better identify and differentiate Microsoft 365 network traffic, making it easier for you to evaluate, configure, and stay up to date with changes.

You can use PowerShell, Python, or other languages to determine the changes to endpoints over time and configure your PAC files and network devices.

Network perimeter device vendors you also can use this web service to:

- Create and test device software to download the list for automated configuration.
- Check for the current version.
- Get the current changes.

The basic process is:

1. Use the Office 365 IP Address and URL web service and the configuration mechanism of your choice to configure your PAC files and network devices and services with the current set of Microsoft 365 endpoints.
2. Run a daily recurring to check for changes in the endpoints or use a notification method.
3. When changes are detected, regenerate and redistribute the PAC file for client computers and make the changes to your network devices and services.

For more information, see [Office 365 IP Address and URL web service](.../enterprise/microsoft-365-ip-web-service.md).

## Results of Step 2

For your Microsoft 365 tenancy with optimal networking, you have determined:

- How to optimize network performance for on-premises users by adding Internet connections to all branch offices and eliminating network hairpins.
- How to implement automated trusted endpoint whitelisting for your client-based PAC files and your network devices and services, including ongoing updates.
- How to support remote workers access to on-premises resources.
- How to use network insights
- How to deploy the Office 365 CDN for your tenant. 

Here is an example of an enterprise organization and it's tenancy with optimal networking.

![Example of a tenancy with optimal networking](../media/tenant-management-overview/tenant-management-tenant-build-step2.png)

[See a larger version of this image](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/media/tenant-management-overview/tenant-management-tenant-build-step2.png)

The tenancy for an enterprise organization has:

- Local internet access for each branch office with an SDWAN device that forwards trusted Microsoft 365 traffic to a local front door.
- Eliminated network hairpins.
- Central office security and proxy edge devices that forward Microsoft 365 trusted traffic without processing to a local front door.

## Ongoing maintenance for optimal networking

On an ongoing basis, you might need to:

- Update your edge devices and deployed PAC files for changes in endpoints.
- Manage the assets in the Office 365 CDN.
- Update VPN clients for changes in endpoints.

## Next step

[![Step 3. Synchronize your identities and enforce secure sign-ins](../media/tenant-management-overview/tenant-management-step-grid-identity.png)](tenant-management-identity.md)

Continue with [identity](tenant-management-identity.md) to synchronize your on-premises accounts and groups and enforce secure user sign-ins.
