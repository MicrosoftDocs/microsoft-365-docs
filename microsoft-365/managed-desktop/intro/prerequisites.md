---
title: Prerequisites for Microsoft Managed Desktop
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jdeckerms
ms.localizationpriority: normal
ms.date: 09/24/2018
---

# Prerequisites for Microsoft Managed Desktop

<!--This topic is the target for a "Learn more" link in the Admin Portal (aka.ms/prereq-azure); do not delete.-->
<!--from Prerequisites -->

Success with Microsoft Managed Desktop begins with well-known, documented, and agreed-upon requirements for the customer's infrastructure. This section outlines those prerequisites. 

Microsoft FastTrack is available to help customers meet these requirements and help you prepare to participate in Modern Workplace as a Service. For more information, see [Microsoft FastTrack](https://fasttrack.microsoft.com/about). 

Area | Prerequisite details
--- | ---
Licensing | A Microsoft 365 E5 license or equivalent licenses are required.<br><br>This license includes Office 365 E5, Windows 10 Enterprise E5 & Enterprise Mobility + Security (EMS) E5. For more information, see [Microsoft 365 licensing](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans).
Connectivity |	All Microsoft Managed Desktop devices require connectivity to numerous Microsoft service endpoints  from the internal organizational network, including:<br>- Windows Update<br>- Microsoft Store for Business<br>- Azure Active Directory<br>- Windows Error Reporting<br>- Online Crash Analysis<br>- Connected User Experience and Telemetry<br>- OneDrive app for Windows 10<br><br>The full list of required IP’s and URLs can be found in [Proxy Configuration](../get-ready/network.md). 
Azure Active Directory |	Azure Active Directory (Azure AD) must either be the source of authority for all user accounts, or user accounts must be synchronized from on-premises Active Directory using Azure AD Connect, version 1.1.654.0 or later. For more information, see [Azure AD Connect](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect).
Authentication |	If Azure AD is not the source of authority for user accounts, you must configure one of these in Azure AD Connect:<br>- Password Hash Synchronization (recommended)<br>- Pass-Through Authentication<br>- Federation with ADFS<br><br>When setting authentication options with Azure AD Connect Password writeback is also required. For more information, see [Password writeback](https://docs.microsoft.com/azure/active-directory/authentication/howto-sspr-writeback). <br><br>For more information on Authentication options with Azure AD, see [Azure AD Connect user sign-in options](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-user-signin).
Office 365 |	It is highly recommended that the following services be migrated to the cloud:<br>- Email - Migrate to cloud-based mailboxes, Exchange online or be configured with Exchange Online Hybrid with Exchange 2013 or higher, on-premises.<br>- Files & Folders – Migrate to SharePoint Online/Office 365.<br>- Skype for Business  – Migrate to Skype for Business Online.<br>- Device management - Microsoft Intune	A cloud-only MDM solution (non-hybrid) is required, which allows IT admins to manage Microsoft Managed Desktop devices using a web console that can be accessed from anywhere in the world. Microsoft Intune is the required MDM solution.<br><br>For more information, see [Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune). 
Data back-up and recovery |	Microsoft Managed Desktop requires files to be synced to OneDrive for Business for protection. Any files not synced to OneDrive for Business are not guaranteed by Microsoft Managed Desktop and may be lost during device exchanges, or support calls requiring a device reset.  

[Learn how to meet the prerequisites for Microsoft Managed Desktop enrollment.](../get-ready/index.md)

When you're ready to get started with Microsoft Managed Desktop, contact your Microsoft Account Manager. 