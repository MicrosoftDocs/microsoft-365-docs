---
title: Set up and configure Microsoft Defender for Business
description: See how to set up your Defender for Business cybersecurity solution. Onboard devices, review your policies, and edit your settings as needed.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 04/18/2023
ms.reviewer: efratka, jomaun
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365solution-mdb-setup
- highpri
- tier1
---

# Set up and configure Microsoft Defender for Business

After you have [signed up for Defender for Business](get-defender-business.md), and you have [added users and assigned licenses](mdb-add-users.md), you're ready to set up and configure Defender for Business. 

## Setup options

When you're read to set up and configure Defender for Business, you have can choose from several options:

- **Use the setup wizard** to grant access to your security team, set up email notifications for your security team, onboard your company's Windows devices, and apply default security settings to those devices; or 
- **Work through the setup process manually**, step by step, and complete the setup steps yourself.

> [!NOTE]
> Using the setup wizard is optional. If you choose not to use the wizard, or if the wizard is closed before your setup process is complete, you can complete the setup and configuration process on your own.

Select a tab to learn more about each option.

## [**Setup wizard**](#tab/Wizard)

> [!IMPORTANT]
> You must be a global administrator to run the setup wizard. See [Security roles and permissions in Defender for Business](mdb-roles-permissions.md).

## How to start the setup wizard

In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Assets** > **Devices**. The setup wizard is designed to run one time, and it resembles the following image: 

:::image type="content" source="media/mdb-wizard-start.png" alt-text="Screenshot of wizard home screen to set up Defender for Business." lightbox="media/mdb-wizard-start.png":::

## The setup wizard flow

The setup wizard is designed to help you set up and configure Defender for Business quickly and efficiently. It walks you through the following steps:

1. **Assign user permissions**. In this step, you grant your security team access to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). This portal is where you and your security team will manage your security capabilities, view alerts, and take any needed actions on detected threats. Portal access is granted through roles that imply certain permissions. [Learn more about roles and permissions](mdb-roles-permissions.md). 

   In Defender for Business, members of your security team can be assigned one of the following three roles:<br/>
   
   - **Global Admin**: A global admin can view and edit all settings across your Microsoft 365 tenant. The global admin does the initial setup and configuration for your company's Microsoft 365 subscription. 
   - **Security Administrator**: A security administrator can view and edit security settings, and take action when threats are detected.
   - **Security Reader**: A security reader can view information in reports, but can't change any security settings. 

2. **Set up email notifications**. In this step, you can set up email notifications for your security team. Then, when an alert is generated or a new vulnerability is discovered, your security team won't miss it even if they're away from their desk. [Learn more about email notifications](mdb-email-notifications.md). 

3. **Onboard and configure Windows devices**. In this step, you can onboard your company's Windows devices to Defender for Business quickly. Onboarding devices right away helps to protect those devices from day one. [Learn more about onboarding devices to Defender for Business](mdb-onboard-devices.md).

   - **If you're not using Intune**, you can onboard devices in the Microsoft 365 Defender portal. 
   - **If you're already using Microsoft Intune**, and your company has devices enrolled in Intune, you can continue using Intune. See [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security).
   
4. **Configure your security policies**. Defender for Business includes default security policies for next-generation protection and firewall protection that can be applied to your company's devices. These default policies use recommended settings and are designed to provide strong protection for your devices. You can also create your own security policies. See [View and edit your security policies and settings](mdb-configure-security-settings.md).

   > [!NOTE]
   > If you're already using Intune to manage your devices and security policies, you can continue using it. See [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security).

## What is automatic onboarding?

Automatic onboarding is a simplified way to onboard Windows devices to Defender for Business. Automatic onboarding is only available for Windows devices that are already enrolled in Microsoft Intune. 

While you're using the setup wizard, the system will detect whether Windows devices are already enrolled in Intune. You'll be asked if you want to use automatic onboarding for all or some of those devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more devices later. 

To onboard other devices, see [Onboard devices to Defender for Business](mdb-onboard-devices.md).

> [!TIP]
> - We recommend selecting the "all devices enrolled" option. That way, when Windows devices are enrolled in Intune later on, they'll be onboarded to Defender for Business automatically. 
> - If you've been managing security policies and settings in the Intune admin center, we recommend switching to the Microsoft 365 Defender portal to manage your devices, policies, and settings. To learn more, see [Choose where to manage security policies and devices](mdb-configure-security-settings.md#choose-where-to-manage-security-policies-and-devices).

## [**Manual setup**](#tab/Manual)

## The setup and configuration process

If you're setting up Defender for Business manually, here's the overall process you'll follow:

1. **Get Defender for Business**. Start a trial or paid subscription today. You can choose from the standalone version of Defender for Business, or get it as part of Microsoft 365 Business Premium. See [Get Microsoft Defender for Business](get-defender-business.md).

2. **Add users and assign licenses**. Assign a license for Defender for Business (or Microsoft 365 Business Premium) to each member of your organization to protect their devices. You'll also want to make sure multifactor authentication is enabled for all users. See [Add users and assign licenses in Microsoft Defender for Business](mdb-add-users.md).

3. **Assign roles and permissions to your security team**. People on your security team need certain permissions to perform tasks, such as reviewing detected threats & remediation actions, viewing & editing policies, onboarding devices, and using reports. You can grant these permissions through roles. See [Assign roles and permissions](mdb-roles-permissions.md). 

4. **Set up email notifications for your security team**. As alerts are generated, or new vulnerabilities are discovered, people on your security team will be notified automatically. See [Set up email notifications](mdb-email-notifications.md).

5. **Onboard devices to Defender for Business**. The sooner you get your devices onboarded, the sooner they're protected by Defender for Business. You can onboard devices by downloading a script from the Microsoft 365 Defender portal, and then running that script on devices to onboard. Or, if your subscription includes Microsoft Intune, you can use it to enroll devices. See [Onboard devices to Defender for Business](mdb-onboard-devices.md). 

6. **Set up and review your security policies and settings**. Some security policies and settings are preconfigured with default settings in Defender for Business. Other policies, such as web content filtering and attack surface reduction rules, must be set up. See [Configure your security settings and policies](mdb-configure-security-settings.md).

> [!IMPORTANT]
> If you have Microsoft 365 Business Premium, you have additional capabilities to set up and configure. See [Microsoft 365 Business Premium – productivity and cybersecurity for small business](../../business-premium/index.md).

--- 

## Next steps

- [Onboard more devices](mdb-onboard-devices.md)
- [View and edit your security policies and settings](mdb-configure-security-settings.md)
- [View your reports](mdb-reports.md)
