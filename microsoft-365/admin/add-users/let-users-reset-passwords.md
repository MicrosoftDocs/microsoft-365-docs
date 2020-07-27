---
title: "Let users reset their own passwords"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: mnirkhe
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- MSStore_Link
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 5bc3f460-13cc-48c0-abd6-b80bae72d04a
description: "Learn how you can reset your passwords using the self-service password reset tool."
---

# Let users reset their own passwords

Getting crushed with people asking you to reset their passwords? As the Microsoft 365 admin, you can let people use the [self-service password reset tool](https://go.microsoft.com/fwlink/p/?LinkId=522677) so you don't have to reset passwords for them. Less work for you! 
  
Here are a few things you need to know:
  
- You get self-service password reset for cloud users **free** with any Microsoft 365 business, education, or nonprofit paid plan. It doesn't work with Microsoft 365 trial.

- It uses Azure. You'll automatically get this feature in Azure for **free** when you do these steps. It won't cost you anything to turn on self-service password reset if you don't use other Azure features.

- **If you're using an on-premises Active Directory**, the above two points don't apply. Rather, you can set this up but **it requires a paid subscription to Azure AD Premium**.

Watch a short video about letting users reset their own passwords. <br><br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE3AY8S]

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](https://support.microsoft.com/office/6ab4bbcd-79cf-4000-a0bd-d42ce4d12816).

## Let people reset their own passwords

These steps turn on self-service password reset for everyone in your business.
  
::: moniker range="o365-worldwide"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Settings** > **Org settings** page.

::: moniker-end

::: moniker range="o365-germany"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">admin center</a>, go to the **Settings** \> **Security &amp; privacy** page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Settings** \>**Settings** \> **Security &amp; privacy** page.

::: moniker-end

2. At the top of the **Org settings** page, select the **Security & Privacy** tab.
  
3. Select **Self-service Password Reset**.

4. Under **Self-service password reset**, select **Go to the Azure portal to turn on self-service password reset**.

5. In the left navigation pane, select **Users**, and then, on the **Users | All users** page, select **Password reset**.
  
6. On the **Properties** page, select **All** to enable it for everyone in your business, and then select **Save**.
  
7. When your users sign in, they will be prompted to enter additional contact information that will help them reset their password in the future.

## Related articles

[Set the password expiration policy for your organization](../manage/set-password-expiration-policy.md)
  
[Set an individual user's password to never expire](set-password-to-never-expire.md)

[Microsoft 365 Business training videos](https://support.microsoft.com/office/6ab4bbcd-79cf-4000-a0bd-d42ce4d12816)
