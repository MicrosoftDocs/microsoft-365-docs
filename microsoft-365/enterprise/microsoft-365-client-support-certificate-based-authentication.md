---
title: "Microsoft 365 Client App Support — Certificate-based Authentication"
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
description: In this article, find details about Microsoft 365 Client App support for certificate-based authentication..
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 Client App Support — Certificate-based Authentication

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Certificate-based authentication enables you to authenticate to Azure Active Directory with a client certificate on Windows, Android, or iOS devices. Configuring this feature eliminates the need to enter a username and password combination into certain mail and Microsoft Office applications on your mobile device.

Learn more about [certificate-based authentication](https://docs.microsoft.com/azure/active-directory/authentication/active-directory-certificate-based-authentication-get-started).

## Supported platforms

 - Windows 10 Desktop<sup>2</sup>
 - Windows 10 Modern Apps
 - Web browsers<sup>3</sup>
 - Android<sup>4</sup>
 - iOS
 - macOS<sup>1</sup> <sup>2</sup>

For more information about platform support in Microsoft 365, see [System requirements for Microsoft 365](https://products.office.com/office-system-requirements).

## Supported clients

The latest versions of the following clients support certificate-based authentication:

| | | | | | |
|:---:|:---:|:---:|:---:|:---:|:---:|
| ![Access icon](../media/o365-access-64x64.png) <br> [Access](https://products.office.com/access) | ![Azure icon](../media/o365-azure-64x64.png) <br> [Azure AD <br> Portal ](https://azure.microsoft.com/features/azure-portal/) | ![Company portal icon](../media/o365-microsoft-64x64.png) <br> [Company <br> Portal ](https://docs.microsoft.com/intune-user-help/sign-in-to-the-company-portal) | ![Delve icon](../media/o365-delve-64x64.png) <br> [Delve](https://products.office.com/business/intelligent-search) | ![Dynamics 365 icon](../media/o365-dynamics365-64x64.png) <br> [Dynamics 365](https://dynamics.microsoft.com) 
| ![Edge icon](../media/o365-edge-64x64.png) <br> [Edge](https://www.microsoft.com/windows/microsoft-edge) | ![Excel icon](../media/o365-excel-64x64.png) <br> [Excel](https://products.office.com/excel) | ![Forms icon](../media/o365-forms-64x64.png) <br> [Forms](https://flow.microsoft.com/connectors/shared_microsoftforms/microsoft-forms/) | ![Kaizala icon](../media/o365-kaizala-64x64.png) <br> [Kaizala](https://products.office.com/en/business/microsoft-kaizala) | ![Office.com icon](../media/o365-office-64x64.png) <br> [Office.com](https://www.office.com/) 
| ![Office 365 Admin icon](../media/o365-o365admin-64x64.png) <br> [Microsoft 365 <br> Admin](https://products.office.com/business/manage-office-365-admin-app) | ![Lens icon](../media/o365-lens-64x64.png) <br> [Office Lens](https://www.microsoft.com/p/office-lens/9wzdncrfj3t8?activetab=pivot%3Aoverviewtab) | ![OneDrive for Business icon](../media/o365-OneDrive-64x64.png) <br> [OneDrive<sup>1</sup>](https://products.office.com/onedrive-for-business/online-cloud-storage) |  ![OneNote icon](../media/o365-OneNote-64x64.png) <br> [OneNote](https://products.office.com/onenote) | ![Outlook icon](../media/o365-outlook-64x64.png) <br> [Outlook](https://products.office.com/outlook) 
| ![Planner icon](../media/o365-planner-64x64.png) <br> [Planner](https://products.office.com/business/task-management-software) | ![PowerApps icon](../media/o365-powerapps-64x64.png) <br> [PowerApps<sup>3</sup>](https://powerapps.microsoft.com) | ![Power Automate icon](../media/o365-flow-64x64.png) <br> [Power <br> Automate](https://flow.microsoft.com) | ![PowerBI icon](../media/o365-powerbi-64x64.png) <br> [Power BI](https://powerbi.microsoft.com)| ![PowerPoint icon](../media/o365-powerpoint-64x64.png) <br> [PowerPoint](https://products.office.com/powerpoint) 
| ![Project icon](../media/o365-project-64x64.png) <br> [Project](https://products.office.com/project) | ![Publisher icon](../media/o365-publisher-64x64.png) <br> [Publisher](https://products.office.com/publisher) | ![SharePoint icon](../media/o365-sharepoint-64x64.png) <br> [Sharepoint](https://products.office.com/sharepoint) | ![Skype for Business icon](../media/o365-skypeforbusiness-64x64.png) <br> [Skype for <br> Business](https://www.skype.com/business/) | ![Sticky Notes icon](../media/o365-stickynotes-64x64.png) <br> [Sticky Notes](https://www.microsoft.com/p/microsoft-sticky-notes/9nblggh4qghw) 
| ![Stream icon](../media/o365-stream-64x64.png) <br> [Stream](https://stream.microsoft.com) | ![Sway icon](../media/o365-sway-64x64.png) <br> [Sway](https://sway.com) | ![Teams icon](../media/o365-teams-64x64.png) <br> [Teams<sup>2</sup>](https://products.office.com/microsoft-teams/group-chat-software) | ![To Do icon](../media/o365-todo-64x64.png) <br> [To Do](https://todo.microsoft.com) | ![Visio icon](../media/o365-visio-64x64.png) <br> [Visio](https://products.office.com/visio/flowchart-software) 
| ![Whiteboard icon](../media/o365-whiteboard-64x64.png) <br> [Whiteboard<sup>3</sup>,<sup>4</sup>](https://whiteboard.microsoft.com/) | ![Word icon](../media/o365-word-64x64.png) <br> [Word](https://products.office.com/word) | ![Yammer icon](../media/o365-yammer-64x64.png) <br> [Yammer<sup>2</sup>](https://products.office.com/yammer/yammer-overview) |

## Supported PowerShell modules

| | | | | | |
|:---:|:---:|:---:|:---:|:---:|:---:|
| ![Azure icon](../media/o365-azure-64x64.png) <br> [Azure AD <br> PowerShell](https://docs.microsoft.com/powershell/azure/active-directory/overview?view=azureadps-2.0) | ![Exchange icon](../media/o365-exchange-64x64.png) <br> [Exchange Online <br> PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online-powershell) | ![SharePoint icon](../media/o365-sharepoint-64x64.png) <br> [SharePoint Online <br> PowerShell](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online)

> [!NOTE]
> <sup>1</sup> Support for OneDrive on macOS available soon. <br>
> <sup>2</sup> Support for Yammer on Windows Desktop and macOS available soon. Support for Teams on Windows Desktop available soon.<br>
> <sup>3</sup> Support for PowerApps and Whiteboard on web apps available soon. <br>
> <sup>4</sup> Support for Whiteboard on Android available soon.

## See also

[Microsoft 365 Enterprise overview](microsoft-365-overview.md)
