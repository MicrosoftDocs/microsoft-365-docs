---
title: "Set up directory synchronization for Microsoft 365"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/30/2020
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
f1.keywords:
- CSH
ms.custom: Adm_O365
ms.collection:
- Ent_O365
- M365-identity-device-management
search.appverid:
- MET150
- MOE150
- MED15
- MBS150
- BCS160
ms.assetid: 1b3b5318-6977-42ed-b5c7-96fa74b08846
description: "Learn how to set up directory synchronization between Microsoft 365 and your on-premises Active Directory."
---

# Set up directory synchronization for Microsoft 365

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Microsoft 365 uses an Azure Active Directory (Azure AD) tenant to store and manage identities for authentication and permissions to access cloud-based resources. 

If you have an on-premises Active Directory Domain Services (AD DS) domain or forest, you can synchronize your AD DS user accounts, groups, and contacts with the Azure AD tenant of your Microsoft 365 subscription. This is hybrid identity for Microsoft 365. Here are its components.

![Components of directory synchronization for Microsoft 365](../media/about-microsoft-365-identity/hybrid-identity.png)

Azure AD Connect runs on an on-premises server and synchronizes your AD DS with the Azure AD tenant. Along with directory synchronization, you can also specify these authentication options:

- Password hash synchronization (PHS)

  Azure AD performs the authentication itself.

- Pass-through authentication (PTA)

  Azure AD has AD DS perform the authentication.

- Federated authentication

  Azure AD refers the client computer requesting authentication to another identity provider.

See [Hybrid identities](plan-for-directory-synchronization.md) for more information.
  
## 1. Review prerequisites for Azure AD Connect

You get a free Azure AD subscription with your Microsoft 365 subscription. When you set up directory synchronization, you will install Azure AD Connect on one of your on-premises servers.
  
For Microsoft 365 you'll need to:
  
- Verify your on-premises domain. The Azure AD Connect wizard guides you through this.
- Obtain the user names and passwords for the admin accounts of your Microsoft 365 tenant and AD DS.

For your on-premises server on which you install Azure AD Connect, you'll need:
  
|**Server OS**|**Other software**|
|:-----|:-----|
|Windows Server 2012 R2 and later | - PowerShell is installed by default, no action is required.  <br> - Net 4.5.1 and later releases are offered through Windows Update. Make sure you have installed the latest updates to Windows Server in the Control Panel. |
|Windows Server 2008 R2 with Service Pack 1 (SP1)** or Windows Server 2012 | - The latest version of PowerShell is available in Windows Management Framework 4.0. Search for it on [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?LinkId=717996).  <br> - .Net 4.5.1 and later releases are available on [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?LinkId=717996). |
|Windows Server 2008 | - The latest supported version of PowerShell is available in Windows Management Framework 3.0, available on [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?LinkId=717996).  <br> - .Net 4.5.1 and later releases are available on [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?LinkId=717996). |

See [Prerequisites for Azure Active Directory Connect](/azure/active-directory/hybrid/how-to-connect-install-prerequisites) for the details of hardware, software, account and permissions requirements, SSL certificate requirements, and object limits for Azure AD Connect.
  
You can also review the Azure AD Connect [version release history](/azure/active-directory/hybrid/reference-connect-version-history) to see what is included and fixed in each release.

## 2. Install Azure AD Connect and configure directory synchronization

Before you begin, make sure you have:

- The user name and password of a Microsoft 365 global admin
- The user name and password of an AD DS domain administrator
- Which authentication method (PHS, PTA, federated)
- Whether you want to use [Azure AD Seamless Single Sign-on (SSO)](/azure/active-directory/hybrid/how-to-connect-sso)

Follow these steps:

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) (https://admin.microsoft.com) and choose **Users** \> **Active Users** on the left navigation.
2. On the **Active users** page, choose **More** (three dots) \> **Directory synchronization**.
  
3. On the **Azure Active Directory preparation** page, select the **Go to the Download center to get the Azure AD Connect tool** link to get started. 
4. Follow the steps in [Azure AD Connect and Azure AD Connect Health installation roadmap](/azure/active-directory/hybrid/how-to-connect-install-roadmap).

## 3. Finish setting up domains

Follow the steps in [Create DNS records for Microsoft 365 when you manage your DNS records](/office365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider) to finish setting up your domains.

## Next step

[Assign licenses to user accounts](assign-licenses-to-user-accounts.md)