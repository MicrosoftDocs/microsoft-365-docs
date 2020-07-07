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
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: 8f0454b2-f51a-4d9c-bcde-2c48e41621c6
description: "Learn how to set up multi-factor authentication for your organization."
monikerRange: 'o365-worldwide'
---

# Set up multi-factor authentication
  
Based on your understanding of [multi-factor authentication (MFA) and its support in Microsoft 365](multi-factor-authentication-microsoft-365.md), it’s time to set it up and roll it out to your organization.

Before you begin, determine if these special conditions apply to you and take the appropriate action:

- If you have Office 2013 clients on Windows devices, [enable Modern Authentication](https://docs.microsoft.com/microsoft-365/admin/security-and-compliance/enable-modern-authentication).

- If you have third-party directory services with Active Directory Federation Services (AD FS), set up the Azure MFA Server. See [advanced scenarios with 
Azure Multi-Factor Authentication and third-party VPN solutions](https://docs.microsoft.com/azure/active-directory/authentication/howto-mfaserver-nps-vpn) for more information.

All other users will be asked to perform additional authentication when needed. For more information, please visit [Two-factor verification method and settings](https://docs.microsoft.com/azure/active-directory/user-help/multi-factor-authentication-end-user-manage-settings#turn-on-two-factor-verification-prompts-on-a-trusted-device).

## Step 1: Decide on the method of requiring your users to use MFA

> [!NOTE]
> You must be a global admin to set up or modify MFA. There are three ways to require your users to use MFA for sign-ins. See [MFA support in Microsoft 365](multi-factor-authentication-microsoft-365.md) for the details.

- Security defaults (recommended for small businesses)

  If you purchased your subscription or trial after October 21, 2019, and you're unexpectedly prompted for MFA, [security defaults](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) have been automatically enabled for your subscription.
  
  Every new Microsoft 365 subscription will automatically have security defaults turned on. This means that every user will have to set up MFA and install the Microsoft Authenticator app on their mobile device.

  All users must use the Microsoft Authenticator app as their additional verification method and legacy authentication is blocked. 

- Conditional Access policies (recommended for enterprises)

  Users choose the additional verification method during MFA registration.

- Per-user account (not recommended)

  Users choose the additional verification method during MFA registration.

## Step 2. Test MFA on your pilot users

If you are using Conditional Access policies or per-user MFA (not recommended), select pilot users in your business or organization to test MFA registration and sign-ins. For example:

- For Conditional Access policies, create a pilot users group and a policy that requires MFA for the members of the group and for all apps. Then, add your pilot user’s accounts to the group.

- For per-user MFA, enable MFA for the user accounts of your pilot users one a time.

Work with your pilot users to address questions and issues to prepare for a smooth roll out to your organization.

## Step 3. Inform your organization that MFA is coming

Use email notifications, hallway posters, team meetings, or formal training to ensure that your employees understand:

- Why MFA is being required for sign-ins
- [How to register for their additional verification method](https://support.microsoft.com/office/ace1d096-61e5-449b-a875-58eb3d74de14)
- [How to sign-in after registration](https://support.microsoft.com/office/2b856342-170a-438e-9a4f-3c092394d3cb)
- [How to change their additional verification method](https://support.microsoft.com/office/956ec8d0-7081-4518-a701-f8414cc20831)
- [How to deal with situations like a new smart phone](https://support.microsoft.com/office/6951be76-af50-49a4-847f-21391eaa59f2)

Most importantly, make sure your employees understand ***when the MFA requirement is going to be imposed*** so that it does not surprise them.

## Step 4. Roll out the MFA requirement to your organization or users

Based on your chosen MFA requirement method, roll out MFA authentication to the employees beyond your pilot testers.

### Security defaults

You enable or disable security defaults from the **Properties** pane for Azure Active Directory (Azure AD) in the Azure portal.

1.	Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) with global admin credentials.
2.	Go to the [Azure Active Directory - Properties page](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties).
3.	At the bottom of the page, choose **Manage Security defaults**.
4.	Choose **Yes** to enable security defaults and **No** to disable security defaults, and then choose **Save**.

If you have been using [baseline Conditional Access policies](https://docs.microsoft.com/azure/active-directory/conditional-access/concept-baseline-protection), here is how you move to using security defaults.

1.	Go to the [Conditional Access - Policies page](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ConditionalAccessBlade/Policies).
2.	Choose each baseline policy that is **On** and set **Enable policy** to **Off**.
2.	Go to the [Azure Active Directory - Properties page](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties).
4.	At the bottom of the page, choose **Manage Security defaults**.
5.	Choose **Yes** to enable security defaults and **No** to disable security defaults, and then choose **Save**.

### Conditional Access policies

Create, configure, and enable the appropriate policies that include the group of users that require MFA for sign-in.

### Per-user MFA (not recommended)

Enable user accounts for MFA corresponding to your rollout.

### Supporting your employees

As your employees register and begin signing in with MFA, ensure that your IT specialists, IT department, or helpdesk can answer questions and address issues quickly.

See this article for [information about troubleshooting MFA sign-ins](https://support.microsoft.com/office/6951be76-af50-49a4-847f-21391eaa59f2). 


