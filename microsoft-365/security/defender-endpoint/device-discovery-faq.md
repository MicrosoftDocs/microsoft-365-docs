---
title: Device discovery frequently asked questions
description: Find answers to frequently asked questions (FAQs) about device discovery
keywords: device discovery, discover, passive, proactive, network, visibility, server, workstation, onboard, unmanaged devices
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
localization_priority: normal
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: conceptual
ms.technology: m365d
---

# Device discovery frequently asked questions

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

Find answers to frequently asked questions (FAQs) about device discovery.

## What is Basic discovery mode?
This mode allows every Microsoft Defender for Endpoint onboarded device to collect network data and discover neighboring devices. Onboarded endpoints passively collect events in the network and extract device information from them. No network traffic will be initiated. Onboarded endpoints will simply extract data from every network traffic that is seen by an onboarded device. This data used to list unmanaged devices in your network.

## Can I disable Basic discovery?
You have the option to turn off device discovery through the [Advanced features](advanced-features.md) page. However, you will lose visibility on unmanaged devices in your network. 

## What is Standard discovery mode?
 In this mode endpoints onboarded to Microsoft Defender for Endpoint can actively probe observed devices in the network to enrich collected data (with negligible amount of network traffic). This mode is highly recommended for building a reliable and coherent device inventory. If you choose to disable this mode, and select Basic discovery mode, you will likely only gain limited visibility of unmanaged endpoints in your network.

## Can I control which devices perform Standard discovery?
 You can customize the list of devices that are used to perform Standard discovery. You can either enable Standard discovery on all the onboarded devices that also support this capability (currently Windows 10 devices only) or select a subset or subsets of your devices by specifying their device tags. In this case, all other devices will be configured to run Basic discovery only. The configuration is available in the device discovery settings page.

## Can I exclude unmanaged devices from the device inventory list?
Yes, you can apply filters exclude unmanaged devices from the device inventory list. You can also use the onboarding status column on API queries to filter out unmanaged devices. 


## Which onboarded devices can perform discovery?
 Onboarded devices running on Windows 10 version 1809 or later can perform discovery.

## What happens if my onboarded devices is connected to my home network, or to public access point?
 The discovery engine distinguishes between network events that are received in the corporate network versus outside of the corporate network. By correlating network identifiers across all tenant's clients, events are differentiated between ones that were received from private networks and corporate networks. For example, if the majority of the devices in the network report that they are connected to the same network name, with the same default gateway and DHCP server address, it can be assumed that this network is likely a corporate network. Private network devices will not be listed in the inventory and will not be actively probed.

## What protocols are you capturing and analyzing?
 By default, all onboarded devices running on Windows 10 version 1809 or later are capturing and analyzing the following protocols:
ARP, CDP, DHCP, DHCPv6, IP (headers), LLDP, LLMNR, mDNS, MNDP, NBNS, SSDP, TCP (headers), UDP (headers), WSD

## Which protocols do you use for active probing in Standard discovery?
 When a device is configured to run Standard discovery, exposed services are being probed by using the following protocols:
ARP, FTP, HTTP, ICMP, LLMNR, NBNS, RDP, SIP, SMTP, SNMP, SSH, Telnet, UPNP, WSD, SMB, NBSS, IPP, PJL

## How can I exclude targets from being probed with Standard discovery?
 If there are devices on your network which should not be actively probed, you can also define a list of exclusions to prevent them from being scanned. The configuration is available in the device discovery settings page.

## Can I exclude devices from being discovered?
 As device discovery uses passive methods to discover devices in the network, any device that communicates with your onboarded devices in the corporate network can be discovered and listed in the inventory. You can exclude devices from active probing only.

## How frequent is the active probing?
 Devices will actively be probed when changes in device characteristics are observed (every 1 to 3 weeks) to make sure the existing information is up-to-date.

## My security tool raised alert on UnicastScanner.ps1 or port scanning activity initiated by it, what should I do?
 The active probing scripts are signed by Microsoft and are safe. You can add the following path to your exclusion list:
`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Downloads\*.ps`


## What is the amount of traffic being generated by the Standard discovery active probe?
 Active probing can generate up to 5K of traffic between the onboarded device and the probed device, every probing attempt

## Why is there a discrepancy between "can be onboarded" devices in the device inventory, and the number of "devices to onboard" in the dashboard tile?
You may notice differences between the number of listed devices under "can be onboarded" in the device inventory, "onboard to Microsoft Defender for Endpoint" security recommendation, and "devices to onboard" dashboard widget.

 The security recommendation and the dashboard widget are for devices that are stable in the network; excluding ephemeral devices, guest devices and others. The idea is to recommend on persistent devices, that also imply on the overall security score of the organization.

## Can I onboard unmanaged devices that were found?
 Yes. Unmanaged endpoints in your network introduce vulnerabilities and risks to your network. Onboarding them to the service can increase the security visibility on them. 


