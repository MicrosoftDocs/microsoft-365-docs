---
title: Microsoft Managed Desktop technologies and devices
description:  This topic lists the technologies, apps, and device specifications used in Microsoft Managed Desktop.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jdeckerms
ms.localizationpriority: medium
ms.date: 09/24/2018
---

# Microsoft Managed Desktop technologies and devices

This topic lists the technologies, apps, and device specifications used in Microsoft Managed Desktop.

<!-- Microsoft 365 E5; Device as a Service -->
<!-- in O365 table, standard suite, removed this sentence "Please see the Installation of Project/Visio 64bit Click to Run Addendum for important deployment instructions. -->

## Technologies

Microsoft 365 E5 License (or equivalent) is required for Microsoft Managed Desktop service. The following are all components that are included in this license and how Microsoft Managed Desktop uses each component with Microsoft Managed Desktop devices.  Specific roles and responsibilities for each area are detailed throughout the document. 

Microsoft 365 E5 is comprised of 3 components: Office 365 E5, Windows 10 Enterprise and E5, Enterprise Mobility + Security E5.  


### Office 365 E5
 |
 --- | ---
Office 365 Standard Suite (64bit)* | The standard Office Suite of applications will be shipped with the device:	Word, Excel, PowerPoint, Outlook, Publisher, Access, Skype for Business, OneNote.<br><br>The 64bit Click to Run (C2R) full versions of Microsoft Project and Microsoft Visio are not included in the Office 365 Standard Suite.  However, since the installation of these applications are dependent on the standard Office Suite installation, Microsoft Managed Desktop has created default Intune deployments and Security groups that the customer will use to deploy these applications to licensed end users.  
Store Apps |	Microsoft Sway, Microsoft Teams, Power BI Desktop (not Pro) are not shipped with device. These apps are available for download from Microsoft Store.
Win32 Applications |	Power BI Pro, Azure Information Protection Client, and Microsoft Planner are not shipped with device and can be packaged for deployment by the customer. 
Web Applications |	Yammer, Office Online, Delve, Flow, StaffHub, PowerApps are not shipped with the device. Users can access the web version of these applications with a browser.
Skype for Business Online Cloud PBX | This feature is available via Office 365 E5. Microsoft Managed Desktop will not configure any aspect of this service

### Windows 10 Enterprise E5

 |
 --- | ---
Credential Guard |	Microsoft Managed Desktop will provide guidance and manage cloud aspects of this feature
Device Guard ( Windows Defender Application Control )	| Microsoft Managed Desktop will create the policy. Customer will manage signatures
AppLocker management |	Microsoft Managed Desktop will create the policy. Customer will manage signatures
Application Virtualization (App-V) |	Microsoft Managed Desktop does not support this type of deployment as it is not supported on Intune.
User Experience Virtualization (UE-V) |	This is not used with Microsoft Managed Desktop managed devices
Managed User Experience	 | This is not used with Microsoft Managed Desktop managed devices. MDM is used as a solution for device management
Windows Defender Advanced Threat Protection |	This is used by Microsoft Managed Desktop to manage device security policies. 

### Enterprise Mobility + Security 

 |
 --- | ---
Enterprise Mobility + Security E3<br>Azure Active Directory Premium P2 |	All aspects of the Enterprise Mobility + Security E3 and AADP may be used to manage MDM devices
Microsoft Cloud App Security |	This is an optional feature that customers can use with the Microsoft Managed Desktop service.
Azure Information Protection P2	 |This is an optional feature that customers can use with the Microsoft Managed Desktop service.


## Devices

<!-- Device as a service -->

<!---
A device will be provided as a part of the Microsoft Managed Desktop service. Our catalog of devices is designed to ensure a premium experience for all Enterprise features like Windows Autopilot, Windows Hello, Cortana premium, Bitlocker, Secure Boot and Hyper-V. Devices will use Enterprise software, such as System Guard (DRTM), Virtualization, drivers and applications that are HVCI-ready.

Microsoft does not support configuring, managing, or supporting existing devices in a customer’s organization that were not provided as part of Microsoft Managed Desktop. There is also no PC recycle or buy back program for existing devices.

Current device catalog:

- Surface Laptop: w/ 2.4 GHz i5, 8 GB DDR3, and 256 GB SSD
- Surface Pro: w/ 2.4 GHz i5, 8 GB DDR3, and 256 GB SSD 
- Surface Book 2: w/ 1.9GHz quad-core i7, 16 GB DDR3, and 512GB SSD
-->

Our catalog of devices is designed to provide a premium experience for all Enterprise features like Windows Autopilot, Windows Hello, Cortana premium, Bitlocker, Secure Boot and Hyper-V. Devices will use Enterprise software, such as System Guard (DRTM), Virtualization, drivers and applications that are HVCI-ready. 

These are the requirements for the approved devices that will be supported under the Microsoft Managed Desktop service.
- Approved devices catalogue as of 3Q-CY2018:
    - Surface Laptop: w/ 2.4 GHz i5, 8 GB DDR3, and 256 GB SSD
    - Surface Pro: w/ 2.4 GHz i5, 8 GB DDR3, and 256 GB SSD 
    - Surface Book 2: w/ 15” screen, 1.9GHz quad-core i7, 16 GB DDR3, and 512GB SSD
- Device is activated less than One (1) year old
- Device is freshly imaged
    - Microsoft Office is pre-installed
- Device is configured to work with Autopilot 

For more information on capabilities and features of these devices, see [Compare Surface devices](https://www.microsoft.com/surface/devices/compare-devices).

### Services for Microsoft Managed Desktop devices 

Microsoft will provide these services for Microsoft Managed Desktop devices.
  | 
 --- | ---
Support	| Support agents will answer questions directly related to device functionality and diagnose device issues.
Replacement	| The device will be replaced with a similar device after a request is made through support. For coverage details, refer to the warranty terms chosen when selecting your devices.
Upgrade	| Devices are upgraded and replaced under the terms of the warranty that you select.
Inventory |	All devices are tracked in the Microsoft Managed Desktop Admin portal for inventory and status tracking.
Device shipment |	Devices are shipped directly to the assigned user or IT distribution point.
Firmware / driver updates |	Firmware/Driver updates are deployed and monitored for compatibility by Microsoft. 
Accessories	| Accessories that come with your device are covered by the same services as the device itself, but warranty terms may differ. Refer to the warranty terms chosen when selecting your devices. 
Device setup	| Devices will be pre-configured with the current version of Windows and receive their apps and configurations via the cloud. 

### Service limitations

Microsoft will not provide service for these items. 
|
 --- | ---
Other accessories |	Only accessories shipped with the device are supported.
Personalization |	Devices and accessories provided with the service are unable to be customized. All devices and accessories are provided with standard branding, specification, and color combinations. Application deployment and policy configurations are handled through IT-as-a-Service.
Repair |	Devices are not repaired. Replacement devices will be shipped as described above.
Data recovery |	User and team data, including personalization, is stored in OneDrive for Business, with only cache data residing locally. If data is intentionally stored on the device’s internal storage system, any data recovery must be attempted and completed prior to returning the device to Microsoft.
Device setup |	Devices are delivered to the customer address, where they need to be powered on, connected to monitors, etc., by the customer.
