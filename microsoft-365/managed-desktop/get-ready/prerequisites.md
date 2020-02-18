---
title: Prerequisites for Microsoft Managed Desktop
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Prerequisites for Microsoft Managed Desktop

<!--This topic is the target for a "Learn more" link in the Admin Portal (aka.ms/prereq-azure); do not delete.-->
<!--from Prerequisites -->

This topic outlines the infrastructure requirements you must meet to assure success with Microsoft Managed Desktop. 

Microsoft FastTrack is available to help you meet these requirements and help you prepare to participate in Microsoft Managed Desktop. For more information, see [Microsoft FastTrack](https://fasttrack.microsoft.com/about). 

Area | Prerequisite details
--- | ---
Licensing |Microsoft Managed Desktop requires either of the following Microsoft 365 licenses (or equivalents):<br>-Microsoft 365 E5<br>-Microsoft 365 E3 with the Microsoft 365 E5 Security add-on<br><br>For details about the specific service plans and their role in Microsoft Managed Desktop, see [More about licenses](#more-about-licenses) in this topic.<br>For more information on available licenses, see [Microsoft 365 licensing](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans).
Connectivity |	All Microsoft Managed Desktop devices require connectivity to numerous Microsoft service endpoints from the corporate network.<br><br>For the full list of required IPs and URLs, see [Network configuration](../get-ready/network.md). 
Azure Active Directory |	Azure Active Directory (Azure AD) must either be the source of authority for all user accounts, or user accounts must be synchronized from on-premises Active Directory using the latest supported version of Azure AD Connect.<br><br>[Enterprise State Roaming](https://docs.microsoft.com/azure/active-directory/devices/enterprise-state-roaming-overview) must be enabled for Microsoft Managed Desktop users.<br><br>For more information, see [Azure AD Connect](https://docs.microsoft.com/azure/active-directory/hybrid/whatis-azure-ad-connect).<br><br>For more information on supported Azure AD Connect versions, see [Azure AD Connect:Version release history](https://docs.microsoft.com/azure/active-directory/hybrid/reference-connect-version-history).
Authentication |	If Azure AD is not the source of authority for user accounts, you must configure one of these in Azure AD Connect:<br>- Password hash synchronization<br>- Pass-through authentication<br>- Federation with ADFS<br><br>When setting authentication options with Azure AD Connect, password writeback is also recommended. For more information, see [Password writeback](https://docs.microsoft.com/azure/active-directory/authentication/howto-sspr-writeback). <br><br>For more information on authentication options with Azure AD, see [Azure AD Connect user sign-in options](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-user-signin).
Office 365 |	OneDrive for Business must be enabled for Microsoft Managed Desktop users.<br><br>Though it is not required to enroll with Microsoft Managed Desktop, we highly recommended that the following services be migrated to the cloud:<br>- Email: Migrate to cloud-based mailboxes, Exchange online, or configure with Exchange Online Hybrid with Exchange 2013 or higher, on-premises.<br>- Files and folders: Migrate to OneDrive for Business or SharePoint Online.<br>- Online collaboration tools: Migrate to Teams.
Device management | Microsoft Managed Desktop devices require management using Microsoft Intune. Intune must be set as the Mobile Device Management authority.<br><br>For more information, see [Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune). 
Data back-up and recovery |	Microsoft Managed Desktop requires files to be synced to OneDrive for Business for protection. Any files not synced to OneDrive for Business are not guaranteed by Microsoft Managed Desktop and might be lost during device exchanges or support calls requiring a device reset.<br><br>Though not required, Microsoft Managed Desktop strongly recommends migration from mapped network drives to the appropriate cloud solution. For more information, see [Prepare mapped drives for Microsoft Managed Desktop](mapped-drives.md)

When you're ready to get started with Microsoft Managed Desktop, contact your Microsoft Account Manager. 

## More about licenses

Microsoft Managed Desktop requires certain license options in order to function. These options are available in a number of various license bundles, some of which you might already own. This table shows which necessary options are available in which licenses and summarizes their role in Microsoft Managed Desktop.

> [!TIP]
> To assign these license options to specific users, we recommend that you take advantage of the [group-based licensing feature](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal) of Azure Active Directory.



|License option |Available in *any* of these license products |How Microsoft Managed Desktop uses it|
|-------------|-------------|-------------|
|Azure Active Directory Premium P1     |- Microsoft 365 E5<br>- Microsoft 365 E3 + Microsoft 365 *E5* Security Add-on<br>- Enterprise Mobility + Security E5<br>- Enterprise Mobility + Security E3<br>- Azure Active Directory Premium P1|  Provides access to Microsoft Cloud Services; allows AutoPilot to register devices      |
|Microsoft Intune | - Microsoft 365 E5<br>- Microsoft 365 E3 + Microsoft 365 *E5* Security Add-on<br>- Enterprise Mobility + Security E5<br>- Enterprise Mobility + Security E3<br>- Microsoft Intune  |  Necessary to register devices, deploy updates, and manage devices       |
|Windows 10 Enterprise  |- Microsoft 365 E5<br>- Microsoft 365 E3 + Microsoft 365 *E5* Security Add-on<br>- Windows 10 Enterprise E3<br>- Windows 10 Enterprise E5 | Provides enterprise features of Windows 10       |
|Microsoft Defender Advanced Threat Protection | - Microsoft 365 E5<br>- Microsoft 365 E3 + Microsoft 365 *E5* Security Add-on<br>- Windows 10 Enterprise E5<br>- Microsoft Defender Advanced Threat Protection   |  Provides detection, monitoring, alerting and response to threats  |
|Office 365 ProPlus  |- Microsoft 365 E5<br>- Microsoft 365 E3<br>- Office 365 E5<br>- Office 365 E3| Activates Office and productivity and collaboration tools    |

> [!TIP]
> Your Microsoft Account Manager will help you review your current licenses and service plans and find the most efficient path for you to get any additional licenses or service plans you might need, while avoiding duplication.
