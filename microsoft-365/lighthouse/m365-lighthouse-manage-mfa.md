---
title: "Manage multifactor authentication in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: aakash
ms.date: 10/27/2023
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
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

Microsoft 365 Lighthouse allows you to manage multifactor authentication (MFA) settings across all tenants. The multifactor authentication page provides detailed information on the status of MFA enablement and the ability to take action on specific users.

For small- and medium-sized business (SMB) customers, Microsoft recommends enabling [security defaults](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) at a minimum. For more complex scenarios, you can use [Conditional Access](/azure/active-directory/conditional-access/overview) to configure specific policies.

> [!NOTE]
> This page provides insights around tenants for which data availability is limited.

## Before you begin

The customer tenant must be active within Microsoft 365 Lighthouse. To determine if a tenant is active, see [Microsoft 365 Lighthouse tenant list overview](m365-lighthouse-tenant-list-overview.md).

## Notify users who aren't registered for MFA

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Users** > **multifactor authentication**.

2. Select the tenant that contains the user(s) that you want to notify.

3. Select **Users not registered for MFA** tab.

4. Select the tenant containing the user(s) you want to notify.

5. Select **Create email**.

    Your default email application creates a sample email addressed to each selected user.

6. Edit the notification email if needed.

7. Send the email.

> [!TIP]
> Select the **Admin**, **Guest**, or **Members** counts to filter the list by type. If any user accounts in the list are emergency access or service accounts for which you don't want to require MFA, select those user accounts and then select **Exclude users**. The excluded user accounts will no longer appear in the list of users not registered for MFA.

> [!NOTE]
> Lighthouse opens your default email client and prepopulates the email message with instructions to register for MFA. All the selected users will be included on the BCC line. If you prefer to individually email users, you can select the email icon next to the username.
>
> If you want to use a different email account, you can export the list of users to a file. You can also download sample email templates you can customize with your company branding.

## Exclude users from MFA registration

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Users \> multifactor authentication**.

2. Select the tenant containing the user(s) you want to exclude.

3. Select **Users not registered for MFA** tab.

4. Select the user(s) that you want to exclude.

5. Select **Exclude users**.

6. In the **Exclude users** pane, select **Save changes** to save the changes in both Lighthouse and the tenant.

> [!NOTE]
> Ensure that the **Microsoft 365 Lighthouse - MFA Exclusions** security group is excluded from the tenant's Conditional Access policies that require MFA and from the applicable deployment tasks in the tenant's deployment plan in Lighthouse.

## Block sign-in for users not registered for MFA

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Users** > **multifactor authentication**.
2. Select the tenant that contains the user(s) you want to block.
3. Select **Users not registered for MFA** tab.
4. Select the user(s) that you want to block.
5. Select **Block sign-in**.
6. In the **Manage sign-in status** pane, select **Block users from signing in**.
7. Select **Save**.

> [!NOTE]
> Ensure If any shared mailbox accounts or inactive user accounts appear in the list of users not registered for MFA, we recommend you block sign-in for those accounts to remove them from the list.

Blocking a user prevents anyone from signing in as this user and is a good idea when you think their password or username may be compromised. Blocking a user immediately stops any new sign-ins for that account. The account will be automatically signed out from all Microsoft services within 60 minutes if the account is signed in. This won't stop the account from receiving mail and doesn't delete any account data.

## Remove a user from the Excluded users group

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Users** > **multifactor authentication**.
2. Select the tenant that contains the user(s) you want to remove.
3. Select **Exclude users** tab.
4. Select the user(s) that you want to remove.
5. Select **Remove**.
6. In the confirmation message, select **Remove**.

> [!NOTE]
> The excluded users listed in Lighthouse will reflect the current membership **Microsoft 365 Lighthouse - MFA exclusions** security group but will not confirm that the group has been excluded from the tenant's Conditional Access policies that require MFA or from the applicable deployment tasks in the tenant's deployment plan in Lighthouse.

## Next steps

Once MFA is enabled, you can enable Microsoft Entra self-service password reset (SSPR). SSPR allows users to change or reset passwords without administrator or help desk involvement. For more information, see [Manage self-service password reset in Microsoft 365 Lighthouse](m365-lighthouse-manage-sspr.md).

## Related content

[Overview of multifactor authentication in Lighthouse](m365-lighthouse-mfa-overview.md) (article)\
[Plan a Microsoft Entra multifactor authentication deployment](/azure/active-directory/authentication/howto-mfa-getstarted) (article)\
[What are security defaults?](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) (article)\
[What is Conditional Access?](/azure/active-directory/conditional-access/overview) (article)\
[Learn how to convert users from per-user MFA to Conditional Access](/azure/active-directory/authentication/howto-mfa-getstarted#convert-users-from-per-user-mfa-to-conditional-access-based-mfa) (article)
