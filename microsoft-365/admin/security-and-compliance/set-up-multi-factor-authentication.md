---
title: "Set up multi-factor authentication for Office 365 users"
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
description: "Learn how to use security defaults to set up multi-factor authentication for Office 365 users."
monikerRange: 'o365-worldwide'
---

# Set up multi-factor authentication
  
Every new Office 365 for business or Microsoft 365 Business subscription will automatically have security defaults turned on. This means that every user will have to set up multi-factor authentication (MFA) and install the Authenticator app on their mobile device. For more information, see [Set up 2-step verification for Office 365](https://support.office.com/article/ace1d096-61e5-449b-a875-58eb3d74de14).  

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

All other users will be asked to perform additional authentication when needed. For more information, see [What are security defaults?](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults)

> [!NOTE]
> You must be an Office 365 global admin to set up or modify multi-factor authentication. <br><br>
> If you're not using the new Microsoft 365 admin center, you can turn it on by selecting the **Try the new admin center** toggle located at the top of the Home page.

If you have previously set up MFA with baseline policies, [you must turn them off and turn on security defaults](#move-from-baseline-policies-to-security-defaults). However, if you have Microsoft 365 Business or your subscription includes [Azure Active Directory Premium 1, or Azure Active Directory Premium 2](https://azure.microsoft.com/pricing/details/active-directory/), you can also set up [conditional access](https://docs.microsoft.com/azure/active-directory/conditional-access/overview) policies. To use conditional access policies, you need to make sure [modern authentication is enabled](#enable-multi-factor-authentication-for-your-organization).

## Manage security defaults

1. Sign in to [admin center](https://go.microsoft.com/fwlink/p/?linkid=834822) with your Global admin credentials.
2. Go to [Azure Active Directory Properties](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties).

3. At the bottom of the page, choose **Manage Security defaults**.
4. Choose **Yes** to enable security defaults and **No** to disable security defaults.

## Move from baseline policies to security defaults

1. In the [admin center](https://go.microsoft.com/fwlink/p/?linkid=834822), select **Setup**.

2. Next to **Sign-in and security**, under **Make sign-in more secure**, select **View**.

3. Under **Make sign-in more secure**, select **Manage**. 

4. On the **Azure portal Conditional Access - Policies** page,  choose each Baseline policy that is **On**, and set them to **Off**.
5. Go to [Azure Active Directory Properties](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties) page.
6. On the bottom of the page, choose **Manage Security defaults**, and in the **Enable Security defaults** pane, set **Enable Security defaults** toggle to **Yes**. 

## Enable Modern authentication for your organization

All Office 2016 client applications support MFA through the use of the Active Directory Authentication Library (ADAL). This means that app passwords aren't required for Office 2016 clients. However, you need to make sure your Office 365 subscription is enabled for ADAL, or modern authentication.

1. To enable modern authentication, from the [admin center](https://go.microsoft.com/fwlink/p/?linkid=834822), select **Settings** \> **Settings** and then in the **Services** tab, choose **Modern authentication** from the list.

2. Check the **Enable modern authentication** box in the **Modern authentication** panel. 

    ![Modern authentication panel with enable checkbox checked.](../media/enablemodernauth.png)
    
## Enable multi-factor authentication for your organization
    
1. In the [admin center](https://go.microsoft.com/fwlink/p/?linkid=834822), select **Users** and **Active Users**.

2. In the **Active Users** section, Click on  **multi-factor authentication**.

3. On the **Multi-factor authentication** page, select **user** if you are enabling this for one user or select **Bulk Update** to enable multiple users.

4. CLick on **Enable** under **Quick Steps**.

5. In the Pop-up window, Click on **Enable Multi-Factor Authentication**.

After you set up multi-factor authentication for your organization, your users will be required to set up two-step verification on their devices. For more information, see [Set up 2-step verification for Office 365](https://support.office.com/article/ace1d096-61e5-449b-a875-58eb3d74de14).
    
> [!TIP]
> To explain to your users how to set up the Authenticator app, please visit [Use Microsoft Authenticator with office 365](https://support.office.com/article/use-microsoft-authenticator-with-office-365-1412611f-ad8d-43ab-807c-7965e5155411?ui=en-US&rs=en-US&ad=US#ID0EAADAAA=_Step_1).


> [!IMPORTANT]
> As of August of 2017, all new Office 365 tenants that include Skype for Business online and Exchange online have modern authentication enabled by default. To check your modern authentication status for Skype for Business online, you can use Skype for Business online PowerShell with Global Admin credentials. Run Get-CsOAuthConfiguration to check the output of -ClientADALAuthOverride. If -ClientADALAuthOverride is 'Allowed', modern authentication is on.
To check your MA status for Exchange Online, please visit [Enable modern authentication in Exchange Online](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/enable-or-disable-modern-authentication-in-exchange-online).

## Related articles

[Top 10 ways to secure Office 365 and Microsoft 365 Business plans](secure-your-business-data.md)

[Enable Modern Authentication for Office 2013 on Windows devices](enable-modern-authentication.md)
