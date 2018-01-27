---
title: "Step 2: Azure AD Connect"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 01/29/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: ""
---

# Step 2: Azure AD Connect

![This step is required for hybrid environments  and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Hybrid-Required-BothSKUs.png)

**Summary:** 

Azure AD Connect is Microsoft’s supported tool for simple, fast, and lightweight synchronization on-premises directories, such as Windows Server AD, with the Azure Active Directory (AD) tenant used by your Office 365 and EMS subscriptions.
 
![How Azure AD Connect synchronizes your on-premises directory with Azure AD](./media/identity-azure-ad-connect/azure-ad-connect.png)


The Azure AD Connect wizard guides you through synchronizing only the identities you really need from single or multi-forest Windows Server AD environments. It enables single sign-on using managed or federated authentication, such as  Active Directory Federation Services (AD FS) to Office 365, EMS, and other SaaS applications that use Azure AD as their identity provider.The first decision in your hybrid identity solution is your authentication requirement. The following are options available:

1. **Managed authentication** - When Azure AD handles the authentication process for user’s sign-in. It comes in two varieties: 
    - **Password Hash Sync (PHS)** [Recommended and required for some premium features]. The simplest way to enable authentication for on-premises directory objects in Azure AD. Azure AD Connect will extract the hashed password from Active Directory, do extra security processing on the password and save it in Azure AD. For more information, see [Implement password hash synchronization with Azure AD Connect sync](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnectsync-implement-password-synchronization).
    - **Pass-through Authentication (PTA)** Provides a simple password validation solution for Azure AD-based services using an agent running on one or more on-premises servers to validate the users directly with your on-premises Active Directory. For more information, see [User sign-in with Azure Active Directory Pass-through Authentication](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-pass-through-authentication).
2. **Federated authentication** - When the authentication process is redirected to another authentication system, for example, Active Directory Federation Services (AD FS) for user’s sign-in. The authentication system can provide additional authentication methods, such as smartcard based authentication. For more information, see [Deploying Active Directory Federation Services](https://docs.microsoft.com/windows-server/identity/ad-fs/deployment/windows-server-2012-r2-ad-fs-deployment-guide).

After you have determined your hybrid identity solution, download and run the [IdFix Directory Synchronization Error Remediation Tool](https://www.microsoft.com/download/details.aspx?id=36832).

After running IDFix and resolving all of the issues, see [Set up directory synchronization for Office 365](https://support.office.com/article/Set-up-directory-synchronization-for-Office-365-1b3b5318-6977-42ed-b5c7-96fa74b08846) for guidance on installing the Azure AD Connect tool and configuring directory synchronization between your on-premises directory and the Azure AD. Once completed, you maintain your user accounts and groups with your on-premises identity provider, such as Windows Server AD.

The results of this step are:

- Azure AD Connect is running on a server and is provisioning the user accounts and groups from your on-premises identity provider to your Azure AD tenant.
- Users can use user account names of your current identity provider to successfully sign in to Office 365.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step2) corresponding to this step.


## Next step

[Step 3: Customize the Office 365 sign-in page](identity-customize-office-365-sign-in.md)
