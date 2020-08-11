---
title: "Microsoft 365 Client App Support — Conditional Access"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: Office 365 Administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection: 
- Strat_O365_Enterprise
- M365-subscription-management
f1.keywords:
- NOCSH
description: In this article, learn which platforms, clients, and Powershell modules support Conditional Access for Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 Client App Support — Conditional Access

In the modern workplace, users can access your organization's resources using various devices and apps from anywhere. As a result, just focusing on who can access a resource is not sufficient anymore. Your organization must also support how and where a resource is accessed in your access control infrastructure.

With Azure Active Directory (Azure AD) device, location, and multi-factor authentication-based Conditional Access, you can meet this new requirement. Conditional Access is a capability of Azure AD that enables you to enforce controls on the access to apps in your environment, all based on specific conditions and managed from a central location.

Learn more about [Azure AD Conditional Access](https://docs.microsoft.com/azure/active-directory/conditional-access/).

## Supported platforms

 - Windows 10 Desktop
 - Windows 10 Modern Apps
 - Web browsers
 - Android
 - iOS
 - macOS<sup>1</sup>

For more information about platform support in Microsoft 365, see [System requirements for Microsoft 365](https://products.office.com/office-system-requirements).

## Supported clients

The latest versions of the following clients support Conditional Access:

| | | | | | |
|:---:|:---:|:---:|:---:|:---:|:---:|
| ![Azure icon](media/o365-azure-64x64.png) <br> [Azure AD <br> Portal ](https://azure.microsoft.com/features/azure-portal/) | ![Access icon](media/o365-access-64x64.png) <br> [Access](https://products.office.com/access) | ![Company portal icon](media/o365-microsoft-64x64.png) <br> [Company <br> Portal ](https://docs.microsoft.com/intune-user-help/sign-in-to-the-company-portal)  | ![Cortana icon](media/o365-cortana-64x64.png) <br> [Cortana](https://www.microsoft.com/cortana) | ![Delve icon](media/o365-delve-64x64.png) <br> [Delve](https://products.office.com/business/intelligent-search) 
| ![Dynamics 365 icon](media/o365-dynamics365-64x64.png) <br> [Dynamics 365](https://dynamics.microsoft.com) | ![Edge icon](media/o365-edge-64x64.png) <br> [Edge](https://www.microsoft.com/windows/microsoft-edge) | ![Exchange icon](media/o365-exchange-64x64.png) <br> [Exchange](https://products.office.com/exchange/exchange-online) | ![Excel icon](media/o365-excel-64x64.png) <br> [Excel](https://products.office.com/excel) | ![Forms icon](media/o365-forms-64x64.png) <br> [Forms](https://flow.microsoft.com/connectors/shared_microsoftforms/microsoft-forms/) 
| ![Kaizala icon](media/o365-kaizala-64x64.png) <br> [Kaizala](https://products.office.com/en/business/microsoft-kaizala) | ![Office.com icon](media/o365-office-64x64.png) <br> [Office.com](https://www.office.com/) | ![Lens icon](media/o365-lens-64x64.png) <br> [Office Lens](https://www.microsoft.com/p/office-lens/9wzdncrfj3t8?activetab=pivot%3Aoverviewtab) | ![Office 365 Admin icon](media/o365-o365admin-64x64.png) <br> [Microsoft 365 <br> Admin](https://products.office.com/business/manage-office-365-admin-app) | ![OneDrive for Business icon](media/o365-OneDrive-64x64.png) <br> [OneDrive<sup>1</sup>](https://products.office.com/onedrive-for-business/online-cloud-storage) 
| ![OneNote icon](media/o365-OneNote-64x64.png) <br> [OneNote](https://products.office.com/onenote) | ![Outlook icon](media/o365-outlook-64x64.png) <br> [Outlook](https://products.office.com/outlook) | ![Planner icon](media/o365-planner-64x64.png) <br> [Planner](https://products.office.com/business/task-management-software) | ![PowerApps icon](media/o365-powerapps-64x64.png) <br> [PowerApps](https://powerapps.microsoft.com) | ![Power Automate icon](media/o365-flow-64x64.png) <br> [Power <br> Automate](https://flow.microsoft.com)
| ![PowerBI icon](media/o365-powerbi-64x64.png) <br> [Power BI](https://powerbi.microsoft.com) | ![PowerPoint icon](media/o365-powerpoint-64x64.png) <br> [PowerPoint](https://products.office.com/powerpoint) | ![Project icon](media/o365-project-64x64.png) <br> [Project](https://products.office.com/project) | ![Publisher icon](media/o365-publisher-64x64.png) <br> [Publisher](https://products.office.com/publisher) | ![SharePoint icon](media/o365-sharepoint-64x64.png) <br> [Sharepoint](https://products.office.com/sharepoint) 
| ![Skype for Business icon](media/o365-skypeforbusiness-64x64.png) <br> [Skype for <br> Business](https://www.skype.com/business/) | ![Sticky Notes icon](media/o365-stickynotes-64x64.png) <br> [Sticky Notes](https://www.microsoft.com/p/microsoft-sticky-notes/9nblggh4qghw) | ![Stream icon](media/o365-stream-64x64.png) <br> [Stream](https://stream.microsoft.com) | ![Sway icon](media/o365-sway-64x64.png) <br> [Sway](https://sway.com) | ![Teams icon](media/o365-teams-64x64.png) <br> [Teams](https://products.office.com/microsoft-teams/group-chat-software) 
| ![To Do icon](media/o365-todo-64x64.png) <br> [To Do](https://todo.microsoft.com) | ![Visio icon](media/o365-visio-64x64.png) <br> [Visio](https://products.office.com/visio/flowchart-software) | ![Word icon](media/o365-word-64x64.png) <br> [Word](https://products.office.com/word) | ![Yammer icon](media/o365-yammer-64x64.png) <br> [Yammer](https://products.office.com/yammer/yammer-overview)

## Supported PowerShell modules

| | | | | | |
|:---:|:---:|:---:|:---:|:---:|:---:|
| ![Azure icon](media/o365-azure-64x64.png) <br> [Azure AD <br> PowerShell](https://docs.microsoft.com/powershell/azure/active-directory/overview?view=azureadps-2.0) | ![Exchange icon](media/o365-exchange-64x64.png) <br> [Exchange Online <br> PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/exchange-online-powershell?view=exchange-ps) | ![SharePoint icon](media/o365-sharepoint-64x64.png) <br> [SharePoint Online <br> PowerShell](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online)

> [!NOTE]
> <sup>1</sup> Support for OneDrive on macOS available soon.

## See also

[Microsoft 365 Enterprise overview](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview)
