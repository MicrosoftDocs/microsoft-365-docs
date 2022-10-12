---
title: Deployment of MDE on RHEL Linux
ms.reviewer:
description: Describes how to deploy Microsoft Defender for Endpoint on RHEL Linux
keywords: microsoft, defender, Microsoft Defender for Endpoint, ios, app, installation, deploy, uninstallation, intune
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-nsatapathy
author: nimishasatapathy
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Deployment of MDE on RHEL Linux

This topic describes the deployment of Microsoft Defender for Endpoint (MDE) on RHEL Linux. 

## Prerequisites

The following are the listed factors you should consider before deploying MDE for Linux in your environment:

- Work with your Firewall, Proxy, and Networking admin to add the MDE URL’s to the allowed list, and prevent it from being SSL inspected.
- Run a centralized scan to capture current resource utilization across the environment, such as, check available disk space in all mounted partitions, capture memory usage, capture a process listing that includes availability, and used CPU percentages.
- Exclude MDE for Linux from your third party AV for Linux product.
- Download the onboarding script from the MDE portal.
- Setup the MDE for Linux configuration settings.
- Add your third party AV for Linux processes and paths to the exclusion list above (Setup the MDE for Linux AV settings).
- Ensure to add your current exclusions from your third party AV for Linux to the step above (Setup the MDE for Linux configuration settings).
- Add Microsoft repository.
- Deliver the onboarding file.
- Deliver the AV setting.
- Deliver the scheduled scans cronjob setting.
- Deliver the MDE for Linux agent cronjob settings.
- Install the MDE for Linux package.
- Install the MDE for Linux configuration file.
- Re-run resource utilization statistics an report on pre-deployment utilization compared to post-deployment.
- Testing that you are able to communicate with MDE’s backend.
- Testing that you are able to get “Platform Updates” (aka agent updates).
- Testing that you are able to get “Security Intelligence Updates” (aka signatures/definition updates).
- Testing detections.

## System requirements

The following are the supported Linux servers:

|RHEL* version supported|Commercial|GCC-Moderate|GCC-High (aka MAG)|
|---|---|---|---|
|RHEL 6.8-6.10 |Design partner program|General Availability (GA)|General Availability (GA)|
|RHEL 7.x |Design partner program|General Availability (GA)|General Availability (GA)|
|RHEL 8.x|Design partner program|General Availability (GA)|General Availability (GA)|
|RHEL 9.x|Design partner program|General Availability (GA)|General Availability (GA)|

> [!NOTE]
> (*): Also applies to CentOS, and Oracle Linux.

|Resource|Recommendation|
|---|---|
|Disk space |1 GB|
|RAM |1GB 4GB is preferred|
|CPU |If the Linux system is running only 1 vcpu, we recommend to be increased to 2 vcpu’s 4 cores are preferred|

|OS version|Kernel filter driver|Comments|
|---|---|---|
|RHEL 7.x and RHEL 8.x |No kernel filter driver, the fanotify kernel option must be enabled|akin to Filter Manager (fltmgr, accessible via `fltmc.exe`) in Windows| 
|RHEL 6.x|TALPA kernel driver|

For more information on system requirements, see [/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-linux#system-requirements].

## Network connectivity to MDE

Here's how to check the network connectivity for the MDE:

### Allow the URL's for the MDE traffic

1. Download the “Microsoft Defender for Endpoint URL list for commercial customers” spreadsheet (mde-urls-commercial.xlsx) from Network connections that lists the services and their associated URLs that your network must be able to connect.
2. Under Geography column, select US, WW, Blanks checkboxes.

### Setup the proxy settings

The table shows the supported proxies:

|Supported|Not supported|
|---|---|
|Transparent proxy |Proxy autoconfig (PAC, a type of authenticated proxy)|
|Manual static proxy configuration |Web proxy autodiscovery protocol (WPAD, a type of authenticated proxy)|
 
#### Network connections

For more information on network connections, see https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-linux#network-connections.

#### Full configuration profile example 

For more information on full configuration profile, see https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/linux-preferences?view=o365-worldwide#full-configuration-profile-example.

#### Static proxy configuration

For more information on configuring MDE for Linux for static proxy discovery, see Microsoft Defender ATP for Linux static proxy discovery - Windows security | Microsoft Docs

#### Troubleshooting steps for environments with static proxy

For more information on on troubleshooting connectivity issues in static proxy scenario, see https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/linux-support-connectivity#troubleshooting-steps-for-environments-with-static-proxy.

### Verify that SSL inspection is not being performed on the network traffic

To prevent man-in-the-middle attacks, all Microsoft Azure hosted traffic uses certificate pinning. As a result, firewall systems like Palo Alto, Zscaler, Cisco, and others are not permitted to monitor SSL. 

> [!NOTE]
> For our (MDE) URLs, you must avoid SSL checking.

#### Troubleshoot cloud connectivity issues

For more information on troubleshooting cloud connectivity issues for MDE on Linux, see https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/linux-support-connectivity.

## Configure MDE for Linux Antivirus (AV)

**Preface**
- If you are already using a third party AV for your Linux servers:
    - Move the existing exclusions to MDE for Linux.
- If you are not using a third party AV for your Linux servers:
    - Move the existing exclusions to MDE for Linux.
- If you are running McAfee AV for Linux: 
- If you are testing on one machine, you can use a command line to set up the exclusions
- If you are ready to set on multiple machines, you want to use the `mdatp_managed.json file`:
- 



  
