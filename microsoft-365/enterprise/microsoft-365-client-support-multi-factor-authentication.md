---
title: "Microsoft 365 Client App Support: Multi-factor authentication"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Strat_O365_Enterprise
- M365-subscription-management
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: In this article, learn which platforms, clients, and PowerShell modules support multi-factor authentication for Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 Client App Support: Multi-factor authentication

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

To provide an additional level of security for sign-ins, clients may be configured to use multi-factor authentication (MFA), which uses both a user password and an additional user verification method based on:

- Something  in their possession that is not easily duplicated, such as a smart phone.
- Something the user has uniquely and biologically, such as their fingerprints, face, or other biometric attribute

Learn more about [multi-factor authentication](/azure/active-directory/authentication/multi-factor-authentication).

## Supported clients & platforms

The latest versions of the following clients and platforms support multi-factor authentication. For more information about platform support in Microsoft 365, see [System requirements for Microsoft 365](/microsoft-365/microsoft-365-and-office-resources).
<br>
<br>

| Clients | Android | iOS | Mac| Windows 10 <br> Modern Apps| Windows 10 <br> Desktop |
|:---|:---:|:---:|:---:|:---:|:---:|
| Azure Active Directory Admin | N/A | N/A | N/A | N/A | ![Supported](../media/check-mark.png) |
| Access | N/A | N/A | N/A | N/A | ![Supported](../media/check-mark.png) |
| Azure Admin | N/A | N/A | N/A | N/A | N/A |
| Company portal | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A |
| Cortana | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | ![Supported](../media/check-mark.png) | N/A |
| Delve | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | N/A | N/A |
| Edge | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | N/A | ![Supported](../media/check-mark.png) |
| Excel | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) |
| Exchange Online Admin | N/A | N/A | N/A | N/A | ![Supported](../media/check-mark.png) |
| Forms | N/A | N/A | N/A | N/A | N/A |
| Office 365 Admin | N/A | N/A | N/A | N/A | ![Supported](../media/check-mark.png) |  |
| Kaizala | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | N/A | N/A |
| Office Lens| ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | ![Supported](../media/check-mark.png) | N/A |
| Office mobile | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | N/A | N/A |
| Office portal | N/A | N/A | N/A | ![Supported](../media/check-mark.png) | N/A |
| OneDrive | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) |
| OneNote | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) |
| Outlook | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) |
| Planner | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | N/A | N/A |
| Power Apps | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | ![Supported](../media/check-mark.png) | N/A |
| Power Automate | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | N/A | N/A |
| Power BI | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) |
| PowerPoint | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) |
| Project | N/A | N/A | N/A | N/A | ![Supported](../media/check-mark.png) |
| Publisher | N/A | N/A | N/A | N/A | ![Supported](../media/check-mark.png) |
| Skype for Business | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | ![Supported](../media/check-mark.png) |
| Skype for Business Admin | N/A | N/A | N/A | N/A | ![Supported](../media/check-mark.png) |
| SharePoint | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | N/A | N/A |
| SharePoint Online Admin | N/A | N/A | N/A | N/A | ![Supported](../media/check-mark.png) |
| Sticky Notes | N/A | N/A | N/A | ![Supported](../media/check-mark.png) | N/A |
| Stream | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | N/A | N/A |
| Sway | N/A | N/A | N/A | ![Supported](../media/check-mark.png) | N/A |
| Teams | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | ![Supported](../media/check-mark.png) |
| To Do | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A |
| Visio | N/A | ![Supported](../media/check-mark.png) | N/A | N/A | ![Supported](../media/check-mark.png) |
| Whiteboard | Planned | ![Supported](../media/check-mark.png) | N/A | ![Supported](../media/check-mark.png) | N/A |
| Word | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) |
| Workplace analysis | N/A | N/A | N/A | N/A | N/A |
| Yammer | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | ![Supported](../media/check-mark.png) | N/A | ![Supported](../media/check-mark.png) |

## Supported PowerShell modules

- [Azure Active Directory PowerShell](/powershell/azure/active-directory/overview?view=azureadps-2.0)
- [Exchange Online PowerShell](/powershell/exchange/exchange-online-powershell)
- [SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online)