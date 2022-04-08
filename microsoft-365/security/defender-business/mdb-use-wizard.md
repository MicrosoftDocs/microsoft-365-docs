---
title: Use setup wizard in Microsoft Defender for Business
description: Defender for Business includes a wizard-like setup and configuration process. Use the wizard to save time and effort.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: article
ms.date: 04/08/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
ms.custom: intro-get-started
---

# Use the setup wizard in Microsoft Defender for Business

> [!IMPORTANT]
> Microsoft Defender for Business is rolling out to [Microsoft 365 Business Premium](../../business-premium/index.md) customers, beginning March 1, 2022. Defender for Business as a standalone subscription is in in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. Preview includes an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

Microsoft Defender for Business was designed to save small and medium-sized businesses time and effort with a wizard-like experience for initial setup and configuration. The setup wizard guides you through the following steps:

1. Granting access to your security team

2. Setting up email notifications

3. Onboarding Windows devices


:::image type="content" source="media/mdb-wizard-start.png" alt-text="Screenshot of wizard home screen to set up Defender for Business.":::

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about Microsoft Defender for Business</a>. We'd love to hear from you!
>

## Overview of the setup wizard

> [!IMPORTANT]
> Before you begin, make sure that you have already added users to your Microsoft 365 subscription. To get help with this task, see [Add users and assign licenses at the same time](../../admin/add-users/add-users.md).

The wizard is designed to help you set up and configure Defender for Business quickly and efficiently. The wizard walks you through the following steps:

1. **Assign user permissions**. In this step, you grant your security team access to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). Portal access is granted through roles that imply certain permissions. [Learn more about roles and permissions](mdb-roles-permissions.md).

   - A Global Admin can view and edit all settings across your Microsoft 365 tenant. 
   - A Security Administrator can view and edit security settings. 
   - A Security Reader can only view information in reports. 

2. **Set up email notifications**. In this step, you can set up email notifications for your security team. Then, when an alert is generated or a new vulnerability is discovered, your security team will not about it even if they're away from their desk. 

3. **Onboard and configure Windows devices**. In this step, you can onboard your company's Windows devices to Defender for Business quickly. Onboarding devices right away helps to protect those devices from day one. See [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md) for more details.

   - If you're already using Microsoft Intune (part of Microsoft Endpoint Manager), and your company has devices enrolled in Endpoint Manager, you'll be asked whether you want to use [automatic onboarding](mdb-onboard-devices.md#automatic-onboarding-for-windows-devices-enrolled-in-microsoft-endpoint-manager) for some or all of your enrolled Windows devices. Automatic onboarding sets up a connection between Endpoint Manager and Defender for Business, and then onboards Windows devices to Defender for Business seamlessly.

   - If you're not already using Endpoint Manager, or if you have non-Windows devices enrolled in Endpoint Manager, you can [onboard devices to Defender for Business manually](mdb-onboard-devices.md#local-script-in-defender-for-business). 
   
4. **Configure your security policies**. Defender for Business includes default security policies for next-generation protection and firewall protection that can be applied to your company's devices. These default policies use recommended settings and are designed to provide strong protection for your devices. 

   You can also create your own security policies if you wish. And, if you're already using Endpoint Manager, you can continue using that to manage your security policies. 

   To learn more, see [View and edit your security policies and settings](mdb-configure-security-settings.md).

## What happens if I don't use the wizard?

If you choose not to use the wizard, or if the wizard is closed before your setup process is complete, you can still complete your setup and configuration process on your own. 

See [Set up and configure Microsoft Defender for Business](mdb-setup-configuration.md) to walk through these steps:

1. [Assign roles and permissions](mdb-roles-permissions.md) so your security team can access and use the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

2. [Set up email notifications for your security team](mdb-email-notifications.md) so they're in the loop about new alerts or vulnerabilities.

3. [Onboard devices](mdb-onboard-devices.md) so they're protected by Defender for Business.

4. [Manage your security policies](mdb-configure-security-settings.md), which include next-generation protection, firewall protection, and web content filtering.

## Next steps

- [Set up email notifications for your security team](mdb-email-notifications.md)

- [Get started using the Microsoft 365 Defender portal](mdb-get-started.md)

- [Use your Threat & Vulnerability Management dashboard](mdb-view-tvm-dashboard.md)