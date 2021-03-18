---
title: "Azure integration with Microsoft 365"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: overview
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Ent_O365
- M365-identity-device-management
f1.keywords:
- CSH
ms.custom: 
- Adm_O365
- seo-marvel-apr2020
search.appverid:
- MET150
- MOE150
- MED150
- BCS160
ms.assetid: a5efce5d-9c9c-4190-b61b-fd273c1d425f
description: Integrate Microsoft 365 with Azure AD if you want password sync or single sign-on with your on-premises environment.
---

# Azure integration with Microsoft 365

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Microsoft 365 uses Azure Active Directory (Azure AD) to manage user identities behind the scenes. Your Microsoft 365 subscription includes a free Azure AD subscription so that you can integrate your on-premises Active Directory Domain Services (AD DS) to synchronize user accounts and passwords or set up single sign-on. You can also purchase advanced features to better manage your accounts.
  
Azure AD also offers other functionality, like managing integrated apps, that you can use to extend and customize your Microsoft 365 subscriptions.
  
You can use the Azure AD deployment advisors for a guided setup and configuration experience in the Microsoft 365 admin center (you must be signed in to Microsoft 365):

 - [Azure AD Connect advisor](https://aka.ms/aadconnectpwsync)
 - [AD FS deployment advisor](https://aka.ms/adfsguidance)
 - [Azure AD setup guide](https://aka.ms/aadpguidance)
  
## Azure AD editions and Microsoft 365 identity management

If you have a paid subscription to Microsoft 365, you also have a free Azure AD subscription. You can use Azure AD to create and manage user and group accounts. To activate this subscription, you have to complete a one-time registration. Afterward, you can access Azure AD from your Microsoft 365 admin center. 

For instructions to register your free Azure AD subscription, see [use your free Azure AD subscription](../compliance/use-your-free-azure-ad-subscription-in-office-365.md). Don't go directly to azure.microsoft.com to sign up or you'll end up with a trial or paid subscription to Microsoft Azure that is separate from your free Azure AD subscription with Microsoft 365. 
  
With the free subscription you can synchronize with on-premises directories, set up single sign-on, and synchronize with many software as service applications, such as Salesforce, DropBox, and many more.
  
If you want enhanced AD DS functionality, bi-directional synchronization, and other management capabilities, you can upgrade your free subscription to a paid premium subscription. For the details, see [Azure Active Directory editions](https://azure.microsoft.com/pricing/details/active-directory/).
  
For more information about Microsoft 365 and Azure AD, see [Microsoft 365 identity models](about-microsoft-365-identity.md).
  
## Extend the capabilities of your Microsoft 365 tenant

|**Feature**|**Description**|
|:-----|:-----|
|Integrated apps  <br/> |You can grant individual apps access to your Microsoft 365 data, such as mail, calendars, contacts, users, groups, files, and folders. You can also authorize these apps at global admin level and make them available to your entire company by registering the apps in Azure AD. Formore information, see [Integrated Apps and Azure AD for Microsoft 365 administrators](integrated-apps-and-azure-ads.md).  <br/> Also see [Single sign-on](/azure/active-directory/manage-apps/what-is-single-sign-on).  <br/> |
|PowerApps  <br/> | Power apps are focused apps for mobile devices that can connect to your existing data sources like SharePoint lists and other data apps. See [Create a PowerApp for a list in SharePoint Online](https://support.office.com/article/9338b2d2-67ac-4b81-8e67-97da27e5e9ab) and the [PowerApps page](https://powerapps.microsoft.com/) for details.  <br/> |
   
## See also

[Microsoft 365 Enterprise overview](microsoft-365-overview.md)