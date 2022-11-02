---
title: Deployment of Microsoft Defender for Endpoint on Linux
ms.reviewer:
description: Describes how to deploy Microsoft Defender for Endpoint on Linux
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

# Deployment of Microsoft Defender for Endpoint on Linux

This article provides advanced deployment guidance for Microsoft Defender for Endpoint on Linux. You'll get a brief summary of the deployment steps, learn about the system requirements,  then be guided through the actual deployment steps. You'll also learn how to verify that the device has been correctly onboarded.

For information about Microsoft Defender for Endpoint capabilities, see [Advanced Microsoft Defender for Endpoint capabilities](#advanced-microsoft-defender-for-endpoint-capabilities).

To learn about other ways to deploy Microsoft Defender for Endpoint on Linux, see:
- [Manual deployment](linux-install-manually.md)
- [Puppet based deployment](linux-install-with-puppet.md)
- [Ansible based deployment](linux-install-with-ansible.md)
- [Deploy Defender for Endpoint on Linux with Chef](linux-deploy-defender-for-endpoint-with-chef.md)


## Deployment summary

The following list captures the actions you'll take to deploy Microsoft Defender for Endpoint on Linux:

- Work with your Firewall, Proxy, and Networking admin to add the Microsoft Defender for Endpoint URLs to the allowed list, and prevent it from being SSL inspected.
- Run a centralized scan to capture  the current resource utilization across the environment. For example, check available disk space in all mounted partitions, capture memory usage, capture a process listing that includes availability, and used CPU percentages.
- Exclude Microsoft Defender for Endpoint on Linux from your third-party anti-malware product.
- Download the onboarding script from the Microsoft Defender for Endpoint portal.
- Set up the Microsoft Defender for Endpoint on Linux configuration settings.
- In the configuration settings: add exclusions for anti-malware processes and paths associated with all third-party anti-malware products you are running alongside Microsoft Defender for Endpoint.  
- In the configuration settings: verify that you've transferred in all exclusions previously configured for other third-party anti-malware products in your environment 
- Deliver the onboarding file.
- Deliver the anti-malware settings.
- Deliver the scheduled scans cronjob setting.
- Deliver the Microsoft Defender for Endpoint on  Linux agent cronjob settings.
- Install the Microsoft Defender for Endpoint on Linux package.
- Install the Microsoft Defender for Endpoint on Linux configuration file.
- Rerun resource utilization statistics and report on pre-deployment utilization compared to post-deployment.
- Verify that you're able to communicate with Microsoft Defender for Endpoint backend.
- Verify that you're able to get "Platform Updates" (agent updates).
- Verify that you're able to get "Security Intelligence Updates" (signatures/definition updates).
- Verify detections.

## Before you begin

The following section provides information on supported Linux versions and recommendations for resources.

### System requirements and resource recommendations

For a detailed list of supported Linux distros, see [System requirements](microsoft-defender-endpoint-linux.md#system-requirements).

|Resource|Recommendation|
|---|---|
|Disk space |Minimum: 2 GB <br> NOTE: An additional 2-GB disk space might be needed if cloud diagnostics are enabled for crash collections. |
|RAM |1 GB<br> 4 GB is preferred|
|CPU |If the Linux system is running only 1 vcpu, we recommend to be increased to 2 vcpu’s<br> 4 cores are preferred |

|OS version|Kernel filter driver|Comments|
|---|---|---|
|RHEL 7.x, RHEL 8.x, and RHEL 9.x |No kernel filter driver, the fanotify kernel option must be enabled|akin to Filter Manager (fltmgr, accessible via `fltmc.exe`) in Windows| 
|RHEL 6.x|TALPA kernel driver|



### Additional guidance

- Depending on the non-Microsoft anti-malware running on your Linux servers, you may still be able to run Microsoft Defender for Endpoint on Linux. If the anti-malware runs FANotify, it needs to be uninstalled.
- Your ability to run Microsoft Defender for Endpoint on Linux alongside a non-Microsoft anti-malware product depends on the implementation details of that product. If the other anti-malware product leverages fanotify, it has to be uninstalled to eliminate performance and stability side effects resulting from running two conflicting agents. 

	
- To check if there is a non-Microsoft anti-malware that is running FANotify, you can run `mdatp health`, then check the result:
		
    :::image type="content" source="images/mdatp-health-result.png" alt-text="Image of mdatp health result" :::
		
	Under "conflicting_applications", if you see a result other than "unavailable", then you'll need to uninstall the non-Microsoft anti-malware. 

- If you don't uninstall the non-Microsoft anti-malware product, you may encounter unexpected behaviors such as performance issues, stability issues such as systems hanging, or kernel panics.
	
- To identify the Microsoft Defender for Endpoint on Linux processes and paths that should be excluded in the non-Microsoft anti-malware product, run `systemctl status -l mdatp`.

    Exclude the following processes from the non-Microsoft anti-malware product:

    `wdavdaemon`<br>
    `crashpad_handler`<br>
    `mdatp_audis_plugin`<br>
    `telemetryd_v2`<br>

    Exclude the following paths from the non-Microsoft anti-malware product:

    `/opt/microsoft/mdatp/`<br>
    `/var/opt/microsoft/mdatp/`<br>
    `/etc/opt/microsoft/mdatp/`<br>

## Network connectivity of Microsoft Defender for Endpoint

To complete this step, you may need to engage with following in your organization:

- Firewall admin
- Proxy admin
- Network admin

Here's how to check the network connectivity of Microsoft Defender for Endpoint:

1. See [Allow URLs for the Microsoft Defender for Endpoint traffic](#allow-urls-for-the-microsoft-defender-for-endpoint-traffic) that are allowed for the Microsoft Defender for Endpoint traffic.
2. If the Linux servers are behind a proxy, then set the proxy settings. For more information, see [Set up proxy settings](#set-up-proxy-settings).
3. Verify that the traffic isn't being inspected by SSL inspection (TLS inspection). This is the most common network related issue when setting up Microsoft Defender Endpoint, see [Verify SSL inspection is not being performed on the network traffic](#verify-ssl-inspection-is-not-being-performed-on-the-network-traffic).


### Allow URLs for the Microsoft Defender for Endpoint traffic

1. Download [Microsoft Defender for Endpoint URL list for commercial customers](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx) or [Microsoft Defender for Endpoint URL list for Gov/GCC/DoD](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx) that lists the services and their associated URLs that your network must be able to connect.

2. Under **Geography** column, ensure the following checkboxes are selected:
    - EU, or UK, or US
    - WW
    - (Blanks)

    >[!NOTE]
    >You should ensure that there are no firewall or network filtering rules that would deny access to these URLs. If there are, you may need to create an allow rule specifically for them. 

3. Work with the Firewall/Proxy/Networking admins to allow the relevant URLs.

### Set up proxy settings

If the Linux servers are behind a proxy, use the following settings guidance.

The following table lists the supported proxy settings:

|Supported|Not supported|
|---|---|
|Transparent proxy |Proxy autoconfig (PAC, a type of authenticated proxy)|
|Manual static proxy configuration |Web proxy autodiscovery protocol (WPAD, a type of authenticated proxy)|
 
- [Network connections](microsoft-defender-endpoint-linux.md#network-connections)
- [Full configuration profile](../defender-endpoint/linux-preferences.md#full-configuration-profile-example)
- [Static proxy configuration](/defender-endpoint/linux-static-proxy-configuration.md)
- [Troubleshooting connectivity issues in static proxy scenario](linux-support-connectivity.md#troubleshooting-steps-for-environments-with-static-proxy)

### Verify SSL inspection isn't being performed on the network traffic

To prevent man-in-the-middle attacks, all Microsoft Azure hosted traffic uses certificate pinning. As a result, SSL inspections by major firewall systems aren't allowed. You'll have to bypass SSL inspection for Microsoft Defender for Endpoint URLs.

#### Troubleshoot cloud connectivity issues

For more information, see [Troubleshooting cloud connectivity issues for Microsoft Defender for Endpoint on Linux](linux-support-connectivity.md).

## Configure Microsoft Defender for Endpoint on Linux anti-malware settings

**Before you begin**

- If you're already using a non-Microsoft anti-malware product for your Linux servers:
   - Move the existing exclusions to Microsoft Defender for Endpoint on Linux.

- If you're not using a non-Microsoft anti-malware product for your Linux servers:
   - Get a list of all your Linux applications and check the vendors website for exclusions.  
   
- If you're running a non-Microsoft anti-malware product, then add the processes/paths to the Microsoft Defender for Endpoint's AV exclusion list. For more information, see [Binary name and installation path changes with Endpoint Security for Linux 10.6.6](https://kcm.trellix.com/corporate/index?page=content&id=KB92028). For more information, check the non-Microsoft anti-malware documentation or contact their support. 
 
- If you're testing on one machine, you can use a command line to set up the exclusions:
  - [Configure from the command line](linux-resources.md#configure-from-the-command-line).
  - [Configure and validate exclusions for Microsoft Defender for Endpoint on  Linux](linux-exclusions.md).

- If you're testing on multiple machines, then use the following `mdatp_managed.json` file.

    You can consider modifying the file based on your needs:

    ```JSON
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

   ```JSON
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
    >  In Linux (and macOS) we support paths where it starts with a wildcard.

    The following table describes the settings that are recommended as part of `mdatp_managed.json` file:

    |Settings|Comments|
    |---|---|
    |`exclusionsMergePolicy` being set to `admin_only` |Prevents the local admin from being able to add the local exclusions (via bash (the command prompt)).|
     |`disallowedThreatActions` being set to `allow and restore`|Prevents the local admin from being able to restore a quarantined item (via bash (the command prompt)).|
     |`threatTypeSettingsMergePolicy` being set to `admin_only`|Prevents the local admin from being able to add False Positives or True Positives that are benign to the threat types (via bash (the command prompt)).|
    - Save the setting as `mdatp_managed.json` file.
    - Copy the setting to this path `/etc/opt/microsoft/mdatp/managed/`. For more information, see [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md).

## High CPU utilization by ISVs, Linux apps, or scripts

If you observe that third-party ISVs, internally developed Linux apps, or scripts run into high CPU utilization, you take the following steps to investigate the cause.

1. Identify the thread or process that's causing the symptom. 
2. Apply further diagnostic steps based on the identified process to address the issue. 


### Step 1. Identify the Microsoft Defender for Endpoint on Linux thread causing the symptom

Use the following syntaxes to help identify the process that is causing CPU overhead:

- To get Microsoft Defender for Endpoint process ID causing the issue, run:
  - `sudo top -c`.
- To get more details on Microsoft Defender for Endpoint process, run: 	
  - `sudo ps ax --no-headings -T -o user,pid,thcount,%cpu,sched,%mem,vsz,rss,tname,stat,start_time,time,ucmd,command |sort -nrk 3|grep`.
- To identify the specific Microsoft Defender for Endpoint thread ID causing the highest CPU utilization within the process, run:
   - `sudo ps -T -p <PID> >> Thread_with_highest_cpu_usage.log`.

  :::image type="content" source="images/cpu-utilization.png" alt-text="This is CPU utilization":::


The following table lists the processes that may cause a high CPU usage:

|Process name|Component used|MDE engine used|
|---|---|---|
|wdavdaemon|FANotify| AV & EDR|
|wdavdaemon_unprivileged||AV engine|
|wdavdaemon_edr||EDR engine|
|mdatp_audisp_plugin|audit framework|Audit log ingestion|

### Step 2. Apply further diagnostic steps based on the identified process

Now that you've identified the process that is causing the high CPU usage, use the corresponding diagnostic guidance in the following section. 

For example, in the previous step, `wdavdaemon unprivileged` was identified as the process that was causing high CPU usage. Based on the result, you can apply the guidance to check the wdavdaemon unprivileged process.


### Check the wdavdaemon unprivileged process

The following diagram shows the workflow and steps required in order to add anti-malware exclusions:

:::image type="content" source="images/unprivileged-plugins.png" alt-text="This is unpriviledged sensors":::

- See [troubleshoot performance issues for Microsoft Defender for Endpoint on Linux](linux-support-perf.md) .
- If you have in-house apps/scripts or a legitimate third-party app/script getting flagged, Microsoft security researchers analyze suspicious files to determine if they're threats, unwanted applications, or normal files. Submit files you think are malware or files that you believe have been incorrectly classified as malware by using the unified submissions experience (for more information, see [Unified submissions experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770)) or [File submissions](https://www.microsoft.com/en-us/wdsi/filesubmission).

### Check the wdavdaemon (FANotify) process

Follow these steps to install wdavdaemon (FANotify) process:

- Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md).
- Collect diagnostic data using the [Client analyzer tool](https://aka.ms/xMDEClientAnalyzerBinary).
- Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).

### Check the wdavdaemon edr (EDR Engine) process

Follow these steps to install wdavdaemon edr (EDR Engine) process:

- Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md).
- Collect diagnostic data
- Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).

### Check the mdatp_audisp_plugin process

To troubleshoot high CPU utilization overhead caused by mdatp_audisp_plugin process, see [Troubleshoot AuditD performance issues with Microsoft Defender for Endpoint on Linux](troubleshoot-auditd-performance-issues.md).

- Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md).
- Collect diagnostic data
- Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).


## Download the Microsoft Defender for Endpoint on Linux onboarding package

For more information, see [download the onboarding package from Microsoft 365 Defender portal](linux-install-with-ansible.md#download-the-onboarding-package).
    
> [!NOTE]
> This download registers Microsoft Defender for Endpoint on Linux to send the data to your Microsoft Defender for Endpoint instance.

  
## Use Ansible to manage Microsoft Defender for Endpoint on Linux

To deploy Microsoft Defender for Endpoint on Linux using Ansible, see [Deploy Microsoft Defender for Endpoint on Linux with Ansible | Microsoft Docs](../defender-endpoint/linux-install-with-ansible.md#download-the-onboarding-package)

1. To deliver the downloaded onboarding package from Microsoft 365 Defender portal, see the following information:

    ```bash
        - name: Create MDATP directories
          file:
            path: /etc/opt/microsoft/mdatp/
            recurse: true
            state: directory
            mode: 0755
            owner: root
            group: root
    ```

2. To add Microsoft to the repository, see the following information:

    ```bash
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

    ```bash
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

Additionally, for deploying the “settings preferences” using Ansible, go through adding the steps from the previous step “How to configure Microsoft Defender for Endpoint on Linux anti-malware (AV)”, by copying your `mdatp_managed.json` to `/etc/opt/microsoft/mdatp/managed/`. 

## Verify communication with Microsoft Defender for Endpoint backend

To verify the Microsoft Defender for Endpoint on Linux communication to the cloud with the current network settings, run the following connectivity test from the command line:
`mdatp connectivity test`

The following image displays the expected output from the test:

:::image type="content" source="images/verify-comm.png" alt-text="This is verify communication image":::

For more information, see [Connectivity validation](linux-support-connectivity.md#run-the-connectivity-test).


## Verify that you're able to get platform updates

To verify Microsoft Defender for Endpoint on Linux platform updates, run the following command line:

`sudo yum update mdatp`

For more information, see [Device health and Microsoft Defender anti-malware health report](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/new-device-health-reporting-for-microsoft-defender-for-endpoint/bc-p/3616205#M1963).

For more information, see [Deploy updates for Microsoft Defender for Endpoint on Linux](linux-updates.md#rhel-and-variants-centos-and-oracle-linux).

>[!TIP]
> Automate the agent update on a monthly (Recommended) schedule by using a Cron job. For more information, see [schedule an update of the Microsoft Defender for Endpoint on Linux](linux-update-mde-linux.md).

## Verify that you're able to get security intelligence updates

To verify Microsoft Defender for Endpoint on  Linux signatures/definition updates, run the following command line:

`mdatp definitions update`

For more information, see [New device health reporting for Microsoft Defender anti-malware](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/new-device-health-reporting-for-microsoft-defender-for-endpoint/bc-p/3616205).

## Test detections

To ensure that the device is correctly onboarded and reported to the service, run the following detection test:

- Anti-malware detections:
 
  `curl -o /tmp/eicar.com.txt https://www.eicar.org/download/eicar.com.txt`

  If the detection doesn’t show up, it could be that you have set “allowedThreats” to allow in preferences via Ansible or Puppet.

- Endpoint detection and response (EDR) detections:
  For more information, see [Experience Microsoft Defender for Endpoint through simulated attacks](attack-simulations.md).
  If the detection doesn’t show up, then it could be that we're missing event or alerts in portal. For more information, see [Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux](linux-support-events.md).
- For more information about unified submissions in Microsoft 365 Defender and the    ability to submit **False Positives** and **False Negatives** through the portal, see [Unified submissions in Microsoft 365 Defender now Generally Available! - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770).

## Diagnostic and troubleshooting resources

- [Troubleshoot Microsoft Defender for Endpoint on Linux installation issues](linux-support-install.md).
- [Identify where to find detailed logs for installation issues](linux-resources.md#log-installation-issues).
- [Troubleshooting steps for environments without proxy or with transparent proxy](linux-support-connectivity.md#troubleshooting-steps-for-environments-without-proxy-or-with-transparent-proxy).  
- [Troubleshooting steps for environments with static proxy](linux-support-connectivity.md#troubleshooting-steps-for-environments-with-static-proxy).
- [Collect diagnostic information](linux-resources.md#collect-diagnostic-information).
- [Uninstall Defender for Endpoint on Linux](linux-resources.md#uninstall-defender-for-endpoint-on-linux).


## Advanced Microsoft Defender for Endpoint capabilities

- [Enhanced anti-malware engine capabilities on Linux and macOS](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/enhanced-anti-malware-engine-capabilities-for-linux-and-macos/ba-p/3292003)

- Boost protection of your Linux estate with behavior monitoring capabilities:
    - [Boost protection of Linux estate with behavior monitoring](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/boost-protection-of-your-linux-estate-with-behavior-monitoring/ba-p/2909320)

    >[!NOTE]
    >The behavior monitoring functionality complements existing strong content-based capabilities, however you should carefully evaluate this feature in your environment before deploying it broadly since enabling behavioral monitoring consumes more resources and may cause performance issues. 


- [Unified submissions in Microsoft 365 Defender](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770)

- [Introducing the new alert suppression experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/introducing-the-new-alert-suppression-experience-now-in-public/ba-p/3562719)

- [Announcing live response for macOS and Linux](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-live-response-for-macos-and-linux/ba-p/2864397) 
   
## References
- [Add a tag or group ID](linux-preferences.md#add-tag-or-group-id-to-the-configuration-profile)
   
- [Privacy for Microsoft Defender for Endpoint on Linux](linux-privacy.md)

- [What's new in Microsoft Defender for Endpoint on Linux](linux-whatsnew.md)


