---
title: Prepare on-premises resources access for Microsoft Managed Desktop 
description:  Important steps to make sure an Azure AD can communicate with on-premises AD to provide authentication
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
audience: Admin
---

#  Prepare on-premises resources access for Microsoft Managed Desktop

In Microsoft Managed Desktop, devices are automatically joined to Azure Active Directory (Azure AD). For this reason, if you are using an on-premises Active Directory, you'll have to check some things to ensure that devices joined to Azure AD can communicate with your on-premises Active Directory. 

> [!NOTE]  
> *Hybrid* Azure AD join is not supported by Microsoft Managed Desktop.

Azure Active Directory lets your users take advantage of Single Sign-On (SSO), which means they typically won't have to provide credentials every time they use resources.

For information about joining Azure Active Directory, refer to [How to: Plan your Azure AD join implementation](/azure/active-directory/devices/azureadjoin-plan). For background information about Single Sign-On (SSO) on devices joined to Azure AD, see [How SSO to on-premises resources works on Azure AD joined devices](/azure/active-directory/devices/azuread-join-sso#how-it-works).


This article explains the things you need to check in order to ensure that apps and other resources that depend on local Active Directory connectivity will work smoothly with Microsoft Managed Desktop.


## Single Sign-On for on-premises resources

Single Sign-On (SSO) by using UPN and password is enabled by default on Microsoft Managed Desktop Devices. But your users can also use Windows Hello for Business, which requires some extra setup steps. 

### Single Sign-On by using UPN and password

In most organizations, your users will be able to use SSO to authenticate by UPN and password on Microsoft Managed Desktop Devices. However, to make sure this function will work, you should double-check the following things:

- Confirm that Azure AD Connect is set up and uses an on-premises Active Directory server running Windows Server 2008 R2 or later.
- Confirm that Azure AD Connect is running a supported version and is set to sync these three attributes with Azure AD: 
    - DNS domain name of the on-premises Active Directory (where the users are located)
    - NetBIOS of your on-premises Active Directory (where the users are located)
    - SAM account name of the user


### Single Sign-On by using Windows Hello for Business

Microsoft Managed Desktop devices also offer your users a fast, passwordless experience by employing Windows Hello for Business. To ensure Windows Hello for Business will work without your users having to provide respective UPN and password, visit [Configure Azure AD joined devices for On-premises Single-Sign On using Windows Hello for Business](/windows/security/identity-protection/hello-for-business/hello-hybrid-aadj-sso-base) to check the requirements, and then follow the steps provided there.


## Apps and resources that use authentication

Refer to [Understand considerations for applications and resources](/azure/active-directory/devices/azureadjoin-plan#understand-considerations-for-applications-and-resources) in the Azure content set for full guidance on setting up apps to work with Azure Active Directory. In summary:


- If you use **cloud-based apps**, such as those added to the Azure AD app gallery, most don't require any further preparation to work with Microsoft Managed Desktop. However, any Win32 apps that don't use Web Account Manager (WAM) might still prompt users for authentication.

- For apps that are **hosted on-premises**, be sure to add those apps to the trusted sites list in your browsers. This step will enable Windows authentication to work seamlessly, without users being prompted for credentials. To add apps, refer to [Trusted sites](../working-with-managed-desktop/config-setting-ref.md#trusted-sites) in the [Configurable settings reference](../working-with-managed-desktop/config-setting-ref.md).

- If you are using Active Directory Federated Services, check that SSO is enabled by using the steps in [Verify and manage single sign-on with AD FS](/previous-versions/azure/azure-services/jj151809(v=azure.100)). 

- For apps that are **on-premises and use older protocols**, no extra setup is required, as long as the devices have access to an on-premises domain controller to authenticate. To provide secure access for these applications, however, you should deploy Azure AD Application Proxy. For more information, see [Remote access to on-premises applications through Azure Active Directory's Application Proxy](/azure/active-directory/manage-apps/application-proxy).

- Apps that run **on-premises and rely on machine authentication** aren't supported, so you should consider replacing them with newer versions.

### Network shares that use authentication

No extra setup is required for users to access network shares, as long as the devices have access to an on-premises domain controller by using a UNC path.

### Printers

Microsoft Managed Desktop devices cannot connect to printers that are published to your on-premises Active Directory unless you have configured [Hybrid Cloud Print](/windows-server/administration/hybrid-cloud-print/hybrid-cloud-print-deploy).

While printers can't be automatically discovered in a cloud only environment, your users can use on-premises printers by using the printer path or printer queue path, as long as the devices have access to an on-premises domain controller.

<!--add fuller material on printers when available-->
## Steps to get ready

1. Review [Prerequisites for Microsoft Managed Desktop](prerequisites.md).
2. Use [Readiness assessment tools](readiness-assessment-tool.md).
3. [Prerequisites for guest accounts](guest-accounts.md)
4. [Network configuration for Microsoft Managed Desktop](network.md)
5. [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md)
6. [Prepare on-premises resources access for Microsoft Managed Desktop](authentication.md) (This article)
7. [Apps in Microsoft Managed Desktop](apps.md)
8. [Prepare mapped drives for Microsoft Managed Desktop](mapped-drives.md)
9. [Prepare printing resources for Microsoft Managed Desktop](printing.md)
