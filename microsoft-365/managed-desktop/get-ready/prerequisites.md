---
title: Prerequisites for Microsoft Managed Desktop
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: trudyha
ms.localizationpriority: normal
ms.date: 11/1/2018
---

# Prerequisites for Microsoft Managed Desktop

<!--This topic is the target for a "Learn more" link in the Admin Portal (aka.ms/prereq-azure); do not delete.-->
<!--from Prerequisites -->

Success with Microsoft Managed Desktop begins with well-known, documented, and agreed-upon requirements for the customer's infrastructure. This section outlines those infastructure requirements. 

Microsoft FastTrack is available to help customers meet these requirements and help you prepare to participate in Modern Workplace as a Service. For more information, see [Microsoft FastTrack](https://fasttrack.microsoft.com/about). 

Area | Prerequisite details
--- | ---
Licensing | A Microsoft 365 E3 license with Identity & Threat Protection (or equivalent licenses) is required.<br><br>This license includes Office 365 E3, Windows 10 Enterprise E3 & Enterprise Mobility + Security (EMS) E3. For more information, see [Microsoft 365 licensing](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans).
Connectivity |	All Microsoft Managed Desktop devices require connectivity to numerous Microsoft service endpoints from the corporate network.<br><br>For the full list of required IPs and URLs, see [Network configuration](../get-ready/network.md). 
Azure Active Directory |	Azure Active Directory (Azure AD) must either be the source of authority for all user accounts, or user accounts must be synchronized from on-premises Active Directory using the latest supported version of Azure AD Connect.<br><br>For more information on Azure AD Connect, see [Azure AD Connect](https://docs.microsoft.com/azure/active-directory/hybrid/whatis-azure-ad-connect).<br><br>For more information on supported Azure AD Connect versions, see [Azure AD Connect:Version release history](https://docs.microsoft.com/azure/active-directory/hybrid/reference-connect-version-history).
Authentication |	If Azure AD is not the source of authority for user accounts, you must configure one of these in Azure AD Connect:<br>- Password hash synchronization<br>- Pass-through authentication<br>- Federation with ADFS<br><br>When setting authentication options with Azure AD Connect, password writeback is also required. For more information, see [Password writeback](https://docs.microsoft.com/azure/active-directory/authentication/howto-sspr-writeback). <br><br>For more information on Authentication options with Azure AD, see [Azure AD Connect user sign-in options](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-user-signin).
Office 365 |	Though it is not required to enroll with Microsoft Managed Desktop, it is highly recommended that the following services be migrated to the cloud:<br>- Email - Migrate to cloud-based mailboxes, Exchange online, or be configured with Exchange Online Hybrid with Exchange 2013 or higher, on-premises.<br>- Files and folders – Migrate to OneDrive for Business/SharePoint Online.<br>- Online collaboration tools – Migrate to Teams.
Device management | Microsoft Managed Desktop devices require management using Microsoft Intune. Intune must be set as the Mobile Device Management authority.<br><br>For more information, see [Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune). 
Data back-up and recovery |	Microsoft Managed Desktop requires files to be synced to OneDrive for Business for protection. Any files not synced to OneDrive for Business are not guaranteed by Microsoft Managed Desktop and may be lost during device exchanges, or support calls requiring a device reset.<br><br>Though not required, Microsoft Managed Desktop strongly recommends migration from mapped network drives to the appropriate cloud solution.  

When you're ready to get started with Microsoft Managed Desktop, contact your Microsoft Account Manager. 
