---
title: Configure device discovery
description: Learn how to configure device discovery in Microsoft 365 Defender using basic or standard discovery
keywords: basic, standard, configure endpoint discovery, device discovery
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: conceptual
ms.technology: m365d
---

# Configure device discovery

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


[!include[Prerelease information](../../includes/prerelease.md)]

Discovery can be configured to be on standard or basic mode. Use the standard option to actively find devices in your network, which will better guarantee the discovery of endpoints and provide richer device classification. 

You can customize the list of devices that are used to perform standard discovery. You can either enable standard discovery on all the onboarded devices that also support this capability (currently - Windows 10 devices only) or select a subset or subsets of your devices by specifying their device tags. 


> [!IMPORTANT]
> For preview, you'll first need to turn on the Preview features in Microsoft Defender Security Center.
> You can then access the device discovery configuration in Microsoft 365 security center. The list of unmanaged devices and security recommendations will be available in both Microsoft Defender Security Center and Microsoft 365 security center, while the dashboard tiles will only be available in Microsoft 365 security center 365 security center.


Take the following configuration steps in Microsoft 365 security center:

> [!NOTE]
> For preview, you'll first need to turn on the Preview features in Microsoft Defender Security Center.


1.	Navigate to **Settings > Device discovery**.
2.	Select the discovery mode to use on your onboarded devices. 
3.	If you've selected to use standard discovery, select which devices to use for active probing: all devices or on a subset by specifying their device tags.
4. Click **Save**.


## Exclude devices from being actively probed in standard discovery
If there are devices on your network which should not be actively scanned, you can also define a list of exclusions to prevent them from being scanned. Note that devices can still be discovered using Basic discovery mode. Those devices will be passively discovered but won't be actively probed. 

## Select networks to monitor  - WORK IN PROGRESS
 Microsoft Defender for Endpoint analyzes networks and determines if it is a corporate network that needs to be monitored or a non-corporate network that can be ignored. Corporate networks are typically chosen to be monitored. However, you can override this decision by choosing to monitor non-corporate networks where onboarded devices are found. 

You can configure where device discovery can be performed by specifying which networks to monitor. When a network is monitored, device discovery can be performed on it. 

A list of networks where device discovery can be performed is shown in the **Monitored networks** page. 


>[!NOTE]
> Only the top 50 networks (according to the number of associated onboarded devices) will be available in the network list. 


The page is sorted by the number of onboarded devices that were connected to the network in the last 7 days. 


You can apply a filter to view any of the following network discovery states:

- **Monitored networks** - Networks where device discovery is performed.
- **Ignored networks** - This network will be ignored and device discovery will not be performed on it.
- **All** - Both monitored and ignored networks will be displayed. 


### Configure the network monitor state
You can specify which networks to monitor or ignore by configuring the network monitor state. Monitored networks is where device discovery will be performed and are typically corporate networks. You can also choose to ignore networks or select the initial discovery classification after modifying a state. 

Choosing the initial discovery classification means applying the default system-made network monitor state. For example, a network was identified to be a non-corporate network and was classified as a network that will be ignored. It was then overridden to be monitored. Selecting the initial discovery classification will revert to the network being ignored. 
 
1. Select **Settings > Device discovery**.
2. Select **Monitored networks**. 
3. View the list of networks. 
4. Select the three dots next to the network name. 
5. Choose whether you want to monitor, ignore, or use the initial discovery classification. 
    
    > [!WARNING]
    >- Choosing to monitor a network that was not identified by Microsoft Defender for Endpoint as a corporate network can cause device discovery outside of your corporate network. Conversely, choosing to ignore a network means that devices will not be discovered in that network. 
    > - Before choosing to monitor non-corporate networks, you must ensure you have permission to do so. <br>
    > - Devices that were already discovered will not be removed from the inventory during the standard retention period, and will not be updated anymore. 

6. Confirm that you want to make the change. 




## See also
- [Device discovery overview](device-discovery.md)