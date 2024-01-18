---
title: Migrate to Microsoft Defender for Endpoint - Prepare
description: Get ready to move to Microsoft Defender for Endpoint. Update your devices and configure your network connections.
ms.service: defender-endpoint
ms.subservice: onboard
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - m365solution-migratetomdatp
  - highpri
  - tier1
ms.topic: how-to
ms.custom: 
- migrationguides
- admindeeplinkDEFENDER
ms.date: 10/24/2023
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho, yongrhee
search.appverid: met150
---

# Migrate to Microsoft Defender for Endpoint - Phase 1: Prepare

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

| ![Phase 1: Prepare.](images/phase-diagrams/prepare.png#lightbox)<br/>Phase 1: Prepare | [![Phase 2: Set up](images/phase-diagrams/setup.png#lightbox)](switch-to-mde-phase-2.md)<br/>[Phase 2: Set up](switch-to-mde-phase-2.md) | [![Phase 3: Onboard](images/phase-diagrams/onboard.png#lightbox)](switch-to-mde-phase-3.md)<br/>[Phase 3: Onboard](switch-to-mde-phase-3.md) |
|--|--|--|
|*You're here!*| | |

**Welcome to the Prepare phase of [migrating to Defender for Endpoint](switch-to-mde-overview.md#the-migration-process)**.

This migration phase includes the following steps:

1. [Get and deploy updates across your organization's devices](#step-1-get-and-deploy-updates-across-your-organizations-devices).
2. [Get Microsoft Defender for Endpoint Plan 1 or Plan 2](#step-2-get-microsoft-defender-for-endpoint-plan-1-or-plan-2).
3. [Grant access to the Microsoft Defender portal](#step-3-grant-access-to-the-microsoft-365-defender-portal).
4. [Review more information about device proxy and internet connectivity settings](#step-4-view-information-about-device-proxy-and-internet-connectivity-settings).
5. [Capture performance baseline data from the endpoint](#step-5-capture-performance-baseline-data-from-the-endpoint) 

## Step 1: Get and deploy updates across your organization's devices

As a best practice, keep your organization's devices and endpoints up to date. Make sure your existing endpoint protection and antivirus solution is up to date, and that your organization's operating systems and apps also have the latest updates. Getting updates installed now can help prevent problems later as you migrate to Defender for Endpoint and employ Microsoft Defender Antivirus on all your devices.

### Make sure your existing solution is up to date

Keep your existing endpoint protection solution up to date, and make sure that your organization's devices have the latest security updates. Make sure to review your solution provider's documentation for updates.

### Make sure your organization's devices are up to date

Need help with updating your organization's devices? See the following resources:

|OS|Resource|
|---|---|
|Windows|[Microsoft Update](/windows/deployment/update/how-windows-update-works)|
|macOS|[How to update the software on your Mac](https://support.apple.com/HT201541)|
|iOS|[Update your iPhone, iPad, or iPod touch](https://support.apple.com/HT204204)|
|Android|[Check & update your Android version](https://support.google.com/android/answer/7680439)|
|Linux|[Linux 101: Updating Your System](https://www.linux.com/training-tutorials/linux-101-updating-your-system)|

## Step 2: Get Microsoft Defender for Endpoint Plan 1 or Plan 2

Now that you've updated your organization's devices, the next step is to get Defender for Endpoint, assign licenses, and make sure the service is provisioned.

1. Buy or try Defender for Endpoint today. [Start a free trial or request a quote](https://aka.ms/mdatp). Microsoft 365 E3 includes Defender for Endpoint Plan 1, and Microsoft 365 E5 includes Defender for Endpoint Plan 2.

2. Verify that your licenses are properly provisioned. [Check your license state](production-deployment.md#check-license-state).

3. Set up your dedicated cloud instance of Defender for Endpoint. See [Defender for Endpoint setup: Tenant configuration](production-deployment.md#tenant-configuration).

4. If any devices in your organization use a proxy to access the internet, follow the guidance in [Defender for Endpoint setup: Network configuration](production-deployment.md#network-configuration).

At this point, you're ready to grant access to your security administrators and security operators to use the [Microsoft Defender portal](https://security.microsoft.com).

<a name='step-3-grant-access-to-the-microsoft-365-defender-portal'></a>

## Step 3: Grant access to the Microsoft Defender portal

The [Microsoft Defender portal](https://security.microsoft.com) is where you and your security team access and configure features and capabilities of Defender for Endpoint. To learn more, see [Overview of the Microsoft Defender portal](use.md).

Permissions to the Microsoft Defender portal can be granted by using either basic permissions or role-based access control (RBAC). We recommend using RBAC so that you have more granular control over permissions.

1. Plan the roles and permissions for your security administrators and security operators. See [Role-based access control](prepare-deployment.md#role-based-access-control).

2. Set up and configure RBAC. We recommend using [Intune](/mem/intune/fundamentals/what-is-intune) to configure RBAC, especially if your organization is using a combination of Windows, macOS, iOS, and Android devices. See [setting up RBAC using Intune](/mem/intune/fundamentals/role-based-access-control).

    If your organization requires a method other than Intune, choose one of the following options:

    - [Configuration Manager](/mem/configmgr/core/servers/deploy/configure/configure-role-based-administration)
    - [Advanced Group Policy Management](/microsoft-desktop-optimization-pack/agpm)
    - [Windows Admin Center](/windows-server/manage/windows-admin-center/overview)

3. Grant your security team access to the Microsoft Defender portal. (Need help? See [Manage portal access using RBAC](rbac.md).

## Step 4: View information about device proxy and internet connectivity settings

To enable communication between your devices and Defender for Endpoint, you might have to configure proxy and internet settings. The following table includes links to resources you can use to configure your proxy and internet settings for various operating systems:

|Subscription| Operating systems |Resources|
|---|---|---|
|[Defender for Endpoint Plan 1](defender-endpoint-plan-1.md)|[Windows 11](/windows/whats-new/windows-11-overview)<br/>[Windows 10](/windows/release-health/release-information)<br/> [Windows Server 2022](/windows-server/get-started/whats-new-in-windows-server-2022) <br/> [Windows Server 2019](/windows/release-health/status-windows-10-1809-and-windows-server-2019) <br/>  [Windows Server 1803, or later](/windows-server/get-started/whats-new-in-windows-server-1803) <br/> [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016)\*<br/>[Windows Server 2012 R2](/windows/release-health/status-windows-8.1-and-windows-server-2012-r2)\* |[Configure and validate Microsoft Defender Antivirus network connections](configure-network-connections-microsoft-defender-antivirus.md)|
|[Defender for Endpoint Plan 1](defender-endpoint-plan-1.md)|macOS (see [System requirements](microsoft-defender-endpoint-mac.md))|[Defender for Endpoint on macOS: Network connections](microsoft-defender-endpoint-mac.md#network-connections)|
|[Defender for Endpoint Plan 1](defender-endpoint-plan-1.md)|Linux  (see [System requirements](microsoft-defender-endpoint-linux.md#system-requirements))|[Defender for Endpoint on Linux: Network connections](microsoft-defender-endpoint-linux.md#network-connections)|
|[Defender for Endpoint Plan 2](microsoft-defender-endpoint.md)|[Windows 11](/windows/whats-new/windows-11-overview)<br/>[Windows 10](/windows/release-health/release-information)<br/>[Windows Server 2022](/windows-server/get-started/whats-new-in-windows-server-2022) <br/>[Windows Server 2019](/windows/release-health/status-windows-10-1809-and-windows-server-2019)  <br/>[Windows Server 1803, or later](/windows-server/get-started/whats-new-in-windows-server-1803)  <br/>[Windows Server 2016](/windows/release-health/status-windows-10-1607-and-windows-server-2016)\* <br/>[Windows Server 2012 R2](/windows/release-health/status-windows-8.1-and-windows-server-2012-r2)\* |[Configure machine proxy and internet connectivity settings](configure-proxy-internet.md)|
|[Defender for Endpoint Plan 2](microsoft-defender-endpoint.md) |[Windows Server 2008 R2 SP1](/windows/release-health/status-windows-7-and-windows-server-2008-r2-sp1) <br/>[Windows 8.1](/windows/release-health/status-windows-8.1-and-windows-server-2012-r2)<br/>[Windows 7 SP1](/windows/release-health/status-windows-7-and-windows-server-2008-r2-sp1)|[Configure proxy and internet connectivity settings](onboard-downlevel.md#configure-proxy-and-internet-connectivity-settings)|
|[Defender for Endpoint Plan 2](microsoft-defender-endpoint.md)|macOS (see [System requirements](microsoft-defender-endpoint-mac.md))|[Defender for Endpoint on macOS: Network connections](microsoft-defender-endpoint-mac.md#network-connections)|

\* Windows Server 2016 and Windows Server 2012 R2 require installation of the modern, unified solution for Windows Server 2012 R2 and 2016. For more information, see [Onboard Windows servers to Defender for Endpoint: Windows Server 2012 R2 and Windows Server 2016](/microsoft-365/security/defender-endpoint/configure-server-endpoints#windows-server-2012-r2-and-windows-server-2016).

> [!IMPORTANT]
> The standalone versions of Defender for Endpoint Plan 1 and Plan 2 do not include server licenses. To onboard servers, you'll need an additional license, such as either [Microsoft Defender for Servers Plan 1 or Plan 2](/azure/defender-for-cloud/plan-defender-for-servers-select-plan). To learn more, see [Defender for Endpoint onboarding Windows Server](onboard-windows-server.md).

## Step 5: Capture performance baseline data from the endpoint

When migrating from one antivirus product to Microsoft Defender Antivirus, your organization's Help Desk's eyes are on what's new. Thus, if you already had an application that was running hot (high cpu usage), their first troubleshooting step might be to disable Microsoft Defender Antivirus. Before doing that, we highly recommend capturing performance data from endpoints that have or will have Defender for Endpoint installed. 

Performance data should include the process list, CPU usage (aggregate across all cores), memory usage, and disk space availability on all mounted partitions. This information helps determine whether what you are seeing is normal or unexpected after onboarding devices to Defender for Endpoint. 

One of the tools that you can use is the Performance Monitor (perfmon). You can use it to collect a performance baseline of your Windows or Windows Server endpoint. See [Setting a local perfmon in a Windows client or Windows Server](/archive/blogs/yongrhee/setting-a-local-perfmon-in-a-windows-client-or-windows-server).

## Next step

**Congratulations**! You've completed the **Prepare** phase of [switching to Defender for Endpoint](switch-to-mde-overview.md#the-migration-process)!

- [Proceed to set up Defender for Endpoint](switch-to-mde-phase-2.md).
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
