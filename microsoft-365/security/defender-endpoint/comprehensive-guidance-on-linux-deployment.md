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

This article explains how to deploy Microsoft Defender for Endpoint on a Red Hat Enterprise Linux (RHEL) system. 

## Deployment summary

The following list captures the actions you'll take to deploy Microsoft Defender for Endpoint on Linux:


- Work with your Firewall, Proxy, and Networking admin to add the Microsoft Defender for Endpoint URLs to the allowed list, and prevent it from being SSL inspected.
- Run a centralized scan to capture current resource utilization across the environment, such as, check available disk space in all mounted partitions, capture memory usage, capture a process listing that includes availability, and used CPU percentages.
- Exclude Microsoft Defender for Endpoint on Linux from your third-party antivirus product.
- Download the onboarding script from the Microsoft Defender for Endpoint portal.
- Set up the Microsoft Defender for Endpoint on Linux configuration settings.
- Add your third-party antivirus processes and paths to the exclusion list from the prior step (Setup the Microsoft Defender for Endpoint on Linux antivirus settings).
- Verify that you've added your current exclusions from your third-party antivirus  to the prior step (Set up the Microsoft Defender for Endpoint on Linux configuration settings).
- Add Microsoft repository. [BAHMAN - NOT SURE WHAT THIS MEANS]
- Deliver the onboarding file.
- Deliver the antivirus setting.
- Deliver the scheduled scans cronjob setting.
- Deliver the Microsoft Defender for Endpoint on  Linux agent cronjob settings.
- Install the Microsoft Defender for Endpoint on Linux package.
- Install the Microsoft Defender for Endpoint on Linux configuration file.
- Rerun resource utilization statistics and report on pre-deployment utilization compared to post-deployment.
- Verify that you are able to communicate with Microsoft Defender for Endpoint backend.
- Verify that you're able to get "Platform Updates" (agent updates).
- Verify that you're able to get "Security Intelligence Updates" (signatures/definition updates).
- Verify detections.


## Before you begin
The following section provides information on supported Linux versions and recommendations for resources.


### System requirements

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

For a detailed list of supported Linux distros, see [System requirements](microsoft-defender-endpoint-linux.md#system-requirements).

### Additional guidance

- Depending on the non-Microsoft antivirus running on your Linux servers, you may still be able to run Microsoft Defender for Endpoint on Linux. If the antivirus runs FANotify, it needs to be uninstalled.
	
  - To check if there is a non-Microsoft antivirus that is running FANotify, you can run `mdatp health`, then check the result:
		
    INSERT IMAGE
		
	Under "conflicting_applications", if you see a result other than "unavailable", then you'll need to uninstall the non-Microsoft antivirus. 

	If you don't uninstall the non-Microsoft antivirus product, you may encounter unexpected behaviors such as performance issues, stability issues such as systems hanging, or kernel panics.
	
- To identify Microsoft Defender for Endpoint on Linux processes and paths that should be excluded in the non-Microsoft antivirus product, run `systemctl status -l mdatp`.

    Exclude the following processes from the non-Microsoft antivirus product:


    `wdavdaemon`<br>
    `crashpad_handler`<br>
    `mdatp_audis_plugin`<br>
    `telemetryd_v2`<br>

    > [!NOTE]
    > (*): The processes are in /opt/microsoft/mdatp/sbin/.

    Exclude the following paths from the non-Microsoft antivirus product:

    `/opt/microsoft/mdatp/`<br>
    `/var/opt/microsoft/mdatp/`<br>
    `/etc/opt/microsoft/mdatp/`<br>

 



## Network connectivity of Microsoft Defender for Endpoint

The complete this step, you may need to engage with following in your organization:

- Firewall admin
- Proxy admin
- Network admin

Here's how to check the network connectivity of Microsoft Defender for Endpoint:

1. The URLs that are allowed for the Microsoft Defender for Endpoint traffic. For more information, see [Allow URL for the Microsoft Defender for Endpoint traffic](#allow-url-for-the-microsoft-defender-for-endpoint-traffic).
2. If the Linux servers are behind a proxy, then set the proxy settings. For more information, see [Set up proxy settings](#set-up-proxy-settings).
3. Verify that the traffic isn't being inspected by SSL inspection (TLS inspection). When setting up Microsoft Defender for Endpoint, the most frequent network-related problem. For more information, see [Verify SSL inspection is not being performed on the network traffic](#verify-ssl-inspection-is-not-being-performed-on-the-network-traffic).


### Allow URLs for the Microsoft Defender for Endpoint traffic

1. Download [Microsoft Defender for Endpoint URL list for commercial customers](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx) or [Microsoft Defender for Endpoint URL list for Gov/GCC/DoD](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx) that lists the services and their associated URLs that your network must be able to connect.

2. Under **Geography** column, ensure the following checkboxes are selected:
    - US
    - WW
    - (Blanks)

    >[!NOTE]
    >You should ensure that there are no firewall or network filtering rules that would deny access to these URLs. If there are, you may need to create an allow rule specifically for them. 

3. Work with the Firewall/Proxy/Networking admins to allow the relevant URL’s.

### Set up proxy settings
If the Linux servers are behind a proxy, use the following settings guidance.

The table below shows the supported proxy settings:

|Supported|Not supported|
|---|---|
|Transparent proxy |Proxy autoconfig (PAC, a type of authenticated proxy)|
|Manual static proxy configuration |Web proxy autodiscovery protocol (WPAD, a type of authenticated proxy)|
 
- [Network connections](microsoft-defender-endpoint-linux.md#network-connections)
- [Full configuration profile](../defender-endpoint/linux-preferences.md#full-configuration-profile-example)
- [Static proxy configuration](/defender-endpoint/linux-static-proxy-configuration.md)
- [Troubleshooting connectivity issues in static proxy scenario](linux-support-connectivity.md#troubleshooting-steps-for-environments-with-static-proxy)


### Verify SSL inspection is not being performed on the network traffic

To prevent man-in-the-middle attacks, all Microsoft Azure hosted traffic uses certificate pinning. As a result, SSL inspection by firewall systems such as Palo Alto, Zscaler, Cisco, and other products is not allowed. You'll have to bypass SSL inspection for Microsoft Defender for Endpoint URLs.

[BAHMAN - ARE WE OK TO NAME COMPANIES HERE?]



#### Troubleshoot cloud connectivity issues

For more information, see [Troubleshooting cloud connectivity issues for Microsoft Defender for Endpoint on RHEL Linux](linux-support-connectivity.md).

## Configure Microsoft Defender for Endpoint on Linux antivirus

**Before you begin**

- If you're already using a third-party antivirus for your Linux servers:
   - Move the existing exclusions to Microsoft Defender for Endpoint for Linux.

- If you're not using a third-party antivirus for your Linux servers:
   
- If you're running McAfee antivirus for Linux, then add the processes/paths to the exclusion. For more information, see [Binary name and installation path changes with Endpoint Security for Linux 10.6.6](https://kcm.trellix.com/corporate/index?page=content&id=KB92028).

   >[!NOTE]
   >If your version is not in this list, please search their KB article or contact their support. 
  
- If you are testing on one machine, you can use a command line to set up the exclusions:
  - [Configure from the command line](linux-resources.md#configure-from-the-command-line).
  - [Configure and validate exclusions for Microsoft Defender for Endpoint on  Linux](linux-exclusions.md).

- If you're testing on multiple machines, then use the following `mdatp_managed.json` file.

    You can consider modifying the file based on your needs:

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
> (*): In Linux (and macOS) paths that starts with a wildcard is supported.

The following table describes the settings that are recommended as part of mdatp_managed.json file:

|Settings|Comments|
|---|---|
|`exclusionsMergePolicy` being set to `admin_only` |Prevents the local admin from being able to add the local exclusions (via bash (the command prompt)).|
|`disallowedThreatActions` being set to `allow and restore`|Prevents the local admin from being able to restore a quarantined item (via bash (the command prompt)).|
|`threatTypeSettingsMergePolicy` being set to `admin_only`|Prevents the local admin from being able to add False Positives or True Positives that are benign to the threat types (via bash (the command prompt)).|

- Save the setting as `mdatp_managed.json` file.
- Copy the setting to this path `/etc/opt/microsoft/mdatp/managed/`. For more information, see [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md).

## High CPU utilization by ISVs, Linux apps, or scripts

[I THINK WE SHOULD MOVE THIS DOWN - NOT SO GOOD TO SEE TROUBLESHOOTING STEPS BEFORE THE ONBOARDING IS EVEN STARTED]


If you observe that third-party ISVs, internally developed Linux apps, or scripts run into high CPU utilization, you can check the following processes to investigate the cause.



Perform the following steps:

- Identify which Microsoft Defender for Endpoint for on Linux thread is causing the symptom
- Check the wdavdaemon unprivileged process
- Check the wdavdaemon (FANotify) process
- Check the wdavdaemon edr (EDR Engine) process
- Check the mdatp_audisp_plugin process

### Identify the Microsoft Defender for Endpoint on Linux thread causing the symptom

Use the following syntaxes to help identify the root cause of the CPU overhead:

- To get Microsoft Defender for Endpoint process ID causing the issue, run:
  - `sudo top -c`.
- To get more details on Microsoft Defender for Endpoint process, run: 	
  - `sudo ps ax --no-headings -T -o user,pid,thcount,%cpu,sched,%mem,vsz,rss,tname,stat,start_time,time,ucmd,command |sort -nrk 3|grep`.
- To identify specific Microsoft Defender for Endpoint thread ID causing the highest CPU utilization within the process, run:
   - `sudo ps -T -p <PID> >> Thread_with_highest_cpu_usage.log`.

[NAMISHA - PLEASE INSERT THE IMAGE FROM THE WORD DOC HERE]



NAMISHA: IT'S MISSING THE WDAVDAEMON UNPRIVILEDGED (AV ENGINE) AND INSERT THE IMAGE AS WELL




### Check the wdavdaemon (FANotify) process

Follow these steps to install wdavdaemon (FANotify) plugin:

- Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md).
- Collect diagnostic data using the [Client analyzer tool](https://aka.ms/xMDEClientAnalyzerBinary).
- Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).






### Check the wdavdaemon edr (EDR Engine) process

Follow these steps to install wdavdaemon edr (EDR Engine) plugin:

- Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md).
- Collect diagnostic data
- Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).

### Check the mdatp_audisp_plugin process

To troubleshoot high CPU utilization overhead caused by mdatp_audisp_plugin, see [Troubleshoot AuditD performance issues with Microsoft Defender for Endpoint on Linux](troubleshoot-auditd-performance-issues.md).

- Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md).
- Collect diagnostic data
- Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).


## Download the Microsoft Defender for Endpoint on Linux onboarding package

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

NAMISHA - THIS WAS MISSING:

Additionally, for deploying the “settings preferences” via Ansible, go through adding the steps from the above item 5 “How to configure Microsoft Defender for Endpoint for Linux Antivirus (AV)”, by copying your mdatp_managed.json to /etc/opt/microsoft/mdatp/managed/ 




## Verify communication with Microsoft Defender for Endpoint backend

To verify Microsoft Defender for Endpoint on Linux communication to the cloud with the current network settings, run the following connectivity test from the command line:
`mdatp connectivity test`


NAMISHA - MISSING EXPECTED OUTPUT IMAGE - PLS INCLUDE



For more information, see [Connectivity validation](linux-support-connectivity.md#run-the-connectivity-test).


## Verify that you're able to get platform updates

To verify Microsoft Defender for Endpoint on RHEL Linux platform updates, run the following command line:

`sudo yum update mdatp`

For more information, see [Device health and Microsoft Defender Antivirus health report](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/new-device-health-reporting-for-microsoft-defender-for-endpoint/bc-p/3616205#M1963).

For more information, see [Deploy updates for Microsoft Defender for Endpoint on RHEL Linux](linux-updates.md#rhel-and-variants-centos-and-oracle-linux).

>[!TIP]
> Automate the agent update on a monthly (Recommended) schedule by using a Cron job.

For more information, see [schedule an update of the Microsoft Defender for Endpoint on RHEL Linux](linux-update-mde-linux.md).

## Verify that you're able to get security intelligence updates

To verify Microsoft Defender for Endpoint on  Linux signatures/definition updates, run the following command line:

`mdatp definitions update`

For more information, see [New device health reporting for Microsoft Defender Antivirus](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/new-device-health-reporting-for-microsoft-defender-for-endpoint/bc-p/3616205).

## Test detections

To ensure that the device is correctly onboarded and reported to the service, run the following detection test:

- Antivirus detections:

NAMISHA - INLCUDE THE BELOW:
    Curl -o ~/Downloads/eicar.com.txt https://www.eicar.org/download/eicar.com.txt 

If the detection doesn’t show up, it could be that you have set “allowedThreats” to allow in preferences via Ansible or Puppet.


- Endpoint detection and response (EDR) detections:
  For more information, see [Experience Microsoft Defender for Endpoint through simulated attacks](attack-simulations.md).
  If the detection doesn’t show up, then it could be that we're missing event or alerts in portal. For more information, see [Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux](linux-support-events.md).
- For more information about unified submissions in Microsoft 365 Defender and the ability to submit **False Positives** and **False Negatives** through the portal, see [Unified submissions in Microsoft 365 Defender now Generally Available! - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770).

## Troubleshoot Microsoft Defender for Endpoint on Linux installation issues

- For more information, see [Installation issues of Microsoft Defender for Endpoint on RHEL Linux](linux-support-install.md).
- For more information, see [Troubleshooting log installation issues](linux-resources.md#log-installation-issues).
- For more information, see [Troubleshooting steps for environments without proxy or with transparent proxy](linux-support-connectivity.md#troubleshooting-steps-for-environments-without-proxy-or-with-transparent-proxy).  
- For more information, see [Troubleshooting steps for environments with static proxy](linux-support-connectivity.md#troubleshooting-steps-for-environments-with-static-proxy).

## Troubleshooting resources

- For more information, see [Known issues](linux-resources.md).

- For more information, see [Collect diagnostic information](linux-resources.md#collect-diagnostic-information).

- For more information, see [Uninstall](linux-resources.md#uninstall).


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


