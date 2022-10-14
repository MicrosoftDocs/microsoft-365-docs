---
title: Deployment of Microsoft Defender for Endpoint on RHEL Linux
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

# Deployment of Microsoft Defender for Endpoint on RHEL Linux

This article explains how to deploy Microsoft Defender for Endpoint (MDE) on a Red Hat Enterprise Linux (RHEL) system. 

## Prerequisites

The following are the listed factors you should consider while deploying Microsoft Defender for Endpoint on RHEL Linux in your environment:

- Work with your Firewall, Proxy, and Networking admin to add the Microsoft Defender for Endpoint URLs to the allowed list, and prevent it from being SSL inspected.
- Run a centralized scan to capture current resource utilization across the environment, such as, check available disk space in all mounted partitions, capture memory usage, capture a process listing that includes availability, and used CPU percentages.
- Exclude Microsoft Defender for Endpoint on RHEL Linux from your third party antivirus for Linux product.
- Download the onboarding script from the Microsoft Defender for Endpoint portal.
- Set up the Microsoft Defender for Endpoint on Linux configuration settings.
- Add your third party antivirus on RHEL Linux processes and paths to the exclusion list above (Setup the Microsoft Defender for Endpoint for RHEL Linux antivirus settings).
- Ensure to add your current exclusions from your third party antivirus for Linux to the step above (Set up the Microsoft Defender for Endpoint on Linux configuration settings).
- Add Microsoft repository.
- Deliver the onboarding file.
- Deliver the antivirus setting.
- Deliver the scheduled scans cronjob setting.
- Deliver the Microsoft Defender for Endpoint on RHEL Linux agent cronjob settings.
- Install the Microsoft Defender for Endpoint on RHEL Linux package.
- Install the Microsoft Defender for Endpoint on RHEL Linux configuration file.
- Rerun resource utilization statistics a report on pre-deployment utilization compared to post-deployment.
- Verify that you are able to communicate with Microsoft Defender for Endpoint backend.
- Verify that you're able to get “Platform Updates” (aka known as agent updates).
- Verify that you're able to get “Security Intelligence Updates” (aka signatures/definition updates).
- Verify detections.

## System requirements

The following are the supported RHEL Linux servers:

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
|RAM |1 GB 4 GB is preferred|
|CPU |If the Linux system just has one CPU, we advise upgrading to two, with four cores being recommended.|

|OS version|Kernel filter driver|Comments|
|---|---|---|
|RHEL 7.x and RHEL 8.x |No kernel filter driver, the fanotify kernel option must be enabled|akin to Filter Manager (fltmgr, accessible via `fltmc.exe`) in Windows| 
|RHEL 6.x|TALPA kernel driver|

For more information, see [System requirements](microsoft-defender-endpoint-linux.md#system-requirements).

## Network connectivity of Microsoft Defender for Endpoint

The following is a list of people who need to be engaged:

- Firewall admin
- Proxy admin
- Network admin

Here's how to check the network connectivity of Microsoft Defender for Endpoint:

1. The URLs that are allowed for the Microsoft Defender for Endpoint traffic. For more information, see [Allow the URL for the Microsoft Defender for Endpoint traffic](#allow-the-url-for-the-microsoft-defender-for-endpoint-traffic).
2. If the Linux servers are behind a proxy, then set the proxy settings. For more information, see [Set up the proxy settings](#set-up-the-proxy-settings).
3. Verify that the traffic isn't being inspected by SSL inspection (TLS inspection). When setting up Microsoft Defender for Endpoint, the most frequent network-related problem. For more information, see [Verify that SSL inspection is not being performed on the network traffic](#verify-that-ssl-inspection-is-not-being-performed-on-the-network-traffic).


### Allow URL for the Microsoft Defender for Endpoint traffic

1. Download [Microsoft Defender for Endpoint URL list for commercial customers](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx) or [Microsoft Defender for Endpoint URL list for Gov/GCC/DoD](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx) that lists the services and their associated URLs that your network must be able to connect.

2. Under **Geography** column, ensure the following checkboxes are selected:
    - US
    - WW
    - (Blanks)

> [!NOTE]
> Work with the Firewall/Proxy/Networking admins to allow the URL’s.

### Set up proxy settings

The table below shows the supported proxy settings:

|Supported|Not supported|
|---|---|
|Transparent proxy |Proxy autoconfig (PAC, a type of authenticated proxy)|
|Manual static proxy configuration |Web proxy autodiscovery protocol (WPAD, a type of authenticated proxy)|
 
#### Network connections

For more information, see [Network connections](microsoft-defender-endpoint-linux.md#network-connections).

#### Full configuration profile 

For more information, see [Full configuration profile](../defender-endpoint/linux-preferences.md#full-configuration-profile-example).

#### Static proxy configuration

For more information, see [static proxy configuration](/defender-endpoint/linux-static-proxy-configuration.md).

#### Troubleshooting steps for environments with static proxy

For more information, see [Troubleshooting connectivity issues in static proxy scenario](linux-support-connectivity.md#troubleshooting-steps-for-environments-with-static-proxy).

### Verify that SSL inspection is not being performed on the network traffic

To prevent man-in-the-middle attacks, all Microsoft Azure hosted traffic uses certificate pinning. As a result, firewall systems like Palo Alto, Zscaler, Cisco, and others are not permitted to monitor SSL. 

> [!NOTE]
> For Microsoft Defender for Endpoint URLs, you must avoid SSL checking.

#### Troubleshoot cloud connectivity issues

For more information, see [Troubleshooting cloud connectivity issues for Microsoft Defender for Endpoint on RHEL Linux](linux-support-connectivity.md).

## Configure Microsoft Defender for Endpoint on RHEL Linux antivirus

**Before you begin**

- If you're already using a third party antivirus for your Linux servers:
   - Move the existing exclusions to Microsoft Defender for Endpoint for Linux.

- If you're not using a third party antivirus for your Linux servers:
   
- If you're running McAfee antivirus for Linux, then add the processes/paths to the exclusion. For more information, see [Binary name and installation path changes with Endpoint Security for Linux 10.6.6](https://kcm.trellix.com/corporate/index?page=content&id=KB92028).
  
- If you are testing on one machine, you can use a command line to set up the exclusions:
  - [Configure from the command line](linux-resources.md#configure-from-the-command-line).
  - [Configure and validate exclusions for Microsoft Defender for Endpoint on RHEL Linux](linux-exclusions.md).

- If you're testing on multiple machines, then use the `mdatp_managed.json` file.

The following command should be considered based on your requirements:

```powershell
{
   "antivirusEngine":{
      "enforcementLevel":"real_time",
      "scanAfterDefinitionUpdate":true,
      "scanArchives":true,
      "maximumOnDemandScanThreads":2,
      "exclusionsMergePolicy":"merge",
      "exclusions":[
         {
            "$type":"excludedPath",
            "isDirectory":false,
            "path":"/var/log/system.log"
         },
         {
            "$type":"excludedPath",
            "isDirectory":true,
            "path":"/home"
         },
         {
            "$type":"excludedFileExtension",
            "extension":"pdf"
         },
         {
            "$type":"excludedFileName",
            "name":"cat"
         }
      ],
      "allowedThreats":[
         "<EXAMPLE DO NOT USE>EICAR-Test-File (not a virus)"
      ],
      "disallowedThreatActions":[
         "allow",
         "restore"
      ],
      "threatTypeSettingsMergePolicy":"merge",
      "threatTypeSettings":[
         {
            "key":"potentially_unwanted_application",
            "value":"block"
         },
         {
            "key":"archive_bomb",
            "value":"audit"
         }
      ]
   },
   "cloudService":{
      "enabled":true,
      "diagnosticLevel":"optional",
      "automaticSampleSubmissionConsent":"safe",
      "automaticDefinitionUpdateEnabled":true
      "proxy": "<EXAMPLE DO NOT USE> http://proxy.server:port/"
   }
}

```

**Recommendations**

```powershell
{
   "antivirusEngine":{
      "enforcementLevel":"real_time",
      "scanAfterDefinitionUpdate":true,
      "scanArchives":true,
      "maximumOnDemandScanThreads":2,
      "exclusionsMergePolicy":"merge",
      "exclusions":[
         {
            "$type":"excludedPath",
            "isDirectory":false,
            "path":"/var/log/system.log"
         },
         {
            "$type":"excludedPath",
            "isDirectory":true,
            "path":"/proc"
         },
         {
            "$type":"excludedPath",
            "isDirectory":true,
            "path":"/sys"
         },
         {
            "$type":"excludedPath",
            "isDirectory":true,
            "path":"/dev"
         },
         {
            "$type":"excludedFileExtension",
            "extension":""
         },
         {
            "$type":"excludedFileName",
            "name":""
         }
      ],
      "allowedThreats":[
         ""
      ],
      "disallowedThreatActions":[
         "allow",
         "restore"
      ],
      "threatTypeSettingsMergePolicy":"merge",
      "threatTypeSettings":[
         {
            "key":"potentially_unwanted_application",
            "value":"block"
         },
         {
            "key":"archive_bomb",
            "value":"audit"
         }
      ]
   },
   "cloudService":{
      "enabled":true,
      "diagnosticLevel":"optional",
      "automaticSampleSubmissionConsent":"safe",
      "automaticDefinitionUpdateEnabled":true
      "proxy": "<EXAMPLE DO NOT USE> http://proxy.server:port/"
   }
}
```

> [!NOTE]
> (*): In Linux (and macOS) we support paths where it starts with a wildcard.

The table below describes the settings that are recommended as part of mdatp_managed.json file:

|Settings|Comments|
|---|---|
|`exclusionsMergePolicy` being set to `admin_only` |Prevents the local admin from being able to add the local exclusions (via bash (the command prompt)).|
|`disallowedThreatActions` being set to `allow and restore`|Prevents the local admin from being able to restore a quarantined item (via bash (the command prompt)).|
|`threatTypeSettingsMergePolicy` being set to `admin_only`|Prevents the local admin from being able to add False Positives or True Positives that are benign to the threat types (via bash (the command prompt)).|

- Save the setting as `mdatp_managed.json` file.
- Copy the setting to this path `/etc/opt/microsoft/mdatp/managed/`. For more information, see [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md).

## Significance of CPU utilisation when using scripts generated from a third party ISV

Perform the following steps:

- Identify Microsoft Defender for Endpoint for on RHEL linux causing the symptom
- wdavdaemon (FANotify) plugin
- wdavdaemon edr (EDR Engine) plugin
- mdatp_audisp_plugin  

### Identify Microsoft Defender for Endpoint on RHEL Linux causing the symptom

The following syntaxes helps to identify the root cause of the CPU overhead:

- To get Microsoft Defender for Endpoint process ID, run `o	sudo top -c`.
- To get more details on Microsoft Defender for Endpoint process, run `o	sudo ps ax --no-headings -T -o user,pid,thcount,%cpu,sched,%mem,vsz,rss,tname,stat,start_time,time,ucmd,command |sort -nrk 3|grep`.
- To identify specific Microsoft Defender for Endpoint thread ID causing the highest CPU utilization within the process, run `o	sudo ps -T -p <PID> >> Thread_with_highest_cpu_usage.log`.

### wdavdaemon (FANotify) plugin

Follow these steps to install wdavdaemon (FANotify) plugin:

- Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md).
- Collect diagnostic data
- Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).

### wdavdaemon edr (EDR Engine) plugin

Follow these steps to install wdavdaemon edr (EDR Engine) plugin:

- Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md).
- Collect diagnostic data
- Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).

### mdatp_audisp_plugin  

For troubleshooting high CPU utilization overhead caused by mdatp_audisp_plugin, see [Troubleshoot AuditD performance issues with Microsoft Defender for Endpoint on Linux](troubleshoot-auditd-performance-issues.md).

- Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md).
- Collect diagnostic data
- Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).


## Download Microsoft Defender for Endpoint on RHEL onboarding package

For more information, see [download the onboarding package from Microsoft 365 Defender portal](linux-install-with-ansible.md).
    
> [!NOTE]
> (*): This download registers Microsoft Defender for Endpoint for Linux to send the data to your Microsoft Defender for Endpoint instance.

  
## Use Ansible to manage Microsoft Defender for Endpoint on RHEL Linux

To deploy Microsoft Defender for Endpoint on RHEL Linux using Ansible, see [Deploy Microsoft Defender for Endpoint on Linux with Ansible | Microsoft Docs](../defender-endpoint/linux-install-with-ansible.md#download-the-onboarding-package)

1. To deliver the downloaded onboarding package from Microsoft 365 Defender portal, see the information below:

```json
    - name: Create MDATP directories
      file:
        path: /etc/opt/microsoft/mdatp/
        recurse: true
        state: directory
        mode: 0755
        owner: root
        group: root
```

2. To add Microsoft to the repository, see the information below:

```json
    - name: Add Microsoft APT key
      apt_key:
      url: https://packages.microsoft.com/keys/microsoft.asc
      state: present
      when: ansible_os_family == "Debian"

    - name: Add Microsoft apt repository for MDATP
      apt_repository:
      repo: deb [arch=arm64,armhf,amd64] https://packages.microsoft.com/[distro]/[version]/prod [codename] main
      update_cache: yes
      state: present
      filename: microsoft-[channel]
      when: ansible_os_family == "Debian"

    - name: Add Microsoft DNF/YUM key
      rpm_key:
      state: present
      key: https://packages.microsoft.com/keys/microsoft.asc
      when: ansible_os_family == "RedHat"

    - name: Add  Microsoft yum repository for MDATP
      yum_repository:
      name: packages-microsoft-[channel]
      description: Microsoft Defender for Endpoint
      file: microsoft-[channel]
      baseurl: https://packages.microsoft.com/[distro]/[version]/[channel]/ 
      gpgcheck: yes
      enabled: Yes
      when: ansible_os_family == "RedHat"
```

3. To install the package, see the information below:

```json
    - hosts: servers
      tasks:
      - include: ../roles/onboarding_setup.yml
    - include: ../roles/add_yum_repo.yml
      - name: Install MDATP
      dnf:
      name: mdatp
      state: latest
      enablerepo: packages-microsoft-[channel] 
```

## Verify communication with Microsoft Defender for Endpoint backend

To verify Microsoft Defender for Endpoint on RHEL Linux communication to the cloud with the current network settings, run the following connectivity test from the command line:
`mdatp connectivity test`

For more information, see [Connectivity validation](linux-support-connectivity.md#run-the-connectivity-test).


## Verify platform updates

To verify Microsoft Defender for Endpoint on RHEL Linux platform updates, run the following command line:
`sudo yum update mdatp`

For more information, see [Device health and Microsoft Defender Antivirus health report](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/new-device-health-reporting-for-microsoft-defender-for-endpoint/bc-p/3616205#M1963).

For more information, see [Deploy updates for Microsoft Defender for Endpoint on RHEL Linux](linux-updates.md#rhel-and-variants-centos-and-oracle-linux).

>[!TIP]
> Automate the agent update on a monthly (Recommended) schedule by using a Cron job.

For more information, see [schedule an update of the Microsoft Defender for Endpoint on RHEL Linux](linux-update-mde-linux.md).

## Verify security intelligence updates

To verify Microsoft Defender for Endpoint on RHEL Linux signatures/definition updates, run the following command line:
`mdatp definitions update`

For more information, see [New device health reporting for Microsoft Defender Antivirus](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/new-device-health-reporting-for-microsoft-defender-for-endpoint/bc-p/3616205).

## Test detections

To ensure that the device is correctly onboarded and reported to the service, run the following detection test:

- Antivirus detections
- Endpoint detection and response (EDR) detections:
  For more information, see [Experience Microsoft Defender for Endpoint through simulated attacks](attack-simulations.md).
  If the detection doesn’t show up, then it could be that we're missing event or alerts in portal. For more information, see [Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux](linux-support-events.md).
- For more information about unified submissions in M365D and the ability of submitting **False Positives** and **False Negatives** through the portal, see [Unified submissions in Microsoft 365 Defender now Generally Available! - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770).

## Troubleshoot Microsoft Defender for Endpoint on Linux installation issues

- For more information, see [Installation issues of Microsoft Defender for Endpoint on RHEL Linux](linux-support-install.md).
- For more information, see [Troubleshooting log installation issues](linux-resources.md#log-installation-issues).
- For more information, see [Troubleshooting steps for environments without proxy or with transparent proxy](linux-support-connectivity.md#troubleshooting-steps-for-environments-without-proxy-or-with-transparent-proxy).  
- For more information, see [Troubleshooting steps for environments with static proxy](linux-support-connectivity.md#troubleshooting-steps-for-environments-with-static-proxy).

## Troubleshoot

- For more information, see [Known issues](linux-resources.md).

- For more information, see [Collect diagnostic information](linux-resources.md#collect-diagnostic-information).

- For more information, see [Uninstall](linux-resources.md#uninstall).

## FAQs

**I already have a third party antivirus running on my Linux servers. Can I run Microsoft Defender for Endpoint on RHEL Linux?**<br> 
It depends. If the third party antivirus runs FANotify, it needs to be uninstalled.
 
**How can I find out if there is a third party antivirus that is running FANotify?**<br>
When you run `mdatp` health, then in the conficting_applications row, you'll need to uninstall the third party antivirus.

**What happens if I don’t uninstall the third party antivirus that uses FANotify**<br>
You can experience unexpected behaviors such as performance issues, and/or stability issues, for example, systems hanging, and/or kernel panics (akin to a blue screen in Windows).

**What are the processes and paths for Microsoft Defender for Endpoint on Linux that you should exclude in the third party antivirus?**<br>
Running `systemctl status -l mdatp` shows the processes and paths.

The following are the processes to exclude from the third party antivirus: 

`wdavdaemon`<br>
`crashpad_handler`<br>
`mdatp_audis_plugin`<br>
`telemetryd_v2`<br>

> [!NOTE]
> (*): The processes are in /opt/microsoft/mdatp/sbin/.

The following are the paths to exclude from the third party antivirus:

`/opt/microsoft/mdatp/`<br>
`/var/opt/microsoft/mdatp/`<br>
`/etc/opt/microsoft/mdatp/`<br>

## References

- [Enhanced antimalware engine capabilities on RHEL Linux and macOS](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/enhanced-antimalware-engine-capabilities-for-linux-and-macos/ba-p/3292003)

- Following are the boost protection of your Linux estate with behavior monitoring capabilities:
    - [Boost protection of Linux estate with behavior monitoring](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/boost-protection-of-your-linux-estate-with-behavior-monitoring/ba-p/2909320)
    - [Enhancement of Linux antivirus with behavior monitoring capabilities](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/enhancing-linux-antivirus-with-behavior-monitoring-capabilities/ba-p/2226705)

- [Unified submissions in Microsoft 365 Defender](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770)

- [Introducing the new alert suppression experience now in Public Preview](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/introducing-the-new-alert-suppression-experience-now-in-public/ba-p/3562719)

- [Announcing live response for macOS and Linux](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-live-response-for-macos-and-linux/ba-p/2864397) 
   
- How to use tagging effectively
   - [Part 1](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/how-to-use-tagging-effectively-part-1/ba-p/1964058)
   - [Part 2](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/how-to-use-tagging-effectively-part-2/ba-p/1962008)
   - [Part 3](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/how-to-use-tagging-effectively-part-3-scripting-tags/ba-p/1964073)
   
- [Privacy for Microsoft Defender for Endpoint on RHEL Linux](linux-privacy.md)

- [What's new in Microsoft Defender for Endpoint on RHEL Linux](linux-whatsnew.md)


