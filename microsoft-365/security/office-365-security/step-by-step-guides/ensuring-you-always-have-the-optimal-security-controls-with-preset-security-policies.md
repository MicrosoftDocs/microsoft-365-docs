---
title: Ensuring you always have the optimal security controls with preset security policies
description: The steps to ensure you always have the best security controls with preset security policies. Preset policies let you select a security profile of either Standard or Strict. Microsoft will manage and maintain security controls across Microsoft Defender for Office 365 for you.
search.product: 
search.appverid: 
ms.prod: m365-security
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
ms.collection: m365-guidance-templates
ms.topic: how-to
ms.technology: mdo
---

# Ensuring you always have the optimal security controls with preset security policies

Preset security policies allow you to select a security profile of either Standard or Strict, and have Microsoft manage and maintain security controls across Microsoft Defender for Office 365 for you.

As new controls are added or if the best practice setting for a security control changes with the evolving threat landscape, Microsoft will automatically update security control settings for users assigned to a Standard or Strict preset security policy. By using Security Preset policies, you will always have Microsoft’s recommended, best practice configuration for your users.

## What you will need
- Microsoft Defender for Office 365 Plan 1 or higher (Included in E5)
- Sufficient permissions (Security Administrator role)
- 5 minutes to perform the steps below.

## Choosing between Standard and Strict policies

Our Strict preset security policy has more aggressive limits and settings for security controls that will result in more aggressive detections and will involve the admin in making decisions on which blocked emails are released to end users.

- Collect the list of your users that require more aggressive detections even if it means more good mail will get flagged as suspicious. These are typically your executive staff, executive support staff, and historically highly targeted users.

- Ensure that the selected users have admin coverage to review and release emails if the end user thinks that the mail might be good and requests that the message be released to them.

- If the criteria above are met, then the user should be placed in the Strict preset security policy. Otherwise the user should be placed in the Standard preset security policy.

> [!TIP]
> For information on what Standard and Strict security polices are, see this [article](../../office-365-security/recommended-settings-for-eop-and-office365.md).

## Enable Security Presets

Once you’ve chosen between the Standard and Strict security preset policies for your users, it takes a few further steps to assign users to each preset.

1. Identify the users, groups, or domains you would like to include in Standard and Strict security presets.
1. Login to the Microsoft Security portal at https://security.microsoft.com.
1. On the left nav, under **Email & collaboration**, select **Policies & rules**.
1. Select **Threat policies**.
1. Select **Preset Security Policies** underneath the **Templated policies** heading
1. Select **Manage** underneath the Standard protection preset.
1. Add the users, groups, or domains you want to apply the Standard preset to, in the EOP protections apply to section. Click the **Next** button.
1. Add the users, groups, or domains you want to apply the Standard preset to, in the MDO protections apply to section. Click the **Next** button.
1. Click on the **Confirm** button.
1. Select the **Manage** link in the Strict protection preset.
1. Add the users, groups, or domains you want to apply the Standard preset to, in the EOP protections apply to section. Click the **Next** button.
1. Add the users, groups, or domains you want to apply the Standard preset to, in the MDO protections apply to section. Click the **Next** button.
1. Click on the **Confirm** button.

> [!TIP]
> To learn more about preset polcies click [here](../../office-365-security/preset-security-policies.md)

## Next Steps

Use config analyzer to determine if your users are configured per Microsoft’s best practices.

> [!TIP]
> Configuration analyzer allows admins to find and fix security policies where the settings are below the Standard or Strict protection profile settings in preset security policies. Find out more about Configuration analyzer [here](../../office-365-security/configuration-analyzer-for-security-policies.md).

Secure Presets are always suggested because it ensures you are always exercising Microsoft best practices. However, in some cases customized configurations are required. Learn about custom policies [here](../../office-365-security/tenant-wide-setup-for-increased-security.md).

