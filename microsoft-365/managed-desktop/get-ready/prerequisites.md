---
title: Prerequisites for Microsoft Managed Desktop
description: Licenses, Azure accounts, authentication settings, and Microsoft 365 settings to set up before enrolling in Microsoft Managed Desktop
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
audience: Admin
---

# Prerequisites for Microsoft Managed Desktop

<!--This topic is the target for a "Learn more" link in the Admin Portal (aka.ms/prereq-azure). DO NOT DELETE.-->
<!--from Prerequisites -->

This article outlines the infrastructure requirements you must meet to assure success with Microsoft Managed Desktop.

| Area | Prerequisite details |
| ----- | ----- |
| Licensing | Microsoft Managed Desktop requires the Microsoft 365 E3 license with Microsoft Defender for Endpoint (or equivalents) assigned to your users. <ul><li>For details about the specific service plans, see [More about licenses](#more-about-licenses).</li><li> For more information on available licenses, see [Microsoft 365 licensing](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans).</li></ul>
| Connectivity | All Microsoft Managed Desktop devices require connectivity to numerous Microsoft service endpoints from the corporate network.<br><br> For the full list of required IPs and URLs, see [Network configuration](../get-ready/network.md).
| Azure Active Directory | Azure Active Directory (Azure AD) must either be the source of authority for all user accounts, or user accounts must be synchronized from on-premises Active Directory using the latest supported version of Azure AD Connect. <ul><li>For more information, see [Azure AD Connect](/azure/active-directory/hybrid/whatis-azure-ad-connect).</li><li> For more information on supported Azure AD Connect versions, see [Azure AD Connect:Version release history](/azure/active-directory/hybrid/reference-connect-version-history).</li></ul>
| Authentication | If Azure AD isn't the source of primary authentication for user accounts, you must configure one of the following authentication methods in Azure AD Connect:<ul><li> Password hash synchronization.</li> <li> Pass-through authentication.</li><li>An external identity provider (including Windows Server ADFS and non-Microsoft IDPs) configured to meet Azure AD integration requirements. For more information, see the [guidelines](https://www.microsoft.com/download/details.aspx?id=56843).</li></ul> <br> When setting authentication options with Azure AD Connect, password writeback is also recommended. For more information, see [Password writeback](/azure/active-directory/authentication/howto-sspr-writeback). <br><br> If an external identity provider is implemented, you must validate the solution:<ul><li>Meets Azure AD integration requirements.</li><li>Supports Azure AD Conditional Access, which allows the Microsoft Managed Desktop device compliance policy to be configured.</li><li>Enables device enrollment, use of Microsoft 365 services, or features required as part of Microsoft Managed Desktop.</li></ul> <br>For more information on authentication options with Azure AD, see [Azure AD Connect user sign in options](/azure/active-directory/connect/active-directory-aadconnect-user-signin).
| Microsoft 365 | OneDrive for Business must be enabled for Microsoft Managed Desktop users.<br><br>Though it isn't required to enroll with Microsoft Managed Desktop, we highly recommended that the following services be migrated to the cloud:<ul><li>Email: Migrate to cloud-based mailboxes, Exchange online, or configure with Exchange Online Hybrid with Exchange 2013 or higher, on-premises.</li><li>Files and folders: Migrate to OneDrive for Business or SharePoint Online.</li><li>Online collaboration tools: Migrate to Teams.</ul> |
| Device management | Microsoft Managed Desktop devices require management using Microsoft Intune. Intune must be set as the Mobile Device Management authority.<br><br> For more information, see [Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune).
| Data backup and recovery | Microsoft Managed Desktop requires files to be synced to OneDrive for Business for protection. Any files not synced to OneDrive for Business aren't guaranteed by Microsoft Managed Desktop. The files might be lost during device exchanges or support calls requiring a device reset.<br><br>Though not required, Microsoft Managed Desktop strongly recommends migration from mapped network drives to the appropriate cloud solution. For more information, see [Prepare mapped drives for Microsoft Managed Desktop](mapped-drives.md)

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
> Your Microsoft Account Manager will help you review your current licenses, service plans, and find the most efficient path for you to get any additional licenses or service plans you might need, while avoiding duplication.

## Steps to get ready for Microsoft Managed Desktop

1. Review prerequisites (this article).
1. Run [readiness assessment tools](readiness-assessment-tool.md).
1. Buy [Company Portal](../get-started/company-portal.md).
1. Review [prerequisites for guest accounts](guest-accounts.md).
1. Check [network configuration](network.md).
1. [Prepare certificates and network profiles](certs-wifi-lan.md).
1. [Prepare user access to data](authentication.md).
1. [Prepare apps](apps.md).
1. [Prepare mapped drives](mapped-drives.md).
1. [Prepare printing resources](printing.md).
1. Address [device names](address-device-names.md).
