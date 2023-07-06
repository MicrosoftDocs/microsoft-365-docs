---
title: Microsoft Defender for Identity VPN integration in Microsoft 365 Defender 
description: Learn how to collect accounting information by integrating a VPN for Microsoft Defender for Identity in Microsoft 365 Defender 
ms.date: 06/07/2021
ms.topic: how-to
author: batamig
ms.author: bagol
ms.service: microsoft-defender-for-identity
ms.custom: admindeeplinkDEFENDER
manager: raynew
ms.collection: m365-security
search.appverid: met150
---

# Defender for Identity VPN integration in Microsoft 365 Defender

**Applies to:**

- Microsoft 365 Defender
- Defender for Identity

This article explains how to integrate a VPN with [Microsoft Defender for Identity](/defender-for-identity) in [Microsoft 365 Defender](/microsoft-365/security/defender/overview-security-center).

> [!IMPORTANT]
> As part of the convergence with <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a>, some options and details have changed from their location in the Defender for Identity portal. Please read the details below to discover where to find both the familiar and new features.

[!INCLUDE [Product long](includes/product-long.md)] can collect accounting information from VPN solutions. When configured, the user's profile page includes information from the VPN connections, such as the IP addresses and locations where connections originated. This complements the investigation process by providing additional information on user activity as well as a new detection for abnormal VPN connections. The call to resolve an external IP address to a location is anonymous. No personal identifier is sent in this call.

[!INCLUDE [Product short](includes/product-short.md)] integrates with your VPN solution by listening to RADIUS accounting events forwarded to the [!INCLUDE [Product short](includes/product-short.md)] sensors. This mechanism is based on standard RADIUS Accounting ([RFC 2866](https://tools.ietf.org/html/rfc2866)), and the following VPN vendors are supported:

- Microsoft
- F5
- Check Point
- Cisco ASA

## Prerequisites

To enable VPN integration, make sure you set the following parameters:

- Open port UDP 1813 on your [!INCLUDE [Product short](includes/product-short.md)] sensors and/or [!INCLUDE [Product short](includes/product-short.md)] standalone sensors.

> [!NOTE]
>
> - By enabling **Radius Accounting**, the [!INCLUDE [Product short](includes/product-short.md)] sensor will enable a pre-provisioned Windows firewall policy called **[!INCLUDE [Product long](includes/product-long.md)] Sensor** to allow incoming RADIUS Accounting on port UDP 1813.
> - VPN integration is not supported in environments adhering to Federal Information Processing Standards (FIPS)

The example below uses Microsoft Routing and Remote Access Server (RRAS) to describe the VPN configuration process.

If you're using a third-party VPN solution, consult their documentation for instructions on how to enable RADIUS Accounting.

## Configure RADIUS Accounting on the VPN system

Perform the following steps on your RRAS server.

1. Open the **Routing and Remote Access** console.
1. Right-click the server name and select **Properties**.
1. In the **Security** tab, under **Accounting provider**, select **RADIUS Accounting** and select **Configure**.

   :::image type="content" source="../../media/defender-identity/radius-setup.png" alt-text="The RADIUS setup" lightbox="../../media/defender-identity/radius-setup.png":::

1. In the **Add RADIUS Server** window, type the **Server name** of the closest [!INCLUDE [Product short](includes/product-short.md)] sensor (which has network connectivity). For high availability, you can add additional [!INCLUDE [Product short](includes/product-short.md)] sensors as RADIUS Servers. Under **Port**, make sure the default of 1813 is configured. Select **Change** and type a new shared secret string of alphanumeric characters. Take note of the new shared secret string as you'll need to fill it out later during [!INCLUDE [Product short](includes/product-short.md)] Configuration. Check the **Send RADIUS Account On and Accounting Off messages** box and select **OK** on all open dialog boxes.

   :::image type="content" source="../../media/defender-identity/vpn-set-accounting.png" alt-text="The VPN setup" lightbox="../../media/defender-identity/vpn-set-accounting.png":::

## Configure VPN in Defender for Identity

[!INCLUDE [Product short](includes/product-short.md)] collects VPN data that helps profile the locations from which computers connect to the network and to be able to detect suspicious VPN connections.

To configure VPN data in [!INCLUDE [Product short](includes/product-short.md)] in Microsoft 365 Defender:

1. In <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a>, go to **Settings** and then **Identities**.

   :::image type="content" source="../../media/defender-identity/settings-identities.png" alt-text="The Identities option under the settings menu item" lightbox="../../media/defender-identity/settings-identities.png":::

1. Select **VPN**.
1. Select **Enable radius accounting**, and type the **Shared Secret** you configured previously on your RRAS VPN Server. Then select **Save**.

   :::image type="content" source="../../media/defender-identity/vpn-integration.png" alt-text="The VPN integration" lightbox="../../media/defender-identity/vpn-integration.png":::

After this is enabled, all Defender for Identity sensors will listen on port 1813 for RADIUS accounting events, and your VPN setup is complete.

After the Defender for Identity sensor receives the VPN events and sends them to the Defender for Identity cloud service for processing, the entity profile will indicate distinct accessed VPN locations and activities in the profile will indicate locations.

## See also

- [Investigate alerts in Microsoft 365 Defender](../defender/investigate-alerts.md)
