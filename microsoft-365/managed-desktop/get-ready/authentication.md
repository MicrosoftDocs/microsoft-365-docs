---
title: Prepare on-premises resources access for Microsoft Managed Desktop 
description:  Important steps to make sure an Azure AD can communicate with on-premises AD to provide authentication
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

#  Prepare on-premises resources access for Microsoft Managed Desktop

In Microsoft Managed Desktop, devices are automatically joined to Azure Active Directory. This means that if you are using an on-premises Active Directory, you'll have to check some things to ensure that devices joined to Azure AD can communicate with your on-premises Active Directory. 

> [!NOTE]  
> *Hybrid* Azure AD join is not supported by Microsoft Managed Desktop.

Azure Active Directory lets your users take advantage of Single Sign-On (SSO), which means they typically won't have to provide credentials every time they want to do something. If you're completely new to Azure Active Directory, refer to [How to: Plan your Azure AD join implementation](https://docs.microsoft.com/azure/active-directory/devices/azureadjoin-plan)--however, as you reference Azure Active Directory documentation, keep in mind that *hybrid* Azure AD join is not supported by Microsoft Managed Desktop.


This topic explains the things you need to check in order to ensure that apps and other resources that depend on local Active Directory connectivity will work smoothly with Microsoft Managed Desktop.


## Single Sign-On for on-premises resources

Single Sign-On (SSO) for your devices by using UPN and passwords (the default method) should already work by default. But you can also use Windows Hello for Business, which requires some extra setup steps. For background information about SSO, see [How SSO to on-premises resources works on Azure AD joined devices](https://docs.microsoft.com/azure/active-directory/devices/azuread-join-sso#how-it-works).


### Single Sign-On by using UPN and passwords

No special setup is required for your users to authenticate by UPN and password--you get this by default from Azure. However, to make sure this will work, you should double-check the following:

- Confirm that Azure Active Directory (AAD) Connect is set up with an on-premises Active Directory server running Windows Server 2008 R2 or later.
- AAD Connect is running a supported version and is set to sync these three key attributes with Azure AD: 
    - DNS domain name where the user is present in your on-premises Active Directory
    - NetBIOS domain name where the user is present in your on-premises Active Directory
    - SAM account name of the user


### Single Sign-On by using Windows Hello for Business

Even better, you can offer your users a fast, passwordless experience by employing Windows Hello for Business. To set this up, visit [Configure Azure AD joined devices for On-premises Single-Sign On using Windows Hello for Business](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-hybrid-aadj-sso-base) to check the requirements, and then follow the steps provided there.


## Apps and resources that use authentication

Refer to [Understand considerations for applications and resources](https://docs.microsoft.com/azure/active-directory/devices/azureadjoin-plan#understand-considerations-for-applications-and-resources) in the Azure content set for full guidance on setting up apps to work with Azure Active Directory. In summary:


- If you use **cloud-based apps**, such as those added to the Azure AD app gallery, most don't require any further preparation to work with Microsoft Managed Desktop. However, any Win32 apps that don't use Web Account Manager (WAM) might still prompt users for authentication.

- For apps that are **hosted on-premises**, be sure to add those apps to the trusted sites list in your browsers. This will enable Windows authentication to work seamlessly, without users being prompted for credentials.

- If you are using Active Directory Federated Services, follow the steps in [Verify and manage single sign-on with AD FS](https://docs.microsoft.com/previous-versions/azure/azure-services/jj151809(v=azure.100)). 

- For apps that are **on-premises and use older protocols**, no extra setup is required, as long as the devices have access to an on-premises domain controller. To provide secure access for these applications, however, you should deploy Azure AD Application Proxy. For more information, see [Remote access to on-premises applications through Azure Active Directory's Application Proxy](https://docs.microsoft.com/azure/active-directory/manage-apps/application-proxy).

- Apps that run **on-premises and rely on machine authentication** aren't supported, so you should consider replacing these with newer versions.

### Network shares that use authentication

No extra setup is required for users to access network shares, as long as the devices have access to an on-premises domain controller by using a UNC path.

### Printers

While printers can't be automatically discovered in a cloud only environment, your users can also use the printers’ UNC path to directly add them.

<!--add fuller material on printers when available-->