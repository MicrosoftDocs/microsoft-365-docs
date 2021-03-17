---
title: "Hybrid identity and directory synchronization for Microsoft 365"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: conceptual
ms.date: 09/30/2020
ms.service: o365-administration
localization_priority: Normal
f1.keywords:
- CSH
ms.custom: Adm_O365
ms.collection:
- Ent_O365
- M365-identity-device-management
search.appverid: 
- MOE150
- MET150
ms.assetid: d3577c90-dda5-45ca-afb0-370d2889b10f
description: "Describes directory synchronization with Microsoft 365, Active Directory Domain Services cleanup, and the Azure Active Directory Connect tool."
---

# Hybrid identity and directory synchronization for Microsoft 365

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Depending on your business needs and technical requirements, the hybrid identity model and directory synchronization is the most common choice for enterprise customers who are adopting Microsoft 365. Directory synchronization allows you to manage identities in your Active Directory Domain Services (AD DS) and all updates to user accounts, groups, and contacts are synchronized to the Azure Active Directory (Azure AD) tenant of your Microsoft 365 subscription.

>[!Note]
>When AD DS user accounts are synchronized for the first time, they are not automatically assigned a Microsoft 365 license and cannot access Microsoft 365 services, such as email. You must first assign them a usage location. Then, assign a license to these user accounts, either individually or dynamically through group membership.
>

## Authentication for hybrid identity

There are two types of authentication when using the hybrid identity model:

- Managed authentication

  Azure AD handles the authentication process by using a locally-stored hashed version of the password or sends the credentials to an on-premises software agent to be authenticated by the on-premises AD DS.

- Federated authentication

  Azure AD redirects the client computer requesting authentication to another identity provider.

### Managed authentication

There are two types of managed authentication:

- Password hash synchronization (PHS)

  Azure AD performs the authentication itself.

- Pass-through authentication (PTA)

  Azure AD has AD DS perform the authentication.


#### Password hash synchronization (PHS)

With PHS, you synchronize your AD DS user accounts with Microsoft 365 and manage your users on-premises. Hashes of user passwords are synchronized from your AD DS to Azure AD so that the users have the same password on-premises and in the cloud. This is the simplest way to enable authentication for AD DS identities in Azure AD. 

![Password hash synchronization (PHS)](../media/plan-for-directory-synchronization/phs-authentication.png)

When passwords are changed or reset on-premises, the new password hashes are synchronized to Azure AD so that your users can always use the same password for cloud resources and on-premises resources. The user passwords are never sent to Azure AD or stored in Azure AD in clear text. Some premium features of Azure AD, such as Identity Protection, require PHS regardless of which authentication method is selected.
  
See [choosing the right authentication method](/azure/active-directory/hybrid/choose-ad-authn) to learn more.
  
#### Pass-through authentication (PTA)

PTA provides a simple password validation for Azure AD authentication services using a software agent running on one or more on-premises servers to validate the users directly with your AD DS. With PTA, you synchronize AD DS user accounts with Microsoft 365 and manage your users on-premises. 

![Pass-through authentication (PTA)](../media/plan-for-directory-synchronization/pta-authentication.png)

PTA allows your users to sign in to both on-premises and Microsoft 365 resources and applications using their on-premises account and password. This configuration validates users passwords directly against your on-premises AD DS without storing password hashes in Azure AD. 

PTA is also for organizations with a security requirement to immediately enforce on-premises user account states, password policies, and logon hours. 
  
See [choosing the right authentication method](/azure/active-directory/hybrid/choose-ad-authn) to learn more.
  
### Federated authentication

Federated authentication is primarily for large enterprise organizations with more complex authentication requirements. AD DS identities are synchronized with Microsoft 365 and users accounts are managed on-premises. With federated authentication, users have the same password on-premises and in the cloud and they do not have to sign in again to use Microsoft 365. 

Federated authentication can support additional authentication requirements, such as smartcard-based authentication or a third-party multi-factor authentication and is typically required when organizations have an authentication requirement not natively supported by Azure AD.
 
See [choosing the right authentication method](/azure/active-directory/hybrid/choose-ad-authn) to learn more.
  
#### Third-party authentication and identity providers

On-premises directory objects may be synchronized to Microsoft 365 and cloud resource access is primarily managed by a third-party identity provider (IdP). If your organization uses a third-party federation solution, you can configure sign-on with that solution for Microsoft 365 provided that the third-party federation solution is compatible with Azure AD.
  
See the [Azure AD federation compatibility list](/azure/active-directory/connect/active-directory-aadconnect-federation-compatibility) to learn more.
  
## AD DS Preparation

To help ensure a seamless transition to Microsoft 365 by using synchronization, you must prepare your AD DS forest before you begin your Microsoft 365 directory synchronization deployment.
  
Your directory preparation should focus on the following tasks:

- Remove duplicate **proxyAddress** and **userPrincipalName** attributes.
- Update blank and invalid **userPrincipalName** attributes with valid **userPrincipalName** attributes.
- Remove invalid and questionable characters in the **givenName**, surname ( **sn** ), **sAMAccountName**, **displayName**, **mail**, **proxyAddresses**, **mailNickname**, and **userPrincipalName** attributes. For details about preparing attributes, see [List of attributes that are synced by the Azure Active Directory Sync Tool](https://go.microsoft.com/fwlink/p/?LinkId=396719).

    > [!NOTE]
    > These are the same attributes that Azure AD Connect synchronizes. 
  
## Multi-forest deployment considerations

For multiple forests and SSO options, use a [Custom Installation of Azure AD Connect](/azure/active-directory/hybrid/how-to-connect-install-custom).
  
If your organization has multiple forests for authentication (logon forests), we highly recommend the following:
  
- **Consider consolidating your forests.** In general, there's more overhead required to maintain multiple forests. Unless your organization has security constraints that dictate the need for separate forests, consider simplifying your on-premises environment.
- **Use only in your primary logon forest.** Consider deploying Microsoft 365 only in your primary logon forest for your initial rollout of Microsoft 365. 

If you can't consolidate your multi-forest AD DS deployment or are using other directory services to manage identities, you may be able to synchronize these with the help of Microsoft or a partner.
  
See [Topologies for Azure AD Connect](/azure/active-directory/hybrid/plan-connect-topologies) for more information.
  
## Features that are dependent on directory synchronization
  
Directory synchronization is required for the following features and functionality:
  
- Azure AD Seamless Single Sign-On (SSO)
- Skype coexistence
- Exchange hybrid deployment, including:
  - Fully shared global address list (GAL) between your on-premises Exchange environment and Microsoft 365.
  - Synchronizing GAL information from different mail systems.
  - The ability to add users to and remove users from Microsoft 365 service offerings. This requires the following:
  - Two-way synchronization must be configured during directory synchronization setup. By default, directory synchronization tools write directory information only to the cloud. When you configure two-way synchronization, you enable write-back functionality so that a limited number of object attributes are copied from the cloud, and then written them back to your local AD DS. Write-back is also referred to as Exchange hybrid mode. 
  - An on-premises Exchange hybrid deployment
  - The ability to move some user mailboxes to Microsoft 365 while keeping other user mailboxes on-premises.
  - Safe senders and blocked senders on-premises are replicated to Microsoft 365.
  - Basic delegation and send-on-behalf-of email functionality.
  - You have an integrated on-premises smart card or multi-factor authentication solution.
- Synchronization of photos, thumbnails, conference rooms, and security groups

## Next step

When you are ready to deploy hybrid identity, see [prepare for directory synchronization](prepare-for-directory-synchronization.md).
