---
title: "Set up directory synchronization for Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 07/16/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
f1.keywords:
- CSH
ms.custom: Adm_O365
ms.collection:
- scotvorg
- Ent_O365
- M365-identity-device-management
- must-keep
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

Microsoft 365 uses a Microsoft Entra tenant to store and manage identities for authentication and permissions to access cloud-based resources.

If you have an on-premises Active Directory Domain Services (AD DS) domain or forest, you can synchronize your AD DS user accounts, groups, and contacts with the Microsoft Entra tenant of your Microsoft 365 subscription. This is hybrid identity for Microsoft 365. Here are its components.

![Components of directory synchronization for Microsoft 365.](../media/about-microsoft-365-identity/hybrid-identity.png)

Microsoft Entra Connect runs on an on-premises server and synchronizes your AD DS with the Microsoft Entra tenant. Along with directory synchronization, you can also specify these authentication options:

- Password hash synchronization (PHS)

  Microsoft Entra ID performs the authentication itself.

- Pass-through authentication (PTA)

  Microsoft Entra ID has AD DS perform the authentication.

- Federated authentication

  Microsoft Entra ID refers the client computer requesting authentication to another identity provider.

See [Hybrid identities](plan-for-directory-synchronization.md) for more information.
  
<a name='1-review-prerequisites-for-azure-ad-connect'></a>

## 1. Review prerequisites for Microsoft Entra Connect

You get a free Microsoft Entra subscription with your Microsoft 365 subscription. When you set up directory synchronization, you'll install Microsoft Entra Connect on one of your on-premises servers.
  
For Microsoft 365 you'll need to:
  
- Verify your on-premises domain. The Microsoft Entra Connect wizard guides you through this.
- Obtain the user names and passwords for the admin accounts of your Microsoft 365 tenant and AD DS.

For your on-premises server on which you install Microsoft Entra Connect, you'll need:
  
|**Server OS**|**Other software**|
|:-----|:-----|
|Windows Server 2012 R2 and later | - PowerShell is installed by default, no action is required.  <br> - Net 4.5.1 and later releases are offered through Windows Update. Make sure you've installed the latest updates to Windows Server in the Control Panel. |
|Windows Server 2008 R2 with Service Pack 1 (SP1)** or Windows Server 2012 | - The latest version of PowerShell is available in Windows Management Framework 4.0. Search for it on [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?LinkId=717996).  <br> - .NET 4.5.1 and later releases are available on [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?LinkId=717996). |
|Windows Server 2008 | - The latest supported version of PowerShell is available in Windows Management Framework 3.0, available on [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?LinkId=717996).  <br> - .NET 4.5.1 and later releases are available on [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?LinkId=717996). |

See [Prerequisites for Microsoft Entra Connect](/azure/active-directory/hybrid/how-to-connect-install-prerequisites) for the details of hardware, software, account and permissions requirements, SSL certificate requirements, and object limits for Microsoft Entra Connect.
  
You can also review the Microsoft Entra Connect [version release history](/azure/active-directory/hybrid/reference-connect-version-history) to see what is included and fixed in each release.

<a name='2-install-azure-ad-connect-and-configure-directory-synchronization'></a>

## 2. Install Microsoft Entra Connect and configure directory synchronization

Before you begin, make sure you have:

- The user name and password of a Microsoft 365 account with the Hybrid Identity Administrator role enabled
- The user name and password of an AD DS domain administrator
- Which authentication method (PHS, PTA, federated)
- Whether you want to use [Microsoft Entra seamless single sign-on (SSO)](/azure/active-directory/hybrid/how-to-connect-sso)

Follow these steps:

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) (https://admin.microsoft.com) and choose **Users** \> **Active Users** on the left navigation.
2. On the **Active users** page, choose **More** (three dots) \> **Directory synchronization**.
3. On the **Microsoft Entra preparation** page, select the **Go to the Download center to get the Microsoft Entra Connect tool** link to get started.
4. Follow the steps in [Microsoft Entra Connect and Microsoft Entra Connect Health installation roadmap](/azure/active-directory/hybrid/how-to-connect-install-roadmap).

## 3. Finish setting up domains

Follow the steps in [Create DNS records for Microsoft 365 when you manage your DNS records](/office365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider) to finish setting up your domains.

## Next step

[Assign licenses to user accounts](assign-licenses-to-user-accounts.md)
