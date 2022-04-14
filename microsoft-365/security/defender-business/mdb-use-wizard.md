---
title: Use setup wizard in Microsoft Defender for Business
description: Defender for Business includes a wizard-like setup and configuration process. Use the wizard to save time and effort.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: article
ms.date: 04/12/2022
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

> [!NOTE]
> Microsoft Defender for Business is now included in [Microsoft 365 Business Premium](../../business-premium/index.md). 

Microsoft Defender for Business was designed to save small and medium-sized businesses time and effort. For example, you can do initial setup and configuration with a setup wizard. The setup wizard guides you through granting access to your security team, setting up email notifications for your security team, and onboarding your company's Windows devices.

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about security</a>. We'd love to hear from you!
>

## How to start the setup wizard

The setup wizard is designed to run the first time someone in your company signs into the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). 

If your company has been using Microsoft 365 Business Premium, the Defender for Business setup wizard will run the first time someone goes to **Endpoints** > **Device inventory**. 

The setup wizard start screen looks like the following image:

:::image type="content" source="media/mdb-wizard-start.png" alt-text="Screenshot of wizard home screen to set up Defender for Business.":::

## The setup wizard flow

> [!IMPORTANT]
> You must be a global administrator to run the setup wizard. The person who signed up your company for Microsoft 365 or for Microsoft Defender for Business is a global administrator by default.

The setup wizard is designed to help you set up and configure Defender for Business quickly and efficiently. The wizard walks you through the following steps:

1. **Assign user permissions**. In this step, you grant your security team access to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). This portal is where you and your security team will manage your security capabilities, view alerts, and take any needed actions on detected threats. Portal access is granted through roles that imply certain permissions. In Defender for Business, members of your security team can be assigned one of the following three roles:<br/>
   
   - **Global Admin**: A global admin can view and edit all settings across your Microsoft 365 tenant. The global admin does the initial setup and configuration for your company's Microsoft 365 subscription. 
   - **Security Administrator**: A security administrator can view and edit security settings, and take action when threats are detected.
   - **Security Reader**: A security reader can view information in reports, but cannot change any security settings. 
      
   [Learn more about roles and permissions](mdb-roles-permissions.md). 

2. **Set up email notifications**. In this step, you can set up email notifications for your security team. Then, when an alert is generated or a new vulnerability is discovered, your security team will not about it even if they're away from their desk. 

   [Learn more about email notifications](mdb-email-notifications.md). 

3. **Onboard and configure Windows devices**. In this step, you can onboard your company's Windows devices to Defender for Business quickly. Onboarding devices right away helps to protect those devices from day one. 

   - **If you're already using Microsoft Endpoint Manager** (which includes Microsoft Intune), and your company has devices enrolled in Endpoint Manager, you'll be asked whether you want to use [automatic onboarding](#what-is-automatic-onboarding) for some or all of your enrolled Windows devices. Automatic onboarding sets up a connection between Endpoint Manager and Defender for Business, and then onboards Windows devices to Defender for Business seamlessly. 
   - **If you're not already using Endpoint Manager**, you can [onboard devices to Defender for Business](mdb-onboard-devices.md). 
   
   See [Learn more about onboarding devices to Microsoft Defender for Business](mdb-onboard-devices.md).
   
4. **Configure your security policies**. Defender for Business includes default security policies for next-generation protection and firewall protection that can be applied to your company's devices. These default policies use recommended settings and are designed to provide strong protection for your devices. You can also create your own security policies. And, if you're already using Endpoint Manager, you can continue using that to manage your security policies.

   To learn more, see [View and edit your security policies and settings](mdb-configure-security-settings.md). |

## What is automatic onboarding?

Automatic onboarding is a simplified way to onboard Windows devices to Defender for Business. Automatic onboarding is only available for devices that are already enrolled in Microsoft Endpoint Manager (or Microsoft Intune). 

While you are using the setup wizard, the system will detect whether Windows devices are already enrolled in Endpoint Manager. You'll be asked if you want to use automatic onboarding for all or some of those devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more devices later.

> [!TIP]
> - We recommend selecting the "all devices enrolled" option. That way, when Windows devices are enrolled in Endpoint Manager later on, they'll be onboarded to Defender for Business automatically. 
> - If you've been managing security policies and settings in Endpoint Manager, we recommend switching to the Microsoft 365 Defender portal to manage your devices, policies, and settings. To learn more, see [Choose where to manage security policies and devices](mdb-configure-security-settings.md#choose-where-to-manage-security-policies-and-devices).

## What happens if I don't use the wizard?

Using the setup wizard is optional. If you choose not to use the wizard, or if the wizard is closed before your setup process is complete, you can complete the setup and configuration process on your own. 

See [Set up and configure Microsoft Defender for Business](mdb-setup-configuration.md) to walk through these steps:

1. **[Assign roles and permissions](mdb-roles-permissions.md)** so your security team can access and use the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

2. **[Set up email notifications for your security team](mdb-email-notifications.md)** so they're in the loop about new alerts or vulnerabilities.

3. **[Onboard devices](mdb-onboard-devices.md)** so they're protected by Defender for Business.

4. **[Manage your security policies](mdb-configure-security-settings.md)**, which include next-generation protection, firewall protection, and web content filtering.

## Next steps

- [Set up email notifications for your security team](mdb-email-notifications.md)
- [Get started using the Microsoft 365 Defender portal](mdb-get-started.md)
- [Use your Threat & Vulnerability Management dashboard](mdb-view-tvm-dashboard.md)