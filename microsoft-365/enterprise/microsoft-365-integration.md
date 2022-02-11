---
title: "Microsoft 365 integration with on-premises environments"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
ms.collection:
- Ent_O365
search.appverid:
- MET150
- LYN150
- SPS150
- MOE150
- MED150
ms.assetid: 263faf8d-aa21-428b-aed3-2021837a4b65
description: In this article, learn how to integrate Microsoft 365 with your existing directory services and on-premises environments.
---

# Microsoft 365 integration with on-premises environments

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can integrate Microsoft 365 with your existing on-premises Active Directory Domain Services (AD DS) and with on-premises installations of Exchange Server, Skype for Business Server 2015, or SharePoint Server.
  
 - When you integrate AD DS, you can synchronize and manage user accounts for both environments. You can also add password hash synchronization (PHS) or single sign-on (SSO) so users can log on to both environments with their on-premises credentials.
 - When you integrate with on-premises server products, you create a hybrid environment. A hybrid environment can help as you migrate users or information to Microsoft 365, or you can continue to have some users or some information on-premises and some in the cloud. For more information about hybrid environments, see [hybrid cloud](../solutions/cloud-architecture-models.md#hybrid).

You can also use the Azure Active Directory (Azure AD) advisors for customized setup guidance in the Microsoft 365 admin center (you must be signed in to Microsoft 365):

- [Azure AD setup guide](https://aka.ms/aadpguidance)
- [Sync users from your org's directory](https://aka.ms/aadconnectpwsync)
- [Active Directory Federation Services (AD FS) deployment advisor](https://aka.ms/adfsguidance)
   
## Before you begin

Before you integrate Microsoft 365 and an on-premises environment, you also need to do [network planning and performance tuning](network-planning-and-performance.md). You will also want to understand the available [identity models](deploy-identity-solution-identity-model.md). 

See [manage Microsoft 365 accounts](manage-microsoft-365-accounts.md) for a list of tools you can use to manage Microsoft 365 user accounts. 
  
## Integrate Microsoft 365 with AD DS

If you have existing user accounts in AD DS, you don't want to re-create all of those accounts in Microsoft 365 and risk introducing differences or errors between the environments. Directory synchronization helps you mirror those accounts between your on-premises and online environments. With directory synchronization, your users don't have to remember new information for each environment, and you don't have to create or update accounts twice. You will need to [prepare your on-premises directory](prepare-for-directory-synchronization.md) for directory synchronization.
  
![Use directory synchronization to keep on-premises and online user account information synchronized.](../media/microsoft-365-integration/directory-synchronization.png)
  
If you want users to be able to log on to Microsoft 365 with their on-premises credentials, you can also configure SSO. With SSO, Microsoft 365 is configured to trust the on-premises environment for user authentication.
  
![With single sign-on, the same account is available in both the on-premises and online environments.](../media/microsoft-365-integration/single-sign-on.png)

### Directory synchronization with or without password hash synchronization or pass-through authentication (PTA)

A user logs on to their on-premises environment with their user account (domain\username). When they go to Microsoft 365, they must log on again with their work or school account (user@domain.com). The user name is the same in both environments. When you add PHS or PTA, the user has the same password for both environments, but will have to provide those credentials again when logging on to Microsoft 365. Directory synchronization with PHS is the most commonly used directory synchronization .

To set up directory synchronization, use Azure AD Connect. For instructions, see [Set up directory synchronization for Microsoft 365](set-up-directory-synchronization.md) and [Azure AD Connect with express settings](/azure/active-directory/hybrid/how-to-connect-install-express).

Learn more about [preparing for directory synchronization to Microsoft 365](prepare-for-directory-synchronization.md).

### Directory synchronization with SSO

A user logs on to their on-premises environment with their user account. When they go to Microsoft 365, they are either logged on automatically, or they log on using the same credentials they use for their on-premises environment (domain\username).

To set up SSO you also use Azure AD Connect. For instructions, see [Custom installation of Azure AD Connect](/azure/active-directory/hybrid/how-to-connect-install-custom).

For more information, see [single sign-on](/azure/active-directory/manage-apps/what-is-single-sign-on).

## Azure AD Connect

Azure AD Connect replaces older versions of identity integration tools such as DirSync and Azure AD Sync. If you want to update from Azure Active Directory Sync to Azure AD Connect, see [the upgrade instructions](/azure/active-directory/hybrid/how-to-dirsync-upgrade-get-started). 

## See also

[Microsoft 365 Enterprise overview](microsoft-365-overview.md)