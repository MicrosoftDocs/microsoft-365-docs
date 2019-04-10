---
title: Prepare on-premises resources for Microsoft Managed Desktop 
description:  Important steps to make sure an on-premesis AD can communicate with Azure AD to provide authentication
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

#  Prepare on-premises resources for Microsoft Managed Desktop

To participate in Microsoft Managed Desktop, devices must be joined to Azure Active Directory--devices are not supported in hybrid Azure Active Directory environments. Azure Active Directory lets your users take advantage of Single Sign-On (SSO), which means they typically won't have to provide credentials every time they want to do something. If you're completely new to Azure Active Directory, refer to [How to: Plan your Azure AD join implementation](https://docs.microsoft.com/azure/active-directory/devices/azureadjoin-plan)--however, as you reference Azure Active Directory documentation, keep in mind that *hybrid* Azure AD is not supported by Microsoft Managed Desktop.

If your organization also uses on-premises Active Directory, you'll have to set up Single Sign-On (SSO) and connections to Azure Active Directory.

This topic explains what you need to do to get SSO working and explains the things you need to check in order to ensure that apps and other resources that involve that depend on local Active Directory connectivity will work smoothly with Microsoft Managed Desktop.


## Authentication methods

You'll need to enable Single Sign-On (SSO) for your devices, either by using UPN or passwords (the default method) or by using Windows Hello, which requires some extra setup steps. For background information about SSO, see [How SSO to on-premises resources works on Azure AD joined devices](https://docs.microsoft.com/azure/active-directory/devices/azuread-join-sso#how-it-works).


### Single Sign-On by using UPN or passwords

No special setup is required for your users to authenticate by UPN or password--you get this by default from Azure. However, to make sure this will work, you should double-check the following:

- Confirm that [Azure Active Directory (AAD) Connect](https://docs.microsoft.com/azure/active-directory/hybrid/reference-connect-sync-attributes-synchronized#windows-10) {what's at that target is not what I'd expect to see as "requirements"--it's reference material regarding which attributes are synced--I'd like to see something more like what you need to do to get Connect going if you haven't already} is set up to include an on-premises Active Directory server running Windows Server 2008 R2 or later.
- AAD Connect is running a supported version {which is what? We should specify what the supported version is instead of making the reader go figure that out} and is set to sync these three key attributes with Azure AD through AAD Connect: 
    - DNS domain name where the user is present in your on-premises Active Directory
    - NetBIOS domain name where the user is present in your on-premises Active Directory
    - SAM account name of the user

<can we provide a link that explains how to actually set this up?>

### SSO by using Windows Hello

Alternately, you can offer your users a fast, passwordless experience by employing Windows Hello. To set this up, visit [Configure Azure AD joined devices for On-premises Single-Sign On using Windows Hello for Business](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-hybrid-aadj-sso-base) to check the requirements, and then follow the steps provided there.


## Apps and resources that use authentication

Refer to [Understand considerations for applications and resources](https://docs.microsoft.com/azure/active-directory/devices/azureadjoin-plan#understand-considerations-for-applications-and-resources) in the Azure content set for guidance on setting up apps to work with Azure Active Directory.

{we can either link as you mention, or keep this, which is more consistent with MS voice principles. Disadvantage of linking: we should try to keep bouncing readers out to other resources to a minimum, as link-chasing is irritating; disadvantage of keeping it here: keeping it up to date, since just pointing at Azure means they'll be keeping it up to date for us. Your call.}

- If you use **cloud-based apps** {examples?}, such as those added to the Azure AD app gallery, most don't require any further preparation to work with Microsoft Managed Desktop. However, any Win32 apps that don't use Web Account Manager (WAM) {verify this acronym} might still prompt users for authentication.

- To allow users to use the **Chrome browser**, you should deploy the **Windows 10 Accounts** extension available from the **Extensions** area of the [Chrome web store](https://chrome.google.com/webstore/category/extensions) to those browsers.

- For apps that are **hosted on-premises**, be sure to add those apps to the trusted sites list in your browsers. This will enable Windows authentication to work seamlessly, without users being prompted for credentials.

- If you are using Active Directory Federated Services, follow the steps in [Verify and manage single sign-on with AD FS](https://docs.microsoft.com/previous-versions/azure/azure-services/jj151809(v=azure.100)). {beware: this topic is archived, so can we find an appropriate, more current version?}

- For apps that are **on-premises and use older protocols**, no extra setup is required, as long as the devices have access to an on-premises domain controller. To provide secure access for these applications, however, you should deploy Azure AD Application Proxy. For more information, see [Remote access to on-premises applications through Azure Active Directory's Application Proxy](https://docs.microsoft.com/azure/active-directory/manage-apps/application-proxy).

- Apps that run **on-premises and rely on machine authentication** aren't supported, so you should consider retiring these.

## Network shares that use authentication

No extra setup is required for users to access network shares, as long as the devices have access to an on-premises domain controller by using a UNC path.

## Device and mobility settings
{we absolutely can move this higher if this is step that should be done BEFORE setting up SSO}
For users to be able to register devices in Azure Active Directory and enroll in Intune (required for Microsoft Managed Desktop), follow the steps in [Configure your device settings](https://docs.microsoft.com/azure/active-directory/devices/azureadjoin-plan#configure-your-device-settings).