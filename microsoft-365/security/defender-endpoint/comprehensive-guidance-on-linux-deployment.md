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
ms.date: 10/11/2022
---

# Advanced deployment guidance for Microsoft Defender for Endpoint on Linux

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

This article provides advanced deployment guidance for Microsoft Defender for Endpoint on Linux. You'll get a brief summary of the deployment steps, learn about the system requirements, then be guided through the actual deployment steps. You'll also learn how to verify that the device has been correctly onboarded.

For information about Microsoft Defender for Endpoint capabilities, see [Advanced Microsoft Defender for Endpoint capabilities](#advanced-microsoft-defender-for-endpoint-capabilities).

To learn about other ways to deploy Microsoft Defender for Endpoint on Linux, see:

- [Manual deployment](linux-install-manually.md)
- [Puppet based deployment](linux-install-with-puppet.md)
- [Ansible based deployment](linux-install-with-ansible.md)
- [Deploy Defender for Endpoint on Linux with Chef](linux-deploy-defender-for-endpoint-with-chef.md)

## Deployment summary

Learn about the general guidance on a typical Microsoft Defender for Endpoint on Linux deployment. The applicability of some steps is determined by the requirements of your Linux environment.

[1. Work with your Firewall, Proxy, and Networking admin.](#1-work-with-your-firewall-proxy-and-networking-admin)

[2. Capture performance data from the endpoint.](#2-capture-performance-data-from-the-endpoint)

> [!NOTE]
> Consider doing the following optional items, even though they are not Microsoft Defender for Endpoint specific, they tend to improve performance in Linux systems.

[3. (Optional) Check for filesystem errors 'fsck' (akin to chkdsk).](#3-optional-check-for-filesystem-errors-fsck-akin-to-chkdsk)

[4. (Optional) Update storage subsystem drivers.](#4-optional-update-storage-subsystem-drivers)

[5. (Optional) Update nic drivers.](#5-optional-update-nic-drivers)

[6. Confirm system requirements and resource recommendations are met.](#6-confirm-system-requirements-and-resource-recommendations-are-met)

[7. Add your existing solution to the exclusion list for Microsoft Defender Antivirus.](#7-add-your-existing-solution-to-the-exclusion-list-for-microsoft-defender-antivirus)

[8. Keep the following points about exclusions in mind.](#8-keep-the-following-points-about-exclusions-in-mind)

[9. Create Device Groups.](#9-create-device-groups)

[10. Configure Microsoft Defender for Endpoint on Linux antimalware settings.](#10-configure-microsoft-defender-for-endpoint-on-linux-antimalware-settings)

[11. Download the Microsoft Defender for Endpoint on Linux onboarding package from the Microsoft 365 Defender portal.](#11-download-the-microsoft-defender-for-endpoint-on-linux-onboarding-package)

[12. Use Ansible, Puppet, or Chef to manage Microsoft Defender for Endpoint on Linux](#12-ansible-puppet-and-chef-examples-to-manage-microsoft-defender-for-endpoint-on-linux)

[13. Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux.](#13-troubleshoot-installation-issues-for-microsoft-defender-for-endpoint-on-linux)

[14. Check resource utilization statistics and report on pre-deployment utilization compared to post-deployment.](#14-check-resource-utilization-statistics)

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

1. See [Allow URLs for the Microsoft Defender for Endpoint traffic](#step-1-allow-urls-for-the-microsoft-defender-for-endpoint-traffic) that are allowed for the Microsoft Defender for Endpoint traffic.
2. If the Linux servers are behind a proxy, then set the proxy settings. For more information, see [Set up proxy settings](#step-2-set-up-proxy-settings).
3. Verify that the traffic isn't being inspected by SSL inspection (TLS inspection). This is the most common network related issue when setting up Microsoft Defender Endpoint, see [Verify SSL inspection isn't being performed on the network traffic](#step-3-verify-ssl-inspection-isnt-being-performed-on-the-network-traffic).

#### Step 1. Allow URLs for the Microsoft Defender for Endpoint traffic

1. Download [Microsoft Defender for Endpoint URL list for commercial customers](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx) or [Microsoft Defender for Endpoint URL list for Gov/GCC/DoD](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx) that lists the services and their associated URLs that your network must be able to connect.

2. Under **Geography** column, ensure the following checkboxes are selected:
    - EU, or UK, or US
    - WW
    - (Blanks)

    > [!NOTE]
    > You should ensure that there are no firewall or network filtering rules that would deny access to these URLs. If there are, you may need to create an allow rule specifically for them.

3. Work with the Firewall/Proxy/Networking admins to allow the relevant URLs.

#### Step 2. Set up proxy settings

If the Linux servers are behind a proxy, use the following settings guidance.

The following table lists the supported proxy settings:

|Supported|Not supported|
|---|---|
|Transparent proxy |Proxy autoconfig (PAC, a type of authenticated proxy)|
|Manual static proxy configuration |Web proxy autodiscovery protocol (WPAD, a type of authenticated proxy)|

- [Network connections](microsoft-defender-endpoint-linux.md#network-connections)
- [Full configuration profile](../defender-endpoint/linux-preferences.md#full-configuration-profile-example)
- [Static proxy configuration](../defender-endpoint/linux-static-proxy-configuration.md)
- [Troubleshooting connectivity issues in static proxy scenario](linux-support-connectivity.md#troubleshooting-steps-for-environments-with-static-proxy)

#### Step 3. Verify SSL inspection isn't being performed on the network traffic

To prevent man-in-the-middle attacks, all Microsoft Azure hosted traffic uses certificate pinning. As a result, SSL inspections by major firewall systems aren't allowed. You have to bypass SSL inspection for Microsoft Defender for Endpoint URLs.

##### Troubleshoot cloud connectivity issues

For more information, see [Troubleshooting cloud connectivity issues for Microsoft Defender for Endpoint on Linux](linux-support-connectivity.md).

## 2. Capture performance data from the endpoint

Capture performance data from the endpoints that have Defender for Endpoint installed. This includes disk space availability on all mounted partitions, memory usage, process list, and CPU usage (aggregate across all cores).

## 3. (Optional) Check for filesystem errors 'fsck' (akin to chkdsk)

Any filesystem could end-up getting corrupt, so before installing any new software, it would be good to install it on a healthy file system.

## 4. (Optional) Update storage subsystem drivers

 Newer driver or firmware on a storage subsystem could help with performance and/or reliability.

## 5. (Optional) Update nic drivers

Newer driver/firmware on a NICs or NIC teaming software could help w/ performance and/or reliability.

## 6. Confirm system requirements and resource recommendations are met

The following section provides information on supported Linux versions and recommendations for resources.

For a detailed list of supported Linux distros, see [System requirements](microsoft-defender-endpoint-linux.md#system-requirements).

|Resource|Recommendation|
|---|---|
|Disk space |Minimum: 2 GB <br> NOTE: An additional 2-GB disk space might be needed if cloud diagnostics are enabled for crash collections. |
|RAM |1 GB<br> 4 GB is preferred|
|CPU |If the Linux system is running only 1 vcpu, we recommend it be increased to 2 vcpu's<br> 4 cores are preferred |

|OS version|Kernel filter driver|Comments|
|---|---|---|
|RHEL 7.x, RHEL 8.x, and RHEL 9.x |No kernel filter driver, the fanotify kernel option must be enabled|akin to Filter Manager (fltmgr, accessible via `fltmc.exe`) in Windows|
|RHEL 6.x|TALPA kernel driver|

## 7. Add your existing solution to the exclusion list for Microsoft Defender Antivirus

This step of the setup process involves adding Defender for Endpoint to the exclusion list for your existing endpoint protection solution and any other security products your organization is using. You can choose from several methods to add your exclusions to Microsoft Defender Antivirus.

> [!TIP]
> To get help configuring exclusions, refer to your solution provider's documentation.

- Your ability to run Microsoft Defender for Endpoint on Linux alongside a non-Microsoft antimalware product depends on the implementation details of that product. If the other antimalware product leverages fanotify, it has to be uninstalled to eliminate performance and stability side effects resulting from running two conflicting agents.

- To check if there's a non-Microsoft antimalware that is running FANotify, you can run `mdatp health`, then check the result:

  :::image type="content" source="images/mdatp-health-result.png" alt-text="Image of mdatp health result":::

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

> [!NOTE]
>
> - AV exclusions apply to the AV engine.
> - Indicators allow/block apply to the AV engine.

Keep the following points in mind:

- *Path exclusions* exclude specific files and whatever those files access.
- *Process exclusions* exclude whatever a process touches, but doesn't exclude the process itself.
- List your process exclusions using their full path and not by their name only. (The name-only method is less secure.)
- If you list each executable as both a path exclusion and a process exclusion, the process and whatever it touches are excluded.

> [!TIP]
> Review "Common mistakes to avoid when defining exclusions", specifically [Folder locations and Processes the sections for Linux and macOS Platforms](/microsoft-365/security/defender-endpoint/common-exclusion-mistakes-microsoft-defender-antivirus#folder-locations).

## 9. Create device groups

Set up your device groups, device collections, and organizational units Device groups, device collections, and organizational units enable your security team to manage and assign security policies efficiently and effectively. The following table describes each of these groups and how to configure them. Your organization might not use all three collection types.

|Collection type|What to do|
|---|---|
|[Device groups](/microsoft-365/security/defender-endpoint/machine-groups) (formerly called *machine groups*) enable your security operations team to configure security capabilities, such as automated investigation and remediation. <br/><br/> Device groups are also useful for assigning access to those devices so that your security operations team can take remediation actions if needed. <br/><br/> Device groups are created while the attack was detected and stopped, alerts, such as an "initial access alert," were triggered and appeared in the [Microsoft 365 Defender portal](/microsoft-365/security/defender/microsoft-365-defender).|1. Go to the Microsoft 365 Defender portal (<https://security.microsoft.com>).<br/><br/>2. In the navigation pane on the left, choose **Settings** \> **Endpoints** \> **Permissions** \> **Device groups**.<br/><br/>3. Choose **+ Add device group**.<br/><br/>4. Specify a name and description for the device group.<br/><br/>5. In the **Automation level** list, select an option. (We recommend **Full - remediate threats automatically**.) To learn more about the various automation levels, see [How threats are remediated](/microsoft-365/security/defender-endpoint/automated-investigations#how-threats-are-remediated).<br/><br/>6. Specify conditions for a matching rule to determine which devices belong to the device group. For example, you can choose a domain, OS versions, or even use [device tags](/microsoft-365/security/defender-endpoint/machine-tags).<br/><br/>7. On the **User access** tab, specify roles that should have access to the devices that are included in the device group.<br/><br/>8. Choose **Done**.|
|[Device collections](/mem/configmgr/core/clients/manage/collections/introduction-to-collections) enable your security operations team to manage applications, deploy compliance settings, or install software updates on the devices in your organization. <br/><br/> Device collections are created by using [Configuration Manager](/mem/configmgr/).|Follow the steps in [Create a collection](/mem/configmgr/core/clients/manage/collections/create-collections#bkmk_create).|
|[Organizational units](/azure/active-directory-domain-services/create-ou) enable you to logically group objects such as user accounts, service accounts, or computer accounts. <br/><br/> You can then assign administrators to specific organizational units, and apply group policy to enforce targeted configuration settings. <br/><br/> Organizational units are defined in [Azure Active Directory Domain Services](/azure/active-directory-domain-services).|Follow the steps in [Create an Organizational Unit in an Azure Active Directory Domain Services managed domain](/azure/active-directory-domain-services/create-ou).|

## 10. Configure Microsoft Defender for Endpoint on Linux antimalware settings

**Before you begin**:

- If you're already using a non-Microsoft antimalware product for your Linux servers:
  - Consider that you may need to copy the existing exclusions to Microsoft Defender for Endpoint on Linux.

- If you're not using a non-Microsoft antimalware product for your Linux servers:
  - Get a list of all your Linux applications and check the vendors website for exclusions.

- If you're running a non-Microsoft antimalware product, add the processes/paths to the Microsoft Defender for Endpoint's AV exclusion list. For more information, check the non-Microsoft antimalware documentation or contact their support.

- If you're testing on one machine, you can use a command line to set up the exclusions:
  - [Configure from the command line](linux-resources.md#configure-from-the-command-line).
  - [Configure and validate exclusions for Microsoft Defender for Endpoint on Linux](linux-exclusions.md).

- If you're testing on multiple machines, then use the following `mdatp_managed.json` file. If you're coming from Windows, this like a 'group policy' for Defender for Endpoint on Linux.

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

**Recommendations**:

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
> In Linux (and macOS) we support paths where it starts with a wildcard.

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

### Applications that Microsoft Defender for Endpoint can impact

High I/O workloads such as Postgres, OracleDB, Jira, and Jenkins may require additional exclusions depending on the amount of activity that is being processed (which is then monitored by Defender for Endpoint). It's best to follow guidance from third party application providers for exclusions if you experience performance degradation after installing Defender for Endpoint. Also keep in mind [Common Exclusion Mistakes for Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/common-exclusion-mistakes-microsoft-defender-antivirus).

You can refer to these documents for more information if you experience performance degradation:

- [Troubleshoot performance issues for Microsoft Defender for Endpoint on Linux](linux-support-perf.md).
- [Troubleshoot AuditD performance issues with Microsoft Defender for Endpoint on Linux](troubleshoot-auditd-performance-issues.md).

## 11. Download the Microsoft Defender for Endpoint on Linux onboarding package

For more information, see [download the onboarding package from Microsoft 365 Defender portal](linux-install-manually.md#download-the-onboarding-package).

> [!NOTE]
> This download registers Microsoft Defender for Endpoint on Linux to send the data to your Microsoft Defender for Endpoint instance.

After downloading this package, you can follow the [manual installation instructions](linux-install-manually.md) or use a Linux management platform to deploy and manage Defender for Endpoint on Linux.

## 12. Ansible, Puppet, and Chef examples to manage Microsoft Defender for Endpoint on Linux

Defender for Endpoint on Linux is designed to allow almost any management solution to easily deploy and manage Defender for Endpoint settings on Linux. A few common Linux management platforms are Ansible, Puppet, and Chef. The following documents contain examples on how to configure these management platforms to deploy and configure Defender for Endpoint on Linux.

[Deploy Microsoft Defender for Endpoint on Linux with Puppet](linux-install-with-puppet.md)

[Deploy Microsoft Defender for Endpoint on Linux with Ansible](linux-install-with-ansible.md)

[Deploy Microsoft Defender for Endpoint on Linux with Chef](linux-deploy-defender-for-endpoint-with-chef.md)

> [!NOTE]
> Reboots are NOT required after installing or updating Microsoft Defender for Endpoint on Linux except when you're running auditD in immutable mode.

### Deliver the scheduled scans cronjob setting

Schedule an antivirus scan using Anacron in Microsoft Defender for Endpoint on Linux. For more information, see [Schedule an antivirus scan using Anacron in Microsoft Defender for Endpoint on Linux](schedule-antivirus-scan-in-mde.md).

### Update Microsoft Defender for Endpoint on Linux agent cronjob settings

Schedule an update of the Microsoft Defender for Endpoint on Linux. For more information, see, [Schedule an update of the Microsoft Defender for Endpoint on Linux](linux-update-mde-linux.md).

## 13. Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux

Learn how to troubleshoot issues that might occur during installation in [Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux](linux-support-install.md).

## 14. Check resource utilization statistics

Check performance statistics and compare to pre-deployment utilization compared to post-deployment.

## 15. Verify communication with Microsoft Defender for Endpoint backend

To verify the Microsoft Defender for Endpoint on Linux communication to the cloud with the current network settings, run the following connectivity test from the command line:

```bash
mdatp connectivity test
```

The following image displays the expected output from the test:

:::image type="content" source="images/verify-comm.png" alt-text="This is verify communication image":::

For more information, see [Connectivity validation](linux-support-connectivity.md#run-the-connectivity-test).

## 16. Investigate agent health issues

Investigate agent health issues based on values returned when you run the `mdatp health` command. For more information, see, [Investigate agent health issues](health-status.md).

## 17. Verify that you're able to get platform updates (agent updates)

To verify Microsoft Defender for Endpoint on Linux platform updates, run the following command line:

```bash
sudo yum update mdatp
```

or

```bash
apt-get update mdatp
```

depending on your package manager.

For more information, see [Device health and Microsoft Defender antimalware health report](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/new-device-health-reporting-for-microsoft-defender-for-endpoint/bc-p/3616205#M1963).

To find the latest Broad channel release, visit [What's new in Microsoft Defender for Endpoint on Linux](linux-whatsnew.md).

### How to update Microsoft Defender for Endpoint on Linux

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features. To update Microsoft Defender for Endpoint on Linux. For more information, see [Deploy updates for Microsoft Defender for Endpoint on Linux](linux-updates.md#rhel-and-variants-centos-and-oracle-linux).

> [!NOTE]
> If you have Redhat's Satellite (akin to WSUS in Windows), you can get the updated packages from it.

> [!TIP]
> Automate the agent update on a monthly (Recommended) schedule by using a Cron job. For more information, see [schedule an update of the Microsoft Defender for Endpoint on Linux](linux-update-mde-linux.md).

### Non-Windows endpoints

With macOS and Linux, you could take a couple of systems and run in the Beta channel.

> [!NOTE]
> Ideally you should include one of each type of Linux system you are running in the Preview channel so that you are able to find compatibility, performance and reliability issues before the build makes it into the Current channel.

The choice of the channel determines the type and frequency of updates that are offered to your device. Devices in Beta are the first ones to receive updates and new features, followed later by Preview and lastly by Current.

:::image type="content" source="images/insider-rings.png" alt-text="The insider rings." lightbox="images/insider-rings.png":::

In order to preview new features and provide early feedback, it's recommended that you configure some devices in your enterprise to use either Beta or Preview.

> [!WARNING]
> Switching the channel after the initial installation requires the product to be reinstalled. To switch the product channel: uninstall the existing package, re-configure your device to use the new channel, and follow the steps in this document to install the package from the new location.

## 18. Verify that you're able to get security intelligence updates (signatures/definition updates)

To verify Microsoft Defender for Endpoint on Linux signatures/definition updates, run the following command line:

`mdatp definitions update`

For more information, see [New device health reporting for Microsoft Defender antimalware](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/new-device-health-reporting-for-microsoft-defender-for-endpoint/bc-p/3616205).

## 19. Test detections

To ensure that the device is correctly onboarded and reported to the service, run the following detection test:

- Antimalware detections:

  ```bash
  curl -o /tmp/eicar.com.txt https://www.eicar.org/download/eicar.com.txt
  ```

  If the detection doesn't show up, it could be that you have set "allowedThreats" to allow in preferences via Ansible or Puppet.

- Endpoint detection and response (EDR) detections:
  For more information, see [Experience Microsoft Defender for Endpoint through simulated attacks](attack-simulations.md).
  If the detection doesn't show up, then it could be that we're missing event or alerts in portal. For more information, see [Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux](linux-support-events.md).
- For more information about unified submissions in Microsoft 365 Defender and the ability to submit **False Positives** and **False Negatives** through the portal, see [Unified submissions in Microsoft 365 Defender now Generally Available! - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770).

## 20. Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux

For more information, see, [Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux](linux-support-events.md).

## 21. Troubleshoot High CPU utilization by ISVs, Linux apps, or scripts

If you observe that third-party ISVs, internally developed Linux apps, or scripts run into high CPU utilization, you take the following steps to investigate the cause.

1. Identify the thread or process that's causing the symptom.
2. Apply further diagnostic steps based on the identified process to address the issue.

### Step 1. Identify the Microsoft Defender for Endpoint on Linux thread causing the symptom

Use the following syntaxes to help identify the process that is causing CPU overhead:

- To get Microsoft Defender for Endpoint process ID causing the issue, run:

  ```bash
  sudo top -c
  ```

- To get more details on Microsoft Defender for Endpoint process, run:

  ```bash
  sudo ps ax --no-headings -T -o user,pid,thcount,%cpu,sched,%mem,vsz,rss,tname,stat,start_time,time,ucmd,command |sort -nrk 3|grep mdatp
  ```

- To identify the specific Microsoft Defender for Endpoint thread ID causing the highest CPU utilization within the process, run:

  ```bash
  sudo ps -T -p <PID> >> Thread_with_highest_cpu_usage.log

  :::image type="content" source="images/cpu-utilization.png" alt-text="This is CPU utilization":::

The following table lists the processes that may cause a high CPU usage:

|Process name|Component used|MDE engine used|
|---|---|---|
|wdavdaemon|FANotify| AV & EDR|
|wdavdaemon unprivileged||AV engine|
|wdavdaemon edr||EDR engine|
|mdatp_audisp_plugin|audit framework (auditd)|Audit log ingestion|

### Step 2. Apply further diagnostic steps based on the identified process

Now that you've identified the process that is causing the high CPU usage, use the corresponding diagnostic guidance in the following section.

For example, in the previous step, `wdavdaemon unprivileged` was identified as the process that was causing high CPU usage. Based on the result, you can apply the guidance to check the wdavdaemon unprivileged process.

Use the following table to troubleshoot high CPU utilization:

|Process name|Component used|Microsoft Defender for Endpoint engine used| Steps |
|---|---|---|---|
|wdavdaemon|FANotify | AV & EDR|- Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md). <br/><br/> - Collect diagnostic data using the [Client analyzer tool](https://aka.ms/xMDEClientAnalyzerBinary).<br/><br/> - Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).
|wdavdaemon unprivileged|N/A|AV engine| The following diagram shows the workflow and steps required in order to add AV exclusions. <br/><br/> :::image type="content" source="images/unprivileged-plugins.png" alt-text="Screenshot that shows This is unprivileged sensors." lightbox="images/unprivileged-plugins.png"::: <br/><br/>**General troubleshooting guidance**<br/> - If you have in-house apps/scripts or a legitimate third-party app/script getting flagged, Microsoft security researchers analyze suspicious files to determine if they're threats, unwanted applications, or normal files. Submit files you think are malware or files that you believe have been incorrectly classified as malware by using the unified submissions experience (for more information, see [Unified submissions experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770)) or [File submissions](https://www.microsoft.com/wdsi/filesubmission). <br/><br/> - See [troubleshoot performance issues for Microsoft Defender for Endpoint on Linux](linux-support-perf.md).<br/><br/> - Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md). <br/><br/> - Collect diagnostic data using the [Client analyzer tool](https://aka.ms/xMDEClientAnalyzerBinary).<br/><br/> - Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).
|wdavdaemon edr| N/A |EDR engine|The following diagram shows the workflow and steps to troubleshoot wdavedaemon_edr process issues. <br/><br/> :::image type="content" source="images/wdavdaemon_edr_engine.png" alt-text="Image of troubleshooting wdavdaemon edr process." lightbox="images/wdavdaemon_edr_engine.png"::: <br/><br/>**General troubleshooting guidance**<br/>- If you have in-house apps/scripts or a legitimate third-party app/script getting flagged, Microsoft security researchers analyze suspicious files to determine if they're threats, unwanted applications, or normal files. Submit files you think are malware or files that you believe have been incorrectly classified as malware by using the unified submissions experience (for more information, see [Unified submissions experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770)) or [File submissions](https://www.microsoft.com/wdsi/filesubmission). <br/><br/> - See [troubleshoot performance issues for Microsoft Defender for Endpoint on Linux](linux-support-perf.md).<br/><br/> - Download and run Microsoft Defender for Endpoint Client Analyzer. For more information, see [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md). <br/><br/> - Collect diagnostic data using the [Client analyzer tool](https://aka.ms/xMDEClientAnalyzerBinary).<br/><br/> - Open a CSS support case with Microsoft. For more information, see [CSS security support case](/mem/get-support).
|mdatp_audisp_plugin|Audit framework|Audit log ingestion| See [Troubleshoot AuditD performance issues with Microsoft Defender for Endpoint on Linux](troubleshoot-auditd-performance-issues.md).

## 22. Uninstall your non-Microsoft solution

If at this point you have:

- Onboarded your organization's devices to Defender for Endpoint, and
- Microsoft Defender Antivirus is installed and enabled,

Then your next step is to uninstall your non-Microsoft antivirus, antimalware, and endpoint protection solution. When you uninstall your non-Microsoft solution, make sure to update your configuration to switch from Passive Mode to Active if you set Defender for Endpoint to Passive mode during the installation or configuration.

## Diagnostic and troubleshooting resources

- [Troubleshoot Microsoft Defender for Endpoint on Linux installation issues](linux-support-install.md).
- [Identify where to find detailed logs for installation issues](linux-resources.md#log-installation-issues).
- [Troubleshooting steps for environments without proxy or with transparent proxy](linux-support-connectivity.md#troubleshooting-steps-for-environments-without-proxy-or-with-transparent-proxy).
- [Troubleshooting steps for environments with static proxy](linux-support-connectivity.md#troubleshooting-steps-for-environments-with-static-proxy).
- [Collect diagnostic information](linux-resources.md#collect-diagnostic-information).
- [Uninstall Defender for Endpoint on Linux](linux-resources.md#uninstall-defender-for-endpoint-on-linux).
- [Troubleshoot performance issues for Microsoft Defender for Endpoint on Linux](linux-support-perf.md).
- [Troubleshoot AuditD performance issues with Microsoft Defender for Endpoint on Linux](troubleshoot-auditd-performance-issues.md).

## Advanced Microsoft Defender for Endpoint capabilities

- [Enhanced antimalware engine capabilities on Linux and macOS](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/enhanced-antimalware-engine-capabilities-for-linux-and-macos/ba-p/3292003)

- Boost protection of your Linux estate with behavior monitoring capabilities:
  - [Boost protection of Linux estate with behavior monitoring](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/boost-protection-of-your-linux-estate-with-behavior-monitoring/ba-p/2909320)

  > [!NOTE]
  > The behavior monitoring functionality complements existing strong content-based capabilities, however you should carefully evaluate this feature in your environment before deploying it broadly since enabling behavioral monitoring consumes more resources and may cause performance issues.

- [Unified submissions in Microsoft 365 Defender](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770)

- [Introducing the new alert suppression experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/introducing-the-new-alert-suppression-experience-now-in-public/ba-p/3562719)

- [Announcing live response for macOS and Linux](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-live-response-for-macos-and-linux/ba-p/2864397)

## References

- [Add a tag or group ID](linux-preferences.md#add-tag-or-group-id-to-the-configuration-profile)

- [Privacy for Microsoft Defender for Endpoint on Linux](linux-privacy.md)

- [What's new in Microsoft Defender for Endpoint on Linux](linux-whatsnew.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
