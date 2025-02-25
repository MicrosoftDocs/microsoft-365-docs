---
title: "Let users reset their own passwords"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 10/01/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- highpri
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- VSBFY23
- MSStore_Link
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
- adminvideo
- business_assist
description: "Learn how you can set a policy in the Microsoft 365 admin center to allow users to reset their own passwords using the self-service password reset tool."
---

# Let users reset their own passwords

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

Check out [Microsoft 365 small business video help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

This article is for people who set password expiration policy for a business, school, or nonprofit. You can let people use the [self-service password reset tool](https://go.microsoft.com/fwlink/p/?LinkId=522677) so you don't have to reset passwords for them. Less work for you!

To complete these steps, you must be a [password administrator](about-admin-roles.md).

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Before you begin
  
- You get self-service password reset for cloud users **free** with any Microsoft 365 business, education, or nonprofit paid plan. It doesn't work with Microsoft 365 trial.

- It uses Azure. You'll automatically get this feature in Azure for **free** when you do these steps. It won't cost you anything to turn on self-service password reset.

- **If you're using an on-premises Active Directory**, you can set this up but **it requires a paid subscription to Microsoft Entra ID P1 or P2**.

## Watch: Let users reset their own passwords

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198214).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=97a8f9fb-6e3c-4432-beca-3f8233c3d6dc]

## Steps: Let people reset their own passwords

1. In the Microsoft 365 admin center, in the left navigation pane, select **Settings** > **Org settings**, and then select <a href="https://go.microsoft.com/fwlink/p/?linkid=2072756" target="_blank">**Security & privacy**</a> tab.
1. Select **Self-service password reset**, and then choose **Go to the Azure portal to turn on self-service password reset**.
1. In the left navigation pane, select **Users**, and then **Users - all users**
1. Select **Password reset**.
1. Select **All** to enable self-service password reset for all your users, or choose **Selected** to specify **Groups** you want, and then select **Save**.
1. On the **Password reset | Properties** page, select **Authentication methods** and select the **Number of methods required to reset** and desired **Methods available to users**, and then select **Save**.
1. When your users sign in, they will be prompted to enter additional contact information that will help them reset their password in the future.

## Related content

[Set the password expiration policy for your organization](../manage/set-password-expiration-policy.md) (article)\
[Set an individual user's password to never expire](set-password-to-never-expire.md) (article)\
[Microsoft 365 Business training videos](../../business-video/index.yml) (link page)
