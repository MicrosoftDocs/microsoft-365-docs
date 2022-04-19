---
title: "Microsoft Defender for Business trial playbook"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: article
ms.collection: m365-security-compliance
ms.localizationpriority: high
ROBOTS: NOINDEX, NOFOLLOW
ms.prod: m365-security
ms.technology: mdb
search.appverid: 
- MOE150
- MET150
description: "Microsoft Defender for Business trial playbook."
---

# Trial playbook: Microsoft Defender for Business

Welcome to the Microsoft Defender for Business trial playbook. This playbook is a simple guide to help you make the most of your 30-day free trial. Using the recommendations in this article from the Microsoft Defender team, you'll learn how Defender for Business can help you elevate your security from traditional antivirus to next-generation protection, endpoint detection and response, and threat and vulnerability management. 

## What is Microsoft Defender for Business? 

Microsoft Defender for Business is a new endpoint security solution that was designed especially for small and medium-sized businesses (up to 300 employees). With this endpoint security solution, your organization's devices are better protected from ransomware, malware, phishing, and other threats. 

:::image type="content" source="media/mdb-offering-overview.png" alt-text="Microsoft Defender for Business features and capabilities.":::

Let’s get started.

## Set up your trial

### Step 1: Add users and assign licenses

As soon as you have signed up for Microsoft Defender for Business, your first step is to add users and assign licenses. Follow the steps in [Add users and assign licenses in Microsoft Defender for Business](mdb-add-users.md).

> [!NOTE]
> You must be a global administrator to perform this task. The person who signed your company up for Microsoft 365 or Microsoft Defender for Business is the global administrator by default. 

### Step 2: Visit the Microsoft 365 Defender portal
 
The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) is your one-stop shop for using and managing Microsoft Defender for Business. It includes a welcome banner and callouts to help you get started, cards that surface relevant information, and a navigation bar to give you easy access to the various features and capabilities. See [Visit the Microsoft 365 Defender portal](mdb-get-started.md).

**Action**: Explore the Navigation Bar. Use the navigation bar on the left side of the screen to access your incidents, view reports, and manage your security policies. 

### Step 3: Use the setup wizard in Microsoft Defender for Business (recommended)

Microsoft Defender for Business was designed to save small and medium-sized businesses time and effort. You can do initial setup and configuration with a setup wizard. The setup wizard guides you through granting access to your security team, setting up email notifications for your security team, and onboarding your company's Windows devices. See [Use the setup wizard in Microsoft Defender for Business](mdb-use-wizard.md)

> [!NOTE]
> You can only use the set-up wizard once. 

Setup wizard flow – what to expect

1. Assign user permissions – grant your security team access to the Microsoft 365 Defender portal.

2. Set up email notifications for your security team.

3. Onboard and configure Windows devices – onboarding devices right away helps protect those devices from day one.

   What is automatic onboarding?

   - Automatic onboarding is a simplified way to onboard Windows devices to Defender for Business. Automatic onboarding is only available for Windows devices that are already enrolled in Microsoft Endpoint Manager (or Microsoft Intune).
   - While you are using the setup wizard, the system will detect whether Windows devices are already enrolled in Endpoint Manager. You'll be asked if you want to use automatic onboarding for all or some of those devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more devices later.
   - To onboard other devices, see step 4.4

4.  Configure your security policies – Defender for Business includes default security policies for next generation protection and firewall protection that can be applied to your company’s devices. These preconfigured security policies use recommended settings so you are protected as soon as your devices are onboarded to Defender for Business. And you still have the ability to edit policies or create new ones. 

   What happens if you don’t use the wizard? 

   Using the setup wizard is optional. If you choose not to use the wizard, or if the wizard is closed before your set-up process is complete, you can complete the setup and configuration process on your own. See Step 4. 

### Step 4: Set up and configure Defender for Business

If you choose not to use the setup wizard, the following diagram depicts the overall setup and configuration process for Defender for Business. 

:::image type="content" source="media/mdb-setup-process-2.png" alt-text="Setup and configuration process for Microsoft Defender for Business.":::

If you used the wizard but need to onboard non-Windows devices go directly to step 4.4. 

1. Review the requirements to configure and use Microsoft Defender for Business. 

2. Assign roles and permissions in the Microsoft 365 Defender portal.

   - Learn about roles in Defender for Business 
   - View or edit role assignments for your security team 

3. Set up email notifications.

   - Learn about types of email notifications
   - View and edit email notification settings

4. Onboard devices - with Microsoft Defender for Business, you have several options to choose from for onboarding your company's devices. Start by selecting the operating system you want to onboard. 

   - Windows clients - choose one of the following options to onboard Windows client devices to Defender for Business:
      - Local script (for onboarding devices manually in the Microsoft 365 Defender portal)
      - Onboard Windows devices using Group Policy
      - Microsoft Endpoint Manager (included in Microsoft 365 Business Premium)

   - macOS - choose one of the following options to onboard macOS devices:
      - Local script for macOS (recommended)
      - Endpoint Manager for macOS

   - Mobile devices - you'll need Microsoft Intune to onboard mobile devices, such as Android and iOS/iPadOS devices. If you have Microsoft 365 Business Premium, you have Endpoint Manager as part of your subscription. Endpoint Manager includes Microsoft Intune and Mobile Device Management capabilities.
   
   See the following resources to get help enrolling these devices into Intune:
      - Enroll Android devices
      - Enroll iOS or iPadOS devices

> [!NOTE]
>    We recommend using a local script to onboard macOS devices. Although you can set up enrollment for macOS devices in Intune, the local script is the simplest method for onboarding macOS devices to Defender for Business.

5. Configure your security policies - after you've onboarded your company's devices to Microsoft Defender for Business, your next step is to view and if necessary, edit your security policies and settings. Defender for Business includes preconfigured security policies that use recommended settings. However, you can edit your settings to suit your business needs.

   - Choose where to manage your security policies and devices. If you select the simplified configuration process, you can view and manage your security policies in the Microsoft 365 Defender portal (https://security.microsoft.com/). However, you're not limited to this option. If you've been using Microsoft Endpoint Manager (which includes Microsoft Intune), you can keep using your Endpoint Manager.

   - View or edit your next-generation protection policies. Use one of the following procedures: 
      - Microsoft 365 Defender portal (https://security.microsoft.com)
      - Microsoft Endpoint Manager admin center (https://endpoint.microsoft.com) 

   - View or edit your firewall policies and custom rules. Depending on whether you're using the Microsoft 365 Defender portal or Microsoft Endpoint Manager to manage your firewall protection, you will use the procedure associated with what you are using. 
      - Microsoft 365 Defender portal (https://security.microsoft.com)
      - Microsoft Endpoint Manager admin center (https://endpoint.microsoft.com) 

   - Set up web content filtering. Web content filtering enables your security team to track and regulate access to websites based on their content categories, such as: adult content, high bandwidth, legal liability, leisure, uncategorized. To set up web content filtering

   - Review settings for advanced features. These features are preconfigured using recommended settings; however, you can review them, and if necessary, edit settings to suit your business needs.

   To access settings for advanced features, in the Microsoft 365 Defender portal (https://security.microsoft.com), go to Settings > Endpoints > General > Advanced features.

   - View and edit other settings in the Microsoft 365 Defender portal. In addition to security policies that are applied to devices, there are other settings you can view and edit in Defender for Business. For example, you specify the time zone to use, and you can onboard (or offboard) devices.

## Start using Defender for Business


After your setup and configuration process is complete for your company, the best way to get started using Microsoft Defender for Business is by visiting your Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and signing in with your user account for Microsoft 365.

The Microsoft 365 Defender portal is your one-stop shop for using and managing Microsoft Defender for Business. It includes a welcome banner and callouts to help you get started, cards that surface relevant information, and a navigation bar to give you easy access to the various features and capabilities.

Use the navigation bar on the left side of the screen to access your incidents, view reports, and manage your security policies. See [Use the navigation bar](mdb-get-started.md#use-the-navigation-bar) for a list of items that you’ll see in your navigation bar.

