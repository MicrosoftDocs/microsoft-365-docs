---
title: Switch to Microsoft Defender for Endpoint - Prepare
description: Get ready to make the switch to Microsoft Defender for Endpoint. Update your devices and configure your network connections.
keywords: migration, Microsoft Defender for Endpoint, best practice
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
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
ms.topic: conceptual
ms.custom: 
- migrationguides
- admindeeplinkDEFENDER
ms.date: 04/01/2022
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
search.appverid: met150
---

# Switch to Microsoft Defender for Endpoint - Phase 1: Prepare

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

| ![Phase 1: Prepare.](images/phase-diagrams/prepare.png#lightbox)<br/>Phase 1: Prepare | [![Phase 2: Set up](images/phase-diagrams/setup.png#lightbox)](switch-to-mde-phase-2.md)<br/>[Phase 2: Set up](switch-to-mde-phase-2.md) | [![Phase 3: Onboard](images/phase-diagrams/onboard.png#lightbox)](switch-to-mde-phase-3.md)<br/>[Phase 3: Onboard](switch-to-mde-phase-3.md) |
|--|--|--|
|*You are here!*| | |

**Welcome to the Prepare phase of [switching to Defender for Endpoint](switch-to-mde-overview.md#the-migration-process)**.

This migration phase includes the following steps:

1. [Get and deploy updates across your organization's devices](#get-and-deploy-updates-across-your-organizations-devices)
2. [Get Defender for Endpoint](#get-microsoft-defender-for-endpoint).
3. [Grant access to the Microsoft 365 Defender portal](#grant-access-to-the-microsoft-365-defender-portal).
4. [Configure device proxy and internet connectivity settings](#configure-device-proxy-and-internet-connectivity-settings).

## Get and deploy updates across your organization's devices

As a best practice, keep your organization's devices and endpoints up to date. Make sure your existing endpoint protection and antivirus solution is up to date, and that your organization's operating systems and apps also have the latest updates. Doing this now can help prevent problems later as you migrate to Defender for Endpoint and Microsoft Defender Antivirus.

### Make sure your existing solution is up to date

Keep your existing endpoint protection solution up to date, and make sure that your organization's devices have the latest security updates.

Need help? See your solution provider's documentation.

### Make sure your organization's devices are up to date

Need help updating your organization's devices? See the following resources:

|OS|Resource|
|---|---|
|Windows|[Microsoft Update](https://www.update.microsoft.com)|
|macOS|[How to update the software on your Mac](https://support.apple.com/HT201541)|
|iOS|[Update your iPhone, iPad, or iPod touch](https://support.apple.com/HT204204)|
|Android|[Check & update your Android version](https://support.google.com/android/answer/7680439)|
|Linux|[Linux 101: Updating Your System](https://www.linux.com/training-tutorials/linux-101-updating-your-system)|

## Get Microsoft Defender for Endpoint

Now that you've updated your organization's devices, the next step is to get Defender for Endpoint, assign licenses, and make sure the service is provisioned.

1. Buy or try Defender for Endpoint today. [Start a free trial or request a quote](https://aka.ms/mdatp).

2. Verify that your licenses are properly provisioned. [Check your license state](production-deployment.md#check-license-state).

3. Set up your dedicated cloud instance of Defender for Endpoint. See [Defender for Endpoint setup: Tenant configuration](production-deployment.md#tenant-configuration).

4. If endpoints (such as devices) in your organization use a proxy to access the internet, see [Defender for Endpoint setup: Network configuration](production-deployment.md#network-configuration).

At this point, you are ready to grant access to your security administrators and security operators who will use the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>.

> [!NOTE]
> The Microsoft 365 Defender portal is sometimes referred to as the Defender for Endpoint portal, and can be accessed at <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">https://security.microsoft.com</a>. The former Microsoft Defender Security Center (https://securitycenter.windows.com) will soon redirect to the Microsoft 365 Defender portal. To learn more, see [Microsoft 365 Defender portal overview](portal-overview.md).

## Grant access to the Microsoft 365 Defender portal

The <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> is where you access and configure features and capabilities of Defender for Endpoint. To learn more, see [Overview of the Microsoft 365 Defender portal](use.md).

Permissions to the Microsoft 365 Defender portal can be granted by using either basic permissions or role-based access control (RBAC). We recommend using RBAC so that you have more granular control over permissions.

1. Plan the roles and permissions for your security administrators and security operators. See [Role-based access control](prepare-deployment.md#role-based-access-control).

2. Set up and configure RBAC. We recommend using [Intune](/mem/intune/fundamentals/what-is-intune) to configure RBAC, especially if your organization is using a combination of Windows 10, macOS, iOS, and Android devices. See [setting up RBAC using Intune](/mem/intune/fundamentals/role-based-access-control).

    If your organization requires a method other than Intune, choose one of the following options:

    - [Configuration Manager](/mem/configmgr/core/servers/deploy/configure/configure-role-based-administration)

    - [Advanced Group Policy Management](/microsoft-desktop-optimization-pack/agpm)
    
    - [Windows Admin Center](/windows-server/manage/windows-admin-center/overview)

3. Grant access to the Microsoft 365 Defender portal. (Need help? See [Manage portal access using RBAC](rbac.md).

## Configure device proxy and internet connectivity settings

To enable communication between your devices and Defender for Endpoint, configure proxy and internet settings. The following table includes links to resources you can use to configure your proxy and internet settings for various operating systems and capabilities:

|Capabilities|Operating System|Resources|
|---|---|---|
|[Endpoint detection and response](overview-endpoint-detection-response.md) (EDR)|[Windows 10](/windows/release-health/release-information) or later<br/><br/>Windows Server 2022 <br/><br/>[Windows Server 2019](/windows/release-health/status-windows-10-1809-and-windows-server-2019)<br/><br/>[Windows Server 1803, or later](/windows-server/get-started/whats-new-in-windows-server-1803)<br/><br/>[Windows Server 2016*](/windows/release-health/status-windows-10-1607-and-windows-server-2016)<br/><br/>[Windows Server 2012 R2*](/windows/release-health/status-windows-8.1-and-windows-server-2012-r2)|[Configure machine proxy and internet connectivity settings](configure-proxy-internet.md)|
|EDR |[Windows Server 2008 R2 SP1](/windows/release-health/status-windows-7-and-windows-server-2008-r2-sp1)<br/><br/>[Windows 8.1](/windows/release-health/status-windows-8.1-and-windows-server-2012-r2)<br/><br/>[Windows 7 SP1](/windows/release-health/status-windows-7-and-windows-server-2008-r2-sp1)|[Configure proxy and internet connectivity settings](onboard-downlevel.md#configure-proxy-and-internet-connectivity-settings)|
|EDR|macOS (see [System requirements](microsoft-defender-endpoint-mac.md))|[Defender for Endpoint on macOS: Network connections](microsoft-defender-endpoint-mac.md#network-connections)|
|[Microsoft Defender Antivirus](microsoft-defender-antivirus-in-windows-10.md)|[Windows 10](/windows/release-health/release-information) <br/><br/> [Windows Server 2019](/windows/release-health/status-windows-10-1809-and-windows-server-2019)<br/><br/> Windows Server 2022 <br/><br/> [Windows Server 1803, or later](/windows-server/get-started/whats-new-in-windows-server-1803) <br/><br/> [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016)<br/><br/>[Windows Server 2012 R2*](/windows/release-health/status-windows-8.1-and-windows-server-2012-r2)|[Configure and validate Microsoft Defender Antivirus network connections](configure-network-connections-microsoft-defender-antivirus.md)|
|Antivirus|macOS (see [System requirements](microsoft-defender-endpoint-mac.md))|[Defender for Endpoint on macOS: Network connections](microsoft-defender-endpoint-mac.md#network-connections)|
|Antivirus|Linux (see [System requirements](microsoft-defender-endpoint-linux.md#system-requirements))|[Defender for Endpoint on Linux: Network connections](microsoft-defender-endpoint-linux.md#network-connections)|

*Requires installation of the modern, unified solution for Windows Server 2012 R2 and 2016. For more information, see [Onboard Windows servers to the Microsoft Defender for Endpoint service](/microsoft-365/security/defender-endpoint/configure-server-endpoints).

## Next step

**Congratulations**! You have completed the **Prepare** phase of [switching to Defender for Endpoint](switch-to-mde-overview.md#the-migration-process)!

- [Proceed to set up Defender for Endpoint](switch-to-mde-phase-2.md).
