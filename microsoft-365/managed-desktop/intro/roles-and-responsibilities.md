---
title: Microsoft Managed Desktop roles and responsibilities
description: This topic describes the roles and responsibilities provided by Microsoft for Microsoft Managed Desktop. 
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.date: 09/24/2018
ms.collection: M365-modern-desktop
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
End user support | Microsoft will provide end-user support for devices, Windows, and Office product suite for all enrolled users through the Get Help app that's preinstalled on all Microsoft Managed Desktop devices. 
Microsoft Managed Desktop service support | Microsoft will provide support to customer IT departments through a Microsoft Managed Desktop Operations Team. This team will support technical troubleshooting, change requests, and incident management for the customer’s Microsoft Managed Desktop environment. For more information, see [Admin support for Microsoft Managed Desktop](../working-with-managed-desktop/admin-support.md).
Security monitoring | Microsoft will monitor customer Microsoft Managed Desktop devices using Microsoft Defender ATP. If a threat is detected by the Microsoft Managed Desktop Security Operations Center (SOC), Microsoft will notify the customer, isolate the device, and rectify the issue remotely. For more information, see [Security](../service-description/security.md).
Update monitoring and management | Microsoft will actively monitor customer Microsoft Managed Desktop devices to ensure that the latest quality and feature updates are installed for Microsoft Windows and Microsoft Office. For more information, see [How updates are handled](../service-description/updates.md).
User and device grouping | Microsoft Managed Desktop operations team will create and manage required device and user groups as part of IT operations. No membership or configuration changes are allowed to these groups. Altering these groups can lead to unexpected configuration of devices and loss of functionality. For any issues or questions around these groups once established, IT administrators can contact Microsoft Managed Desktop operations. For more information, see [Admin support for Microsoft Managed Desktop](../working-with-managed-desktop/admin-support.md).

## Your roles and responsibilities

Below is an additional set of common roles and responsibilities that are not provided by Microsoft, but are required for a successful deployment. It’s not exhaustive but is applicable for most organizations. There are a few items below that both Microsoft and the customer share responsibilties. 

Role or responsibility | Description
--- | ---
Change management | Microsoft will notify customers, in advance, when changes need to be made to their Microsoft Managed Desktop environment. For more information, see [service changes and communication](../service-description/servicechanges.md)<br><br>The customer is required to have their own change management process and have a contact established with Microsoft Managed Desktop Operations team. The customer is also required to have resources to review and approve these changes. For more information, see [Operations and monitoring](../service-description/operations-and-monitoring.md).  
Identity management | The customer is responsible for creating user accounts, assigning users to groups and keeping metadata up to date. 
Microsoft 365 Apps for enterprise configuration and management | Microsoft is responsible for ensuring Office applications are deployed to end users and those applications are kept up to date. <br><br> The customer is responsible for managing Office 365 services and policies, including Exchange Online administration responsibilities:<br>- Email administration<br>- Mailbox and rule configuration<br>- Exchange on-premises management<br><br>The customer is also responsible for collaboration tools, SharePoint server administration, domain management, security and information policies set in the Office 365 admin portal. 
End user support | The customer is responsible for providing end-user support for: <br>- On site infrastructure: all network and internet connectivity, VPN infrastructure and client configuration, local conference room equipment, printers, proxy server and configuration, firewalls.<br><br>- Company-wide cloud resources: email, SharePoint, collaboration services, and other cloud infrastructure that relates to the company-wide technology footprint.<br><br>- Line of business and any other company specific applications.
Apps | Roles and responsibilities vary somewhat for the apps provided as part of Microsoft Managed Desktop versus those you provide. <br><br>For apps provided by Microsoft (Microsoft 365 Apps for enterprise  comprising Word, Excel, PowerPoint, Outlook, Publisher, Access, Skype for Business, Teams, and OneNote), **Microsoft** will provide full service for the deployment, update, and support. **You** must obtain and assign licenses for these apps, add users to security groups and manage end of life and deploy any Office 365 Addons you need.<br><br>For apps you provide (such as your line-of-business apps), whether you package them yourself or engage a non-Microsoft vendor to do so, **you** are responsible for these actions: <br><br>- Identifying applications needed for targeted user groups<br>- Creating and managing Azure AD groups for app deployment<br>- Packaging apps to meet Microsoft Intune deployment standards<br>- Uploading apps to Microsoft Intune<br>- Testing apps in Microsoft Managed Desktop environment<br>- Testing apps with your end users<br>- Managing and assigning users to applications<br>- Identify and deploy application updates through Microsoft Intune<br>- Uninstalling and removing applications when they have been retired<br>- Procuring and assigning licenses<br>- Providing end-user support for line-of-business apps<br>- Managing app settings remotely<br><br>**Microsoft** will provide Microsoft Intune deployment tools to deliver the applications to remote clients.<br><br>For more information, see [Apps](../get-ready/apps.md)
Security monitoring and response | The customer is responsible for investigating and resolving incidents for non-Microsoft Managed Desktop devices and ensuring that the Microsoft Managed Desktop Operations Team is informed of any issues that may impact the service.
Operations support | The customer is responsible for providing a list of preferred customer contacts and subject-matter experts. Microsoft needs these in case there is a non-Microsoft Managed Desktop operational incident. <br><br>The customer is also responsible for investigating and resolving incidents for non-Microsoft Managed Desktop devices and services and ensuring that the Microsoft Managed Desktop Operations Team is always informed .
Network infrastructure, including VPN | The customer is responsible for setup, configuration and management (including troubleshooting and debugging) of all networking-related infrastructure and services, including internet connectivity, network controls, proxy configuration and remote connectivity infrastructure.<br><br>If a proxy is configured (in hardware or software), there is a collection of URLs that must be allowed by the proxy. The customer is responsible for troubleshooting any conflicts or incompatibilities due to multiple proxies. You can add network proxies specific to your organization using configurable settings. For more information, see [Configurable settings](../working-with-managed-desktop/config-setting-ref.md#proxy).<br><br>For more information, see [Proxy Configuration](../get-ready/network.md).
Printing | The customer is responsible for installing, maintaining and administering printers and print queues. Cloud printing is a recommended solution, but is not required. 




