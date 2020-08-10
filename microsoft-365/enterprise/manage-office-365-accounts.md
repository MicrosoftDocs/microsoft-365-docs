---
title: "Tools to manage Microsoft 365 accounts"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: overview
ms.prod: office-online-server
localization_priority: Normal
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-mar2020
ms.collection:
- Ent_O365
- M365-subscription-management
search.appverid:
- MET150
- MOE150
- MED150
- BCS160
ms.assetid: 98ca5b3f-f720-4d8e-91be-fe656548a25a
description: "Learn about what tools to use and how to manage Microsoft 365 accounts."
---

# Tools to manage Microsoft 365 accounts

You can manage Microsoft 365 users in several different ways, depending on your configuration. You can manage users in the [Microsoft 365 admin center](https://admin.microsoft.com), Windows PowerShell, in Active Directory Domain Services (AD DS), or in the Azure Active Directory (Azure AD) admin portal. 

As soon as you purchase Microsoft 365, the admin center and Windows PowerShell can be used to manage accounts. When managing cloud identities, every person in your organization has a separate user ID and password for Microsoft 365. If you want to integrate with your on-premises infrastructure and have user accounts synchronized with Microsoft 365, you can use Azure AD Connect to provide synchronization of identities and passwords for single sign-on functionality.
  
## Plan for where and how you will manage your user accounts

Where and how you can manage your user accounts depends on the identity model you want to use for your Microsoft 365. The two overall models are cloud authentication and federated authentication.
  
### Cloud authentication

- Cloud authentication - Create and manage users in the Microsoft 365 admin center. You can also use Windows PowerShell or Azure AD . 
    
- Password hash sync (PHS) with seamless single sign-on - The simplest way to enable authentication for AD DS objects in Azure AD. With PHS, you synchronize your AD DS user account objects with Microsoft 365 and manage your users on-premises. 
    
- Pass-through authentication (PTA) with seamless single sign-on - Provides a simple password validation for Azure AD authentication services using a software agent running on one or more on-premises servers to validate the users directly with your AD DS. 
    
### Federated authentication

- Federated authentication options - Primarily for large enterprise organizations with more complex authentication requirements, AD DS objects are synchronized with Microsoft 365 and users accounts are managed on-premises. 
    
- [Third-party authentication and identity providers](about-office-365-identity.md) - AD DS objects may be synchronized to Microsoft 365 and cloud resource access is primarily managed by a third-party identity provider (IDP). 
    
## Managing Accounts

When deciding which way your organization will create and manage accounts, consider the following requirements:
  
- The directory synchronization software needs to be installed on servers within your on-premises environment to connect the identities between Microsoft 365 and your AD DS.
    
- Any directory synchronization option, including SSO options, requires your AD DS attributes meet standards. The specifics of what attributes are used in your directory and what cleanup (if any) is needed are described in [Prepare to provision users through directory synchronization to Microsoft 365](prepare-for-directory-synchronization.md). 
    
- Plan how you are going to create Microsoft 365 accounts.
    
    The following table lists the different account management tools.
    
|**Option**|**Notes**|
|:-----|:-----|
|Admin center  <br/> |[Add users individually or in bulk](https://docs.microsoft.com/microsoft-365/admin/add-users/add-users) <br/>  Provides a simple web interface to add and change user accounts.  <br/>  Can't be used to change users if directory synchronization is enabled (location and license assignment can be set).  <br/>  Can't be used with SSO options.  <br/> |
|Windows PowerShell  <br/> |[Manage Microsoft 365 with Windows PowerShell](https://go.microsoft.com/fwlink/p/?LinkId=698471) <br/>  Allows you to add users in bulk users by using a Windows PowerShell script.  <br/>  Can be used to assign location and licenses to accounts, regardless of how the accounts are created.  <br/> |
|Bulk import  <br/> |[Add several users at the same time](add-several-users-at-the-same-time.md) <br/>  Allows you to import a CSV file to add a group of users to Microsoft 365.  <br/>  Can't be used with SSO options.  <br/> |
|Azure AD  <br/> |You get a free edition of Azure AD with your Microsoft 365 subscription. You can perform functions like self-service password reset for cloud users, and customization of the Sign-in and Access Panel pages by using the free edition. To get enhanced functionality, you can upgrade to the basic edition, Azure AD Premium P1, or Azure AD Premium P2. See [Azure AD editions](https://go.microsoft.com/fwlink/p/?LinkId=698465) for the list of supported features.  <br/> |
|Directory synchronization  <br/> |[Integrating your on-premises identities with Azure AD](https://go.microsoft.com/fwlink/p/?LinkID=624168) <br/>  For directory synchronization with or without password synchronization, use [Azure AD Connect with express settings](https://go.microsoft.com/fwlink/p/?LinkID=698537).  <br/>  For multiple forests and SSO options, use [Custom Installation of Azure AD Connect](https://go.microsoft.com/fwlink/p/?LinkId=698430).  <br/>  Provides the infrastructure that's necessary to enable SSO.  <br/>  Required for many hybrid scenarios:  <br/>  Staged migration  <br/>  Hybrid Exchange  <br/>  Synchronizes security and mail-enabled groups from your AD DS.  <br/> |
   
- Regardless of how you intend to add the user accounts to Microsoft 365, you need to manage several account features, such as assigning licenses, specifying location, and so on. These features can be managed long-term from the admin center or you can also [create user accounts with PowerShell](https://go.microsoft.com/fwlink/p/?LinkId=717083).
    
    If you choose to add and manage all your users through the admin center, you will specify the location and assign licenses at the same time as creating the Microsoft 365 account. As a result, not much planning is required.
    
    > [!IMPORTANT]
    > Creating accounts in Microsoft 365 without assigning a license (to SharePoint Online, for example) means that the account owner can view the Microsoft 365 center but can't access any of the services within your company's subscription. After you assign a location and the license, the account is replicated to the service or services that you assigned. The user can sign in to their account and use the services that you assigned to them. 
  
## Next steps

[Microsoft 365 integration with on-premises environments](office-365-integration.md)
  
## See Also

[Manage users and groups in Microsoft 365](https://docs.microsoft.com/microsoft-365/admin/add-users)
  
