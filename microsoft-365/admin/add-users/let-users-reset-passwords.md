---
title: "Let users reset their own passwords"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 01/05/2026
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
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

## Before you begin
  
- Self-service password reset is included with any Microsoft 365 business, education, or nonprofit paid plan. It doesn't work with Microsoft 365 trial.

- Self-service password reset uses Azure. There's no extra charge to turn on self-service password reset.

- If you're using Active Directory on premises, you can set up self-service password reset, but it requires a paid subscription to Microsoft Entra ID P1 or P2.

## Watch: Let users reset their own passwords

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198214).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=97a8f9fb-6e3c-4432-beca-3f8233c3d6dc]

## Steps: Let people reset their own passwords

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/), in the left navigation pane, select **Settings** > **Org settings**, and then select the **Security & privacy** tab. (Or, use this link to open that tab: [Security & privacy](https://go.microsoft.com/fwlink/p/?linkid=2072756)).

2. Select **Self-service password reset**, and then select **Go to the Azure portal to turn on self-service password reset**. 

   :::image type="content" source="../../media/let-users-reset-passwords/self-service-password-reset.png" alt-text="Screenshot showing self-service password reset flyout." lightbox="../../media/let-users-reset-passwords/self-service-password-reset.png":::

   This option takes you to the Password reset page in the Microsoft Entra admin center.

3. On the **Password reset | Properties** page, select an option, such as **All** or **Selected**.

   :::image type="content" source="../../media/let-users-reset-passwords/password-reset-properties.png" alt-text="Screenshot showing password reset properties options." lightbox="../../media/let-users-reset-passwords/password-reset-properties.png":::

   If you choose **Selected**, specify groups to enable self-service password reset.

4. Select **Save**.

5. To specify authentication methods for users, see [Manage authentication methods for Microsoft Entra ID](/entra/identity/authentication/concept-authentication-methods-manage).


## Related content

- [Set the password expiration policy for your organization](../manage/set-password-expiration-policy.md)

- [Microsoft 365 Business training videos](../../business-video/index.yml) (link page)

- [Microsoft Entra authentication documentation](/entra/identity/authentication/)