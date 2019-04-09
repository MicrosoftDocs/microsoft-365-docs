---
title: Prepare authentication methods for Microsoft Managed Desktop 
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

#  Prepare authentication methods for Microsoft Managed Desktop

To participate in Microsoft Managed Desktop, devices must be joined to Azure Active Directory--devices are not supported in hybrid Azure Active Directory environments. Azure Active Directory lets your users take advantage of Single Sign-On (SSO), which means they typically won't have to provide credentials every time they want to do something. If you're completely new to Azure Active Directory, refer to [How to: Plan your Azure AD join implementation](https://docs.microsoft.com/azure/active-directory/devices/azureadjoin-plan)--however, as you reference Azure Active Directory documentation, keep in mind that *hybrid* Azure AD is not supported by Microsoft Managed Desktop.

This topic explains what you need to do to get SSO working and explains the things you need to check in order to ensure that apps and other resources that involve authentication will work smoothly with Microsoft Managed Desktop.

{this all seems to be coming from the viewpoint that customers will definitely have an on-premises AD server--is that a requirement? If they use *only* Azure AD, can they still do MMD?}


## Authentication methods

You'll need to enable Single Sign-On (SSO) for your devices, either by using passwords (the default method) or by using Windows Hello, which requires some extra setup steps. For background information about SSO, see [How SSO to on-premises resources works on Azure AD joined devices](https://docs.microsoft.com/azure/active-directory/devices/azuread-join-sso#how-it-works).


### Single Sign-On by using passwords

No special setup is required for your users to authenticate by password--you get this by default from Azure. However, to make sure this will work, you should double-check the following:

- Confirm that [Azure Active Directory (AAD) Connect](https://docs.microsoft.com/azure/active-directory/hybrid/reference-connect-sync-attributes-synchronized#windows-10) {what's at that target is not what I'd expect to see as "requirements"--it's reference material regarding which attributes are synced--I'd like to see something more like what you need to do to get Connect going if you haven't already} is set up to include an on-premises Active Directory server running Windows Server 2008 R2 or later.
- AAD Connect is set to sync these three key attributes with Azure AD through AAD Connect: 
    - DNS domain name where the user is present in your on-premises Active Directory
    - NetBIOS domain name where the user is present in your on-premises Active Directory
    - SAM account name for the user

<link to actually set this up?>

### SSO by using Windows Hello

Alternately, you can offer your users a fast, passwordless experience by employing Windows Hello. To set this up, visit [Configure Azure AD joined devices for On-premises Single-Sign On using Windows Hello for Business](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-hybrid-aadj-sso-base) to check the requirements, and then follow the steps provided there.

## Apps and resources that use authentication

- If you use **cloud-based apps** {examples?}, such as those added to the Azure AD app gallery, most don't require any further preparation to work with Microsoft Managed Desktop. However, any Win32 apps that don't use Web Account Manager (WAM) {verify this acronym} might still prompt users for authentication.

- To allow users to use the **Chrome browser**, you should deploy the **Windows 10 Accounts** extension available from the **Extensions** area of the [Chrome web store](https://chrome.google.com/webstore/category/extensions) to those browsers.

- For apps that are **hosted on-premises**, be sure to add those apps to the trusted sites list in your browsers. This will enable Windows authentication to work seamlessly, without users being prompted for credentials.

- If you are using Active Directory Federated Services, follow the steps in [Verify and manage single sign-on with AD FS](https://docs.microsoft.com/previous-versions/azure/azure-services/jj151809(v=azure.100)). {beware: this topic is archived, so can we find an appropriate, more current version?}

- For apps that are **on-premises and use older protocols**, no extra setup is required, as long as the devices have access to an on-premises domain controller. To provide secure access for these applications, however, you should deploy Azure AD Application Proxy. For more information, see [Remote access to on-premises applications through Azure Active Directory's Application Proxy](https://docs.microsoft.com/azure/active-directory/manage-apps/application-proxy).

- Apps that run **on-premises and rely on machine authentication** aren't supported, so you should consider retiring these.

## Network shares that use authentication

No extra setup is required for users to access network shares, as long as the devices have access to an on-premises domain controller by using a UNC path.