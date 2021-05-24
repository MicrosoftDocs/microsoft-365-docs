---
title: "Microsoft 365 informed network routing"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 03/10/2021
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

Informed network routing is a feature that integrates various Microsoft 365 applications with third party software defined network (SD-WAN) solutions in order to optimize and improve your network connectivity to Microsoft service endpoints. Optimized SD-WAN connectivity may result in improved user experiences and performance.

>[!IMPORTANT]
>Microsoft 365 informed network routing is currently in preview status. For more information on this preview including guidance for receiving assistance, see [Microsoft 365 informed network routing Public Preview](https://go.microsoft.com/fwlink/?linkid=2151565).

## Overview

Informed network routing provides a bi-directional data sharing channel between Microsoft and your SD-WAN solution. For every office location and Internet circuit that you configure, Microsoft periodically shares feedback with the SD-WAN solution on the quality of selected Microsoft 365 application experiences for network traffic associated with each specific Internet circuit. Using this feedback, the SD-WAN solution may then take smart recovery actions by routing Microsoft 365 application traffic through alternate available links. 

Quality of service degradations in the path of a particular Internet circuit such as increased latency or high packet loss are difficult to detect on a continuous basis. These degradations may be detrimental to user experiences for applications such as Exchange Online, SharePoint, OneDrive, and Microsoft Teams. Common symptoms include slow search of Exchange content, high transfer times when interacting with SharePoint or OneDrive document libraries, or poor call or meeting quality in Microsoft Teams.

The feedback and recovery mechanism within network informed routing seeks to dynamically detect such issues in near real time and informs the deployed SD-WAN solution to take automatic recovery actions.

The data sharing channel is also used to periodically receive network-level optics data from the SD-WAN solution, including configuration information and usage statistics associated with the device and attached circuits. No personal information is collected or stored. All collected information is aggregated to office locations and connected Internet circuits. This information can help Microsoft more efficiently and effectively resolve reported issues with your use of Microsoft 365 services and applications.

>[!NOTE]
>Microsoft 365 informed network routing supports tenants in WW Commercial cloud but not the GCC Moderate, GCC High, DoD, Germany, or China clouds.

## Requirements

### Integrated SD-WAN solutions

Microsoft is working with various partners to enable integration with Microsoft 365 informed network routing. Currently enabled solutions include the following:

| Device Maker | Solution Name | Minimum Version |
| --- | --- | --- |
| Cisco | [IOS XE SD-WAN](https://go.microsoft.com/fwlink/?linkid=2151460) | 20.4/17.4 |

### Network topology

Informed network routing currently identifies traffic associated with a specific office location and Internet circuit based on the public IP address used to send network traffic to Microsoft. 

In the case where there is not at least one network circuit providing direct Internet access at a branch location, network informed routing may not provide significant value.

### Application usage

Application experience data (reflected through network quality metrics) is collected through usage of specific Microsoft client applications. Exchange metrics reflect usage of the Outlook client as well as some Outlook Web App usage. SharePoint and OneDrive metrics reflect usage of the tenant-specific SharePoint endpoints, regardless of client application. Teams metrics reflect usage of the Teams desktop client. Other application traffic is not considered when evaluating the health of a network circuit.

## Enabling informed network routing

Enabling informed network routing requires multiple steps, some of which will need to be performed within the configuration interface of your SD-WAN solution. Consult your SD-WAN solution vendor for guidance on how to initiate the process of enabling network informed routing within the SD-WAN solution before proceeding with configuration in the Microsoft 365 admin center.

Once you are ready to enable informed network routing in the Microsoft 365 admin center, ensure you have the necessary global administrator permissions.

>[!IMPORTANT]
>In order to provide the necessary tenant-level applications permissions consent for the selected SD-WAN solution to access the informed network routing data sharing channel, you must perform the following steps as a global administrator.


### Step 1: Open SD-WAN solution configuration options

In the [Microsoft 365 admin center](https://admin.microsoft.com/), select **Health > Network connectivity** in the left-hand navigation pane.

This section of the admin center provides aggregated network connectivity metrics for your organization and guidance on how to improve your connectivity. See [Network connectivity in the Microsoft 365 Admin Center (preview)](office-365-network-mac-perf-overview.md) for additional information on these features available within the admin center.

Select **Settings > SD-WAN solution** to open the informed network routing configuration pane. The other options that appear under **Settings** are applicable to the general network connectivity guidance in the admin center and are not required to enable informed network routing.

In the configuration pane, select **Add your SD-WAN solution (Preview)**.

### Step 2: Select your SD-WAN solution and data storage location

In the drop-down boxes, select the SD-WAN solution you have deployed and the location where you wish to have the data associated with network informed routing stored. See the [data storage](#data-storage) section for additional information.

Select **Next**.

### Step 3: Accept terms for sharing of data

Carefully read and acknowledge the provided terms associated with sharing data between Microsoft and your selected SD-WAN solution, and then select the indicated checkbox.

Select **Next**.

### Step 4: Grant permissions to the SD-WAN solution

This step will initiate a permissions grant request with Azure Active Directory (Azure AD). You will be requested to grant tenant-level permissions that allow your selected SD-WAN solution access to the informed network routing data storage and the service health information associated with your tenant. This action requires global administrator role permissions.

Select the **Give permission to this application** link and follow the Azure AD requests.

Once you have completed the permissions grant, select **Next**.

### Step 5: Confirm your configuration settings

The final step in enabling network informed routing for your tenant is a confirmation page that displays the settings you've provided. 

Informed network routing is now enabled for your tenant.

Select **Done** and then close the SD-WAN solution configuration pane.

## Configuring network informed routing

You will perform much of the configuration for informed network routing within your SD-WAN solution, such as configuring how your traffic should be routed under normal circumstances and the alternate paths that should be used if issues are detected. Consult your SD-WAN solution provider for details on these configuration steps.

Each office location must be configured in the Microsoft 365 admin center so that informed network routing can properly identify traffic associated with the network circuits providing connectivity to these locations.

Office locations may be auto-detected as part of Microsoft's ongoing collection of network telemetry. As a result, some locations may be pre-populated in the admin center for your tenant. 

If these locations are accurate, you will simply need to enable the informed network routing feature for each desired location and configure the Internet circuits and their public IP addresses. 

If the auto-detected locations are not accurate, or there are no locations pre-populated in your tenant, you will have to add or edit locations manually to reflect an accurate topology of your organization.

### Updating locations

Locations for your tenant can be found under the **Locations** tab. Locations may be edited directly in the list or updated using a CSV file.

Ensure that each office location where you wish to enable informed network routing is present in this list.

>[!NOTE]
>The columns in the **Locations** list for samples collected and other assessment-related information are not related to the informed network routing feature.

### Enabling a location for informed network routing

1. In the **Locations** list, select **Edit** from the quick actions menu to open the location configuration pane.

2. Select **Use Microsoft 365 informed network routing at this location**.

3. Add all network circuits providing Internet connectivity to this office location in the **Egress IP Address ranges at this office location** section. Ensure that each circuit is associated with the unique public IP address subnets representing your network traffic.

4. Select **Save** to save your changes.

## Disabling network informed routing

The informed network routing feature may be disabled for the entire tenant by resetting your SD-WAN solution settings. While this will stop all processing of data within Microsoft 365, you should also disable network informed routing within the admin center.

### Step 1: Open SD-WAN solution configuration options

In the [Microsoft 365 admin center](https://admin.microsoft.com/) select **Health > Network connectivity** in the left-hand navigation pane.

Select **Settings > SD-WAN solution** to open the informed network routing configuration pane.

The configuration pane shows a summary of your currently configured SD-WAN solution.

### Step 2: Reset your configuration

In the configuration pane, select **Reset your SD-WAN solution settings**.

Your settings have now been reset and informed network routing has been disabled. You can re-enable it at any time by following the steps in [Enabling informed network routing](#enabling-informed-network-routing).

## Data storage

Data exchanged between Microsoft and the SD-WAN solution provider is stored in the data storage location selected during the initial enablement of network informed routing. The data storage location options represent geographical areas containing Microsoft Azure regions where the data is stored.

>[!NOTE]
>During the Preview phase, the only available data storage location is **North America**. Additional data storage locations will become available prior to the general availability of informed network routing.

Data is retained in this location for up to 30 days. When disabled, all remaining data is removed within this 30-day retention window.

## Related topics

[Network connectivity in the Microsoft 365 admin center (preview)](office-365-network-mac-perf-overview.md)

[Microsoft 365 Network Connectivity Location Services (preview)](office-365-network-mac-location-services.md)
