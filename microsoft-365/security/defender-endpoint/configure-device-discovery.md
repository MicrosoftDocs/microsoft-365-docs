---
title: Configure device discovery
description: Learn how to configure device discovery in Microsoft 365 Defender using basic or standard discovery
keywords: basic, standard, configure endpoint discovery, device discovery
ms.service: microsoft-365-security
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
- m365-security
- tier1
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 03/23/2021
---

# Configure device discovery

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Discovery can be configured to be on standard or basic mode. Use the standard option to actively find devices in your network, which will better guarantee the discovery of endpoints and provide richer device classification.

You can customize the list of devices that are used to perform standard discovery. You can either enable standard discovery on all the onboarded devices that also support this capability (currently - Windows 10 or later and Windows Server 2019 or later devices only) or select a subset or subsets of your devices by specifying their device tags.

## Set up device discovery

To set up device discovery, take the following configuration steps in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>:

Navigate to **Settings** > **Device discovery**

1. If you want to configure Basic as the discovery mode to use on your onboarded devices, select **Basic** and then select **Save**
2. If you've selected to use Standard discovery, select which devices to use for active probing: all devices or on a subset by specifying their device tags, and then select **Save**

> [!NOTE]
> Standard discovery uses various PowerShell scripts to actively probe devices in the network. Those PowerShell scripts are Microsoft signed and are executed from the following location: `C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Downloads\*.ps`. For example, `C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Downloads\UnicastScannerV1.1.0.ps1`.

## Exclude devices from being actively probed in standard discovery

If there are devices on your network that shouldn't be actively scanned (for example, devices used as honeypots for another security tool), you can also define a list of exclusions to prevent them from being scanned. Note that devices can still be discovered using Basic discovery mode and can also be discovered through multicast discovery attempts. Those devices will be passively discovered but won't be actively probed.

You can configure the devices to exclude in the **Exclusions** page.

## Select networks to monitor

Microsoft Defender for Endpoint analyzes a network and determines if it's a corporate network that needs to be monitored or a non-corporate network that can be ignored. To identify a network as corporate, we correlate network identifiers across all tenant's clients and if most devices in the organization report that they're connected to the same network name, with the same default gateway and DHCP server address, we assume that this is a corporate network. Corporate networks are typically chosen to be monitored. However, you can override this decision by choosing to monitor non-corporate networks where onboarded devices are found.

You can configure where device discovery can be performed by specifying which networks to monitor. When a network is monitored, device discovery can be performed on it.

A list of networks where device discovery can be performed is shown in the **Monitored networks** page.

> [!NOTE]
> The list shows networks that were identified as corporate networks. If less than 50 networks are identified as corporate networks, then list will show up to 50 networks with the most onboarded devices.

The list of monitored networks is sorted based upon the total number of devices seen on the network in the last seven days.

You can apply a filter to view any of the following network discovery states:

- **Monitored networks** - Networks where device discovery is performed.
- **Ignored networks** - This network is ignored and device discovery isn't performed on it.
- **All** - Both monitored and ignored networks are displayed.

### Configure the network monitor state

You control where device discovery takes place. Monitored networks are where device discovery is performed and are typically corporate networks. You can also choose to ignore networks or select the initial discovery classification after modifying a state.

Choosing the initial discovery classification means applying the default system-made network monitor state. Selecting the default system-made network monitor state means that networks that were identified to be corporate, are monitored, and ones identified as non-corporate, are ignored automatically.

1. Select **Settings > Device discovery**.
2. Select **Monitored networks**.
3. View the list of networks.
4. Select the three dots next to the network name.
5. Choose whether you want to monitor, ignore, or use the initial discovery classification.

    > [!WARNING]
    >
    > - Choosing to monitor a network that was not identified by Microsoft Defender for Endpoint as a corporate network can cause device discovery outside of your corporate network, and may therefore detect home or other non-corporate devices.
    > - Choosing to ignore a network will stop monitoring and discovering devices in that network. Devices that were already discovered won't be removed from the inventory, but will no longer be updated, and details will be retained until the data retention period of the Defender for Endpoint expires.
    > - Before choosing to monitor non-corporate networks, you must ensure you have permission to do so. <br>

6. Confirm that you want to make the change.

## Explore devices in the network

You can use the following advanced hunting query to get more context about each network name described in the networks list. The query lists all the onboarded devices that were connected to a certain network within the last seven days.

```kusto
DeviceNetworkInfo
| where Timestamp > ago(7d)
| where ConnectedNetworks  != ""
| extend ConnectedNetworksExp = parse_json(ConnectedNetworks)
| mv-expand bagexpansion = array ConnectedNetworks=ConnectedNetworksExp
| extend NetworkName = tostring(ConnectedNetworks ["Name"]), Description = tostring(ConnectedNetworks ["Description"]), NetworkCategory = tostring(ConnectedNetworks ["Category"])
| where NetworkName == "<your network name here>"
| summarize arg_max(Timestamp, *) by DeviceId
```

## Get information on device

You can use the following advanced hunting query to get the latest complete information on a specific device.

```kusto
DeviceInfo
| where DeviceName == "<device name here>" and isnotempty(OSPlatform)
| summarize arg_max(Timestamp, *) by DeviceId
```

## See also

- [Device discovery overview](device-discovery.md)
- [Device discovery FAQs](device-discovery-faq.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
