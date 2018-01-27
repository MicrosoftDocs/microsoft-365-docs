---
title: "Step 8: Single sign-on"
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

# Step 8: Seamless Single sign-on

![This step is optional for hybrid environments and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Hybrid-Optional-BothSKUs.png)


**Summary:** 

Azure Active Directory Seamless Single Sign-On (Azure AD Seamless SSO) automatically signs users in when they are on their organization devices and connected to your organization network. Azure AD Seamless SSO allows your users to sign in to services that use Azure AD user accounts, including Office 365 and third party SaaS apps, without having to type in their passwords, and in many cases, their usernames. Your users have easier access to your cloud-based applications, without needing any additional on-premises components.

The following figure shows how Azure AD Seamless SSO works for access to Office 365.

![How Azure AD Seamless Single Sign-On works](./media/identity-single-sign-on/identity-single-sign-on.png)

 
In this figure, an on-premises user requests access to Office 365 (Step 1), which forwards the authentication request to its Azure AD tenant. The Azure AD tenant sends the on-premises user’s computer a request for a Kerberos ticket as proof of valid Windows Server AD domain credentials (Step 2). The on-premises user’s computer requests a Kerberos ticket from an on-premises domain controller (Step 3) and then submits that ticket to Azure AD (Step 4). Azure AD validates the ticket and completes authentication. Office 365 grants access to the user’s original request (Step 5).

In this example, the access to Office 365 is seamless from the on-premises user. They are not prompted for a user name or password.

For additional information, see [Core Concepts](https://docs.microsoft.com/microsoft-365-enterprise/microsoft-365-policies-configurations#core-concepts).

You configure Azure AD Seamless SSO with the Azure AD Connect tool, which is running on a server in your intranet.

See the [instructions to configure Azure AD Seamless SSO](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-sso-quick-start).

The results of this step are on-premises users are not prompted for a user name or password when accessing Office 365 or associated EMS and Azure services for Microsoft 365.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step8) corresponding to this step.

## Next step

[Step 9: Password writeback](identity-password-writeback.md)

