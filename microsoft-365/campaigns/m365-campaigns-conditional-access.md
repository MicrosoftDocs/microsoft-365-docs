---
title: "Turn on security defaults"
f1.keywords:
- NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management 
- M365-identity-device-management
- M365-Campaigns
- m365solution-smb
ms.custom:
- Adm_O365
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how security defaults can help protect your organization from identity-related attacks by providing preconfigured security settings."
---

# Turn on security defaults

Security defaults help protect your organization from identity-related attacks by providing preconfigured security settings that Microsoft manages on behalf of your organization. These settings include enabling multi-factor authentication (MFA) for all admins and user accounts. For most organizations, security defaults offer a good level of additional sign-in security.

For more information about security defaults and the policies they enforce, see [What are security defaults?](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults)

If your subscription was created on or after October 22, 2019, security defaults might have been automatically enabled for you&mdash;you should check your settings to confirm.

To enable security defaults in your Azure Active Directory (Azure AD) or to check to see if they're already enabled:

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> with Global admin credentials.

2. In the left pane, select **Show All,** and then under **Admin centers**, select **Azure Active Directory**.

3. In the left pane of the **Azure Active Directory admin center,** select **Azure Active Directory**.

4. From the left menu of the Dashboard, in the **Manage** section, select **Properties**.

    :::image type="content" source="../media/m365-campaigns-conditional-access/azure-ad-properties.png" alt-text="Screenshot of the Azure Active Directory admin center showing the location of the Properties menu item.":::

5. At the bottom of the **Properties** page, select **Manage Security defaults**.

6. In the right pane, you'll see the **Enable Security defaults** setting. If **Yes** is selected, then security defaults are already enabled and no further action is required. If security defaults are not currently enabled, then select **Yes** to enable them, and then select **Save**.

> [!NOTE]
> If you've been using Conditional Access policies, you'll need to turn them off before using security defaults.
>
> You can use either security defaults or Conditional Access policies, but you can't use both at the same time.

## Consider using Conditional Access

If your organization has complex security requirements or you need more granular control over your security policies, then you should consider using Conditional Access instead of security defaults to achieve a similar or higher security posture. 

Conditional Access lets you create and define policies that react to sign-in events and request additional actions before a user is granted access to an application or service. Conditional Access policies can be granular and specific, empowering users to be productive wherever and whenever, but also protecting your organization.

Security defaults are available to all customers, while Conditional Access requires a license for one of the following plans:

- Azure Active Directory Premium P1 or P2
- Microsoft 365 Business Premium
- Microsoft 365 E3 or E5
- Enterprise Mobility & Security E3 or E5

If you want to use Conditional Access to configure policies equivalent to those enabled by security defaults, check out the following step-by-step guides:

- [Require MFA for administrators](/azure/active-directory/conditional-access/howto-conditional-access-policy-admin-mfa)
- [Require MFA for Azure management](/azure/active-directory/conditional-access/howto-conditional-access-policy-azure-management)
- [Block legacy authentication](/azure/active-directory/conditional-access/howto-conditional-access-policy-block-legacy)
- [Require MFA for all users](/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa)
- [Require Azure AD MFA registration](/azure/active-directory/identity-protection/howto-identity-protection-configure-mfa-policy) - Requires Azure AD Identity Protection, which is part of Azure Active Directory Premium P2

To learn more about Conditional Access, see [What is Conditional Access?](/azure/active-directory/conditional-access/overview) For more information about creating Conditional Access policies, see [Create a Conditional Access policy](/azure/active-directory/authentication/tutorial-enable-azure-mfa#create-a-conditional-access-policy).

> [!NOTE]
> If you have a plan or license that provides Conditional Access but haven't yet created any Conditional Access policies, you're welcome to use security defaults. However, you'll need to turn off security defaults before you can use Conditional Access policies.
