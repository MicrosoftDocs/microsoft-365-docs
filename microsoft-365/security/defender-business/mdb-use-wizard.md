---
title: Use setup wizard in Microsoft Defender for Business
description: Defender for Business makes setup easy with a wizard that runs the first time you use Defender for Business. See how the setup wizard works.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: article
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 08/09/2022
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
ms.custom: intro-get-started
---

# Use the setup wizard in Microsoft Defender for Business

Defender for Business was designed to save small and medium-sized businesses time and effort. For example, you can do initial setup and configuration with a setup wizard. The setup wizard guides you through granting access to your security team, setting up email notifications for your security team, and onboarding your company's Windows devices.

> [!TIP]
> Using the setup wizard is optional. You can choose to work through the setup and configuration process manually. To learn more, see:
> - [What happens if I don't use the wizard?](#what-happens-if-i-dont-use-the-wizard)
> - [How to set up and configure Defender for Business](mdb-setup-configuration.md)

## How to start the setup wizard

The setup wizard is designed to run the first time someone in your company signs into the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). 

If your company has been using Microsoft 365 Business Premium, the Defender for Business setup wizard will run the first time someone goes to **Assets** > **Devices**. 

The setup wizard start screen looks like the following image:

:::image type="content" source="media/mdb-wizard-start.png" alt-text="Screenshot of wizard home screen to set up Defender for Business.":::

## The setup wizard flow

> [!IMPORTANT]
> You must be a global administrator to run the setup wizard. The person who signed up your company for Microsoft 365 or for Defender for Business is a global administrator by default.

The setup wizard is designed to help you set up and configure Defender for Business quickly and efficiently. The wizard walks you through the following steps:

1. **Assign user permissions**. In this step, you grant your security team access to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). This portal is where you and your security team will manage your security capabilities, view alerts, and take any needed actions on detected threats. Portal access is granted through roles that imply certain permissions.

   In Defender for Business, members of your security team can be assigned one of the following three roles:<br/>
   
   - **Global Admin**: A global admin can view and edit all settings across your Microsoft 365 tenant. The global admin does the initial setup and configuration for your company's Microsoft 365 subscription. 
   - **Security Administrator**: A security administrator can view and edit security settings, and take action when threats are detected.
   - **Security Reader**: A security reader can view information in reports, but can't change any security settings. 

   [Learn more about roles and permissions](mdb-roles-permissions.md). 

2. **Set up email notifications**. In this step, you can set up email notifications for your security team. Then, when an alert is generated or a new vulnerability is discovered, your security team won't miss it even if they're away from their desk. [Learn more about email notifications](mdb-email-notifications.md). 

3. **Onboard and configure Windows devices**. In this step, you can onboard your company's Windows devices to Defender for Business quickly. Onboarding devices right away helps to protect those devices from day one. [Learn more about onboarding devices to Defender for Business](mdb-onboard-devices.md).

   - **If you're not using Intune**, you can onboard devices in the Microsoft 365 Defender portal. 
   - **If you're already using Microsoft Intune**, and your company has devices enrolled in Intune, you can continue using Intune. See [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security).
   
4. **Configure your security policies**. Defender for Business includes default security policies for next-generation protection and firewall protection that can be applied to your company's devices. These default policies use recommended settings and are designed to provide strong protection for your devices. You can also create your own security policies. See [View and edit your security policies and settings](mdb-configure-security-settings.md).

   > [!NOTE]
   > If you're already using Intune to manage your devices and security policies, you can continue using the Microsoft Endpoint Manager admin center. See [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security).


## What is automatic onboarding?

Automatic onboarding is a simplified way to onboard Windows devices to Defender for Business. Automatic onboarding is only available for Windows devices that are already enrolled in Microsoft Intune. 

While you're using the setup wizard, the system will detect whether Windows devices are already enrolled in Intune. You'll be asked if you want to use automatic onboarding for all or some of those devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more devices later. 

To onboard other devices, see [Onboard devices to Defender for Business](mdb-onboard-devices.md).

> [!TIP]
> - We recommend selecting the "all devices enrolled" option. That way, when Windows devices are enrolled in Intune later on, they'll be onboarded to Defender for Business automatically. 
> - If you've been managing security policies and settings in the Endpoint Manager admin center, we recommend switching to the Microsoft 365 Defender portal to manage your devices, policies, and settings. To learn more, see [Choose where to manage security policies and devices](mdb-configure-security-settings.md#choose-where-to-manage-security-policies-and-devices).

## What happens if I don't use the wizard?

Using the setup wizard is optional. If you choose not to use the wizard, or if the wizard is closed before your setup process is complete, you can complete the setup and configuration process on your own. 

See [Set up and configure Defender for Business](mdb-setup-configuration.md) to walk through these steps:

1. **[Assign roles and permissions](mdb-roles-permissions.md)** so your security team can access and use the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

2. **[Set up email notifications for your security team](mdb-email-notifications.md)** so they're in the loop about new alerts or vulnerabilities.

3. **[Onboard devices](mdb-onboard-devices.md)** so they're protected by Defender for Business.

4. **[Manage your security policies](mdb-configure-security-settings.md)**, which include next-generation protection, firewall protection, and web content filtering.

## Next steps

- [Onboard more devices to Defender for Business](mdb-onboard-devices.md)
- [View and edit your security policies and settings in Defender for Business](mdb-configure-security-settings.md)