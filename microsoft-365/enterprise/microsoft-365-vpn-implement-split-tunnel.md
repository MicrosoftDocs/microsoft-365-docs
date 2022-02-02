---
title: "Implementing VPN split tunneling for Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 2/2/2022
audience: Admin
ms.article: conceptual
ms.service: o365-administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
- remotework
f1.keywords:
- NOCSH
description: "How to implement VPN split tunneling for Microsoft 365"
---

# Implementing VPN split tunneling for Microsoft 365

>[!NOTE]
>This article is part of a set of articles that address Microsoft 365 optimization for remote users.

>- For an overview of using VPN split tunneling to optimize Microsoft 365 connectivity for remote users, see [Overview: VPN split tunneling for Microsoft 365](microsoft-365-vpn-split-tunnel.md).
>- For a detailed list of VPN split tunneling scenarios, see [Common VPN split tunneling scenarios for Microsoft 365](microsoft-365-vpn-common-scenarios.md).
>- For detailed guidance on implementing VPN split tunneling, see [Implementing VPN split tunneling for Microsoft 365](microsoft-365-vpn-implement-split-tunnel.md).
>- For guidance on securing Teams media traffic in VPN split tunneling environments, see [Securing Teams media traffic for VPN split tunneling](microsoft-365-vpn-securing-teams.md).
>- For information about how to configure Stream and live events in VPN environments, see [Special considerations for Stream and live events in VPN environments](microsoft-365-vpn-stream-and-live-events.md).
>- For information about optimizing Microsoft 365 worldwide tenant performance for users in China, see [Microsoft 365 performance optimization for China users](microsoft-365-networking-china.md).

For many years, enterprises have been using VPNs to support remote experiences for their users. While core workloads remained on-premises, a VPN from the remote client routed through a datacenter on the corporate network was the primary method for remote users to access corporate resources. To safeguard these connections, enterprises build layers of network security solutions along the VPN paths. This security was built to protect internal infrastructure and to safeguard mobile browsing of external web sites by rerouting traffic into the VPN and then out through the on-premises Internet perimeter. VPNs, network perimeters, and associated security infrastructure were often purpose-built and scaled for a defined volume of traffic, typically with most connectivity being initiated from within the corporate network, and most of it staying within the internal network boundaries.

For quite some time, VPN models where all connections from the remote user device are routed back into the on-premises network (known as _forced tunneling_) were largely sustainable as long as the concurrent scale of remote users was modest and the traffic volumes traversing VPN were low.  Some customers continued to use VPN force tunneling as the status quo even after their applications moved from inside the corporate perimeter to public SaaS clouds.

The use of forced tunneled VPNs for connecting to distributed and performance-sensitive cloud applications is suboptimal, but the negative effects have been accepted by some enterprises so as to maintain the security status quo. An example diagram of this scenario can be seen below:

![Split Tunnel VPN configuration.](../media/vpn-split-tunneling/enterprise-network-traditional.png)

This problem has been growing for many years, with many customers reporting a significant shift of network traffic patterns. Traffic that used to stay on premises now connects to external cloud endpoints. Many Microsoft customers report that previously, around 80% of their network traffic was to some internal source (represented by the dotted line in the above diagram). In 2020 that number is now around 20% or lower as they have shifted major workloads to the cloud, these trends aren't uncommon with other enterprises. Over time, as the cloud journey progresses, the above model becomes increasingly cumbersome and unsustainable, preventing an organization from being agile as they move into a cloud-first world.

The worldwide COVID-19 crisis has escalated this problem to require immediate remediation. The need to ensure employee safety has generated unprecedented demands on enterprise IT to support work-from-home productivity at a massive scale. Microsoft 365 is well positioned to help customers fulfill that demand, but high concurrency of users working from home generates a large volume of Microsoft 365 traffic which, if routed through forced tunnel VPN and on-premises network perimeters, causes rapid saturation and runs VPN infrastructure out of capacity. In this new reality, using VPN to access Microsoft 365 is no longer just a performance impediment, but a hard wall that not only impacts Microsoft 365 but critical business operations that still have to rely on the VPN to operate.

Microsoft has been working closely with customers and the wider industry for many years to provide effective, modern solutions to these problems from within our own services, and to align with industry best practice. [Connectivity principles](./microsoft-365-network-connectivity-principles.md) for the Microsoft 365 service have been designed to work efficiently for remote users while still allowing an organization to maintain security and control over their connectivity. These solutions can also be implemented quickly with limited work yet achieve a significant positive effect on the problems outlined above.

Microsoft's recommended strategy for optimizing remote worker's connectivity is focused on rapidly mitigating problems and providing high performance with a few simple steps. These steps adjust the legacy VPN approach for a few defined endpoints that bypass bottlenecked VPN servers. An equivalent or even superior security model can be applied at different layers to remove the need to secure all traffic at the egress of the corporate network. In most cases, this can be effectively achieved within hours and is then scalable to other workloads as requirements demand and time allows.

## Implement VPN split tunneling

In this section, you'll find the simple steps required to migrate your VPN client architecture from a _VPN forced tunnel_ to a _VPN forced tunnel with a few trusted exceptions_, [VPN split tunnel model #2](microsoft-365-vpn-common-scenarios.md#2-vpn-forced-tunnel-with-a-small-number-of-trusted-exceptions) in [Common VPN split tunneling scenarios for Microsoft 365](microsoft-365-vpn-common-scenarios.md).

The diagram below illustrates how the recommended VPN split tunnel solution works:

![Split tunnel VPN solution detail.](../media/vpn-split-tunneling/vpn-split-tunnel-example.png)

### 1. Identify the endpoints to optimize

In the [Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md) article, Microsoft clearly identifies the key endpoints you need to optimize and categorizes them as **Optimize**. There are currently just four URLS and 20 IP subnets that need to be optimized. This small group of endpoints accounts for around 70% - 80% of the volume of traffic to the Microsoft 365 service including the latency sensitive endpoints such as those for Teams media. Essentially this is the traffic that we need to take special care of and is also the traffic that will put incredible pressure on traditional network paths and VPN infrastructure.

URLs in this category have the following characteristics:

- Are Microsoft owned and managed endpoints, hosted on Microsoft infrastructure
- Have IPs provided
- Low rate of change and are expected to remain small in number (currently 20 IP subnets)
- Are bandwidth and/or latency sensitive
- Are able to have required security elements provided in the service rather than inline on the network
- Account for around 70-80% of the volume of traffic to the Microsoft 365 service

For more information about Microsoft 365 endpoints and how they are categorized and managed, see [Managing Microsoft 365 endpoints](managing-office-365-endpoints.md).

#### Optimize URLs

The current Optimize URLs can be found in the table below. Under most circumstances, you should only need to use URL endpoints in a [browser PAC file](managing-office-365-endpoints.md#use-a-pac-file-for-direct-routing-of-vital-office-365-traffic) where the endpoints are configured to be sent direct, rather than to the proxy.

| Optimize URLs | Port/Protocol | Purpose |
| --- | --- | --- |
| <https://outlook.office365.com> | TCP 443 | This is one of the primary URLs Outlook uses to connect to its Exchange Online server and has a high volume of bandwidth usage and connection count. Low network latency is required for online features including: instant search, other mailbox calendars, free / busy lookup, manage rules and alerts, Exchange online archive, emails departing the outbox. |
| <https://outlook.office.com> | TCP 443 | This URL is used for Outlook Online Web Access to connect to Exchange Online server, and is sensitive to network latency. Connectivity is particularly required for large file upload and download with SharePoint Online. |
| https://\<tenant\>.sharepoint.com | TCP 443 | This is the primary URL for SharePoint Online and has high-bandwidth usage. |
| https://\<tenant\>-my.sharepoint.com | TCP 443 | This is the primary URL for OneDrive for Business and has high bandwidth usage and possibly high connection count from the OneDrive for Business Sync tool. |
| Teams Media IPs (no URL) | UDP 3478, 3479, 3480, and 3481 | Relay Discovery allocation and real-time traffic (3478), Audio (3479), Video (3480), and Video Screen Sharing (3481). These are the endpoints used for Skype for Business and Microsoft Teams Media traffic (calls, meetings, etc.). Most endpoints are provided when the Microsoft Teams client establishes a call (and are contained within the required IPs listed for the service). Use of the UDP protocol is required for optimal media quality.   |

In the above examples, **tenant** should be replaced with your Microsoft 365 tenant name. For example, **contoso.onmicrosoft.com** would use _contoso.sharepoint.com_ and _contoso-my.sharepoint.com_.

#### Optimize IP address ranges

At the time of writing the IP address ranges that these endpoints correspond to are as follows. It's **very strongly** advised you use a [script such as this](https://github.com/microsoft/Office365NetworkTools/tree/master/Scripts/Display%20URL-IPs-Ports%20per%20Category) example, the [Microsoft 365 IP and URL web service](microsoft-365-ip-web-service.md) or the [URL/IP page](urls-and-ip-address-ranges.md) to check for any updates when applying the configuration, and put a policy in place to do so regularly.

```markdown
104.146.128.0/17
13.107.128.0/22
13.107.136.0/22
13.107.18.10/31
13.107.6.152/31
13.107.64.0/18
131.253.33.215/32
132.245.0.0/16
150.171.32.0/22
150.171.40.0/22
204.79.197.215/32
23.103.160.0/20
40.104.0.0/15
40.108.128.0/17
40.96.0.0/13
52.104.0.0/14
52.112.0.0/14
52.96.0.0/14
52.120.0.0/14
```

### 2. Optimize access to these endpoints via the VPN

Now that we have identified these critical endpoints, we need to divert them away from the VPN tunnel and allow them to use the user's local Internet connection to connect directly to the service. The manner in which this is accomplished will vary depending on the VPN product and machine platform used but most VPN solutions will allow some simple configuration of policy to apply this logic. For information VPN platform-specific split tunnel guidance, see [HOWTO guides for common VPN platforms](#howto-guides-for-common-vpn-platforms).

If you wish to test the solution manually, you can execute the following PowerShell example to emulate the solution at the route table level. This example adds a route for each of the Teams Media IP subnets into the route table. You can test Teams media performance before and after, and observe the difference in routes for the specified endpoints.

#### Example: Add Teams Media IP subnets into the route table

```powershell
$intIndex = "" # index of the interface connected to the internet
$gateway = "" # default gateway of that interface
$destPrefix = "52.120.0.0/14", "52.112.0.0/14", "13.107.64.0/18" # Teams Media endpoints
# Add routes to the route table
foreach ($prefix in $destPrefix) {New-NetRoute -DestinationPrefix $prefix -InterfaceIndex $intIndex -NextHop $gateway}
```

In the above script, _$intIndex_ is the index of the interface connected to the internet (find by running **get-netadapter** in PowerShell; look for the value of _ifIndex_) and _$gateway_ is the default gateway of that interface (find by running **ipconfig** in a command prompt or **(Get-NetIPConfiguration | Foreach IPv4DefaultGateway).NextHop** in PowerShell).

Once you have added the routes, you can confirm that the route table is correct by running **route print** in a command prompt or PowerShell. The output should contain the routes you added, showing the interface index (_22_ in this example) and the gateway for that interface (_192.168.1.1_ in this example):

![Route print output.](../media/vpn-split-tunneling/vpn-route-print.png)

To add routes for _all_ current IP address ranges in the Optimize category, you can use the following script variation to query the [Microsoft 365 IP and URL web service](microsoft-365-ip-web-service.md) for the current set of Optimize IP subnets and add them to the route table.

#### Example: Add all Optimize subnets into the route table

```powershell
$intIndex = "" # index of the interface connected to the internet
$gateway = "" # default gateway of that interface
# Query the web service for IPs in the Optimize category
$ep = Invoke-RestMethod ("https://endpoints.office.com/endpoints/worldwide?clientrequestid=" + ([GUID]::NewGuid()).Guid)
# Output only IPv4 Optimize IPs to $optimizeIps
$destPrefix = $ep | where {$_.category -eq "Optimize"} | Select-Object -ExpandProperty ips | Where-Object { $_ -like '*.*' }
# Add routes to the route table
foreach ($prefix in $destPrefix) {New-NetRoute -DestinationPrefix $prefix -InterfaceIndex $intIndex -NextHop $gateway}
```

If you inadvertently added routes with incorrect parameters or simply wish to revert your changes, you can remove the routes you just added with the following command:

```powershell
foreach ($prefix in $destPrefix) {Remove-NetRoute -DestinationPrefix $prefix -InterfaceIndex $intIndex -NextHop $gateway}
```

<!--- remmed until we add more reliable interface selection logic
#### Example script to add Teams Media subnets to the route table

```powershell
$adapter = get-netadapter | ? {$_.Status -eq "Up"}
$adapterIndex = $adapter.ifIndex
$gateway = (Get-NetIPConfiguration | Foreach IPv4DefaultGateway).NextHop

$destPrefix = "52.120.0.0/14", "52.112.0.0/14", "13.107.64.0/18"
foreach ($prefix in $destPrefix) {New-NetRoute -DestinationPrefix $prefix -InterfaceIndex $intIndex -NextHop $gateway}
```
-->

The VPN client should be configured so that traffic to the **Optimize** IPs are routed in this way. This allows the traffic to utilize local Microsoft resources such as Microsoft 365 Service Front Doors [such as the Azure Front Door](https://azure.microsoft.com/blog/azure-front-door-service-is-now-generally-available/) that deliver Microsoft 365 services and connectivity endpoints as close to your users as possible. This allows us to deliver high performance levels to users wherever they are in the world and takes full advantage of [Microsoft's world class global network](https://azure.microsoft.com/blog/how-microsoft-builds-its-fast-and-reliable-global-network/), which is likely within a few milliseconds of your users' direct egress.

## HOWTO guides for common VPN platforms

This section provides links to detailed guides for implementing split tunneling for Microsoft 365 traffic from the most common partners in this space. We'll add additional guides as they become available.

- **Windows 10 VPN client**: [Optimizing Microsoft 365 traffic for remote workers with the native Windows 10 VPN client](/windows/security/identity-protection/vpn/vpn-office-365-optimization)
- **Cisco Anyconnect**: [Optimize Anyconnect Split Tunnel for Office365](https://www.cisco.com/c/en/us/support/docs/security/anyconnect-secure-mobility-client/215343-optimize-anyconnect-split-tunnel-for-off.html)
- **Palo Alto GlobalProtect**: [Optimizing Microsoft 365 Traffic via VPN Split Tunnel Exclude Access Route](https://live.paloaltonetworks.com/t5/Prisma-Access-Articles/GlobalProtect-Optimizing-Office-365-Traffic/ta-p/319669)
- **F5 Networks BIG-IP APM**: [Optimizing Microsoft 365 traffic on Remote Access through VPNs when using BIG-IP APM](https://devcentral.f5.com/s/articles/SSL-VPN-Split-Tunneling-and-Office-365)
- **Citrix Gateway**: [Optimizing Citrix Gateway VPN split tunnel for Office365](https://docs.citrix.com/citrix-gateway/13/optimizing-citrix-gateway-vpn-split-tunnel-for-office365.html)
- **Pulse Secure**: [VPN Tunneling: How to configure split tunneling to exclude Microsoft 365 applications](https://kb.pulsesecure.net/articles/Pulse_Secure_Article/KB44417)
- **Check Point VPN**: [How to configure Split Tunnel for Microsoft 365 and other SaaS Applications](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk167000)

## FAQ

The Microsoft Security Team has published [Alternative ways for security professionals and IT to achieve modern security controls in today’s unique remote work scenarios](https://www.microsoft.com/security/blog/2020/03/26/alternative-security-professionals-it-achieve-modern-security-controls-todays-unique-remote-work-scenarios/), a blog post, that outlines key ways for security professionals and IT can achieve modern security controls in today's unique remote work scenarios. In addition, below are some of the common customer questions and answers on this subject.

### How do I stop users accessing other tenants I do not trust where they could exfiltrate data?

The answer is a [feature called tenant restrictions](/azure/active-directory/manage-apps/tenant-restrictions). Authentication traffic isn't high volume nor especially latency sensitive so can be sent through the VPN solution to the on-premises proxy where the feature is applied. An allow list of trusted tenants is maintained here and if the client attempts to obtain a token to a tenant that isn't trusted, the proxy simply denies the request. If the tenant is trusted, then a token is accessible if the user has the right credentials and rights.

So even though a user can make a TCP/UDP connection to the Optimize marked endpoints above, without a valid token to access the tenant in question, they simply cannot log in and access/move any data.

### Does this model allow access to consumer services such as personal OneDrive accounts?

No, it does not, the Microsoft 365 endpoints aren't the same as the consumer services (Onedrive.live.com as an example) so the split tunnel won't allow a user to directly access consumer services. Traffic to consumer endpoints will continue to use the VPN tunnel and existing policies will continue to apply.

### How do I apply DLP and protect my sensitive data when the traffic no longer flows through my on-premises solution?

To help you prevent the accidental disclosure of sensitive information, Microsoft 365 has a rich set of [built-in tools](../compliance/information-protection.md). You can use the built-in [DLP capabilities](../compliance/dlp-learn-about-dlp.md) of Teams and SharePoint to detect inappropriately stored or shared sensitive information. If part of your remote work strategy involves a bring-your-own-device (BYOD) policy, you can use [app-based Conditional Access](/azure/active-directory/conditional-access/app-based-conditional-access) to prevent sensitive data from being downloaded to users' personal devices

### How do I evaluate and maintain control of the user's authentication when they are connecting directly?

In addition to the tenant restrictions feature noted in Q1, [conditional access policies](/azure/active-directory/conditional-access/overview) can be applied to dynamically assess the risk of an authentication request and react appropriately. Microsoft recommends the [Zero Trust model](https://www.microsoft.com/security/zero-trust?rtc=1) is implemented over time and we can use Azure AD conditional access policies to maintain control in a mobile and cloud-first world. Conditional access policies can be used to make a real-time decision on whether an authentication request is successful based on numerous factors such as:

- Device, is the device known/trusted/Domain joined?
- IP – is the authentication request coming from a known corporate IP address? Or from a country we do not trust?
- Application – Is the user authorized to use this application?

We can then trigger policy such as approve, trigger MFA or block authentication based on these policies.

### How do I protect against viruses and malware?

Again, Microsoft 365 provides protection for the Optimize marked endpoints in various layers in the service itself, [outlined in this document](/office365/Enterprise/office-365-malware-and-ransomware-protection). As noted, It's vastly more efficient to provide these security elements in the service itself rather than try to do it in line with devices that may not fully understand the protocols/traffic. By default, SharePoint Online [automatically scans file uploads](../security/office-365-security/virus-detection-in-spo.md) for known malware

For the Exchange endpoints listed above, [Exchange Online Protection](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description) and [Microsoft Defender for Microsoft 365](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description) do an excellent job of providing security of the traffic to the service.

### Can I send more than just the Optimize traffic direct?

Priority should be given to the **Optimize** marked endpoints as these will give maximum benefit for a low level of work. However, if you wish, the Allow marked endpoints are required for the service to work and have IP addresses provided for the endpoints that can be used if necessary.

There are also various vendors who offer cloud-based proxy/security solutions called _secure web gateways_ which provide central security, control, and corporate policy application for general web browsing. These solutions can work well in a cloud-first world, if highly available, performant, and provisioned close to your users by allowing secure Internet access to be delivered from a cloud-based location close to the user. This removes the need for a hairpin through the VPN/corporate network for general browsing traffic, while still allowing central security control.

Even with these solutions in place however, Microsoft still strongly recommends that Optimize marked Microsoft 365 traffic is sent direct to the service.

For guidance on allowing direct access to an Azure Virtual Network, see [Remote work using Azure VPN Gateway Point-to-site](/azure/vpn-gateway/work-remotely-support).

### Why is port 80 required? Is traffic sent in the clear?

Port 80 is only used for things like redirect to a port 443 session, no customer data is sent or is accessible over port 80. [Encryption](../compliance/encryption.md) outlines encryption for data in transit and at rest for Microsoft 365, and [Types of traffic](/microsoftteams/microsoft-teams-online-call-flows#types-of-traffic) outlines how we use SRTP to protect Teams media traffic.

### Does this advice apply to users in China using a worldwide instance of Microsoft 365?

**No**, it does not. The one caveat to the above advice is users in the PRC who are connecting to a worldwide instance of Microsoft 365. Due to the common occurrence of cross border network congestion in the region, direct Internet egress performance can be variable. Most customers in the region operate using a VPN to bring the traffic into the corporate network and utilize their authorized MPLS circuit or similar to egress outside the country via an optimized path. This is outlined further in the article [Microsoft 365 performance optimization for China users](microsoft-365-networking-china.md).

### Does split-tunnel configuration work for Teams running in a browser?

Yes, with caveats. Most Teams functionality is supported in the browsers listed in [Get clients for Microsoft Teams](/microsoftteams/get-clients#web-client).

In addition, Microsoft Edge **96 and above** supports VPN split tunneling for peer-to-peer traffic by enabling the Edge [WebRtcRespectOsRoutingTableEnabled](/deployedge/microsoft-edge-policies#webrtcrespectosroutingtableenabled) policy. At this time, other browsers may not support VPN split tunneling for peer-to-peer traffic.

## Related articles

[Overview: VPN split tunneling for Microsoft 365](microsoft-365-vpn-split-tunnel.md)

[Implementing VPN split tunneling for Microsoft 365](microsoft-365-vpn-implement-split-tunnel.md)

[Common VPN split tunneling scenarios for Microsoft 365](microsoft-365-vpn-common-scenarios.md)

[Securing Teams media traffic for VPN split tunneling](microsoft-365-vpn-securing-teams.md)

[Special considerations for Stream and live events in VPN environments](microsoft-365-vpn-stream-and-live-events.md)

[Microsoft 365 performance optimization for China users](microsoft-365-networking-china.md)

[Microsoft 365 Network Connectivity Principles](microsoft-365-network-connectivity-principles.md)

[Assessing Microsoft 365 network connectivity](assessing-network-connectivity.md)

[Microsoft 365 network and performance tuning](network-planning-and-performance.md)

[Alternative ways for security professionals and IT to achieve modern security controls in today's unique remote work scenarios (Microsoft Security Team blog)](https://www.microsoft.com/security/blog/2020/03/26/alternative-security-professionals-it-achieve-modern-security-controls-todays-unique-remote-work-scenarios/)

[Enhancing VPN performance at Microsoft: using Windows 10 VPN profiles to allow auto-on connections](https://www.microsoft.com/itshowcase/enhancing-remote-access-in-windows-10-with-an-automatic-vpn-profile)

[Running on VPN: How Microsoft is keeping its remote workforce connected](https://www.microsoft.com/itshowcase/blog/running-on-vpn-how-microsoft-is-keeping-its-remote-workforce-connected/?elevate-lv)
