---
title: "Network connectivity in the Microsoft 365 Admin Center (preview)"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 09/21/2020
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
- m365initiative-coredeploy
description: "Overview of network connectivity in the Microsoft 365 Admin Center (preview)"
---

# Network connectivity in the Microsoft 365 Admin Center (preview)

The Microsoft 365 Admin Center now includes aggregated network connectivity metrics collected from your Microsoft 365 tenant and available to view only by administrative users in your tenant.

> [!div class="mx-imgBorder"]
> ![Network connectivity test tool](../media/m365-mac-perf/m365-mac-perf-admin-center.png)

**Network assessments** and **network insights** are displayed in the Microsoft 365 Admin Center under **Health | Connectivity**.

> [!div class="mx-imgBorder"]
> ![Network performance page](../media/m365-mac-perf/m365-mac-perf-page-nav.png)

>[!NOTE]
>The network connectivity test tool supports tenants in WW Commercial and Germany but not GCC Moderate, GCC High, DoD or China.

When you first navigate to the network performance page, you will see an overview pane containing a map of global network performance, a network assessment scoped to the entire tenant, and a list of current issues. From the overview, you can drill down to view specific network performance metrics and issues by location. For more information, see [Network performance overview in the Microsoft 365 Admin Center](#network-connectivity-overview-in-the-microsoft-365-admin-center).

You may be asked to join the public preview for this feature on behalf of your organization. Acceptance usually happened immediately and then you will see the network connectivity page. 

On navigating to the network connectivity page, you will see an overview pane containing a map of global network performance, a network assessment scoped to the entire tenant, and a list of current issues. To access this page you must be an administrator for the organization within Microsoft 365. The Report Reader administrative role will have read access to this information. To configure locations and other elements of network connectivity an administrator must be part of a server administrator role such as the Service support admin role. From the overview, you can drill down to view specific network performance metrics and issues by location. For more information, see [Network connectivity overview in the Microsoft 365 Admin Center](#network-connectivity-overview-in-the-microsoft-365-admin-center).

## Pre-requisites for network connectivity assessments to appear

Whilst network connectivity can be evaluated across the organization, any network design improvements will need to be done for specific office locations. Network connectivity information is provided for each office location once those locations can be determined. There are three options for getting network assessments from your office locations:

### 1. Enable Windows Location Services

For this option you must have at least two computers running at each office location that support the pre-requisites. OneDrive for Windows version **19.232** or above must be installed on each computer. For more information on OneDrive versions, see the [OneDrive release notes](https://support.office.com/article/onedrive-release-notes-845dcf18-f921-435e-bf28-4e24b95e5fc0). Network measurements are planned to be added in other Office 365 client applications in the near future.

Windows Location Service must be consented on the machines. You can test this by running the **Maps** app and locating yourself. It can be enabled on a single machine with **Settings | Privacy | Location** where the setting _Allow apps to access your location_ must be enabled. Windows Location Services consent can be deployed to PCs using MDM or Group Policy with the setting _LetAppsAccessLocation_.

You do not need to add locations in the Admin Center with this method as they are automatically identified at the city resolution. You cannot show multiple office locations within a city using Windows Location Services. Location information is also rounded to the nearest 300 meters by 300 meters before being uploaded so that more precise location information is not possible to access.

The machines should have Wi-Fi networking rather than an ethernet cable. Machines with an ethernet cable do not have accurate location information.

Measurement samples and office locations should start to appear 24 hours after these pre-requisites have been met.

### 2. Add locations and provide LAN subnet information

For this option neither Windows Location Services nor Wi-Fi are required. You need OneDrive for Windows version **20.161** or above installed on each computer at the location.

You also need to add locations in the Admin Center network connectivity page or to import those from a CSV file. The locations added must include your office LAN subnet information.

Because you are adding the locations, you can have multiple offices defined within a city.

All test measurements from client machines include the LAN subnet information, which is correlated with the office location details that you have entered. Measurement samples and office locations should start to appear 24 hours after these pre-requisites have been met.

### 3. Manually gather test reports with the Microsoft 365 network connectivity test tool

For this option you need to identify a person at each location. Ask them to browse to [Microsoft 365 network connectivity test](https://connectivity.office.com) on a Windows machine on which they have administrative permissions. On the web site, they need to sign-in to their Office 365 account for the same organization that you want to see the results. Then they should click **Run test**. During the test there is a downloaded Connectivity test EXE. They need to open and execute that also. Once the tests are completed, the test result is uploaded to Office 365.

Test reports are linked to a location if it was added with LAN subnet information, otherwise they are shown at the city location only.

Measurement samples and office locations should start to appear 2-3 minutes after a test report is completed. For more information, see [Microsoft 365 network connectivity test (preview)](office-365-network-mac-perf-onboarding-tool.md).

## How do I use this information?

**Network insights**, their related performance recommendations and network assessments are intended to help in designing network perimeters for your office locations. Each insight provides details about the performance characteristics for a specific common issue for each geographic location where users are accessing your tenant. **Performance recommendations** for each network insight offer specific network architecture design changes you can make to improve user experience related to Microsoft 365 network connectivity. The network assessment shows how network connectivity impacts user experience, allowing for comparison of different user location network connections.

**Network assessments** distill an aggregate of many network performance metrics into a snapshot of your enterprise network health, represented by a points value from 0 - 100. Network assessments are scoped to both the entire tenant and for each geographic location from which users connect to your tenant, providing Microsoft 365 administrators with an easy way to instantly grasp a gestalt of the enterprise's network health and quickly drill down into a detailed report for any global office location.

Complex enterprises with multiple office locations and non-trivial network perimeter architectures can benefit from this information either during their initial onboarding to Microsoft 365 or to remediate network performance issues discovered with usage growth. This is usually not necessary for small businesses using Microsoft 365, or any enterprises who already have simple and direct network connectivity. Enterprises with over 500 users and multiple office locations are expected to benefit the most.

>[!IMPORTANT]
>Network insights, performance recommendations and assessments in the Microsoft 365 Admin Center is currently in preview status, and is only available for Microsoft 365 tenants that have been enrolled in the feature preview program.

## Enterprise network connectivity challenges

> [!div class="mx-imgBorder"]
> ![Customer network to cloud](../media/m365-mac-perf/m365-mac-perf-first-last-mile.png)

Many enterprises have network perimeter configurations which have grown over time and are primarily designed to accommodate employee Internet web site access where most web sites are not known in advance and are untrusted. The prevailing and necessary focus is avoiding malware and fishing attacks from these unknown web sites. This network configuration strategy, while helpful for security purposes, can lead to degradation of Microsoft 365 user performance and user experience.

## How we can solve these challenges

Enterprises can improve general user experience and secure their environment by following [Office 365 connectivity principles](https://aka.ms/pnc) and by using the Microsoft 365 Admin Center network connectivity feature. In most cases, following these general principles will have a significant positive impact on end user latency, service reliability and overall performance of Microsoft 365.

Microsoft is sometimes asked to investigate network performance issues with Microsoft 365 for large enterprise customers, and these frequently have a root cause related to the customers network perimeter infrastructure. When a common root cause of a customer network perimeter issue is found we seek to identify simple test measurements that identifies it. A test with a measurement threshold that identifies a specific problem is valuable because we can test the same measurement at any location, tell whether this root cause is present there and share it as a network insight with the administrator.

Some network insights will merely indicate a problem that needs further investigation. A network insight where we have enough tests to show a specific remediation action to correct the root cause is listed as a **recommended action**. These recommendations, based on live metrics that reveal values that fall outside a predetermined threshold, are much more valuable than general best practice advice since they are specific to your environment and will show the actual improvement once the recommended changes have been made.

## Network connectivity overview in the Microsoft 365 Admin Center

Microsoft has existing network measurements from several Office desktop and web clients which support the operation of Microsoft 365. These measurements are now being used to provide network architecture design insights and a network assessment which are shown in the **Network connectivity** page in the Microsoft 365 Admin Center.

By default, approximate location information associated with the network measurements identify the city where client devices are located. The network assessment at each location is shown with color and the relative number of users at each location is represented by the size of the circle.

> [!div class="mx-imgBorder"]
> ![Network insights overview map](../media/m365-mac-perf/m365-mac-perf-overview-map.png)

The overview page also shows the network assessment for the customer as a weighted average across all office locations.

> [!div class="mx-imgBorder"]
> ![Network assessment](../media/m365-mac-perf/m365-mac-perf-overview-score.png)

You can view a table view of the locations where they can be filtered, sorted, and edited in the locations tab. Locations with specific recommendations may also include an estimated potential latency improvement. This is calculated by taking the median latency of your organization users at the location and subtracting the median latency for all organizations in the same city.

> [!div class="mx-imgBorder"]
> ![Network insights locations](../media/m365-mac-perf/m365-mac-perf-locations.png)

## Specific office location network performance summary and insights

Selecting an office location opens a location-specific summary page showing details of the network egress that has been identified from measurements for that office location.

> [!div class="mx-imgBorder"]
> ![Network insights details by location](../media/m365-mac-perf/m365-mac-perf-locations-plan-overview.png)

A map of the perimeter network for your organization users at the location is shown with some or all of these elements:

- **Office location** - The office location for the page you are looking at
- **Network perimeter** - The location of the source IP Address for connections from the office location. This depends on the accuracy of geo-IP location databases
- **Exchange optimal service front door** - One of the recommended Exchange service front doors that users in this office location should connect to
- **Exchange sub-optimal front door** - An Exchange service front door that users are connected to, but is not recommended
- **SharePoint optimal service front door** - One of the recommended SharePoint service front doors that users in this office location should connect to
- **SharePoint sub-optimal service front door** - A SharePoint service front door that users are connected to, but is not recommended
- **DNS recursive resolver server** - The location from a geo IP database of the detected DNS recursive resolver used for Exchange Online (if available)
- **Your proxy server** - The location from a geo IP database of the detected proxy server (if available) 

The office location summary page additionally shows the location's network assessment, network assessment history, a comparison of this location's assessment to other customers in the same city, and a list of specific insights and recommendations that you can undertake to improve network performance and reliability.

Comparisons between customers in the same city are based on the expectation that all customers have equal access to network service providers, telecommunications infrastructure, and nearby Microsoft network points of presence.

The details tab on the office location page shows the specific measurement results that were used to come up with any insights, recommendations, and the network assessment. This is provided so that network engineers can validate the recommendations and factor in any constraints or specifics in their environment.

> [!div class="mx-imgBorder"]
> ![Location-specific details](../media/m365-mac-perf/m365-mac-perf-locations-plan-details-all.png)

## CSV Import for LAN subnet office locations

For LAN subnet office identification, you need to add each location in advance. Instead of adding individual office locations in the **Locations** tab you can import them from a CSV file. You may be able to obtain this data from other places you have stored it such as the Call Quality Dashboard or Active Directory Sites and Services

In the CSV file a discovered city location shows in the userEntered column as blank, and a manually added office location shows as 1.

1. In the main _Connectivity to Microsoft 365_ window, click the **Locations** tab.

1. Click the **Import** button just above the locations list. The **Import office locations** flyout will appear.

   > [!div class="mx-imgBorder"]
   > ![CSV import message](../media/m365-mac-perf/m365-mac-perf-import.png)

1. Click the **Download current office locations (.csv)** link to export the current locations list to a CSV file, and save it to your local hard disk. This will provide you with a correctly formatted CSV with column headings to which you can add locations. You can leave the existing exported locations as they are; they will not be duplicated when you import the updated CSV. If you wish to change the address of an existing location, it will be updated when you import the CSV. You cannot change the address of a discovered city.

1. Open the CSV and add your locations by filling out the following fields on a new line for each location you want to add. Leave all other fields blank; values you enter in other fields will be ignored.

   1. **userEntered** (required): Must be 1 for a new LAN Subnet office location
   1. **Address** (required): The physical address of the office
   1. **Latitude** (optional): Populated from Bing maps lookup of the address if blank
   1. **Longitude** (optional): Populated from Bing maps lookup of the address if blank
   1. **Egress IP Address ranges 1-5** (optional): For each range, enter the circuit name followed by a space separated list of valid IPv4 or IPv6 CIDR addresses. These values are used to differentiate multiple office locations where you use the same LAN subnet IP Addresses. Egress IP Address ranges all must be /24 network size and the /24 is not included in the input.
   1. **LanIps** (required): List the LAN subnet ranges in use at this office location. LAN subnet IDs need to have a CIDR network size included where the network size can be between /8 and /29. Multiple LAN subnet ranges can be separated by a comma or a semicolon.
   
1. When you have added your office locations and saved the file, click the **Browse** button next to the **Upload the completed** field and select the saved CSV file.

1. The file will be automatically validated. If there are validation errors, you will see the error message _There are some errors in the import file. Review the errors, correct the import file, and then try again._ Click the link **Open error details** for a list of specific field validation errors.

   > [!div class="mx-imgBorder"]
   > ![CSV import error message](../media/m365-mac-perf/m365-mac-perf-import-error.png)

1. If there are no errors in the file, you will see the message _The report is ready. Found x locations to add and x locations to update._ Click the **Import** button to upload the CSV.

   > [!div class="mx-imgBorder"]
   > ![CSV import ready message](../media/m365-mac-perf/m365-mac-perf-import-ready.png)

## FAQ

### What is a Microsoft 365 service front door?

The Microsoft 365 service front door is an entry point on Microsoft's global network where Office clients and services terminate their network connection. For an optimal network connection to Microsoft 365, it is recommended that your network connection is terminated into the closest Microsoft 365 front door.

>[!NOTE]
>Microsoft 365 service front door has no direct relationship to the Azure Front Door Service product available in the Azure marketplace.

### What is an optimal Microsoft 365 service front door?

An optimal Microsoft 365 service front door is one that is closest to your network egress, generally in your city or metro area. Use the [Microsoft 365 connectivity test tool (preview)](office-365-network-mac-perf-onboarding-tool.md) to determine location of your in-use Microsoft 365 service front door and optimal service front door. If the tool determines your in-use front door is optimal, then you are optimally connecting into Microsoft's global network.

### What is an internet egress location?

The internet egress location is the location where your network traffic exits your enterprise network and connects to the Internet. This is also identified as the location where you have a Network Address Translation (NAT) device and usually where you connect with an Internet Service Provider (ISP). If you see a long distance between your location and your internet egress location, then this may indicate a significant WAN backhaul.

## Related topics

[Microsoft 365 network insights (preview)](office-365-network-mac-perf-insights.md)

[Microsoft 365 network assessment (preview)](office-365-network-mac-perf-score.md)

[Microsoft 365 connectivity test tool (preview)](office-365-network-mac-perf-onboarding-tool.md)

[Microsoft 365 Network Connectivity Location Services (preview)](office-365-network-mac-location-services.md)
