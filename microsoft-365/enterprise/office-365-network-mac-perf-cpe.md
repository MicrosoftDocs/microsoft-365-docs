---
title: "Microsoft 365 informed network routing"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 1/21/2020
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
description: "Microsoft 365 informed network routing"
---

# Microsoft 365 informed network routing (preview)

**Informed network routing** is a feature that integrates various Microsoft 365 applications with 3rd-party software defined network (SD-WAN) solutions in order to optimize and improve your network connectivity to Microsoft service endpoints. Optimized SD-WAN connectivity may result in improved user experiences and performance.

>[!IMPORTANT]
>Microsoft 365 informed network routing is currently in preview status. For further information on this preview including guidance for receiving assistance with the feature, see [Microsoft 365 informed network routing Public Preview](https://go.microsoft.com/fwlink/?linkid=2151565).

## Overview
This feature provides a bi-directional data sharing channel between Microsoft and your SD-WAN solution. For every office location and Internet circuit that you configure for this feature, Microsoft periodically shares feedback with the SD-WAN solution on the quality of selected Microsoft 365 application experiences for network traffic associated with each specific Internet circuit. Using this feedback, the SD-WAN solution may then take smart recovery actions by routing Microsoft 365 application traffic through alternate available links. 

Quality of service degradations in the path of a particular Internet circuit such as increased latency or high packet loss are difficult to detect on a continuous basis, and may be detrimental to user experience for applications such as Exchange Online, SharePoint Online, and Teams. Common symptoms include slow search of Exchange content, high transfer times when interacting with SharePoint or OneDrive for Business document libraries, or poor call quality in Microsoft Teams.

The feedback and recovery mechanism within this feature seeks to dynamically detect such issues in near real-time and enables the deployed SD-WAN solution to take automatic recovery actions.

Additionally, the data sharing channel is used to periodically receive network-level optics data from the SD-WAN solution, including configuration information and usage statistics associated with the device and attached circuits. No personal information is collected or stored, as all collected information is aggregated to office locations and connected Internet circuits. This information can help Microsoft more efficiently and effectively resolve reported issues with your usage of Microsoft 365 services and applications.

>[!NOTE]
>The Microsoft 365 informed network routing feature supports tenants in WW Commercial but not GCC Moderate, GCC High, DoD, Germany or China.

## Requirements
### Integrated SD-WAN solutions
Microsoft is working with various partners to enable integration with Microsoft 365 informed network routing. Currently enabled solutions include the following:

| Device Maker | Solution Name | Minimum Version |
| --- | --- | --- |
| Cisco | [IOS XE SD-WAN](https://go.microsoft.com/fwlink/?linkid=2151460) | 20.4/17.4 |

### Network topology
The informed network routing feature currently identifies traffic associated with a specific office location and Internet circuit based on the public IP address used to send network traffic to Microsoft. In the case where there is not at least one network circuit providing direct Internet access at a branch location, this feature may not provide significant value.

### Application usage
Application experience data (reflected through network quality metrics) is collected through usage of Microsoft Outlook (Windows), Microsoft Teams, Microsoft SharePoint Online and OneDrive for Business. Other application traffic is not considered when evaluating the health of a particular network circuit.

## Enabling the feature
Enabling the informed network routing feature requires multiple steps, some of which will need to be performed within the configuration interface of your SD-WAN solution. Consult your SD-WAN solution vendor for guidance on how to initiate the process of enabling this feature within the SD-WAN solution before proceeding with configuration in the Microsoft 365 admin center.

Once you are ready to enable informed network routing in the Microsoft 365 admin center, ensure you have the necessary tenant administrator permissions.
>[!IMPORTANT]
>In order to provide the necessary tenant-level applicaitons permissions consent for the selected SD-WAN solution to access the informed network routing data sharing channel, you must perform the following steps as a tenant administrator.

### Step 1: Open SD-WAN solution configuration options
In the [Microsoft 365 admin center](https://admin.microsoft.com/) select the **Health | Network connectivity** option.

This section of the admin center provides aggregated network connectivity metrics for your organization and guidance on how to improve your connectivity. See [Network connectivity in the Microsoft 365 Admin Center (preview)](office-365-network-mac-perf-overview.md) for further detail on these features available within the admin center.

Select the **Settings | SD-WAN solution** option to open the informed network routing configuration pane. The other options which appear under **Settings** are applicable to the general network connectivity guidance in the admin portal and are not required to enable informed network routing.

In the configuration pane, select **Add your SD-WAN solution (Preview)** to proceed.

### Step 2: Select your SD-WAN solution and data storage location
In the drop-down boxes, select the SD-WAN solution you have deployed as well as the location where you wish to have the data associated with this feature stored. Further information about data storage may be found later in this topic.

Select **Next** to proceed.

### Step 3: Accept terms for sharing of data
Carefully read and acknowledge the provided terms associated with sharing data between Microsoft and your selected SD-WAN solution by selecting the indicated checkbox.

Select **Next** to proceed.

### Step 4: Grant permissions to the SD-WAN solution
The next step will initiate a permissions grant request with Azure Active Directory. You will be requested to grant tenant-level permissions that allow your selected SD-WAN solution with access to the informed network routing data storage as well as service health information associated with your tenant. This action will require tenant administrator role permissions.

Select the **Give permission to this application** link and follow the Azure Active Directory requests.

Once you have completed the permissions grant, select **Next** to proceed.

### Step 5: Confirm your configuration settings
The final step in enabling the feature for your tenant is a confirmation page which indicates all of the settings you have provided.

The feature is now enabled for your tenant.

Select **Done** and then close the SD-WAN solution configuration pane.

## Configuring the feature
Much of the configuration associated with informed network routing will be performed within your SD-WAN solution. For example, configuring how your traffic should be routed under normal circumstances, and the alternate paths that should be used if issues are detected with application experience. Consult your SD-WAN solution provider for details on these configuration steps.

Each office location must be configured in the Microsoft 365 admin center so that informed network routing can properly identify traffic associated with the network circuits providing connectivity to these locations.

Office locations may be auto-detected as part of Microsoft's ongoing collection of network telemetry, and as a result some locations may be pre-populated in the admin center for your tenant. If these locations are accurate, you will simply need to enable the informed network routing feature for each desired location and configure the Internet circuits and associated public IP addresses. If the auto-detected locations are not accurate, or there are no locations pre-populated in your tenant, you will have to add or edit locations manually to reflect an accurate topology of your organization.

### Updating locations
Locations for your tenant can be found under the Locations tab. Locations may be edited directly in the list or updated via CSV import.

Ensure that each office location where you wish to enable informed network routing is present in this list.

>[!NOTE]
>The columns in the Locations list for samples collected, and other assessment-related information are unrelated to the informed network routing feature.

### Enabling a location for informed network routing
In the Locations list, select **Edit** from the quick actions menu to open the location configuration pane.

Select the **Use Microsoft 365 informed network routing at this location** checkbox.

Add all network circuits providing Internet connectivity to this office location in the **Egress IP Address ranges at this office location** section. Ensure that each circuit is associated with the unique public IP address subnets representing your network traffic.

**Save** your changes.

## Disabling the feature
The informed network routing feature may be disabled for the entire tenant by resetting your SD-WAN solution settings. While this will stop all processing of data within Microsoft 365, you should also disable the feature within your SD-WAN solution as well.

### Step 1: Open SD-WAN solution configuration options
In the [Microsoft 365 admin center](https://admin.microsoft.com/) select the **Health | Network connectivity** option.

Select the **Settings | SD-WAN solution** option to open the informed network routing configuration pane.

The configuration pane will show a summary of your currently configured SD-WAN solution.

### Step 2: Reset your configuration

In the configuration pane, select **Reset your SD-WAN solution settings**.

Your settings have now been reset and the feature has been disabled. You can re-enable the feature at any time by following the steps earlier in this topic.

## Data storage
Data exchanged between Microsoft and the SD-WAN solution provider is stored in the data storage location selected during the initial enablement of the feature. The data storage location options represent geographical areas containing Microsoft Azure regions where the data is stored.

>[!NOTE]
>During the Preview phase, the only available data storage location is **North America**. Additional data storage locations will become available prior to General Availability.

Data is retained in this location for up to 30 days, and when the feature is disabled all remaining data will be removed within this 30 day retention window.

## Related topics

[Network connectivity in the Microsoft 365 Admin Center (preview)](office-365-network-mac-perf-overview.md)

[Microsoft 365 Network Connectivity Location Services (preview)](office-365-network-mac-location-services.md)
