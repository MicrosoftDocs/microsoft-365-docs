---
title: Managing Microsoft 365 endpoints
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 01/08/2025
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-subscription-management
- Strat_O365_Enterprise
- must-keep
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365_Setup
 - seo-marvel-apr2020
search.appverid: MOE150
ms.assetid: 99cab9d4-ef59-4207-9f2b-3728eb46bf9a
description: Learn how to manage Microsoft 365 endpoints so that they work with your enterprise organization network architecture.
---

# Managing Microsoft 365 endpoints

Most enterprise organizations that have multiple office locations and a connecting WAN need configuration for Microsoft 365 network connectivity. You can optimize your network by sending all trusted Microsoft 365 network requests directly through your firewall, bypassing all extra packet level inspection or processing. This reduces latency and your perimeter capacity requirements. Identifying Microsoft 365 network traffic is the first step in providing optimal performance for your users. For more information, see [Microsoft 365 Network Connectivity Principles](microsoft-365-network-connectivity-principles.md).

Microsoft recommends you access the Microsoft 365 network endpoints and ongoing changes to them using the [Microsoft 365 IP Address and URL Web Service](microsoft-365-ip-web-service.md).

Regardless of how you manage vital Microsoft 365 network traffic, Microsoft 365 requires Internet connectivity. Other network endpoints where connectivity is required are listed at [Additional endpoints not included in the Microsoft 365 IP Address and URL Web service](additional-office365-ip-addresses-and-urls.md).

How you use the Microsoft 365 network endpoints depends on your enterprise organization network architecture. This article outlines several ways that enterprise network architectures can integrate with Microsoft 365 IP addresses and URLs. The easiest way to choose which network requests to trust is to use SD-WAN devices that support automated Microsoft 365 configuration at each of your office locations.

## SD-WAN for local branch egress of vital Microsoft 365 network traffic

At each branch office location, you can provide an SD-WAN device that is configured to route traffic for Microsoft 365 Optimize category of endpoints, or Optimize and Allow categories, directly to Microsoft's network. Other network traffic including on-premises datacenter traffic, general Internet web sites traffic, and traffic to Microsoft 365 Default category endpoints is sent to another location where you have a more substantial network perimeter.

Microsoft is working with SD-WAN providers to enable automated configuration. For more information, see [Microsoft 365 Networking Partner Program](microsoft-365-networking-partner-program.md).

## Use a PAC file for direct routing of vital Microsoft 365 traffic
<a name="pacfiles"> </a>

Use PAC or WPAD files to manage network requests that are associated with Microsoft 365 but don't have an IP address. Typical network requests that are sent through a proxy or perimeter device increase latency. While TLS Break and Inspect creates the largest latency, other services such as proxy authentication and reputation lookup can cause poor performance and a bad user experience. Additionally, these perimeter network devices need enough capacity to process all of the network connection requests. We recommend bypassing your proxy or inspection devices for direct Microsoft 365 network requests.
  
[PowerShell Gallery Get-PacFile](https://www.powershellgallery.com/packages/Get-PacFile) is a PowerShell script that reads the latest network endpoints from the Microsoft 365 IP Address and URL Web service and creates a sample PAC file. You can modify the script so that it integrates with your existing PAC file management.

> [!NOTE]
> For more information about the security and performance considerations of direct connectivity to Microsoft 365 endpoints, see [Microsoft 365 Network Connectivity Principles](microsoft-365-network-connectivity-principles.md).

![Connecting to Microsoft 365 through firewalls and proxies.](../media/34d402f3-f502-42a0-8156-24a7c4273fa5.png)

**Figure 1 - Simple enterprise network perimeter**

The PAC file is deployed to web browsers at point 1 in Figure 1. When using a PAC file for direct egress of vital Microsoft 365 network traffic, you also need to allow connectivity to the IP addresses behind these URLs on your network perimeter firewall. This is done by fetching the IP addresses for the same Microsoft 365 endpoint categories as specified in the PAC file and creating firewall ACLs based on those addresses. The firewall is point 3 in Figure 1.

Separately if you choose to only do direct routing for the Optimize category endpoints, any required Allow category endpoints that you send to the proxy server needs to be listed in the proxy server to bypass further processing. For example, TLS break and Inspect and Proxy Authentication are incompatible with both the Optimize and Allow category endpoints. The proxy server is point 2 in Figure 1.

The common configuration is to permit without processing all outbound traffic from the proxy server for the destination IP addresses for Microsoft 365 network traffic that hits the proxy server. For information about issues with TLS Break and Inspect, see [Using third-party network devices or solutions on Microsoft 365 traffic](https://support.microsoft.com/help/2690045/using-third-party-network-devices-or-solutions-with-office-365).

There are two types of PAC files that the Get-PacFile script generates.

| Type | Description |
|:-----|:-----|
|**1** <br/> |Send Optimize endpoint traffic direct and everything else to the proxy server. <br/> |
|**2** <br/> |Send Optimize and Allow endpoint traffic direct and everything else to the proxy server. This type can also be used to send all supported ExpressRoute for Microsoft 365 traffic to ExpressRoute network segments and everything else to the proxy server. <br/> |

Here's a simple example of calling the PowerShell script:

```powershell
Get-PacFile -ClientRequestId b10c5ed1-bad1-445f-b386-b919946339a7
```

There are many parameters you can pass to the script:

| Parameter | Description |
|:-----|:-----|
|**ClientRequestId** <br/> |This is required and is a GUID passed to the web service that represents the client machine making the call. <br/> |
|**Instance** <br/> |The Microsoft 365 service instance, which defaults to Worldwide. This is also passed to the web service. <br/> |
|**TenantName** <br/> |Your Microsoft 365 tenant name. Passed to the web service and used as a replaceable parameter in some Microsoft 365 URLs. <br/> |
|**Type** <br/> |The type of the proxy PAC file that you want to generate. <br/> |

Here's another example of calling the PowerShell script with more parameters:

```powershell
Get-PacFile -Type 2 -Instance Worldwide -TenantName Contoso -ClientRequestId b10c5ed1-bad1-445f-b386-b919946339a7
```

## Proxy server bypass processing of Microsoft 365 network traffic

Where PAC files aren't used for direct outbound traffic, you still want to bypass processing on your network perimeter by configuring your proxy server. Some proxy server vendors have enabled automated configuration of this as described in the [Microsoft 365 Networking Partner Program](microsoft-365-networking-partner-program.md).

If you do this manually, you need to get the Optimize and Allow endpoint category data from the Microsoft 365 IP Address and URL Web Service and configure your proxy server to bypass processing for these. It's important to avoid TLS Break and Inspect and Proxy Authentication for the Optimize and Allow category endpoints.
  
## Change management for Microsoft 365 IP addresses and URLs
<a name="bkmk_changes"> </a>

In addition to selecting appropriate configuration for your network perimeter, it's critical that you adopt a change management process for Microsoft 365 endpoints. These endpoints change regularly. If you don't manage the changes, you can end up with users blocked or with poor performance after a new IP address or URL is added.

Changes to the Microsoft 365 IP addresses and URLs are usually published near the last day of each month. Sometimes a change is published outside of that schedule due to operational, support, or security requirements.

When a change is published that requires you to act because an IP address or URL was added, you should expect to receive 30 days notice from the time we publish the change until there's a Microsoft 365 service on that endpoint. This is reflected as the Effective Date. Although we aim for this notification period, it might not always be possible due to operational, support, or security requirements. Changes that don't require immediate action to maintain connectivity, such as removed IP addresses or URLs or less significant changes, don't include advance notification. In these instances, no Effective Date is provided. Regardless of what notification is provided, we list the expected service active date for each change.

### Change notification using the Web Service

You can use the Microsoft 365 IP Address and URL Web Service to get change notification. We recommend you call the **/version** web method once an hour to check the version of the endpoints that you're using to connect to Microsoft 365. If this version changes when compared to the version that you have in use, then you should get the latest endpoint data from the **/endpoints** web method and optionally get the differences from the **/changes** web method. It isn't necessary to call the **/endpoints** or **/changes** web methods if there hasn't been any change to the version you found.

For more information, see [Microsoft 365 IP Address and URL Web Service](microsoft-365-ip-web-service.md).

### Change notification using RSS feeds

The Microsoft 365 IP Address and URL Web Service provide an RSS feed that you can subscribe to in Outlook. There are links to the RSS URLs on each of the Microsoft 365 service instance-specific pages for the IP addresses and URLs. For more information, see [Microsoft 365 IP Address and URL Web Service](microsoft-365-ip-web-service.md).

### Change notification and approval review using Power Automate

We understand that you might still require manual processing for network endpoint changes that come through each month. You can use Power Automate to create a flow that notifies you by email and optionally runs an approval process for changes when Microsoft 365 network endpoints have changes. Once review is completed, you can have the flow automatically email the changes to your firewall and proxy server management team.

For information about a Power Automate sample and template, see [Use Power Automate to receive an email for changes to Microsoft 365 IP addresses and URLs](https://techcommunity.microsoft.com/t5/Office-365-Networking/Use-Microsoft-Flow-to-receive-an-email-for-changes-to-Office-365/td-p/240651).

## Microsoft 365 network endpoints FAQ
<a name="FAQ"> </a>

See these frequently asked questions about Microsoft 365 network connectivity.
  
### How do I submit a question?

Select the link at the bottom to indicate if the article was helpful or not and submit any more questions. We monitor the feedback and update the questions here with the most frequently asked.
  
### How do I determine the location of my tenant?

 **Tenant location** is best determined using our [datacenter map](./o365-data-locations.md).
  
### Am I peering appropriately with Microsoft?

 **Peering locations** are described in more detail in [peering with Microsoft](https://www.microsoft.com/peering).
  
With over 2500 ISP peering relationships globally and 70 points of presence, getting from your network to ours should be seamless. It can't hurt to spend a few minutes making sure your ISP's peering relationship is the most optimal, [here's a few examples](/archive/blogs/onthewire/__guidance) of good and not so good peering hand-offs to our network.

### I see network requests to IP addresses not on the published list, do I need to provide access to them?
<a name="bkmk_MissingIP"> </a>

We only provide IP addresses for the Microsoft 365 servers you should route directly to. This isn't a comprehensive list of all IP addresses you'll see network requests for. You'll see network requests to Microsoft and third-party owned, unpublished, IP addresses. These IP addresses are dynamically generated or managed in a way that prevents timely notice when they change. If your firewall can't allow access based on the FQDNs for these network requests, use a PAC or WPAD file to manage the requests.
  
See an IP associated with Microsoft 365 that you want more information on?
  
1. Check if the IP address is included in a larger published range using a CIDR calculator, such as these for [IPv4](https://www.ipaddressguide.com/cidr) or [IPv6](https://www.ipaddressguide.com/ipv6-cidr). For example, 40.96.0.0/13 includes the IP Address 40.103.0.1 despite 40.96 not matching 40.103.
2. See if a partner owns the IP with a [whois query](https://dnsquery.org/). If it's Microsoft owned, it might be an internal partner. Many partner network endpoints are listed as belonging to the _default_ category, for which IP addresses aren't published.
3. The IP address might not be part of Microsoft 365 or a dependency. Microsoft 365 network endpoint publishing doesn't include all of Microsoft network endpoints.
4. Check the certificate. With a browser, connect to the IP address using `https://<IP_address>` and check the domains listed on the certificate to understand what domains are associated with the IP address. If it's a Microsoft-owned IP address and not on the list of Microsoft 365 IP addresses, it's likely the IP address is associated with a Microsoft CDN such as  *MSOCDN.NET*  or another Microsoft domain without published IP information. If you do find the domain on the certificate is one where we claim to list the IP address, please let us know.

### Some Microsoft 365 URLs point to CNAME records instead of A records in the DNS. What do I have to do with the CNAME records?
<a name="bkmk_cname"> </a>

Client computers need a DNS A or AAAA record that includes one or more IP address(es) to connect to a cloud service. Some URLs included in Microsoft 365 show CNAME records instead of A or AAAA records. These CNAME records are intermediary and there might be several in a chain. They'll always eventually resolve to an A or AAAA record for an IP Address. For example, consider the following series of DNS records, which ultimately resolve to the IP address _IP_1_:

```console
serviceA.office.com -> CNAME: serviceA.domainA.com -> CNAME: serviceA.domainB.com -> A: IP_1
```

These CNAME redirects are a normal part of the DNS and are transparent to the client computer and transparent to proxy servers. They're used for load balancing, content delivery networks, high availability, and service incident mitigation. Microsoft doesn't publish the intermediary CNAME records, they're subject to change at any time, and you shouldn't need to configure them as allowed in your proxy server.

A proxy server validates the initial URL, which in the above example is serviceA.office.com, and this URL would be included in Microsoft 365 publishing. The proxy server requests DNS resolution of that URL to an IP Address and receives back IP_1. It doesn't validate the intermediary CNAME redirection records.

Hard-coded configurations or using an allowlist based on indirect Microsoft 365 FQDNs aren't recommended and not supported by Microsoft. They are known to cause customer connectivity issues. DNS solutions that block on CNAME redirection, or that otherwise incorrectly resolve Microsoft 365 DNS entries, can be solved via DNS forwarders with DNS recursion enabled or by using DNS root hints. Many third-party network perimeter products natively integrate recommended Microsoft 365 endpoint to include an allowlist in their configuration using the [Microsoft 365 IP Address and URL Web service](microsoft-365-ip-web-service.md).

### Why do I see names such as nsatc.net or akadns.net in the Microsoft domain names?
<a name="bkmk_akamai"> </a>

Microsoft 365 and other Microsoft services use several third-party services such as Akamai and MarkMonitor to improve your Microsoft 365 experience. To keep giving you the best experience possible, we might change these services in the future. Third-party domains might host content, such as a CDN, or they might host a service, such as a geographical traffic management service. Some of the services currently in use include:
  
[MarkMonitor](https://www.markmonitor.com/) is in use when you see requests that include  *\*.nsatc.net*. This service provides domain name protection and monitoring to protect against malicious behavior.
  
[ExactTarget](https://www.marketingcloud.com/) is in use when you see requests to  *\*.exacttarget.com*. This service provides email link management and monitoring against malicious behavior.
  
[Akamai](https://www.akamai.com/) is in use when you see requests that include one of the following FQDNs. This service offers geo-DNS and content delivery network services.
  
```console
*.akadns.net
*.akam.net
*.akamai.com
*.akamai.net
*.akamaiedge.net
*.akamaihd.net
*.akamaized.net
*.edgekey.net
*.edgesuite.net
```

<a name="bkmk_thirdparty"> </a>
### I have to have the minimum connectivity possible for Microsoft 365

As Microsoft 365 is a suite of services built to function over the internet, the reliability and availability promises are based on many standard internet services being available. For example, standard internet services such as DNS, CRL, and CDNs must be reachable to use Microsoft 365 just as they must be reachable to use most modern internet services.

The Microsoft 365 suite is broken down into four major service areas representing the three primary workloads and a set of common resources. These service areas may be used to associate traffic flows with a particular application, however given that features often consume endpoints across multiple workloads, these service areas cannot effectively be used to restrict access.

| Service Area | Description |
|:-----|:-----|
|**Exchange** <br/> |Exchange Online and Exchange Online Protection <br/> |
|**SharePoint** <br/> |SharePoint Online and OneDrive for Business <br/> |
|**Skype for Business Online and Microsoft Teams** <br/> |Skype for Business and Microsoft Teams <br/> |
|**Common** <br/> |Microsoft 365 Pro Plus, Office in a browser, Microsoft Entra ID, and other common network endpoints <br/> |

In addition to basic internet services, there are third-party services that are only used to integrate functionality. While these services are needed for integration, they're marked as optional in the Microsoft 365 endpoints article. This means core functionality of the service continues to function if the endpoint isn't accessible. Any network endpoint that is required has the required attribute set to true. Any network endpoint that is optional has the required attribute set to false and the notes attribute detail the missing functionality you should expect if connectivity is blocked.
  
If you're trying to use Microsoft 365 and are finding third-party services aren't accessible, you want to [ensure all FQDNs marked required or optional in this article are allowed through the proxy and firewall](urls-and-ip-address-ranges.md).
  
<a name="bkmk_consumer"> </a>
### How do I block access to Microsoft's consumer services?

The tenant restrictions feature now supports blocking the use of all Microsoft consumer applications (MSA apps) such as OneDrive, Hotmail, and Xbox.com. This feature uses a separate header to the login.live.com endpoint. For more information, see [Use tenant restrictions to manage access to SaaS cloud applications](/azure/active-directory/manage-apps/tenant-restrictions#blocking-consumer-applications).

<a name="bkmk_IPOnlyFirewall"> </a>

### My firewall requires IP Addresses and cannot process URLs. How do I configure it for Microsoft 365?

Microsoft 365 doesn't provide IP addresses of all required network endpoints. Some are provided as URLs only and are categorized as default. URLs in the default category that are required should be allowed through a proxy server. If you don't have a proxy server, look at how you have configured web requests for URLs that users type into the address bar of a web browser; the user doesn't provide an IP address either. The Microsoft 365 default category URLs that don't provide IP addresses should be configured in the same way.

## Related articles

[Microsoft 365 IP Address and URL Web service](microsoft-365-ip-web-service.md)

[Microsoft Azure Datacenter IP Ranges](https://www.microsoft.com/download/details.aspx?id=41653)
  
[Microsoft Public IP Space](https://www.microsoft.com/download/details.aspx?id=53602)
  
[Network infrastructure requirements for Microsoft Intune](/mem/intune/fundamentals/intune-endpoints)
  
[Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md)
  
[Microsoft 365 Network Connectivity Principles](microsoft-365-network-connectivity-principles.md)
