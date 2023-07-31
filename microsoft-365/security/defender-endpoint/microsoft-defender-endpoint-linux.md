---
title: Microsoft Defender for Endpoint on Linux
ms.reviewer:
description: Describes how to install and use Microsoft Defender for Endpoint on Linux.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, installation, deploy, uninstallation, puppet, ansible, linux, redhat, ubuntu, debian, sles, suse, centos
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 04/26/2023
---

# Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

This topic describes how to install, configure, update, and use Microsoft Defender for Endpoint on Linux.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Microsoft Defender for Endpoint on Linux is likely to lead to performance problems and unpredictable side effects. If non-Microsoft endpoint protection is an absolute requirement in your environment, you can still safely take advantage of Defender for Endpoint on Linux EDR functionality after configuring the antivirus functionality to run in [Passive mode](linux-preferences.md#enforcement-level-for-antivirus-engine).

## How to install Microsoft Defender for Endpoint on Linux

Microsoft Defender for Endpoint for Linux includes antimalware and endpoint detection and response (EDR) capabilities.

### Prerequisites

- Access to the Microsoft 365 Defender portal
- Linux distribution using the [systemd](https://systemd.io/) system manager

  > [!NOTE]
  > Linux distribution using system manager, except for RHEL/CentOS 6.x support both SystemV and Upstart.

- Beginner-level experience in Linux and BASH scripting
- Administrative privileges on the device (in case of manual deployment)

> [!NOTE]
> Microsoft Defender for Endpoint on Linux agent is independent from [OMS agent](/azure/azure-monitor/agents/agents-overview#log-analytics-agent). Microsoft Defender for Endpoint relies on its own independent telemetry pipeline.

### Installation instructions

There are several methods and deployment tools that you can use to install and configure Microsoft Defender for Endpoint on Linux.

In general you need to take the following steps:

- Ensure that you have a Microsoft Defender for Endpoint subscription.
- Deploy Microsoft Defender for Endpoint on Linux using one of the following deployment methods:
  - The command-line tool:
    - [Manual deployment](linux-install-manually.md)
  - Third-party management tools:
    - [Deploy using Puppet configuration management tool](linux-install-with-puppet.md)
    - [Deploy using Ansible configuration management tool](linux-install-with-ansible.md)
    - [Deploy using Chef configuration management tool](linux-deploy-defender-for-endpoint-with-chef.md)

If you experience any installation failures, refer to [Troubleshooting installation failures in Microsoft Defender for Endpoint on Linux](linux-support-install.md).

> [!NOTE]
> It is not supported to install Microsoft Defender for Endpoint in any other location other than the default install path.
>
> Microsoft Defender for Endpoint on Linux creates an "mdatp" user with random UID and GID. If you want to control the UID and GID, create an "mdatp" user prior to installation using the  "/usr/sbin/nologin" shell option.
> For example: `mdatp:x:UID:GID::/home/mdatp:/usr/sbin/nologin`.

### System requirements

> [!NOTE]
> Support of Red Hat Enterprise Linux and CentOS 6.7+ to 6.10+ are in preview.

- Supported Linux server distributions and x64 (AMD64/EM64T) and x86_64 versions:

  - Red Hat Enterprise Linux 6.7 or higher (Preview)
  - Red Hat Enterprise Linux 7.2 or higher
  - Red Hat Enterprise Linux 8.x
  - Red Hat Enterprise Linux 9.x
  - CentOS 6.7 or higher (Preview)
  - CentOS 7.2 or higher
  - Ubuntu 16.04 LTS or higher LTS
  - Debian 9 or higher
  - SUSE Linux Enterprise Server 12 or higher
  - Oracle Linux 7.2 or higher
  - Oracle Linux 8.x
  - Amazon Linux 2
  - Fedora 33 or higher

    > [!NOTE]
    > Distributions and version that are not explicitly listed are unsupported (even if they are derived from the officially supported distributions).

- List of supported kernel versions
  > [!NOTE]
  > Microsoft Defender for Endpoint on Red Hat Enterprise Linux and CentOS - 6.7 to 6.10 is a Kernel based solution. You must verify that the kernel version is supported before updating to a newer kernel version. See the list below for the list of supported kernels.
  > Microsoft Defender for Endpoint for all other supported distributions and versions is kernel-version-agnostic. With a minimal requirement for the kernel version to be at or above 3.10.0-327.

  - The `fanotify` kernel option must be enabled
  - Red Hat Enterprise Linux 6 and CentOS 6:
    - For 6.7: 2.6.32-573.*
    - For 6.8: 2.6.32-642.*
    - For 6.9: 2.6.32-696.* (except 2.6.32-696.el6.x86_64)
    - For 6.10: 2.6.32.754.2.1.el6.x86_64 to 2.6.32-754.48.1:
      - 2.6.32-754.10.1.el6.x86_64
      - 2.6.32-754.11.1.el6.x86_64
      - 2.6.32-754.12.1.el6.x86_64
      - 2.6.32-754.14.2.el6.x86_64
      - 2.6.32-754.15.3.el6.x86_64
      - 2.6.32-754.17.1.el6.x86_64
      - 2.6.32-754.18.2.el6.x86_64
      - 2.6.32-754.2.1.el6.x86_64
      - 2.6.32-754.22.1.el6.x86_64
      - 2.6.32-754.23.1.el6.x86_64
      - 2.6.32-754.24.2.el6.x86_64
      - 2.6.32-754.24.3.el6.x86_64
      - 2.6.32-754.25.1.el6.x86_64
      - 2.6.32-754.27.1.el6.x86_64
      - 2.6.32-754.28.1.el6.x86_64
      - 2.6.32-754.29.1.el6.x86_64
      - 2.6.32-754.29.2.el6.x86_64
      - 2.6.32-754.3.5.el6.x86_64
      - 2.6.32-754.30.2.el6.x86_64
      - 2.6.32-754.33.1.el6.x86_64
      - 2.6.32-754.35.1.el6.x86_64
      - 2.6.32-754.39.1.el6.x86_64
      - 2.6.32-754.41.2.el6.x86_64
      - 2.6.32-754.43.1.el6.x86_64
      - 2.6.32-754.47.1.el6.x86_64
      - 2.6.32-754.48.1.el6.x86_64
      - 2.6.32-754.49.1.el6.x86_64
      - 2.6.32-754.6.3.el6.x86_64
      - 2.6.32-754.9.1.el6.x86_64

   > [!NOTE]
   > After a new package version is released, support for the previous two versions is reduced to technical support only. Versions older than that which are listed in this section are provided for technical upgrade support only.

  > [!CAUTION]
  > Running Defender for Endpoint on Linux side by side with other `fanotify`-based security solutions is not supported. It can lead to unpredictable results, including hanging the operating system.

- Disk space: 2 GB

  > [!NOTE]
  > An additional 2 GB disk space might be needed if cloud diagnostics are enabled for crash collections.

- /opt/microsoft/mdatp/sbin/wdavdaemon requires executable permission. For more information, see "Ensure that the daemon has executable permission" in [Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux](/microsoft-365/security/defender-endpoint/linux-support-install).

- Cores: 2 minimum, 4 preferred

- Memory: 1 GB minimum, 4 preferred

    > [!NOTE]
    > Please make sure that you have free disk space in /var.

- The solution currently provides real-time protection for the following file system types:

  - `btrfs`
  - `ecryptfs`
  - `ext2`
  - `ext3`
  - `ext4`
  - `fuse`
  - `fuseblk`
  - `jfs`
  - `nfs (v3 only)`
  - `overlay`
  - `ramfs`
  - `reiserfs`
  - `tmpfs`
  - `udf`
  - `vfat`
  - `xfs`

After you've enabled the service, you may need to configure your network or firewall to allow outbound connections between it and your endpoints.

- Audit framework (`auditd`) must be enabled.

  > [!NOTE]
  > System events captured by rules added to `/etc/audit/rules.d/` will add to `audit.log`(s) and might affect host auditing and upstream collection. Events added by Microsoft Defender for Endpoint on Linux will be tagged with `mdatp` key.

### External package dependancy
The following external package dependencies exist for the mdatp package:
- The mdatp RPM package requires "glibc >= 2.17", "audit", "policycoreutils", "semanage" "selinux-policy-targeted", "mde-netfilter"
- For RHEL6 the mdatp RPM package requires "audit", "policycoreutils", "libselinux", "mde-netfilter"
- For DEBIAN the mdatp package requires "libc6 >= 2.23", "uuid-runtime", "auditd", "mde-netfilter"

The mde-netfilter package also has the following package dependencies:
- For DEBIAN the mde-netfilter package requires "libnetfilter-queue1", "libglib2.0-0"
- For RPM the mde-netfilter package requires "libmnl", "libnfnetlink", "libnetfilter_queue", "glib2"

If the Microsoft Defender for Endpoint installation fails due to missing dependencies errors, you can manually download the pre-requisite dependencies.

### Configuring Exclusions

When adding exclusions to Microsoft Defender Antivirus, you should be mindful of [Common Exclusion Mistakes for Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/common-exclusion-mistakes-microsoft-defender-antivirus)

### Network connections

The following downloadable spreadsheet lists the services and their associated URLs that your network must be able to connect to. You should ensure that there are no firewall or network filtering rules that would deny access to these URLs. If there are, you may need to create an *allow* rule specifically for them.

|Spreadsheet of domains list| Description|
|---|---|
|Microsoft Defender for Endpoint URL list for commercial customers| Spreadsheet of specific DNS records for service locations, geographic locations, and OS for commercial customers. <p> [Download the spreadsheet here.](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx)|
| Microsoft Defender for Endpoint URL list for Gov/GCC/DoD | Spreadsheet of specific DNS records for service locations, geographic locations, and OS for Gov/GCC/DoD customers. <p> [Download the spreadsheet here.](https://download.microsoft.com/download/6/a/0/6a041da5-c43b-4f17-8167-79dfdc10507f/mde-urls-gov.xlsx)|

> [!NOTE]
> For a more specific URL list, see [Configure proxy and internet connectivity settings](/microsoft-365/security/defender-endpoint/configure-proxy-internet#enable-access-to-microsoft-defender-atp-service-urls-in-the-proxy-server).

Defender for Endpoint can discover a proxy server by using the following discovery methods:

- Transparent proxy
- Manual static proxy configuration

If a proxy or firewall is blocking anonymous traffic, make sure that anonymous traffic is permitted in the previously listed URLs. For transparent proxies, no additional configuration is needed for Defender for Endpoint. For static proxy, follow the steps in [Manual Static Proxy Configuration](linux-static-proxy-configuration.md).

> [!WARNING]
> PAC, WPAD, and authenticated proxies are not supported. Ensure that only a static proxy or transparent proxy is being used.
>
> SSL inspection and intercepting proxies are also not supported for security reasons. Configure an exception for SSL inspection and your proxy server to directly pass through data from Defender for Endpoint on Linux to the relevant URLs without interception. Adding your interception certificate to the global store will not allow for interception.

For troubleshooting steps, see [Troubleshoot cloud connectivity issues for Microsoft Defender for Endpoint on Linux](linux-support-connectivity.md).

## How to update Microsoft Defender for Endpoint on Linux

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features. To update Microsoft Defender for Endpoint on Linux, refer to [Deploy updates for Microsoft Defender for Endpoint on Linux](linux-updates.md).

## How to configure Microsoft Defender for Endpoint on Linux

Guidance for how to configure the product in enterprise environments is available in [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md).

## Common Applications to Microsoft Defender for Endpoint can impact

High I/O workloads from certain applications can experience performance issues when Microsoft Defender for Endpoint is installed. These include applications for developer scenarios like Jenkins and Jira, and database workloads like OracleDB and Postgres. If experiencing performance degradation, consider setting exclusions for trusted applications, keeping [Common Exclusion Mistakes for Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/common-exclusion-mistakes-microsoft-defender-antivirus) in mind. For additional guidance, consider consulting documentation regarding antivirus exclusions from third party applications.

## Resources

- For more information about logging, uninstalling, or other topics, see [Resources](linux-resources.md).

## Related articles

- [Protect your endpoints with Defender for Cloud's integrated EDR solution: Microsoft Defender for Endpoint](/azure/defender-for-cloud/integration-defender-for-endpoint)
- [Connect your non-Azure machines to Microsoft Defender for Cloud](/azure/defender-for-cloud/quickstart-onboard-machines)
- [Turn on network protection for Linux](network-protection-linux.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
