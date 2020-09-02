---
title: "Microsoft 365 Client App Support — Single Sign-On"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: Office 365 Administration
localization_priority: Normal
ms.collection: 
- Strat_O365_Enterprise
- M365-subscription-management
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: In this article, learn which platforms, clients, and Powershell modules support single sign-on for Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 Client App Support: Single Sign-On

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Single sign-on (SSO) adds security and convenience when your users sign on to applications in Azure Active Directory (Azure AD). With single sign-on, users sign in once with one account to access domain-joined devices, company resources, software as a service (SaaS) applications, and web applications.

Learn more about [single sign-on](https://docs.microsoft.com/azure/active-directory/manage-apps/what-is-single-sign-on).

## Supported clients & platforms

The latest versions of the following clients and platforms support single sign-on. For more information about platform support in Microsoft 365, see [System requirements for Microsoft 365](https://products.office.com/office-system-requirements).

| Clients | Windows 10 <br> Desktop | Windows 10 <br> Modern Apps | Web browsers | Android | iOS | macOS |
|:---|:---:|:---:|:---:|:---:|:---:|:---:|
| Access | ![Supported](../media/check-mark.png) |  | ![Supported](../media/check-mark.png) |  | ![Supported](../media/check-mark.png) |  |
| Company portal |  | ![Supported](../media/check-mark.png) |  | ![Supported](../media/check-mark.png) |  | ![Supported](../media/check-mark.png) |
| Delve | ![Supported](../media/check-mark.png) |  | ![Supported](../media/check-mark.png)|  | ![Supported](../media/check-mark.png) |  |
| Edge |  | Y |  | Y |  | Y |
| Excel | Y |  | Y |  | Y |  |
| Kaizala |  | Y | Y<sup>1</sup> | Y |  | Y |
| Office portal| Y |  | Y |  | Y |  |
| Office Lens |  | Y |  | Y |  | Y |
| OneDrive |  | Y |  | Y |  | Y |
| OneNote | Y |  | Y |  | Y |  |
| Outlook |  | Y |  | Y |  | Y |
| Power Automate | Y |  | Y |  | Y |  |
| Power BI |  | Y |  | Y |  | Y |
| PowerPoint |  | Y |  | Y |  | Y |
| Project | Y |  | Y |  | Y |  |
| Publisher |  | Y |  | Y |  | Y |
| SharePoint | Y |  | Y |  | Y |  |
| Sticky Notes |  | Y |  | Y |  | Y |
| Sway | Y |  | Y |  | Y |  |
| Teams |  | Y |  | Y |  | Y |
| To Do |  | Y |  | Y |  | Y |
| Visio | Y |  | Y |  | Y |  |
| Whiteboard |  | Y |  | Y |  | Y |
| Word | Y |  | Y |  | Y |  |
| Yammer |  | Y |  | Y |  | Y |

## Supported PowerShell modules

| | | | | | |
|:---:|:---:|:---:|:---:|:---:|:---:|
| ![Azure icon](../media/o365-azure-64x64.png) <br> [Azure AD <br> PowerShell](https://docs.microsoft.com/powershell/azure/active-directory/overview?view=azureadps-2.0) | ![Exchange icon](../media/o365-exchange-64x64.png) <br> [Exchange Online <br> PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/exchange-online-powershell?view=exchange-ps) | ![SharePoint icon](../media/o365-sharepoint-64x64.png) <br> [SharePoint Online <br> PowerShell](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online)

> [!NOTE]
> <sup>1</sup> Support for Edge and Kaizala on iOS available soon. <br>
> <sup>2</sup> Support for OneNote, PowerBI, Teams, and Yammer on Windows 10 Desktop available soon. <br>
> <sup>3</sup> Support for Whiteboard on Android available soon. <br>
> <sup>4</sup> Support for Outlook, Teams, and Company Portal on macOS available soon. <br>

## See also

[Microsoft 365 Enterprise overview](microsoft-365-overview.md)
