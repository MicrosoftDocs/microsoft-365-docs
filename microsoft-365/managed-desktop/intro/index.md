---
title: Is Microsoft Managed Desktop right for you 
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
---

# What is Microsoft Managed Desktop?

<!--from Overview-->

Microsoft Managed Desktop is a service you can subscribe to that provides monitored IT services for registered devices. It brings together [Microsoft 365 Enterprise](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview) (including Windows 10 Enterprise and Office 365 ProPlus), cloud-based device management by Microsoft, and security monitoring, enabling you to free up your IT teams to focus on core business needs.

## Microsoft 365 Enterprise
As part of registering with Microsoft Managed Desktop, you'll obtain a Microsoft 365 Enterprise [E3 or E5 license](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans?rtc=1).

Microsoft 365 Enterprise includes Windows 10 Enterprise, Office 365 ProPlus, and Enterprise Mobility + Security.

### Windows 10 Enterprise
Addresses the needs of both large and midsize organizations, providing users with the most productive and secure version of Windows and IT professionals with comprehensive deployment, device, and app management. Learn more at [Windows 10](https://docs.microsoft.com/windows/windows-10/).

### Office 365 ProPlus
[Office 365 ProPlus](https://docs.microsoft.com/DeployOffice/about-office-365-proplus-in-the-enterprise) is a version of Office that's available as part of Microsoft 365 Enterprise. It includes the applications that you're familiar with, including Access, Excel, OneNote, Outlook, PowerPoint, Publisher, Skype for Business, and Word. You can use these applications to connect with Office 365 services such as SharePoint Online, Exchange Online, and Skype for Business Online.

### Enterprise Mobility + Security
[Enterprise Mobility + Security](https://docs.microsoft.com/enterprise-mobility-security/#pivot=products&panel=products-all) is a collection of inter-related products and features designed to manage devices and users, control access, protect information, and detect, analyze, and protect against threats. It includes these products:

- [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/index)
- [Microsoft Intune](https://docs.microsoft.com/intune/index)
- [System Center Configuration Manager](https://docs.microsoft.com/sccm/)
- [Microsoft Could App Security](https://docs.microsoft.com/cloud-app-security/)
- [Azure Information Protection](https://docs.microsoft.com/azure/information-protection/)
- [Multi-factor Authentication](https://docs.microsoft.com/azure/multi-factor-authentication/index)
- [Advanced Threat Analytics](https://docs.microsoft.com/advanced-threat-analytics/)
- [Azure Advanced Threat Protection](https://docs.microsoft.com/azure-advanced-threat-protection/)
- [Microsoft Identity Manager](https://docs.microsoft.com/microsoft-identity-manager/)

## Device management
Microsoft Managed Desktop takes on the burden of managing registered devices and the software they use.

- **Hardware:** Instead of your IT department having to research and test devices (and their drivers), specific devices are carefully tested by Microsoft Managed Desktop, resulting in a curated [list of devices](../service-description/device-list.md) that are guaranteed to work with the service. You can either obtain devices yourself (or work with a partner) or reuse devices you already have, provided they are on the approved list. Before they're deployed, you can also [customize](../working-with-managed-desktop/config-setting-overview.md) certain aspects of the device experience for your end users.
- **Updates:** Microsoft Managed Desktop sets up and manages all aspects of [deployment rings](../service-description/updates.md) for Windows 10 quality and feature updates, drivers, firmware, anti-virus definitions, and Office ProPlus updates, assuring that registered devices are always up to date and freeing your IT department from that ongoing task.
- **Apps:** As part of Microsoft 365 Enterprise, Microsoft provides (and manages) a number of key Microsoft apps for you. But you probably also have a number of other apps that you need for your business. Instead of your IT department having to test, package, and deploy those apps, when you subscribe to Microsoft Managed Desktop, we will handle all of those operations for you. Learn more at [Apps in Microsoft Managed Desktop](../get-ready/apps.md).


## Monitoring

{NEED MORE--we actually don't have any truly friendly summary of what exactly MMD monitors, just the very dry and hard-to-parse tables in [Microsoft Managed Desktop operations and monitoring](../service-description/operations-and-monitoring.md)}


## Need more details?
For more about the value proposition of Microsoft Managed desktop, including customer stories, see [Microsoft Managed Desktop](https://aka.ms/mmd). You can find the latest news at the Microsoft Managed Desktop [blog](https://techcommunity.microsoft.com/t5/Microsoft-Managed-Desktop/bg-p/MicrosoftManagedDesktop).

If Microsoft Managed Desktop seems right for your organization, you can delve into additional documentation that explains more about the service, how to prepare your organization to enroll, how to get started with the service, and ongoing operations thereafter.

**More overview and background**
Primarily for technical and business decision makers, these topics detail the division of roles and responsibilities between your organization and Microsoft, more about the technologies used in Microsoft Managed Desktop, and how the service fits into a broader strategy as part of the ITIL framework.

- [Microsoft Managed Desktop roles and responsibilities](roles-and-responsibilities.md)
- [Microsoft Managed Desktop technologies](technologies.md)
- [Microsoft Managed Desktop and ITIL](../MMD-and-ITSM.md)
- [Microsoft Managed Desktop service description](https://docs.microsoft.com/microsoft-365/managed-desktop/service-description/)

**Get ready for enrollment**
These topics describe the steps you'll need to take in your organization to prepare for enrollment, including checking that your environment meets key prerequisites, configuring networks, setting up certificates, and preparing your apps for inclusion in the service.

- [Prerequisites for Microsoft Managed Desktop](../get-ready/prerequisites.md)
- [Network configuration for Microsoft Managed Desktop](../get-ready/network.md)
- [Prepare on-premises resources access for Microsoft Managed Desktop](../get-ready/authentication.md)
- [Prepare mapped drives for Microsoft Managed Desktop](../get-ready/mapped-drives.md)
- [Prepare certificates and network profiles for Microsoft Managed Desktop](../get-ready/certs-wifi-lan.md)
- [Apps in Microsoft Managed Desktop](../get-ready/apps.md)

**Get started**
Once you're ready to enroll, this section includes the steps to follow to actually join the service, obtain and set up devices, prep your end users, and deploy apps.

- [Add Admin contacts in Microsoft Managed Desktop Admin portal](../get-started/add-admin-contacts.md)
- [Set up Microsoft Managed Desktop devices](../get-started/set-up-devices.md)
- [Deploy apps to Microsoft Managed Desktop devices](../get-started/deploy-apps.md)

**Working with Microsoft Managed Desktop**
This section includes information about your day-to-day life with the service, such as how your IT admins can get support if needed, how your end users get support, managing your apps once deployed, and how to work the customizable settings on devices.

- [Admin support for Microsoft Managed Desktop](../working-with-managed-desktop/admin-support.md)
- [Getting help for end users](../working-with-managed-desktop/end-user-support.md)
- [Configurable settings - Microsoft Managed Desktop](../working-with-managed-desktop/config-setting-overview.md)





<!--When you enroll in Microsoft Managed Desktop, Microsoft provides you with devices that are configured to join your Azure Active Directory tenant. Windows 10, Office 365, and some apps and features associated with [Microsoft 365 Enterprise E5](https://www.microsoft.com/en-us/microsoft-365/compare-all-microsoft-365-plans) are installed (by Microsoft) on your devices. When your employees who are using these devices need help, they contact Microsoft Managed Desktop support (provided by Microsoft) through a custom chat app.--> 

<!--With Microsoft Managed Desktop, you get **software as a service** (Microsoft 365 E5), **Device as a service** (Microsoft Surface devices ready to use), and **IT support as a service** (Help desk and more).--> 
 

