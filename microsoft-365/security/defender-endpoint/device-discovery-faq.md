---
title: Device discovery frequently asked questions
description: Find answers to frequently asked questions (FAQs) about device discovery
keywords: device discovery, discover, passive, proactive, network, visibility, server, workstation, onboard, unmanaged devices
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 03/23/2021
---

# Device discovery frequently asked questions

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

Find answers to frequently asked questions (FAQs) about device discovery.

## What is Basic discovery mode?

This mode allows every Microsoft Defender for Endpoint onboarded device to collect network data and discover neighboring devices. Onboarded endpoints passively collect events in the network and extract device information from them. No network traffic is initiated. Onboarded endpoints extract data from every network traffic that is seen by an onboarded device. This data used to list unmanaged devices in your network.

## Can I disable Basic discovery?

You have the option to turn off device discovery through the [Advanced features](advanced-features.md) page. However, you'll lose visibility on unmanaged devices in your network. Note that even if device discovery is turned off, SenseNDR.exe will still be running on the onboarded devices. 

## What is Standard discovery mode?

In this mode, endpoints onboarded to Microsoft Defender for Endpoint can actively probe observed devices in the network to enrich collected data (with negligible amount of network traffic). Only devices that were observed by the basic discovery mode are actively probed in standard mode. This mode is highly recommended for building a reliable and coherent device inventory. If you choose to disable this mode, and select Basic discovery mode, you'll likely only gain limited visibility of unmanaged endpoints in your network.

 Standard mode also leverages common discovery protocols that use multicast queries in the network to find even more devices, in addition to the ones that were observed using the passive method.

## Can I control which devices perform Standard discovery?

You can customize the list of devices that are used to perform Standard discovery. You can either enable Standard discovery on all the onboarded devices that also support this capability (currently Windows 10 or later and Windows Server 2019 or later devices only) or select a subset or subsets of your devices by specifying their device tags. In this case, all other devices are configured to run Basic discovery only. The configuration is available in the device discovery settings page.

## Can I exclude unmanaged devices from the device inventory list?

Yes, you can apply filters to exclude unmanaged devices from the device inventory list. You can also use the onboarding status column on API queries to filter out unmanaged devices.

## Which onboarded devices can perform discovery?

Onboarded devices running on Windows 10 version 1809 or later, Windows 11, Windows Server 2019, or Windows Server 2022 can perform discovery.

## What happens if my onboarded devices is connected to my home network, or to public access point?

The discovery engine distinguishes between network events that are received in the corporate network versus outside of the corporate network. By correlating network identifiers across all tenant's clients, events are differentiated between ones that were received from private networks and corporate networks. For example, if most devices in the organization report that they're connected to the same network name, with the same default gateway and DHCP server address, it can be assumed that this network is likely a corporate network. Private network devices won't be listed in the inventory and won't be actively probed.

## What protocols are you capturing and analyzing?

By default, all onboarded devices running on Windows 10 version 1809 or later, Windows 11, Windows Server 2019, or Windows Server 2022 are capturing and analyzing the following protocols:
ARP, CDP, DHCP, DHCPv6, IP (headers), LLDP, LLMNR, mDNS, MNDP, NBNS, SSDP, TCP (SYN headers), UDP (headers), WSD

## Which protocols do you use for active probing in Standard discovery?
When a device is configured to run Standard discovery, exposed services are being probed by using the following protocols:
ARP, FTP, HTTP, HTTPS, ICMP, LLMNR, NBNS, RDP, SIP, SMTP, SNMP, SSH, Telnet, UPNP, WSD, SMB, NBSS, IPP, PJL, RPC, mDNS, DHCP, AFP, CrestonCIP, IphoneSync, WinRM, VNC, SLP, LDAP


## How can I exclude targets from being probed with Standard discovery?

If there are devices on your network, which shouldn't be actively probed, you can also define a list of exclusions to prevent them from being scanned. The configuration is available in the device discovery settings page.

> [!NOTE]
> Devices might still reply to multicast discovery attempts in the network. Those devices will be discovered but won't be actively probed. 

## Can I exclude devices from being discovered?

As device discovery uses passive methods to discover devices in the network, any device that communicates with your onboarded devices in the corporate network can be discovered and listed in the inventory. You can exclude devices from active probing only.

## How frequent is the active probing?

Devices will actively be probed when changes in device characteristics are observed to make sure the existing information is up-to-date (typically, devices probed no more than once in a three-week period)

## My security tool raised alert on UnicastScanner.ps1 / PSScript_{GUID}.ps1 or port scanning activity initiated by it, what should I do?

The active probing scripts are signed by Microsoft and are safe. You can add the following path to your exclusion list:
`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Downloads\*.ps1`

## What is the amount of traffic being generated by the Standard discovery active probe?

Active probing can generate up to 50Kb of traffic between the onboarded device and the probed device, every probing attempt

## Why is there a discrepancy between "can be onboarded" devices in the device inventory, and the number of "devices to onboard" in the dashboard tile?

You may notice differences between the number of listed devices under "can be onboarded" in the device inventory, "onboard to Microsoft Defender for Endpoint" security recommendation, and "devices to onboard" dashboard widget.

 The security recommendation and the dashboard widget are for devices that are stable in the network; excluding ephemeral devices, guest devices and others. The idea is to recommend on persistent devices that also imply on the overall security score of the organization.

## Can I onboard unmanaged devices that were found?

Yes. You can onboard unmanaged devices manually. Unmanaged endpoints in your network introduce vulnerabilities and risks to your network. Onboarding them to the service can increase the security visibility on them.

## I've noticed that unmanaged device health state is always "Active", why is that?

Temporarily, unmanaged device health state is "Active" during the standard retention period of the device inventory, regardless of their actual state.

## Does standard discovery look like malicious network activity?

When considering Standard discovery, you may be wondering about the implications of probing, and specifically whether security tools might suspect such activity as malicious. The following subsection explains why, in almost all cases, organizations should have no concerns around enabling Standard discovery.  

### Probing is distributed across all Windows devices on the network

As opposed to malicious activity, which would typically scan the entire network from a few compromised devices, Microsoft Defender for Endpoint's Standard discovery probing is initiated from all onboarded Windows devices making the activity benign and non-anomalous. The probing is centrally managed from the cloud to balance the probing attempt between all the supported onboarded devices in the network.  

### Active probing generates negligible amount of extra traffic

Unmanaged devices would typically get probed no more than once in a three-week period and generate less than 50KB of traffic. Malicious activity usually includes high repetitive probing attempts and in some cases data exfiltration that generates a significant amount of network traffic that can be identified as an anomaly by network monitoring tools.

### Your Windows device already runs active discovery

Active discovery capabilities have always been embedded in the Windows operating system, to find nearby devices, endpoints, and printers, for easier "plug and play" experiences and file sharing between endpoints in the network. Similar functionality is implemented in mobile devices, network equipment and inventory applications just to name a few.  

Standard discovery uses the same discovery methods to identify devices and to have a unified visibility for all the devices in your network in the Microsoft 365 Defender Device Inventory. For example – Standard discovery identifies nearby endpoints in the network the same way Windows lists available printers in the network. 

Network security and monitoring tools are indifferent to such activities performed by devices on the network. 

### Only unmanaged devices are being probed

The device discovery capabilities have been built to only discover and identify unmanaged devices on your network. This means that previously discovered devices that are already onboarded with Microsoft Defender for Endpoint won't be probed.

### You can exclude network lures from active probing

Standard discovery supports exclusion of devices or ranges (subnets) from active probing. If you have network lures deployed in place, you can use the Device Discovery settings to define exclusions based on IP addresses or subnets (a range of IP addresses). Defining those exclusions ensure that those devices won't be actively probed and won't be alerted. Those devices are discovered using passive methods only (similar to Basic discovery mode).
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
