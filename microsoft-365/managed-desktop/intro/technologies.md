---
title: Microsoft Managed Desktop technologies
description:  This topic lists the technologies and apps used in Microsoft Managed Desktop.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: trudyha
ms.localizationpriority: normal
ms.date: 09/24/2018
---

# Microsoft Managed Desktop technologies

This topic lists the technologies and apps used in Microsoft Managed Desktop.

<!-- Microsoft 365 E5; Device as a Service -->
<!-- in O365 table, standard suite, removed this sentence "Please see the Installation of Project/Visio 64bit Click to Run Addendum for important deployment instructions. -->

Microsoft 365 E5 License (or equivalent) is required for Microsoft Managed Desktop service. The following are all components that are included in this license and how Microsoft Managed Desktop uses each component with Microsoft Managed Desktop devices.  Specific roles and responsibilities for each area are detailed throughout Microsoft Managed Desktop topics. 

Microsoft 365 E5 is comprised of 3 components: Office 365 E5, Windows 10 Enterprise and E5, Enterprise Mobility + Security E5.  

## Office 365 E5
 |
 --- | ---
Office 365 Standard Suite (64bit)* | The standard Office Suite of applications will be shipped with the device:	Word, Excel, PowerPoint, Outlook, Publisher, Access, Skype for Business, OneNote.<br><br>The 64bit Click to Run (C2R) full versions of Microsoft Project and Microsoft Visio are not included in the Office 365 Standard Suite.  However, since the installation of these applications are dependent on the standard Office Suite installation, Microsoft Managed Desktop has created default Intune deployments and Security groups that the customer will use to deploy these applications to licensed end users.  
Store Apps |	Microsoft Sway, Microsoft Teams, Power BI Desktop (not Pro) are not shipped with device. These apps are available for download from Microsoft Store.
Win32 Applications |	Power BI Pro, Azure Information Protection Client, and Microsoft Planner are not shipped with device and can be packaged for deployment by the customer. 
Web Applications |	Yammer, Office Online, Delve, Flow, StaffHub, PowerApps are not shipped with the device. Users can access the web version of these applications with a browser.
Skype for Business Online Cloud PBX | This feature is available via Office 365 E5. Microsoft Managed Desktop will not configure any aspect of this service

## Windows 10 Enterprise E5

 |
 --- | ---
Credential Guard |	Microsoft Managed Desktop will provide guidance and manage cloud aspects of this feature
Device Guard (Windows Defender Application Control)	| Microsoft Managed Desktop will create the policy. Customer will manage signatures
AppLocker management |	Microsoft Managed Desktop will create the policy. Customer will manage signatures
Application Virtualization (App-V) |	Microsoft Managed Desktop does not support this type of deployment as it is not supported on Intune.
User Experience Virtualization (UE-V) |	This is not used with Microsoft Managed Desktop managed devices
Managed User Experience	 | This is not used with Microsoft Managed Desktop managed devices. MDM is used as a solution for device management
Windows Defender Advanced Threat Protection |	This is used by Microsoft Managed Desktop to manage device security policies. 

## Enterprise Mobility + Security 

 |
 --- | ---
Enterprise Mobility + Security E3<br>Azure Active Directory Premium P2 |	All aspects of the Enterprise Mobility + Security E3 and AADP may be used to manage MDM devices
Microsoft Cloud App Security |	This is an optional feature that customers can use with the Microsoft Managed Desktop service.
Azure Information Protection P2	 |This is an optional feature that customers can use with the Microsoft Managed Desktop service.
