---
title: Microsoft Managed Desktop roles and responsibilities
description: This topic describes the roles and responsibilities provided by Microsoft for Microsoft Managed Desktop. 
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jdeckerms
ms.localizationpriority: normal
ms.date: 09/24/2018
---

# Microsoft Managed Desktop roles and responsibilities


<!--This topic is the target for a "Learn more" link in the Admin Portal (aka.ms/admin-access); do not delete.-->
<!-- from Roles and responsibilities -->

When your organization is enrolled in Microsoft Managed Desktop, what does Microsoft do for you? And what are your organization's responsibilities?

## Microsoft's roles and responsibilities

Below are a few key roles and responsibilities that will be provided to you by Microsoft.

Role or responsibility | Description
--- | ---
MDM policy management | Microsoft will apply MDM policies according to best practices, and consider requests for policy changes. We will also make changes to your tenant as prescribed in [Device policies](../service-description/device-policies.md).
App deployment | Microsoft will deploy approved applications to client’s Microsoft Managed Desktop devices using Intune. For more information, see [Apps](../get-ready/apps.md). 
End user support | Microsoft will provide end-user support for devices, Windows, and Office product suite for all enrolled users. 
Microsoft Managed Desktop service support | Microsoft will provide support to customer IT departments through a Microsoft Managed Desktop Operations Team. This team will support technical troubleshooting, change requests, and incident management for the customer’s Microsoft Managed Desktop environment. For more information, see [Get support](../service-description/support.md).
Security monitoring | Microsoft will monitor customer Microsoft Managed Desktop devices using Windows Defender ATP. If a threat is detected by the Microsoft Managed Desktop Security Operations Center (SOC), Microsoft will notify the customer, isolate the device, and rectify the issue remotely. For more information, see [Security](../service-description/security.md).
Update monitoring and management | Microsoft will actively monitor customer Microsoft Managed Desktop devices to ensure that the latest quality, feature, and definition updates are installed for Microsoft Windows and Microsoft Office. For more information, see [How updates are handled](../service-description/updates.md).
Device procurement | Microsoft will drop-ship ordered Microsoft Managed Desktop devices to end-users or the IT distribution point of your choosing. For more information, see [Devices](../get-started/devices.md).

## Your roles and responsibilities

Below is an additional set of common roles that are not provided by Microsoft, but are required for a successful deployment. It’s not exhaustive but is typical for most organizations. 

Role or reponsibility | Description
--- | ---
Change management | Microsoft Managed Desktop will notify customers, in advance, when changes need to be made to their Microsoft Managed Desktop environment. Customers need to have their own change management process and are required to have a contact with Microsoft Managed Desktop. The customer is required to have resources to review and approve these changes. For more informations, see [Operations and monitoring](../service-description/operations-and-monitoring.md).  
Identity management | Creating user accounts, assigning users to groups and keeping metadata up to date. 
Office 365 configuration and management | Exchange Online administration, including:<br>- Email administration<br>- Mailbox and rule configuration<br>- Exchange on-premises management<br><br>Collaboration tools, SharePoint server administration, domain management, security and information policies set in the Office 365 admin portal (Microsoft Managed Desktop will ensure Office applications are deployed to end user devices and stay up to date). 
End user support | The customer will provide end-user support for: <br>- On site infrastructure: all network and internet connectivity, VPN infrastructure and client configuration, local conference room equipment, printers, proxy server and configuration, firewalls.<br><br>- Company-wide cloud resources: email, SharePoint, collaboration services, and other cloud infrastructure that relates to the company-wide technology footprint.<br><br>- Line-of-business applications: custom software, 3rd-party software, enterprise resource planning (ERP) software, design tools, and anything not specified in this document.
User and device grouping | Microsoft Managed Desktop operations team will create and manage required device and user groups as part of IT operations. The customer will not make changes to these groupings without first contacting IT operations through supported channels. All detected changes will be reverted.
Apps | Customers will provide a list of apps that they want to use in their organization (beyond apps included with Microsoft 365 license). Customers also provide a deployable package (Appx or MSI)<br>The customer is responsible for:<br>- App license management – Having the right type and quantity of licenses<br>- App assignment – Assigning apps to Azure AD user groups<br>- App updates – Monitoring, packaging, and deploying app feature and security updates<br>- User Application Testing (UAT)<br><br>For more information, see [Apps](../get-ready/apps.md)
Security monitoring and response | If a security incident is detected which is outside the scope of Microsoft Managed Desktop Operations, we will require a list of preferred customer contacts based on the severity of the issue.<br><br>The customer is responsible for investigating and resolving incidents for non-Microsoft Managed Desktop devices and ensuring that the Microsoft Managed Desktop Operations Team is informed of any issues that may impact the service.
Operations support | Microsoft Managed Desktop Operations needs a list of preferred customer contacts and subject-matter experts. We need these in case there is a non-Microsoft Managed Desktop operational incident. <br><br>The customer is responsible for investigating and resolving incidents for non-Microsoft Managed Desktop devices and services and ensuring that the Microsoft Managed Desktop Operations Team is always informed .
Network infrastructure, including VPN | Setup, configuration and management (including troubleshooting and debugging) of all networking-related infrastructure and services, including internet connectivity, network controls, proxy configuration and remote connectivity infrastructure.<br><br>By default, Microsoft Managed Desktop does not specify or require a proxy. However, if one is configured (in hardware or software), there is a collection of URLs that must be allowed by the proxy. The customer is responsible for troubleshooting any conflicts or incompatibilities due to multiple proxies.<br><br>For more information, see [Proxy Configuration](../get-ready/network.md).
Printing | Install, maintain and administer printers and print queues. Cloud printing is a recommended solution, but is not required. 
Mobile devices | Devices and accessories not provided by Microsoft Managed Desktop. Microsoft Managed Desktop Operations Team only supports the Microsoft Managed Desktop device, docking station and included accessories.




