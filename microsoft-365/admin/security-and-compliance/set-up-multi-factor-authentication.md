---
title: "Set up multi-factor authentication for users"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: sirkkuw
manager: mnirkhe
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: 8f0454b2-f51a-4d9c-bcde-2c48e41621c6
description: "Learn how to use security defaults to set up multi-factor authentication for users."
monikerRange: 'o365-worldwide'
---

# Set up multi-factor authentication
  
> [!IMPORTANT]
> If you purchased your subscription or trial after October 21, 2019, and you're unexpectedly prompted for multi-factor authentication (MFA), [security defaults](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) have been automatically enabled for your subscription.

Every new Microsoft 365 subscription will automatically have [security defaults](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) turned on. This means that every user will have to set up multi-factor authentication (MFA) and install the Microsoft Authenticator app on their mobile device. For more information, see [Set up MFA for a Microsoft 365 account](https://support.office.com/article/ace1d096-61e5-449b-a875-58eb3d74de14).

The following nine administrator roles will be required to perform additional authentication every time they sign in:

- Global administrator
- SharePoint administrator
- Exchange administrator
- Conditional Access administrator
- Security administrator
- Helpdesk administrator or password administrator
- Billing administrator
- User administrator
- Authentication administrator

All other users will be asked to perform additional authentication when needed.

> [!NOTE]
> You must be a global admin to set up or modify MFA.

If you have previously set up MFA with baseline policies, [you must turn them off to turn on security defaults](#move-from-baseline-policies-to-security-defaults). However, if you have Microsoft 365 Business or your subscription includes [Azure Active Directory Premium P1 or Azure Active Directory Premium P2](https://azure.microsoft.com/pricing/details/active-directory/), you can also set up [Conditional Access](https://docs.microsoft.com/azure/active-directory/conditional-access/overview) policies. To use Conditional Access policies, you need to make sure security defaults are disabled and [modern authentication](#enable-modern-authentication-for-your-organization) is enabled.

> [!TIP]
> To explain to your users how to set up the Microsoft Authenticator app, see [Use Microsoft Authenticator with Office 365](https://support.office.com/article/use-microsoft-authenticator-with-office-365-1412611f-ad8d-43ab-807c-7965e5155411).

## Manage security defaults

1. Sign in to the [admin center](https://go.microsoft.com/fwlink/p/?linkid=834822) with global admin credentials.
2. Go to the [Azure Active Directory - Properties page](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties).
3. At the bottom of the page, choose **Manage Security defaults**.
4. Choose **Yes** to enable security defaults and **No** to disable security defaults, and then choose **Save**.

## Move from baseline policies to security defaults

1. Go to the [Conditional Access - Policies page](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ConditionalAccessBlade/Policies).
2. Choose each baseline policy that is **On** and set **Enable policy** to **Off**.
3. Go to the [Azure Active Directory - Properties page](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties).
4. On the bottom of the page, choose **Manage Security defaults**, and in the **Enable Security defaults** pane, set **Enable Security defaults** toggle to **Yes**, and then choose **Save**. 

## Enable modern authentication for your organization

All Office 2016 client applications support MFA through the use of the Active Directory Authentication Library (ADAL). This means that app passwords aren't required for Office 2016 clients. See [this article](https://docs.microsoft.com/azure/active-directory/authentication/howto-mfa-mfasettings#app-passwords) for more information.

However, you need to make sure your Microsoft 365 subscription is enabled for ADAL, or modern authentication.

1. To enable modern authentication, from the [admin center](https://go.microsoft.com/fwlink/p/?linkid=834822), select **Settings** \> **Org Settings** and then in the **Services** tab, choose **Modern authentication** from the list.

2. Check the **Enable modern authentication (recommended)** box in the **Modern authentication** panel, and then choose **Save changes**. 

    ![Modern authentication panel with enable checkbox checked.](../../media/enablemodernauth.png)
    
> [!IMPORTANT]
> As of August of 2017, all new Microsoft 365 subscriptions that include Skype for Business online and Exchange online have modern authentication enabled by default. To check your modern authentication status for Skype for Business online, you can use Skype for Business online PowerShell with Global Admin credentials. Run Get-CsOAuthConfiguration to check the output of -ClientADALAuthOverride. If -ClientADALAuthOverride is 'Allowed', modern authentication is on.
To check your MA status for Exchange Online, please visit [Enable modern authentication in Exchange Online](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/enable-or-disable-modern-authentication-in-exchange-online).

## Related articles

[Top 10 ways to secure Microsoft 365 for business plans](secure-your-business-data.md)

[Enable Modern Authentication for Office 2013 on Windows devices](enable-modern-authentication.md)
