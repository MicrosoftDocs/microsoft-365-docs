---
title: Prerequisites for Microsoft Managed Desktop
description: Licenses, Azure accounts, authentication settings, and Microsoft 365 settings to set up before enrolling in Microsoft Managed Desktop
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
audience: Admin
---

# Prerequisites for Microsoft Managed Desktop

<!--This topic is the target for a "Learn more" link in the Admin Portal (aka.ms/prereq-azure); do not delete.-->
<!--from Prerequisites -->

This topic outlines the infrastructure requirements you must meet to assure success with Microsoft Managed Desktop. 


Area | Prerequisite details
--- | ---
Licensing |Microsoft Managed Desktop requires the Microsoft 365 E3 license with Microsoft Defender for Endpoint (or equivalents) assigned to your users.<br>For details about the specific service plans, see [More about licenses](#more-about-licenses) in this topic.<br>For more information on available licenses, see [Microsoft 365 licensing](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans).
Connectivity |	All Microsoft Managed Desktop devices require connectivity to numerous Microsoft service endpoints from the corporate network.<br><br>For the full list of required IPs and URLs, see [Network configuration](../get-ready/network.md). 
Azure Active Directory |	Azure Active Directory (Azure AD) must either be the source of authority for all user accounts, or user accounts must be synchronized from on-premises Active Directory using the latest supported version of Azure AD Connect.<br><br>[Enterprise State Roaming](/azure/active-directory/devices/enterprise-state-roaming-overview) must be enabled for Microsoft Managed Desktop users.<br><br>For more information, see [Azure AD Connect](/azure/active-directory/hybrid/whatis-azure-ad-connect).<br><br>For more information on supported Azure AD Connect versions, see [Azure AD Connect:Version release history](/azure/active-directory/hybrid/reference-connect-version-history).
Authentication |	If Azure AD is not the source of primary authentication for user accounts, you must configure one of these in Azure AD Connect:<br>- Password hash synchronization<br>- Pass-through authentication<br>- An external identity provider (including Windows Server ADFS and non-Microsoft IDPs) configured to meet Azure AD integration requirements. See the [guidelines](https://www.microsoft.com/download/details.aspx?id=56843) for more information. <br><br>When setting authentication options with Azure AD Connect, password writeback is also recommended. For more information, see [Password writeback](/azure/active-directory/authentication/howto-sspr-writeback). <br><br>If an external identity provider is implemented, you must validate the solution:<br>- Meets Azure AD integration requirements<br>- Supports Azure AD Conditional Access, which allows the Microsoft Managed Desktop device compliance policy to be configured<br>- Enables device enrollment and use of Microsoft 365 services or features required as part of Microsoft Managed Desktop <br><br>For more information on authentication options with Azure AD, see [Azure AD Connect user sign-in options](/azure/active-directory/connect/active-directory-aadconnect-user-signin).
Microsoft 365 |	OneDrive for Business must be enabled for Microsoft Managed Desktop users.<br><br>Though it is not required to enroll with Microsoft Managed Desktop, we highly recommended that the following services be migrated to the cloud:<br>- Email: Migrate to cloud-based mailboxes, Exchange online, or configure with Exchange Online Hybrid with Exchange 2013 or higher, on-premises.<br>- Files and folders: Migrate to OneDrive for Business or SharePoint Online.<br>- Online collaboration tools: Migrate to Teams.
Device management | Microsoft Managed Desktop devices require management using Microsoft Intune. Intune must be set as the Mobile Device Management authority.<br><br>For more information, see [Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune). 
Data backup and recovery |	Microsoft Managed Desktop requires files to be synced to OneDrive for Business for protection. Any files not synced to OneDrive for Business are not guaranteed by Microsoft Managed Desktop and might be lost during device exchanges or support calls requiring a device reset.<br><br>Though not required, Microsoft Managed Desktop strongly recommends migration from mapped network drives to the appropriate cloud solution. For more information, see [Prepare mapped drives for Microsoft Managed Desktop](mapped-drives.md)

When you're ready to get started with Microsoft Managed Desktop, contact your Microsoft Account Manager. 

## More about licenses

Microsoft Managed Desktop requires certain license options in order to function. See [Microsoft Managed Desktop technologies](../intro/technologies.md) for information about how these licenses are used.

> [!TIP]
> To assign these license options to specific users, we recommend that you take advantage of the [group-based licensing feature](/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal) of Azure Active Directory.

- Azure Active Directory Premium P1
- Microsoft Intune 
- Windows 10 Enterprise  
- Microsoft Defender for Endpoint
- Microsoft 365 Apps for enterprise
- Microsoft Teams
- [SharePoint Online Plan 2](https://www.microsoft.com/microsoft-365/sharepoint/compare-sharepoint-plans)
- [Exchange Online Plan 2](https://www.microsoft.com/microsoft-365/exchange/compare-microsoft-exchange-online-plans) 


> [!TIP]
> Your Microsoft Account Manager will help you review your current licenses and service plans and find the most efficient path for you to get any additional licenses or service plans you might need, while avoiding duplication.

## Steps to get ready

1. Review [Prerequisites for Microsoft Managed Desktop](prerequisites.md). (This article)
2. Use [Readiness assessment tools](readiness-assessment-tool.md).
3. [Prerequisites for guest accounts](guest-accounts.md)
4. [Network configuration for Microsoft Managed Desktop](network.md)
5. [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md)
6. [Prepare on-premises resources access for Microsoft Managed Desktop](authentication.md)
7. [Apps in Microsoft Managed Desktop](apps.md)
8. [Prepare mapped drives for Microsoft Managed Desktop](mapped-drives.md)
9. [Prepare printing resources for Microsoft Managed Desktop](printing.md)
