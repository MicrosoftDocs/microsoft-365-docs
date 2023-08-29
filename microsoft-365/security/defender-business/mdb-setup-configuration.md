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
ms.date: 05/11/2023
ms.reviewer: efratka, nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365solution-mdb-setup
- highpri
- tier1
---

# Set up and configure Microsoft Defender for Business


This article describes the overall setup process for Defender for Business. 

:::image type="content" source="media/mdb-setup-overview.png" alt-text="Overview of the setup process for Microsoft Defender for Business.":::

The process includes:

1. [Getting Defender for Business](get-defender-business.md).
2. [Adding users and assigning licenses](mdb-add-users.md).
3. [Assigning security roles and permissions for your security team](mdb-roles-permissions.md).
4. [Setting up email notifications for your security team](mdb-email-notifications.md).
5. [Onboarding devices so they're protected as soon as possible](mdb-onboard-devices.md).
6. [Setting up and reviewing your security policies and settings](mdb-configure-security-settings.md).

## Setup options

When you're ready to set up and configure Defender for Business, you can choose from several options:

- **Use the setup wizard** to grant access to your security team, set up email notifications for your security team, onboard your company's Windows devices, and apply default security settings to those devices; or 
- **Work through the setup process manually**, step by step, and complete the setup steps yourself.

> [!NOTE]
> Using the setup wizard is optional. If you choose not to use the wizard, or if the wizard is closed before your setup process is complete, you can complete the setup and configuration process on your own.

## [**Setup wizard**](#tab/Wizard)

> [!IMPORTANT]
> You must be a global administrator to complete setup tasks, including running the setup wizard. See [Security roles and permissions in Defender for Business](mdb-roles-permissions.md).

1. **Get Defender for Business**. Start a trial or paid subscription today. You can choose from the standalone version of Defender for Business, or get it as part of Microsoft 365 Business Premium. See [Get Microsoft Defender for Business](get-defender-business.md). And, if you're planning to onboard servers, see [How to get Microsoft Defender for Business servers](get-defender-business.md#how-to-get-microsoft-defender-for-business-servers).

   In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Assets** > **Devices**. If Defender for Business isn't provisioned yet, that process begins now. 

2. **Add users and assign Defender for Business licenses**. You'll want to do this task before you run the setup wizard. See [Add users and assign licenses in Microsoft Defender for Business](mdb-add-users.md).

   While you're adding users, make sure to create a list of your security team's names and email addresses. This list will come in handy while you are using the setup wizard. To view a list of users, in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)), go to **Users** > **Active users**.

3. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Assets** > **Devices**. You should see the setup wizard home screen, as shown in the following image: 

      :::image type="content" source="media/mdb-wizard-start.png" alt-text="Screenshot of wizard home screen to set up Defender for Business." lightbox="media/mdb-wizard-start.png":::

   Select **Get started** to begin using the wizard.

4. **Assign user permissions**. In this first step of the setup wizard, you grant your security team access to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). This portal is where you and your security team will manage your security capabilities, view alerts, and take any needed actions on detected threats. Portal access is granted through roles that imply certain permissions. [Learn more about roles and permissions](mdb-roles-permissions.md). 

   In Defender for Business, members of your security team can be assigned one of the following three roles:<br/>
   
   - **Global Admin**: A global admin can view and edit all settings across your Microsoft 365 tenant. The global admin does the initial setup and configuration for your company's Microsoft 365 subscription. 
   - **Security Administrator**: A security administrator can view and edit security settings, and take action when threats are detected.
   - **Security Reader**: A security reader can view information in reports, but can't change any security settings. 

5. **Set up email notifications**. In this step of the setup wizard, you can set up email notifications for your security team using the list you created in step 2. Then, when an alert is generated or a new vulnerability is discovered, your security team won't miss it even if they're away from their desk. [Learn more about email notifications](mdb-email-notifications.md). 

6. **Onboard and configure Windows devices**. In this step of the setup wizard, you can onboard Windows devices to Defender for Business. Onboarding devices right away helps to protect those devices from day one. Note that this step of the wizard applies to Windows devices only. You can onboard other devices later. See [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md). 

   > [!NOTE]
   > If your organization is using Microsoft Intune, and devices are already enrolled in Intune, Defender for Business prompts you to either continue using Intune, or switch to using the simplified configuration process in the Microsoft 365 Defender portal. See [Choose where to manage security policies and devices](mdb-configure-security-settings.md#choose-where-to-manage-security-policies-and-devices).
   >    
   > Defender for Business also offers automatic onboarding for Windows devices enrolled in Intune. Automatic onboarding is a simplified way to onboard Windows devices to Defender for Business. We recommend selecting the "all devices enrolled" option so that as Windows devices are enrolled in Intune, they're onboarded to Defender for Business automatically. 
   
7. **Configure your security policies**. Defender for Business includes default security policies for next-generation protection and firewall protection that can be applied to your company's devices. These default policies use recommended settings and are designed to provide strong protection for your devices. You can start with your default policies and add more later. See [Set up, review, and edit your security policies and settings](mdb-configure-security-settings.md).

8. **Select your next step**. After the setup wizard has completed, you're prompted to choose a next step. For example, you can onboard devices, view your security dashboard, or view your security policies.

## [**Manual setup**](#tab/Manual)

> [!IMPORTANT]
> You must be a global administrator to complete setup tasks. See [Security roles and permissions in Defender for Business](mdb-roles-permissions.md).

1. **Get Defender for Business**. Start a trial or paid subscription today. You can choose from the standalone version of Defender for Business, or get it as part of Microsoft 365 Business Premium. See [Get Microsoft Defender for Business](get-defender-business.md). And, if you're planning to onboard servers, see [How to get Microsoft Defender for Business servers](get-defender-business.md#how-to-get-microsoft-defender-for-business-servers).

2. **Add users and assign licenses**. Assign a license for Defender for Business (or Microsoft 365 Business Premium, if that's your subscription) to each member of your organization to protect their devices. You'll also want to make sure multifactor authentication is enabled for all users. See [Add users and assign licenses in Microsoft Defender for Business](mdb-add-users.md).

3. **Assign roles and permissions to your security team**. People on your security team need certain permissions to perform tasks such as reviewing detected threats & remediation actions, viewing & editing policies, onboarding devices, and using reports. You can grant these permissions through roles. See [Assign roles and permissions](mdb-roles-permissions.md). 

4. **Set up email notifications for your security team**. As alerts are generated, or new vulnerabilities are discovered, people on your security team can be notified automatically, via email messages. See [Set up email notifications](mdb-email-notifications.md).

5. **Onboard devices to Defender for Business**. The sooner you get your devices onboarded to Defender for Business, the sooner they're protected. You can onboard devices in the Microsoft 365 Defender portal. Or, if your organization is already using Microsoft Intune, you can use it to enroll devices. See [Onboard devices to Defender for Business](mdb-onboard-devices.md). 

6. **Set up and review your security policies and settings**. Some security policies and settings are preconfigured with default settings in Defender for Business. Other policies, such as web content filtering and attack surface reduction rules, must be set up. See [Configure your security settings and policies](mdb-configure-security-settings.md).

> [!IMPORTANT]
> If you have Microsoft 365 Business Premium, you have additional capabilities to set up and configure. See [Microsoft 365 Business Premium – productivity and cybersecurity for small business](../../business-premium/index.md).

--- 

## Next steps

After reading this article, proceed to:

1. [Get Microsoft Defender for Business](get-defender-business.md) and [Microsoft Defender for Business servers](get-defender-business.md#how-to-get-microsoft-defender-for-business-servers).
2. [Add users and assign licenses in Microsoft Defender for Business](mdb-add-users.md).

After you have set up and configured Defender for Business, your next steps are to:

- [Onboard more devices](mdb-onboard-devices.md)
- [View and edit your security policies and settings](mdb-configure-security-settings.md)
- [View your reports](mdb-reports.md)
