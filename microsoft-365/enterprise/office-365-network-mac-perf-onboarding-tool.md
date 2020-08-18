---
title: "Microsoft 365 network connectivity test (preview)"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 04/21/2020
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
description: "Microsoft 365 network connectivity test (preview)"
---

# Microsoft 365 network connectivity test (preview)

The Microsoft 365 network connectivity test is located at <https://connectivity.office.com>. It is an adjunct tool to the network assessment and network insights information available in the Microsoft 365 admin center under the **Health | Connectivity** menu.

>[!NOTE]
>The network connectivity test tool supports tenants in WW Commercial and Germany but not GCC Moderate, GCC High, DoD or China.

The network insights in the Microsoft 365 Admin Center are based on regular in-product measurements for your Microsoft 365 tenant which are aggregated each day. In comparison, the network insights from the Microsoft 365 network connectivity test are run locally and one time in the tool. Testing that can be done in-product is limited and by running tests local to the user more data can be gathered resulting in deeper insights. Consider then that the network insights in the Microsoft 365 Admin Center will show that there is a networking problem for use of Microsoft 365 at a specific office location. The Microsoft 365 connectivity test can help to identify the root cause of that problem leading to a recommended network performance improvement action.

We recommend that these be used together where networking quality status can be assessed for each office location in the Microsoft 365 Admin Center and more specifics can be found after deployment of testing based on the Microsoft 365 connectivity test.

>[!IMPORTANT]
>Network insights, performance recommendations and assessments in the Microsoft 365 Admin Center is currently in preview status, and is only available for Microsoft 365 tenants that have been enrolled in the feature preview program.

## The advanced tests client application

There are two parts to the Microsoft 365 connectivity test. There is the web site <https://connectivity.office.com> and there is a downloadable Windows client application. The downloadable client runs advanced network connectivity tests and most of the tests require this to be run.

The advanced client test is prompted to download from the web site after the web browser tests have completed. It will populate results back into the web page as it runs.

## Results displayed

The results are shown in a Summary and Details tab. The summary tab shows a map of the detected network perimeter and a comparison of the network assessment to other Office 365 customers nearby. It also allows for sharing of the test report. Here's what the summary results view looks like.

![O365 network connectivity test summaryresults](../media/m365-mac-perf/m365-mac-perf-onboarding-tool-summary.png)

Here is an example of the details tab output that the tool shows. On the details tab we show a green circle check mark if the result was compared favorably to a threshold. We show a red triangle exclamation point if the result exceeded a threshold indicating a network insight. The following sections describe each of the details tab results rows and explains the thresholds used for network insights.

![O365 network onboarding tool example test results](../media/m365-mac-perf/m365-mac-perf-onboarding-tool-tests.png)

## Your location information

This section shows test results related to your location.

## Your location

The user location is detected from the users web browser, or it can be typed in at the users choice. It is used to identify network distances to specific parts of the enterprise network perimeter. Only the city from this location detection and the distance to other network points are saved in the report.

The user office location is shown on the map view.

## Network egress location (the location where your network connects to your ISP)

We identify the network egress IP Address on the server side. Location databases are used to look up the approximate location for the network egress. These databases typically have an accuracy of about 90% of IP Addresses. If the location looked up from the network egress IP Address is not accurate then this would lead to a false result from this test. To validate if this error is occurring for a specific IP Address you can use publicly accessible network IP Address location web sites to compare to your actual location.

## Your distance from the network egress location

We determine the distance from that location to the office location. This is shown as a network insight if the distance is greater than 500 miles (800 kilometers) since that is likely to increase the TCP latency by more than 25ms and may affect user Office 365 experience.

The network egress location is shown on the map view and connected to the user office location indicating the network backhaul inside of the enterprise WAN.

Implementing local and direct network egress from user office locations to the Internet is recommended for Microsoft 365 network connectivity. Improvements to local and direct egress are the best way to address this network insight.

## Proxy server information

We identify proxy server(s) configured on the local machine. We identify if any of these are configured in the network path for optimize category Microsoft 365 network traffic. We identify the distance from the user office location to the proxy servers. The distance is tested first by ICMP ping and if that fails we test with TCP ping and finally if that fails we look up the proxy server IP Address in an IP Address location database. We show a network insight if the proxy server is further than 500 miles (800 kilometers) away from the user office location.

## Virtual private network (VPN) you use to connect to your ogranization

This detects if you are using a VPN to connect to Office 365. A passing result will show if you have no VPN, or if you have a VPN with recommended split tunnel configuration for Office 365.

## VPN Split Tunnel

Each optimize category route for Exchange Online, SharePoint Online, and Microsoft Teams is tested to see if it is tunnelled on the VPN or not. A split out workload avoids the VPN entirely. A tunnelled workload is all sent over the VPN. A selective tunnelled workload has some routes sent over the VPN and some split out. A passing result will show if all workloads are split out or selective tunnelled.

## Customers in your metropolitan area with better performance

The network TCP latency of the user office location to the Exchange Online service front door is compared to other Microsoft 365 customers in the same metro area. A network insight is shown if 10% or more of customers in the same metro area have better performance. This means their users will have better performance in the Office 365 user interface. 

This network insight is generated on the basis that all users in a city have access to the same telecommunications infrastructure and the same proximity to Internet circuits and Microsoft's network.

## Time to make a DNS request on your network

This shows the DNS server configured on the client machine that ran the tests. It might be a DNS Recursive Resolver server however this is uncommon. It is more likely to be a DNS forwarder server which caches DNS results and forwards any uncached DNS requests to another DNS server.

This is provided for information only and does not contribute to any network insight.

## Your distance from and/or time to connect to a DNS recursive resolver

The in-use DNS Recursive Resolver is identified by making a specific DNS request and then asking the DNS Name Server for the IP Address that it received the same request from. This IP Address is the DNS Recursive Resolver and it will be looked up in IP Address location databases to find the location. The distance from the user office location to the DNS Recursive Resolver server location is then calculated. This is shown as a network insight if the distance is greater than 500 miles (800 kilometers).

The location looked up from the network egress IP Address may not be accurate and this would lead to a false result from this test. To validate if this error is occurring for a specific IP Address you can use publicly accessible network IP Address location web sites.

This network insight will specifically impact the selection of the Exchange Online service front door. To address this insight local and direct network egress should be a pre-requisite and then DNS Recursive Resolver should be located close to that network egress.

## Exchange Online

This section shows test results related to Exchange Online

## Exchange service front door location

The in-use Exchange service front door is identified in the same way that Outlook does this and we measure the network TCP latency from the user location to it. The TCP latency is shown and the in-use Exchange service front door is compared to the list of best service front doors for the current location. This is shown as a network insight if one of the best Exchange service front door(s) is not in use.

Not using one of the best Exchange service front door(s) could be caused by network backhaul before the corporate network egress in which case we recommend local and direct network egress. It could also be caused by use of a remote DNS recursive resolver server in which case we recommend aligning the DNS recursive resolver server with the network egress.

We calculate a potential improvement in TCP latency (ms) to the Exchange service front door. This is done by looking at the tested user office location network latency and subtracting the network latency from the current location to the closets Exchange service front door. The difference represents the potential opportunity for improvement.

## Best Exchange service front door(s) for your location

This lists the best Exchange service front door locations by city for your location.

## Service front door recorded in the client DNS

This shows the DNS name and IP Address of the Exchange service front door server that you were directed to. It is provided for information only and there is no associated network insight.

## SharePoint Online

This section shows test results related to SharePoint Online.

## The service front door location

The in-use SharePoint service front door is identified in the same way that the OneDrive client does and we measure the network TCP latency from the user office location to it.

## Download speed

We measure the download speed for a 15Mb file from the SharePoint service front door. The result is shown in megabytes per second to indicate what size file in megabytes can be downloaded from SharePoint or OneDrive in one second. The number should be similar to one tenth of the minimum citcuit bandwidth in megabits per second. For example if you have a 100mbps internet connection, you may expect 10 megabytes per second (10MBps). 

## Buffer bloat

During the 15Mb download we measure the TCP latency to the SharePoint service front door. This is the latency under load and it is compared to the latency when not under load. The increase in latency when under load is often attributable to consumer network device buffers being loaded (or bloated). A network insight is shown for any bloat of 1,000 or more. 

## Service front door recorded in the client DNS

This shows the DNS name and IP Address of the SharePoint service front door server that you were directed to. It is provided for information only and there is no associated network insight.

## Microsoft Teams

## Media connectivity (audio, video, and application sharing)

This tests for UDP connectivity to the Microsoft Teams service front door. If this is blocked then Microsoft Teams may still work using TCP, but audio and video will be impared. Read more about these UDP network measurements which also apply to Microsoft Teams at [Media Quality and Network Connectivity Performance in Skype for Business Online](https://docs.microsoft.com/skypeforbusiness/optimizing-your-network/media-quality-and-network-connectivity-performance)

## Packet loss

Shows the UDP packet loss measured in a 10 second test audio call from the client to the Microsoft Teams service front door. This should be lower than 1.00% for a pass. 

## Latency

Shows the UDP latency measured which should be lower than 100ms.

## Jitter

Shows the UDP jitter measured which should be lower than 30ms.

## Connectivity

We test for HTTP connectivity from the user office location to all of the required Microsoft 365 network endpoints. These are published at [https://aka.ms/o365ip](https://aka.ms/o365ip). A network insight is shown for any required network endpoints which cannot be connected to.

Connectivity ay be blocked by a proxy server, a firewall, or another network security device on the enterprise network perimeter or in use as a cloud proxy.

We test the SSL certificate at each required Microsoft 365 network endpoint that is in the optimize or allow category as defined at [https://aka.ms/o365ip](https://aka.ms/o365ip). If any tests do not find a Microsoft SSL certificate, then the encrypted network connected must have been intercepted by an intermediary network device. A network insight is shown on any intercepted encrypted network endpoints.

Where an SSL certificate is found that isn't provided by Microsoft, we show the FQDN for the test and the in-use SSL certificate owner. This SSL certificate owner may be a proxy server vendor, or it may be an enterprise self-signed certificate.

## Network path

This section shows the results of an ICMP traceroute to the Exchange Online service front door, the SharePoint Online service front door, and the Microsoft Teams service front door. It is provided for information only and there is no associated network insight. There are three traceroutes provided. A traceroute to outlook.office365.com, a traceroute to the customers SharePoint front end or to microsoft.sharepoint.com if one was not provided, and a traceroute to world.tr.teams.microsoft.com.

## FAQ

Here are answers to some of our frequently asked questions.

### Is this tool released and supported by Microsoft?

It is currently a proof of concept and we plan to provide updates regularly until we reach general availability release status with support from Microsoft. Please provide feedback to help us improve. We are planning to publish a more detailed Office 365 Network Onboarding guide as part of this tool which is customized for the organization by its test results.

### What is Microsoft 365 service front door?

The Microsoft 365 service front door is an entry point on Microsoft's global network where Office clients and services terminate their network connection. For an optimal network connection to Microsoft 365, it is recommended that your network connection is terminated into the closest Microsoft 365 front door in your city or metro.

Note: Microsoft 365 service front door has no direct relationship to the "Azure Front Door Service" product available in the Azure marketplace.

### What is the best Microsoft 365 service front door?

A best Microsoft 365 service front door (formerly known as an optimal service front door) is one that is closest to your network egress, generally in your city or metro area. Use the Microsoft 365 network performance tool to determine location of your in-use Microsoft 365 service front door and the best service front door(s). If the tool determines your in-use front door is one of the best ones, then you should expect great connectivity into Microsoft's global network.

### What is an internet egress location?

The internet egress Location is the location where your network traffic exits your enterprise network and connects to the Internet. This is also identified as the location where you have a Network Address Translation (NAT) device and usually where you connect with an Internet Service Provider (ISP). If you see a long distance between your location and your internet egress Location, then this may identify a significant WAN backhaul.

## Related topics

[Network performance recommendations in the Microsoft 365 Admin Center (preview)](office-365-network-mac-perf-overview.md)

[Microsoft 365 network performance insights (preview)](office-365-network-mac-perf-insights.md)

[Microsoft 365 network assessment (preview)](office-365-network-mac-perf-score.md)

[Microsoft 365 Network Connectivity Location Services (preview)](office-365-network-mac-location-services.md)
