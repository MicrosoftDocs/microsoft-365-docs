---
title: Advanced deployment guidance for Microsoft Defender for Endpoint on Linux
description: Learn how to deploy Defender for Endpoint on Linux and address issues such as high cpu utilization
keywords: high cpu ulitization, microsoft, defender, Microsoft Defender for Endpoint, ios, app, installation, deploy, uninstallation, intune
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

# Advanced deployment guidance for Microsoft Defender for Endpoint on Linux

This article provides advanced deployment guidance for Microsoft Defender for Endpoint on Linux. You'll get a brief summary of the deployment steps, learn about the system requirements,  then be guided through the actual deployment steps. You'll also learn how to verify that the device has been correctly onboarded.

For information about Microsoft Defender for Endpoint capabilities, see [Advanced Microsoft Defender for Endpoint capabilities](#advanced-microsoft-defender-for-endpoint-capabilities).

To learn about other ways to deploy Microsoft Defender for Endpoint on Linux, see:
- [Manual deployment](linux-install-manually.md)
- [Puppet based deployment](linux-install-with-puppet.md)
- [Ansible based deployment](linux-install-with-ansible.md)
- [Deploy Defender for Endpoint on Linux with Chef](linux-deploy-defender-for-endpoint-with-chef.md)


## Deployment summary

Learn about the general guidance on a typical Microsoft Defender for Endpoint on Linux deployment. The applicability of some steps is determined by the requirements of your Linux environment. 

[1. Work with your Firewall, Proxy, and Networking admin.](#1-work-with-your-firewall-proxy-and-networking-admin)

[2. Run a centralized performance monitoring to capture current resource utilization.](#2-run-a-centralized-performance-monitoring)

[3. (Optional) Check for filesystem errors 'fsck' (akin to chkdsk).](#3-optional-check-for-filesystem-errors-fsck-akin-to-chkdsk)

[4. (Optional) Update storage subsystem drivers.](#4-optional-update-storage-subsystem-drivers)

[5. (Optional) Update nic drivers.](#5-optional-update-nic-drivers)

[6. Check system requirements and resource recommendations.](#6-system-requirements-and-resource-recommendations)

[7. Add your existing solution to the exclusion list for Microsoft Defender Antivirus.](#7-add-your-existing-solution-to-the-exclusion-list-for-microsoft-defender-antivirus)

[8. Keep the following points about exclusions in mind.](#8-keep-the-following-points-about-exclusions-in-mind)

[9. Create Device Groups.](#9-create-device-groups)

[10. Configure Microsoft Defender for Endpoint on Linux antimalware settings.](#10-configure-microsoft-defender-for-endpoint-on-linux-antimalware-settings)

[11. Download the Microsoft Defender for Endpoint on Linux onboarding package from the Microsoft 365 Defender portal.](#11-download-the-microsoft-defender-for-endpoint-on-linux-onboarding-package)

[12. Use Ansible to manage Microsoft Defender for Endpoint on Linux.](#12-use-ansible-to-manage-microsoft-defender-for-endpoint-on-linux)

[13. Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux.](#13-troubleshoot-installation-issues-for-microsoft-defender-for-endpoint-on-linux)

[14. Rerun resource utilization statistics and report on pre-deployment utilization compared to post-deployment.](#14-rerun-resource-utilization-statistics)

[15. Verify communication with Microsoft Defender for Endpoint backend.](#15-verify-communication-with-microsoft-defender-for-endpoint-backend)

[16. Investigate agent health issues.](#16-investigate-agent-health-issues)

[17. Verify that you're able to get "Platform Updates" (agent updates).](#17-verify-that-youre-able-to-get-platform-updates-agent-updates)


[18. Verify that you're able to get "Security Intelligence Updates" (signatures/definition updates).](#18-verify-that-youre-able-to-get-security-intelligence-updates-signaturesdefinition-updates)

[19. Test detections.](#19-test-detections)


[20. Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux.](#20-troubleshoot-missing-events-or-alerts-issues-for-microsoft-defender-for-endpoint-on-linux)


[21. Troubleshooting High CPU utilization by ISVs, Linux apps, or scripts.](#21-troubleshoot-high-cpu-utilization-by-isvs-linux-apps-or-scripts)


[22. Uninstall your non-Microsoft solution.](#22-uninstall-your-non-microsoft-solution)


## 1. Work with your Firewall, Proxy, and Networking admin

Work with your Firewall, Proxy, and Networking admin to add the Microsoft Defender for Endpoint URLs to the allowed list, and prevent it from being SSL inspected.

For more information, see, [Troubleshoot cloud connectivity issues](#troubleshoot-cloud-connectivity-issues).



### Network connectivity of Microsoft Defender for Endpoint


Use the following steps to check the network connectivity of Microsoft Defender for Endpoint:

1. See [Allow URLs for the Microsoft Defender for Endpoint traffic](#allow-urls-for-the-microsoft-defender-for-endpoint-traffic) that are allowed for the Microsoft Defender for Endpoint traffic.
2. If the Linux servers are behind a proxy, then set the proxy settings. For more information, see [Set up proxy settings](#set-up-proxy-settings).
3. Verify that the traffic isn't being inspected by SSL inspection (TLS inspection). This is the most common network related issue when setting up Microsoft Defender Endpoint, see [Verify SSL inspection is not being performed on the network traffic](#verify-ssl-inspection-isnt-being-performed-on-the-network-traffic).


#### Allow URLs for the Microsoft Defender for Endpoint traffic

1. Download [Microsoft Defender for Endpoint URL list for commercial customers](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx) or [Microsoft Defender for Endpoint URL list for Gov/GCC/DoD](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx) that lists the services and their associated URLs that your network must be able to connect.

2. Under **Geography** column, ensure the following checkboxes are selected:
    - EU, or UK, or US
    - WW
    - (Blanks)

    >[!NOTE]
    >You should ensure that there are no firewall or network filtering rules that would deny access to these URLs. If there are, you may need to create an allow rule specifically for them. 

3. Work with the Firewall/Proxy/Networking admins to allow the relevant URLs.

#### Set up proxy settings

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

#### Verify SSL inspection isn't being performed on the network traffic

To prevent man-in-the-middle attacks, all Microsoft Azure hosted traffic uses certificate pinning. As a result, SSL inspections by major firewall systems aren't allowed. You'll have to bypass SSL inspection for Microsoft Defender for Endpoint URLs.

##### Troubleshoot cloud connectivity issues

For more information, see [Troubleshooting cloud connectivity issues for Microsoft Defender for Endpoint on Linux](linux-support-connectivity.md).


## 2. Run a centralized performance monitoring 

Run a centralized performance monitoring to capture current resource utilization across the environment, such as, check available disk space in all mounted partitions, capture memory usage, capture a process listing that includes availability, and used CPU percentages.

## 3. (Optional) Check for filesystem errors 'fsck' (akin to chkdsk)

Any filesystem could end-up getting corrupt, so before installing any new software, it would be good to install it on a healthy file system.

## 4. (Optional) Update storage subsystem drivers 

 Newer driver or firmware on a storage subsystem could help with performance and/or reliability.

## 5. (Optional) Update nic drivers

Newer driver/firmware on a NIC’s or NIC teaming software could help w/ performance and/or reliability.


## 6. System requirements and resource recommendations

The following section provides information on supported Linux versions and recommendations for resources.

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



## 7. Add your existing solution to the exclusion list for Microsoft Defender Antivirus

This step of the setup process involves adding Defender for Endpoint to the exclusion list for your existing endpoint protection solution and any other security products your organization is using. You can choose from several methods to add your exclusions to Microsoft Defender Antivirus.

> [!TIP]
> To get help configuring exclusions, refer to your solution provider's documentation.


- Your ability to run Microsoft Defender for Endpoint on Linux alongside a non-Microsoft antimalware product depends on the implementation details of that product. If the other antimalware product leverages fanotify, it has to be uninstalled to eliminate performance and stability side effects resulting from running two conflicting agents. 

	
- To check if there is a non-Microsoft antimalware that is running FANotify, you can run `mdatp health`, then check the result:
		
    :::image type="content" source="images/mdatp-health-result.png" alt-text="Image of mdatp health result" :::
		
	Under "conflicting_applications", if you see a result other than "unavailable", then you'll need to uninstall the non-Microsoft antimalware. 

- If you don't uninstall the non-Microsoft antimalware product, you may encounter unexpected behaviors such as performance issues, stability issues such as systems hanging, or kernel panics.
	
- To identify the Microsoft Defender for Endpoint on Linux processes and paths that should be excluded in the non-Microsoft antimalware product, run `systemctl status -l mdatp`.

    Exclude the following processes from the non-Microsoft antimalware product:

    `wdavdaemon`<br>
    `crashpad_handler`<br>
    `mdatp_audis_plugin`<br>
    `telemetryd_v2`<br>

    Exclude the following paths from the non-Microsoft antimalware product:

    `/opt/microsoft/mdatp/`<br>
    `/var/opt/microsoft/mdatp/`<br>
    `/etc/opt/microsoft/mdatp/`<br>

## 8. Keep the following points about exclusions in mind

When you add [exclusions to Microsoft Defender Antivirus scans](/windows/security/threat-protection/microsoft-defender-antivirus/configure-exclusions-microsoft-defender-antivirus), you should add path and process exclusions.

>[!NOTE]
>- AV exclusions apply to the AV engine. <br>
>- Indicators allow/block apply to the AV engine.

Keep the following points in mind:

- *Path exclusions* exclude specific files and whatever those files access.
- *Process exclusions* exclude whatever a process touches, but doesn't exclude the process itself.
- List your process exclusions using their full path and not by their name only. (The name-only method is less secure.)
- If you list each executable (.exe) as both a path exclusion and a process exclusion, the process and whatever it touches are excluded.

 

>[!TIP]
>Review "Common mistakes to avoid when defining exclusions", specifically [Folder locations and Processes the sections for Linux and macOS Platforms](/microsoft-365/security/defender-endpoint/common-exclusion-mistakes-microsoft-defender-antivirus#folder-locations).

## 9. Create device groups

Set up your device groups, device collections, and organizational units Device groups, device collections, and organizational units enable your security team to manage and assign security policies efficiently and effectively. The following table describes each of these groups and how to configure them. Your organization might not use all three collection types.


|Collection type|What to do|
|---|---|
|[Device groups](/microsoft-365/security/defender-endpoint/machine-groups) (formerly called *machine groups*) enable your security operations team to configure security capabilities, such as automated investigation and remediation. <br/><br/> Device groups are also useful for assigning access to those devices so that your security operations team can take remediation actions if needed. <br/><br/> Device groups are created while the attack was detected and stopped, alerts, such as an "initial access alert," were triggered and appeared in the [Microsoft 365 Defender portal](/microsoft-365/security/defender/microsoft-365-defender).|1. Go to the Microsoft 365 Defender portal (<https://security.microsoft.com>).<br/><br/>2. In the navigation pane on the left, choose **Settings** \> **Endpoints** \> **Permissions** \> **Device groups**.<br/><br/>3. Choose **+ Add device group**.<br/><br/>4. Specify a name and description for the device group.<br/><br/>5. In the **Automation level** list, select an option. (We recommend **Full - remediate threats automatically**.) To learn more about the various automation levels, see [How threats are remediated](/microsoft-365/security/defender-endpoint/automated-investigations#how-threats-are-remediated).<br/><br/>6. Specify conditions for a matching rule to determine which devices belong to the device group. For example, you can choose a domain, OS versions, or even use [device tags](/microsoft-365/security/defender-endpoint/machine-tags).<br/><br/>7. On the **User access** tab, specify roles that should have access to the devices that are included in the device group.<br/><br/>8. Choose **Done**.|
|[Device collections](/mem/configmgr/core/clients/manage/collections/introduction-to-collections) enable your security operations team to manage applications, deploy compliance settings, or install software updates on the devices in your organization. <br/><br/> Device collections are created by using [Configuration Manager](/mem/configmgr/).|Follow the steps in [Create a collection](/mem/configmgr/core/clients/manage/collections/create-collections#bkmk_create).|
|[Organizational units](/azure/active-directory-domain-services/create-ou) enable you to logically group objects such as user accounts, service accounts, or computer accounts. <br/><br/> You can then assign administrators to specific organizational units, and apply group policy to enforce targeted configuration settings. <br/><br/> Organizational units are defined in [Azure Active Directory Domain Services](/azure/active-directory-domain-services).|Follow the steps in [Create an Organizational Unit in an Azure Active Directory Domain Services managed domain](/azure/active-directory-domain-services/create-ou).|

## 10. Configure Microsoft Defender for Endpoint on Linux antimalware settings

**Before you begin**

- If you're already using a non-Microsoft antimalware product for your Linux servers:
   - Move the existing exclusions to Microsoft Defender for Endpoint on Linux.

- If you're not using a non-Microsoft antimalware product for your Linux servers:
   - Get a list of all your Linux applications and check the vendors website for exclusions.  
   
- If you're running a non-Microsoft antimalware product, then add the processes/paths to the Microsoft Defender for Endpoint's AV exclusion list. For more information, check the non-Microsoft antimalware documentation or contact their support. 
 
- If you're testing on one machine, you can use a command line to set up the exclusions:
  - [Configure from the command line](linux-resources.md#configure-from-the-command-line).
  - [Configure and validate exclusions for Microsoft Defender for Endpoint on  Linux](linux-exclusions.md).

- If you're testing on multiple machines, then use the following `mdatp_managed.json` file. If you are coming from Windows, this would be akin to a 'group policy'.

    You can consider modifying the file based on your needs:

    ```JSON
        {
       "antivirusEngine":{
          "enforcementLevel":"real_time",
          "scanAfterDefinitionUpdate":true,
          "scanArchives":true,
          "maximumOnDemandScanThreads":1,
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
          "maximumOnDemandScanThreads":1,
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
    - Add your third-party antimalware processes and paths to the exclusion list from the prior step. 
    - Verify that you've added your current exclusions from your third-party antimalware to the prior step. 


### Common Applications to Microsoft Defender for Endpoint can impact

High I/O workloads from certain applications can experience performance issues when Microsoft Defender for Endpoint is installed. These include applications for developer scenarios like Jenkins and Jira, and database workloads like OracleDB and Postgres. If experiencing performance degradation, consider setting exclusions for trusted applications, keeping [Common Exclusion Mistakes for Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/common-exclusion-mistakes-microsoft-defender-antivirus) in mind. For additional guidance, consider consulting documentation regarding antivirus exclusions from third party applications.

## 11. Download the Microsoft Defender for Endpoint on Linux onboarding package

For more information, see [download the onboarding package from Microsoft 365 Defender portal](linux-install-with-ansible.md#download-the-onboarding-package).
    
> [!NOTE]
> This download registers Microsoft Defender for Endpoint on Linux to send the data to your Microsoft Defender for Endpoint instance.

  
## 12. Use Ansible to manage Microsoft Defender for Endpoint on Linux

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



**Deliver the scheduled scans cronjob setting**

Schedule an antivirus scan using Anacron in Microsoft Defender for Endpoint on Linux. For more information, see [Schedule an antivirus scan using Anacron in Microsoft Defender for Endpoint on Linux](schedule-antivirus-scan-in-mde.md).



**Deliver the Microsoft Defender for Endpoint on Linux agent cronjob settings**

Schedule an update of the Microsoft Defender for Endpoint on Linux. For more information, see, [Schedule an update of the Microsoft Defender for Endpoint on Linux](linux-update-mde-linux.md).


Additionally, for deploying the "settings preferences" using Ansible, go through adding the steps from the previous step "How to configure Microsoft Defender for Endpoint on Linux antimalware (AV)", by copying your `mdatp_managed.json` to `/etc/opt/microsoft/mdatp/managed/`. 


## 13. Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux

Learn how to troubleshoot issues that might occur during installation in [Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux](linux-support-install.md).



## 14. Rerun resource utilization statistics 

Rerun resource utilization statistics and report on pre-deployment utilization compared to post-deployment.

## 15. Verify communication with Microsoft Defender for Endpoint backend

To verify the Microsoft Defender for Endpoint on Linux communication to the cloud with the current network settings, run the following connectivity test from the command line:
`mdatp connectivity test`

The following image displays the expected output from the test:

:::image type="content" source="images/verify-comm.png" alt-text="This is verify communication image":::

For more information, see [Connectivity validation](linux-support-connectivity.md#run-the-connectivity-test).



## 16. Investigate agent health issues
Investigate agent health issues based on values returned when you run the `mdatp health` command. For more information, see, [Investigate agent health issues](health-status.md).


## 17. Verify that you're able to get platform updates (agent updates)

To verify Microsoft Defender for Endpoint on Linux platform updates, run the following command line:

`sudo yum update mdatp`

For more information, see [Device health and Microsoft Defender antimalware health report](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/new-device-health-reporting-for-microsoft-defender-for-endpoint/bc-p/3616205#M1963).

### How to update Microsoft Defender for Endpoint on Linux
Microsoft regularly publishes software updates to improve performance, security, and to deliver new features. To update Microsoft Defender for Endpoint on Linux. For more information, see [Deploy updates for Microsoft Defender for Endpoint on Linux](linux-updates.md#rhel-and-variants-centos-and-oracle-linux).

>[!NOTE]
> If you have Redhat’s Satellite (akin to WSUS in Windows), you can get the updated packages from it. 


>[!TIP]
> Automate the agent update on a monthly (Recommended) schedule by using a Cron job. For more information, see [schedule an update of the Microsoft Defender for Endpoint on Linux](linux-update-mde-linux.md).

## 18. Verify that you're able to get security intelligence updates (signatures/definition updates)

To verify Microsoft Defender for Endpoint on  Linux signatures/definition updates, run the following command line:

`mdatp definitions update`

For more information, see [New device health reporting for Microsoft Defender antimalware](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/new-device-health-reporting-for-microsoft-defender-for-endpoint/bc-p/3616205).


## 19. Test detections

To ensure that the device is correctly onboarded and reported to the service, run the following detection test:

- Antimalware detections:
 
  `curl -o /tmp/eicar.com.txt https://www.eicar.org/download/eicar.com.txt`

  If the detection doesn’t show up, it could be that you have set “allowedThreats” to allow in preferences via Ansible or Puppet.

- Endpoint detection and response (EDR) detections:
  For more information, see [Experience Microsoft Defender for Endpoint through simulated attacks](attack-simulations.md).
  If the detection doesn’t show up, then it could be that we're missing event or alerts in portal. For more information, see [Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux](linux-support-events.md).
- For more information about unified submissions in Microsoft 365 Defender and the    ability to submit **False Positives** and **False Negatives** through the portal, see [Unified submissions in Microsoft 365 Defender now Generally Available! - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770).


## 20. Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux

For more information see, [Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux](linux-support-events.md).


## 21. Troubleshoot High CPU utilization by ISVs, Linux apps, or scripts

If you observe that third-party ISVs, internally developed Linux apps, or scripts run into high CPU utilization, you take the following steps to investigate the cause.

1. Identify the thread or process that's causing the symptom. 
2. Apply further diagnostic steps based on the identified process to address the issue. 


### Step 1. Identify the Microsoft Defender for Endpoint on Linux thread causing the symptom

Use the following syntaxes to help identify the process that is causing CPU overhead:

- To get Microsoft Defender for Endpoint process ID causing the issue, run:
  - `sudo top -c`.
- To get more details on Microsoft Defender for Endpoint process, run: 	
  - `sudo ps ax --no-headings -T -o user,pid,thcount,%cpu,sched,%mem,vsz,rss,tname,stat,start_time,time,ucmd,command |sort -nrk 3|grep mdatp`.
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


To troubleshoot high CPU utilization overhead caused by a process, see:

|Process name|Component used|Microsoft Defender for Endpoint engine used| Steps |
|---|---|---|---|
|wdavdaemon|FANotify or eBPF | AV & EDR|- Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md). <br> - Collect diagnostic data using the [Client analyzer tool](https://aka.ms/xMDEClientAnalyzerBinary).<br> - Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).
|wdavdaemon_unprivileged|N/A|AV engine| - If you have in-house apps/scripts or a legitimate third-party app/script getting flagged, Microsoft security researchers analyze suspicious files to determine if they're threats, unwanted applications, or normal files. Submit files you think are malware or files that you believe have been incorrectly classified as malware by using the unified submissions experience (for more information, see [Unified submissions experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770)) or [File submissions](https://www.microsoft.com/en-us/wdsi/filesubmission). <br> - See [troubleshoot performance issues for Microsoft Defender for Endpoint on Linux](linux-support-perf.md).<br> - Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md). <br> - Collect diagnostic data using the [Client analyzer tool](https://aka.ms/xMDEClientAnalyzerBinary).<br> - Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).
|wdavdaemon_edr| N/A |EDR engine| - If you have in-house apps/scripts or a legitimate third-party app/script getting flagged, Microsoft security researchers analyze suspicious files to determine if they're threats, unwanted applications, or normal files. Submit files you think are malware or files that you believe have been incorrectly classified as malware by using the unified submissions experience (for more information, see [Unified submissions experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770)) or [File submissions](https://www.microsoft.com/en-us/wdsi/filesubmission). <br> - See [troubleshoot performance issues for Microsoft Defender for Endpoint on Linux](linux-support-perf.md).<br> - Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md). <br> - Collect diagnostic data using the [Client analyzer tool](https://aka.ms/xMDEClientAnalyzerBinary).<br> - Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).
|mdatp_audisp_plugin|Audit framework|Audit log ingestion| See [Troubleshoot AuditD performance issues with Microsoft Defender for Endpoint on Linux](troubleshoot-auditd-performance-issues.md).





## 22. Uninstall your non-Microsoft solution

If at this point you have:
- Onboarded your organization's devices to Defender for Endpoint, and
- Microsoft Defender Antivirus is installed and enabled,

Then your next step is to uninstall your non-Microsoft antivirus, antimalware, and endpoint protection solution. When you uninstall your non-Microsoft solution, Microsoft Defender Antivirus switches from passive mode to active mode. In most cases, this happens automatically.











## Diagnostic and troubleshooting resources

- [Troubleshoot Microsoft Defender for Endpoint on Linux installation issues](linux-support-install.md).
- [Identify where to find detailed logs for installation issues](linux-resources.md#log-installation-issues).
- [Troubleshooting steps for environments without proxy or with transparent proxy](linux-support-connectivity.md#troubleshooting-steps-for-environments-without-proxy-or-with-transparent-proxy).  
- [Troubleshooting steps for environments with static proxy](linux-support-connectivity.md#troubleshooting-steps-for-environments-with-static-proxy).
- [Collect diagnostic information](linux-resources.md#collect-diagnostic-information).
- [Uninstall Defender for Endpoint on Linux](linux-resources.md#uninstall-defender-for-endpoint-on-linux).


## Advanced Microsoft Defender for Endpoint capabilities

- [Enhanced antimalware engine capabilities on Linux and macOS](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/enhanced-antimalware-engine-capabilities-for-linux-and-macos/ba-p/3292003)

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



