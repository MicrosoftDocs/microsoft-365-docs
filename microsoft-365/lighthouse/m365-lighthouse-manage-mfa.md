---
title: "Manage multifactor authentication in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: ragovind
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to manage multifactor authentication."
---

# Manage multifactor authentication in Microsoft 365 Lighthouse

Azure Active Directory (Azure AD) Multi-Factor Authentication (MFA) helps safeguard access to data and applications, providing another layer of security by using a second form of authentication. The Multifactor Authentication page provides detailed information on the status of MFA enablement across your tenants. Select any tenant in the list to see more details for that tenant, including which Conditional Access policies requiring MFA are already configured and which users haven't yet registered for MFA.

For small- and medium-sized business (SMB) customers, Microsoft recommends enabling [security defaults](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) at a minimum. For more complex scenarios, you can use [Conditional Access](/azure/active-directory/conditional-access/overview) to configure specific policies.

## Before you begin

The following conditions must be met before a tenant will appear in the list:

- The customer tenant must have an Azure AD Premium license for each user. For more information on which licenses support MFA, see [Features and licenses for Azure AD Multi-Factor Authentication](/azure/active-directory/authentication/concept-mfa-licensing).

- The customer tenant must be active within Microsoft 365 Lighthouse. To learn how to determine if a tenant is active, see [Microsoft 365 Lighthouse tenant list overview](/microsoft-365/lighthouse/m365-lighthouse-tenant-list-overview).

## Enable MFA for a tenant

1. In the left navigation pane in Lighthouse, select **Users** > **Multifactor authentication**.

2. On the **Multifactor Authentication** page, look for a tenant currently not using MFA, and then select that tenant to open the tenant details pane.

3. On the **MFA enablement** tab, under **MFA with Security defaults**, select **Enable Security defaults**.

4. Select **Save changes**.

To enable MFA through Conditional Access, see [Tutorial: Secure user sign-in events with Azure AD Multi-Factor Authentication](/azure/active-directory/authentication/tutorial-enable-azure-mfa).

## Notify users who aren't registered for MFA

1. In the left navigation pane in Lighthouse, select **Users** > **Multifactor authentication**.

2. On the **Multifactor Authentication** page, look for tenants with users not registered for MFA, and then select the tenant to open the tenant details pane.

3. Select **Users not registered for MFA** tab.

4. Select all other users in the list who need to register for MFA, and then select **Create email**.

> [!TIP]
> If any of the user accounts in the list are emergency access accounts or service accounts for which you don't want to require MFA, select those user accounts, and then select **Exclude users**. The excluded user accounts will no longer appear in the list of users not registered for MFA.

> [!NOTE]
> If any shared mailbox accounts or inactive user accounts appear in the list of users not registered for MFA, we recommend that you block signin for those accounts so they'll no longer appear in this list.


Lighthouse opens your default email client and prepopulates the email message with instructions to register for MFA. All the selected users will be included on the BCC line. If you prefer to individually email users, you can select the email icon next to the username.

If you want to use a different email account, you can export the list of users to a file. You can also download sample email templates that you can customize with your company branding.

## Next steps

Once MFA is enabled, you can enable Azure Active Directory (Azure AD) self-service password reset. This feature gives users the ability to change or reset their password with no administrator or help desk involvement. For more information, see [Manage self-service password reset in Microsoft 365 Lighthouse](m365-lighthouse-manage-sspr.md).

## Related content

[Plan an Azure Active Directory Multi-Factor Authentication deployment](/azure/active-directory/authentication/howto-mfa-getstarted) (article)\
[What are security defaults?](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) (article)\
[What is Conditional Access?](/azure/active-directory/conditional-access/overview) (article)\
[Learn how to convert users from per-user MFA to Conditional Access](/azure/active-directory/authentication/howto-mfa-getstarted#convert-users-from-per-user-mfa-to-conditional-access-based-mfa) (article)
