---
title: Steps to set up the Standard or Strict preset security policies for Microsoft Defender for Office 365
description: Step to setup preset security policies in Microsoft Defender for Office 365 so you have the security recommended by the product. Preset policies set a security profile of either *Standard* or *Strict*. Set these and Microsoft Defender for Office 365 will manage and maintain these security controls for you.
search.product:
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
ms.subservice: mdo
search.appverid: met150
ms.date: 8/21/2023
---

# Set up steps for the Standard or Strict preset security policies in Microsoft Defender for Office 365

Does Microsoft Defender for Office 365 gave you a way to apply security policies that it would then maintain?

Did you know that when a best practice for a security control changes due to the evolving threat landscape, or as new controls are added, Microsoft *automatically* updates security control settings for users assigned to a *Standard* or *Strict* preset security policy?

By using preset security policies (*Standard* or *Strict*), you'll always have Microsoft's *recommended, best practice, configuration* for your users.

**Use the steps below** to apply preset security policies and have Microsoft Defender for Office 365 manage and maintain security controls *for you*.

## What you will need

- Microsoft Defender for Office 365 Plan 1 or higher (Included in E5)
- Sufficient permissions (Security Administrator role)
- 5 minutes to perform the steps below.

## Choose between Standard and Strict policies

Our Strict preset security policy has more aggressive limits and settings for security controls that result in more aggressive detections and involve the admin in making decisions on which blocked emails are released to end users.

- Collect the list of your users that require more aggressive detections even if it means more good mail gets flagged as suspicious. These are typically your executive staff, executive support staff, and historically highly targeted users.

- Ensure that the selected users have admin coverage to review and release emails if the end user thinks that the mail might be good and requests that the message be released to them.

- If the criteria above are met, then the user should be placed in the Strict preset security policy. Otherwise the user should be placed in the Standard preset security policy.

> [!TIP]
> For information on what Standard and Strict security polices are, see this [article](../../office-365-security/recommended-settings-for-eop-and-office365.md).

## Enable Security Presets in Microsoft Defender for Office 365

Once you've chosen between the Standard and Strict security preset policies for your users, it takes a few further steps to assign users to each preset.

1. Identify the users, groups, or domains you would like to include in Standard and Strict security presets.
1. Login to the Microsoft Security portal at <https://security.microsoft.com>.
1. On the left nav, under **Email & collaboration**, select **Policies & rules**.
1. Select **Threat policies**.
1. Select **Preset Security Policies** underneath the **Templated policies** heading
1. Select **Manage** underneath the Standard protection preset.
1. Select **All Recipients** to apply Exchange Online Protection tenant wide, or select **Specific recipients** to manually add users, groups, or domains you want to apply the protection policy to. Click the **Next** button.
1. Select **All Recipients** to apply Defender for Office 365 Protection tenant wide, or select **Specific recipients** to manually add add users, groups, or domains you want to apply the protection policy to. Click the **Next** button.
1. On the **Impersonation Protection** section, add email addresses & domains to protect from impersonation attacks, then add any trusted senders and domains you don't want the impersonation protection to apply to, then press **Next**.
1. Click on the **Confirm** button.
1. Select the **Manage protection settings** link in the Strict protection preset.
1. Repeat steps 7-10 again, but for these users *strict* protection should be applied.
1. Click on the **Confirm** button.

> [!TIP]
> To learn more about preset policies click [here](../../office-365-security/preset-security-policies.md)

## Your next step is Config Analyzer

Use config analyzer to determine if your users are configured per Microsoft's best practices.

> [!TIP]
> Configuration analyzer allows admins to find and fix security policies where the settings are below the Standard or Strict protection profile settings in preset security policies. Find out more about Configuration analyzer [here](../../office-365-security/configuration-analyzer-for-security-policies.md).

Secure Presets are always recommended because it *ensures* admins are exercising Microsoft best practices. However, in some cases customized configurations are required. Learn about custom policies [here](../../office-365-security/tenant-wide-setup-for-increased-security.md).
