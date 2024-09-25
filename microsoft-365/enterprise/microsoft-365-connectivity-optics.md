---
title: "Microsoft 365 Connectivity Optics"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/02/2024
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- must-keep
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
search.appverid:
- MET150
- BCS160
ms.assetid: f5ee6c33-bcd7-4b0b-b0f8-dc1d9fb8d132
description: This article contains information about Microsoft 365 Connectivity Optics.
---

# Microsoft 365 Connectivity Optics

This document describes some of the connectivity optics Microsoft typically collects from customer devices, and describes some of the ways Microsoft uses such data to analyze and optimize service delivery and to assess and ensure the best possible end-user experience.

Connectivity optics are generally collected from Microsoft applications, which may be installed on end-user devices or accessed from browsers. Unlike optional data collection within Microsoft 365 services, many of the connectivity optics described here are integral to ensuring that Microsoft meets our availability and performance commitment to customers. These optics allow Microsoft to quickly detect and respond to any issues in the connectivity path between end-users and Microsoft service endpoints. Some of these optics are also used to enable features such as [Network connectivity in the Microsoft 365 Admin Center](office-365-network-mac-perf-overview.md).

## Optics collected from Microsoft 365 applications

Optics are currently collected using infrequent sampling across all devices. As a general matter, the specific set of optics and destinations (service endpoints) which are to be measured in a particular iteration are configured by Microsoft based on service requirements and randomized for sampling purposes.
At each optics collection interval, one or more of the following measurements may be collected using the end-user device as the measurement source and a Microsoft 365 service endpoint as the measurement destination:

| Measurement | Description |
| --- | --- |
| Latency | Time taken to retrieve a small file via HTTP |
| Throughput | Time taken to retrieve a larger file via HTTP, measured rarely to avoid excessive bandwidth consumption |
| Round Trip Time (RTT) | ICMP ping |
| Traceroute | ICMP traceroute |

Each measurement is typically associated with additional information, which may include the following items:

| Item | Description |
| --- | --- |
| Tenant ID | Unique identifier for the customer's Microsoft Entra tenant associated with the end-user device. |
| Monitor ID | Identifier for the application generating the request (such as Outlook, OneDrive, etc.), provided by the client application that is performing the measurement. |
| Request ID | Identifier for the measurement request, specified in the measurement configuration provided by Microsoft. |
| Remote IP | Masked source IP associated with the request from client to service endpoint, provided by the server that received the measurement request and computed based upon the client source IP address that is visible to Microsoft. IP addresses are masked to a /24 subnet for IPv4 addresses or a /48 subnet for IPv6 addresses to ensure that Microsoft cannot identify individual devices or users. |
| Front-end | Microsoft 365 service front-end identifier, provided by the server that received the measurement request. |
| Endpoint | Microsoft 365 service endpoint location, provided by the server that received the measurement request. |
| Certificate Issued By | The "certificate issued by" property of the SSL certificate presented while connecting to the service endpoint, which indicates the certificate authority who issued the certificate to the service endpoint. |
| Certificate Thumbprint | The "certificate thumbprint" property of the SSL certificate presented while connecting to the service endpoint, which is a publicly accessible unique identifier of the certificate. |
| Latitude/Longitude | The abstracted latitude and longitude of the end-user device. This is only collected for tenants who have enabled Windows Location Service on end-user devices and have also [enabled collection of this information in the Microsoft 365 admin portal](office-365-network-mac-perf-overview.md#1-enable-windows-location-services). |

## Measurement process

Each end-user device will typically perform a measurement either on a scheduled basis (for installed applications) or based on the action of loading browser pages (for web-based applications). Measurement activities are performed as background operations and do not impact application experience for users. As the measurement types and destinations which will be used for a particular iteration of this process are randomized, customers may notice requests to Microsoft service endpoints in their region that are similar to the typical requests made by end-user devices for normal application connectivity. In addition, customers may notice requests to Microsoft service endpoints that are well outside of their local region. These measurements are often used to ensure optimal routing of customer requests to the best service endpoint, as changes to customer and ISP infrastructure may require Microsoft to change our request routing policies on an ongoing basis. Learn more about how Microsoft routes traffic to the best service endpoint and how to optimize connectivity to Microsoft 365 services in the [Microsoft 365 networking connectivity overview](microsoft-365-networking-overview.md).

## Service endpoints

The Microsoft service endpoints that are used as destinations for these measurements are contained within the published [Office 365 URLs and IP address ranges](urls-and-ip-address-ranges.md). Access to additional service endpoints are not necessary for the collection of these connectivity optics.
