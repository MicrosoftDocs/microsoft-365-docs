---
title: "Overview: VPN split tunneling with Office 365"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 9/22/2020
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
- remotework
- m365initiative-coredeploy
f1.keywords:
- NOCSH
description: "Guidance for using VPN split tunneling with Office 365 to optimize Office 365 connectivity for remote users."
---

# Optimize Office 365 connectivity for remote users using VPN split tunneling
<!---
>[!NOTE]
>This topic is part of a set of topics that address Office 365 optimization for remote users.
>- For VPN split tunnel implementation guidance, see [Implementing VPN split tunneling for Office 365](microsoft-365-vpn-implement-split-tunnel.md).
>- For information about optimizing Office 365 worldwide tenant performance for users in China, see [Office 365 performance optimization for China users](microsoft-365-networking-china.md).
-->

For customers who connect their remote worker devices to the corporate network or cloud infrastructure over VPN, Microsoft recommends that the key Office 365 scenarios **Microsoft Teams**, **SharePoint Online**, and **Exchange Online** are routed over a _VPN split tunnel_ configuration. This becomes especially important as the first line strategy to facilitate continued employee productivity during large-scale work-from-home events such as the COVID-19 crisis.

![Split Tunnel VPN configuration](../media/vpn-split-tunneling/vpn-model-2.png)

_Figure 1: A VPN split tunnel solution with defined Office 365 exceptions sent directly to the service. All other traffic traverses the VPN tunnel regardless of destination._

The essence of this approach is to provide a simple method for enterprises to mitigate the risk of VPN infrastructure saturation and dramatically improve Office 365 performance in the shortest timeframe possible. Configuring VPN clients to allow the most critical, high volume Office 365 traffic to bypass the VPN tunnel achieves the following benefits:

- Immediately mitigates the root cause of a majority of customer-reported performance and network capacity issues in enterprise VPN architectures impacting Office 365 user experience
  
  The recommended solution specifically targets Office 365 service endpoints categorized as **Optimize** in the topic [Office 365 URLs and IP address ranges](./urls-and-ip-address-ranges.md). Traffic to these endpoints is highly sensitive to latency and bandwidth throttling, and enabling it to bypass the VPN tunnel can dramatically improve the end-user experience as well as reduce the corporate network load. Office 365 connections that do not constitute the majority of bandwidth or user experience footprint can continue to be routed through the VPN tunnel along with the rest of the Internet-bound traffic. For more information, see [The VPN split tunnel strategy](#the-vpn-split-tunnel-strategy).

- Can be configured, tested, and implemented rapidly by customers and with no additional infrastructure or application requirements

  Depending on the VPN platform and network architecture, implementation can take as little as a few hours. For more information, see [Implement VPN split tunneling](microsoft-365-vpn-implement-split-tunnel.md#implement-vpn-split-tunneling).

- Preserves the security posture of customer VPN implementations by not changing how other connections are routed, including traffic to the Internet

  The recommended configuration follows the **least privilege** principle for VPN traffic exceptions and allows customers to implement split tunnel VPN without exposing users or infrastructure to additional security risks. Network traffic routed directly to Office 365 endpoints is encrypted, validated for integrity by Office client application stacks and scoped to IP addresses dedicated to Office 365 services that are hardened at both the application and network level. For more information, see [Alternative ways for security professionals and IT to achieve modern security controls in today's unique remote work scenarios (Microsoft Security Team blog)](https://www.microsoft.com/security/blog/2020/03/26/alternative-security-professionals-it-achieve-modern-security-controls-todays-unique-remote-work-scenarios/).

- Is natively supported by most enterprise VPN platforms

  Microsoft continues to collaborate with industry partners producing commercial VPN solutions to help partners develop targeted guidance and configuration templates for their solutions in alignment with the above recommendations. For more information, see [HOWTO guides for common VPN platforms](microsoft-365-vpn-implement-split-tunnel.md#howto-guides-for-common-vpn-platforms).

>[!TIP]
>Microsoft recommends focusing split tunnel VPN configuration on documented dedicated IP ranges for Office 365 services. FQDN or AppID-based split tunnel configurations, while possible on certain VPN client platforms, may not fully cover key Office 365 scenarios and may conflict with IP based VPN routing rules. For this reason, Microsoft does not recommend using Office 365 FQDNs to configure split tunnel VPN. The use of FQDN configuration may be useful in other related scenarios, such as .pac file customizations or to implement proxy bypass.

For full implementation guidance, see [Implementing VPN split tunneling for Office 365](microsoft-365-vpn-implement-split-tunnel.md).

For a step-by-step process to configure Microsoft 365 for remote workers, see [Set up your infrastructure for remote work](..\solutions\empower-people-to-work-remotely.md)

## The VPN split tunnel strategy

Traditional corporate networks are often designed to work securely for a pre-cloud world where most important data, services, applications are hosted on premises and are directly connected to the internal corporate network, as are the majority of users. Thus network infrastructure is built around these elements in that branch offices are connected to the head office via _Multiprotocol Label Switching (MPLS)_ networks, and remote users must connect to the corporate network over a VPN to access both on premises endpoints and the Internet. In this model, all traffic from remote users traverses the corporate network and is routed to the cloud service through a common egress point.

![Forced VPN configuration](../media/vpn-split-tunneling/vpn-model-1.png)

_Figure 2: A common VPN solution for remote users where all traffic is forced back into the corporate network regardless of destination_

As organizations move data and applications to the cloud, this model has begun to become less effective as it quickly becomes cumbersome, expensive, and unscalable, significantly impacting network performance and efficiency of users and restricting the ability of the organization to adapt to changing needs. Numerous Microsoft customers have reported that a few years ago 80% of network traffic was to an internal destination, but in 2020 80% plus of traffic connects to an external cloud-based resource.

The COVID-19 crisis has aggravated this problem to require immediate solutions for the vast majority of organizations. Many customers have found that the forced VPN model is not scalable or performant enough for 100% remote work scenarios such as that which this crisis has necessitated. Rapid solutions are required for these organizations to continue to operate efficiently.

For the Office 365 service, Microsoft has designed the connectivity requirements for the service with this problem squarely in mind, where a focused, tightly controlled and relatively static set of service endpoints can be optimized very simply and quickly so as to deliver high performance for users accessing the service, and reducing the burden on the VPN infrastructure so it can be used by traffic that still requires it.

Office 365 categorizes the required endpoints for Office 365 into three categories: **Optimize**, **Allow**, and **Default**. **Optimize** endpoints are our focus here and have the following characteristics:

- Are Microsoft owned and managed endpoints, hosted on Microsoft infrastructure
- Are dedicated to core Office 365 workloads such as Exchange Online, SharePoint Online, Skype for Business Online, and Microsoft Teams
- Have IPs provided
- Low rate of change and are expected to remain small in number (currently 20 IP subnets)
- Are high volume and/or latency sensitive
- Are able to have required security elements provided in the service rather than inline on the network
- Account for around 70-80% of the volume of traffic to the Office 365 service

This tightly scoped set of endpoints can be split out of the forced VPN tunnel and sent securely and directly to the Office 365 service via the user's local interface. This is known as **split tunneling**.

Security elements such as DLP, AV protection, authentication, and access control can all be delivered much more efficiently against these endpoints at different layers within the service. As we also divert the bulk of the traffic volume away from the VPN solution, this frees the VPN capacity up for business critical traffic that still relies on it. It also should remove the need in many cases to go through a lengthy and costly upgrade program to deal with this new way of operating.

![Split Tunnel VPN configuration details](../media/vpn-split-tunneling/vpn-split-tunnel-example.png)

_Figure 3: A VPN split tunnel solution with defined Office 365 exceptions sent direct to the service. All other traffic is forced back into the corporate network regardless of destination._

From a security perspective, Microsoft has an array of security features which can be used to provide similar, or even enhanced security than that delivered by inline inspection by on premises security stacks. The Microsoft Security team's blog post [Alternative ways for security professionals and IT to achieve modern security controls in today's unique remote work scenarios](https://www.microsoft.com/security/blog/2020/03/26/alternative-security-professionals-it-achieve-modern-security-controls-todays-unique-remote-work-scenarios/) has a clear summary of features available and you'll find more detailed guidance within this article. You can also read about Microsoft's implementation of VPN split tunneling at [Running on VPN: How Microsoft is keeping its remote workforce connected](https://www.microsoft.com/itshowcase/blog/running-on-vpn-how-microsoft-is-keeping-its-remote-workforce-connected/?elevate-lv).

In many cases, this implementation can be achieved in a matter of hours, allowing rapid resolution to one of the most pressing problems facing organizations as they rapidly shift to full scale remote working. For VPN split tunnel implementation guidance, see [Implementing VPN split tunneling for Office 365](microsoft-365-vpn-implement-split-tunnel.md).

## Related topics

[Implementing VPN split tunneling for Office 365](microsoft-365-vpn-implement-split-tunnel.md)

[Office 365 performance optimization for China users](microsoft-365-networking-china.md)

[Alternative ways for security professionals and IT to achieve modern security controls in today's unique remote work scenarios (Microsoft Security Team blog)](https://www.microsoft.com/security/blog/2020/03/26/alternative-security-professionals-it-achieve-modern-security-controls-todays-unique-remote-work-scenarios/)

[Enhancing VPN performance at Microsoft: using Windows 10 VPN profiles to allow auto-on connections](https://www.microsoft.com/itshowcase/enhancing-remote-access-in-windows-10-with-an-automatic-vpn-profile)

[Running on VPN: How Microsoft is keeping its remote workforce connected](https://www.microsoft.com/itshowcase/blog/running-on-vpn-how-microsoft-is-keeping-its-remote-workforce-connected/?elevate-lv)

[Office 365 Network Connectivity Principles](microsoft-365-network-connectivity-principles.md)

[Assessing Office 365 network connectivity](assessing-network-connectivity.md)

[Microsoft 365 connectivity test](https://aka.ms/netonboard)