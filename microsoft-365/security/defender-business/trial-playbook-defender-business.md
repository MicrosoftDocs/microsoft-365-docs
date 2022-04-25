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
description: "Make the most of your Defender for Business trial with this playbook. Get set up quickly and get started using your new security capabilities."
---

# Trial playbook: Microsoft Defender for Business

**Welcome to the Defender for Business trial playbook!** 

This playbook is a simple guide to help you make the most of your 30-day free trial. Using the recommendations in this article from the Microsoft Defender team, you'll learn how Defender for Business can help you elevate your security from traditional antivirus protection to next-generation protection, endpoint detection and response, and threat and vulnerability management. 

## What is Defender for Business? 

Defender for Business is a new endpoint security solution that was designed especially for small and medium-sized businesses (up to 300 employees). With this endpoint security solution, your organization's devices are better protected from ransomware, malware, phishing, and other threats. 

:::image type="content" source="media/mdb-offering-overview.png" alt-text="Microsoft Defender for Business features and capabilities.":::

**Let’s get started!**

## Set up your trial

### Step 1: Add users and assign licenses

As soon as you have signed up for Defender for Business, your first step is to **[add users and assign licenses](mdb-add-users.md)**.

> [!NOTE]
> You must be a global administrator to perform this task. The person who signed your company up for Microsoft 365 or Defender for Business is the global administrator by default. [Learn more about roles and permissions](mdb-roles-permissions.md) 

### Step 2: Visit the Microsoft 365 Defender portal
 
The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) is your one-stop shop for using and managing Defender for Business. It includes a welcome banner and callouts to help you get started, cards that surface relevant information, and a navigation bar to give you easy access to the various features and capabilities. 

- **[Get started using the Microsoft 365 Defender portal](mdb-get-started.md)**.
- **[Explore the navigation bar](mdb-get-started.md#the-navigation-bar)**. Use the navigation bar on the left side of the screen to access your incidents, view reports, and manage your security policies. 

### Step 3: Use the setup wizard in Defender for Business (recommended)

Defender for Business was designed to save small and medium-sized businesses time and effort. You can do initial setup and configuration with a setup wizard. The setup wizard guides you through granting access to your security team, setting up email notifications for your security team, and onboarding your company's Windows devices. 

**[Use the setup wizard](mdb-use-wizard.md)**.

> [!NOTE]
> You can only use the set-up wizard once. 

#### Setup wizard flow: what to expect

> [!NOTE]
> **Using the setup wizard is optional** (see [What happens if I don't use the wizard?](mdb-use-wizard.md#what-happens-if-i-dont-use-the-wizard)). If you choose not to use the wizard, or if the wizard is closed before your set-up process is complete, you can complete the setup and configuration process on your own. See [Step 4](#step-4-set-up-and-configure-defender-for-business). 

1. **[Assign user permissions](mdb-roles-permissions.md#view-or-edit-role-assignments)**. Grant your security team access to the Microsoft 365 Defender portal.

2. **[Set up email notifications](mdb-email-notifications.md#view-and-edit-email-notifications)** for your security team.

3. **[Onboard and configure Windows devices](mdb-onboard-devices.md)**. Onboarding devices right away helps protect those devices from day one.

   > [!NOTE]
   > What is automatic onboarding? [Automatic onboarding](mdb-use-wizard.md#what-is-automatic-onboarding) is a simplified way to onboard Windows devices to Defender for Business. Automatic onboarding is only available for Windows devices that are already enrolled in Microsoft Intune. 
   >    
   > While you are using the setup wizard, the system will detect whether Windows devices are already enrolled in Intune. You'll be asked if you want to use automatic onboarding for all or some of those devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more devices later. [Learn more about automatic onboarding](mdb-use-wizard.md#what-is-automatic-onboarding).
   
   To onboard other devices, see [step 4](#step-4-set-up-and-configure-defender-for-business).

4.  **[View and if necessary, edit your security policies](mdb-configure-security-settings.md)**. Defender for Business includes default security policies for next generation protection and firewall protection that can be applied to your company’s devices. These preconfigured security policies use recommended settings so you are protected as soon as your devices are onboarded to Defender for Business. And you still have the ability to edit policies or create new ones. 

### Step 4: Set up and configure Defender for Business

If you choose not to use the setup wizard, the following diagram depicts the [overall setup and configuration process](mdb-setup-configuration.md#the-setup-and-configuration-process) for Defender for Business. 

:::image type="content" source="media/mdb-setup-process-2.png" alt-text="Setup and configuration process for Microsoft Defender for Business.":::

> [!TIP]
> To learn more, see [Set up and configure Defender for Business](mdb-setup-configuration.md).

If you used the setup wizard, but you need to onboard more devices, such as non-Windows devices, go directly to step 4 in the following procedure: 

1. **[Review the requirements](mdb-requirements.md)** to configure and use Defender for Business. 

2. **[Assign roles and permissions](mdb-roles-permissions.md)** in the Microsoft 365 Defender portal.

   - [Learn about roles in Defender for Business](mdb-roles-permissions.md#roles-in-defender-for-business). 
   - [View or edit role assignments for your security team](mdb-roles-permissions.md#view-or-edit-role-assignments).

3. **[Set up email notifications](mdb-email-notifications.md)** for your security team.

   - [Learn about types of email notifications](mdb-email-notifications.md#types-of-email-notifications).
   - [View and edit email notification settings](mdb-email-notifications.md#view-and-edit-email-notifications).

4. **[Onboard devices](mdb-onboard-devices.md)**. With Defender for Business, you have several options to choose from for onboarding your company's devices. Start by selecting the operating system you want to onboard. 

   - [Windows clients](mdb-onboard-devices.md): Choose one of the following options to onboard Windows client devices to Defender for Business:
      - Local script (for onboarding devices manually in the Microsoft 365 Defender portal)
      - Group Policy (if you're already using Group Policy and prefer this method)
      - Microsoft Intune (included in [Microsoft 365 Business Premium](../../business-premium/index.md))

   - [macOS computers](mdb-onboard-devices.md): Choose one of the following options to onboard macOS devices:
      - Local script for macOS (recommended)
      - Microsoft Intune for macOS

      > [!NOTE]
      > We recommend using a local script to onboard macOS devices. Although you can set up enrollment for macOS devices in Intune, the local script is the simplest method for onboarding macOS devices to Defender for Business.

   - [Mobile devices](mdb-onboard-devices.md): You'll need Microsoft Intune to onboard mobile devices, such as Android and iOS/iPadOS devices. If you have Microsoft 365 Business Premium, you have Intune as part of your subscription. 
   
   See the following resources to get help enrolling these devices into Intune:
      - [Enroll Android devices](/mem/intune/enrollment/android-enroll)
      - [Enroll iOS or iPadOS devices](/mem/intune/enrollment/ios-enroll)

5. **[View, and if necessary, configure your security policies](mdb-configure-security-settings.md)**. After you've onboarded your company's devices to Microsoft Defender for Business, your next step is to view and if necessary, edit your security policies and settings. Defender for Business includes preconfigured security policies that use recommended settings. However, you can edit your settings to suit your business needs.

   - [Choose where to manage your security policies and devices](mdb-configure-security-settings.md#choose-where-to-manage-security-policies-and-devices). If you select the [simplified configuration process](mdb-simplified-configuration.md), you can view and manage your security policies in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). However, you're not limited to this option. If you've been using Intune, you can keep using the Microsoft Endpoint Manager admin center.

   - [View or edit your next-generation protection policies](mdb-configure-security-settings.md#view-or-edit-your-next-generation-protection-policies) 

   - [View or edit your firewall policies](mdb-configure-security-settings.md#view-or-edit-your-firewall-policies-and-custom-rules) and if need by, define your [custom rules](mdb-custom-rules-firewall.md). 

   - [Set up web content filtering](mdb-configure-security-settings.md#set-up-web-content-filtering). Web content filtering enables your security team to track and regulate access to websites based on their content categories, such as: adult content, high bandwidth, legal liability, leisure, uncategorized. 

   - [Review settings for advanced features](mdb-configure-security-settings.md#review-settings-for-advanced-features). In Defender for Business, your security features are preconfigured using recommended settings; however, you can review them, and if necessary, edit settings to suit your business needs.

      To access settings for advanced features, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), go to **Settings** > **Endpoints** > **General** > **Advanced features**.

   - [View and edit other settings](mdb-configure-security-settings.md#access-your-settings-in-the-microsoft-365-defender-portal) in the Microsoft 365 Defender portal. In addition to security policies that are applied to devices, there are other settings you can view and edit in Defender for Business. For example, you specify the time zone to use, and you can onboard (or offboard) devices.

## Start using Defender for Business

In the next 30 days, we recommend you try out the following features: 

1.	**[Use your Threat & Vulnerability Management dashboard](mdb-view-tvm-dashboard.md)**. Defender for Business includes a Threat & Vulnerability Management dashboard that is designed to save your security team time and effort. You can use your Threat & Vulnerability Management dashboard to:

   - View your exposure score, which is associated with devices in your organization
   - View your top security recommendations, such as addressing impaired communications with devices, turning on firewall protection, or updating Microsoft Defender Antivirus definitions
   - View remediation activities, such as any files that were sent to quarantine, or vulnerabilities found on devices

   [Use your Threat & Vulnerability Management dashboard](mdb-view-tvm-dashboard.md).

2.	**[View and respond to detected threats](mdb-view-manage-incidents.md)**. As threats are detected and alerts are triggered, incidents are created. Your organization's security team can view and manage incidents in the Microsoft 365 Defender portal. Try these features:
   
   - [View and manage incidents](mdb-view-manage-incidents.md) 
   - [Respond to and mitigate threats](mdb-respond-mitigate-threats.md) 
   - [Review mediation actions in the Action Center](mdb-review-remediation-actions.md) 
   - [View and use reports](mdb-reports.md) 

3.	**[Review security policies](mdb-view-edit-create-policies.md)**. In Defender for Business, security settings are configured through policies that are applied to devices. Defender for Business includes preconfigured policies to help protect your company's devices as soon as they are onboarded, safeguarding your organization against identity, device, application, and document security threats. 

   Try these features:

   - Review policies
      - [Learn about the default policies included in Defender for Business](mdb-view-edit-create-policies.md#default-policies-in-defender-for-business)
      - [View your existing policies](mdb-view-edit-create-policies.md#view-your-existing-policies)
   
   - [Understand policy order](mdb-policy-order.md)
   
   - [Understand next-generation configuration settings](mdb-next-gen-configuration-settings.md)
   
   - Review firewall settings
      - [Default firewall settings in Defender for Business](mdb-firewall.md#default-firewall-settings-in-defender-for-business)
      - [Firewall settings you can configure in Defender for Business](mdb-firewall.md#firewall-settings-you-can-configure-in-defender-for-business)
   
   - Understand web content filtering
      - Web content filtering enables your security team to track and regulate access to websites based on their content categories. It is not turned on by default, so you will need to set it up if you want this capability for your organization. 
      - [Set up web content filtering](mdb-configure-security-settings.md#set-up-web-content-filtering) 
  
4.	**Prepare for ongoing security management**. New security events, such as threat detections on a device, adding new devices, and employees joining or leaving the organization will require you manage your security. In Microsoft Defender for Business, there are many ways for you to manage device security. 

   - [View a list of onboarded devices](mdb-manage-devices.md#view-the-list-of-onboarded-devices) to see their risk level, exposure level, and health state
   - [Take action on a device](mdb-manage-devices.md#take-action-on-a-device-that-has-threat-detections) that has threat detections
   - [Onboard a device to Defender for Business](mdb-manage-devices.md#onboard-a-device)
   - [Offboard a device from Defender for Business](mdb-manage-devices.md#offboard-a-device)

## Additional resources

- [Overview of Microsoft Defender for Business](mdb-overview.md)
- [Tutorials and simulations in Microsoft Defender for Business](mdb-tutorials.md)
- [Video: Enterprise-Grade Protection for Small & Medium Sized Businesses](https://youtu.be/umhUNzMqZto)
- [Get Microsoft Defender for Business](get-defender-business.md)


