---
title: "Microsoft Defender for Business trial user guide"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.collection: 
- m365-security
- tier1
ms.localizationpriority: high
ms.date: 05/04/2023
ms.service: microsoft-365-security
ms.subservice: mdb
search.appverid: 
- MOE150
- MET150
description: "Make the most of your Defender for Business trial with this guide. Get set up quickly and get started using your new security capabilities."
ms.custom: trial-playbook
---

# Trial user guide: Microsoft Defender for Business

**Welcome to the Defender for Business trial user guide!**

This guide will help you set up and use key features of your free trial. Using recommendations in this article from the Microsoft Defender team, learn how Defender for Business can help elevate your security from traditional antivirus protection to next-generation protection, endpoint detection and response, and vulnerability management.

## What is Defender for Business?

Defender for Business is a new endpoint security solution designed especially for small and medium-sized businesses with up to 300 employees. With this endpoint security solution, your organization's devices are well-protected from ransomware, malware, phishing, and other threats.

:::image type="content" source="media/mdb-offering-overview.png" alt-text="Defender for Business features and capabilities.":::

**Let's get started!**

## Set up your trial

Here's how to set up your trial subscription:

1. [Add users and assign licenses](#step-1-add-users-and-assign-licenses).
2. [Visit the Microsoft 365 Defender portal](#step-2-visit-the-microsoft-365-defender-portal).
3. [Use the setup wizard](#step-3-use-the-setup-wizard-in-defender-for-business-recommended).
4. [Set up and configure Defender for Business](#step-4-set-up-and-configure-defender-for-business).

### Step 1: Add users and assign licenses

After you sign up for Defender for Business, the first step is to **[add users and assign licenses](mdb-add-users.md)**.

> [!NOTE]
> You must be a global administrator to perform this task. The person who signed your company up for Microsoft 365 or Defender for Business is the global administrator by default. [Learn more about roles and permissions](mdb-roles-permissions.md).

### Step 2: Visit the Microsoft 365 Defender portal

The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) is the one-stop shop where you use and manage Defender for Business. It includes callouts to help you get started, cards that surface relevant information, and a navigation bar that provides easy access to the various features and capabilities.

- **[Visit the Microsoft 365 Defender portal](mdb-get-started.md)**.
- **[Explore the navigation bar](mdb-get-started.md#the-navigation-bar)** on the left side of the screen to access your incidents, view reports, and manage your security policies and settings.

### Step 3: Use the setup wizard in Defender for Business (recommended)

Defender for Business was designed to save small and medium-sized businesses time and effort. You can do initial setup and configuration through a setup wizard. The setup wizard helps you grant access to your security team, set up email notifications for your security team, and onboard your company's Windows devices. **[Use the setup wizard](mdb-setup-configuration.md)**.

> [!NOTE]
> You can only use the setup wizard once.

#### Setup wizard flow: what to expect

> [!TIP]
> **Using the setup wizard is optional.** If you choose not to use the wizard, or if the wizard is closed before your setup process is complete, you can complete the setup and configuration process on your own. See [Step 4: Set up and configure Defender for Business](#step-4-set-up-and-configure-defender-for-business).

1. **[Assign user permissions](mdb-roles-permissions.md#view-and-edit-role-assignments)**. Grant your security team access to the Microsoft 365 Defender portal.

2. **[Set up email notifications](mdb-email-notifications.md#view-and-edit-email-notifications)** for your security team.

3. **[Onboard and configure Windows devices](mdb-onboard-devices.md)**. Onboarding devices right away helps protect those devices from day one.

   > [!NOTE]
   > When you use the setup wizard, the system detects if you have Windows devices that are already enrolled in Intune. You'll be asked if you want to use automatic onboarding for all or some of those devices. You can onboard all Windows devices at once or select specific devices at first and then add more devices later. 

   To onboard other devices, see [Step 4: Set up and configure Defender for Business](#step-4-set-up-and-configure-defender-for-business).

4. **[View and edit your security policies](mdb-configure-security-settings.md)**. Defender for Business includes default security policies for next-generation protection and firewall protection that can be applied to your company's devices. These preconfigured security policies use recommended settings, so you're protected as soon as your devices are onboarded to Defender for Business. And you can edit the policies or create new ones.

### Step 4: Set up and configure Defender for Business

If you choose not to use the setup wizard, see the following diagram that depicts the [overall setup and configuration process](mdb-setup-configuration.md) for Defender for Business.

[:::image type="content" source="media/mdb-setup-process-2.png" alt-text="Setup and configuration process for Defender for Business.":::](mdb-setup-configuration.md)

If you used the setup wizard but you need to onboard more devices, such as non-Windows devices, go directly to [step 4](mdb-onboard-devices.md) in the following procedure:

1. **[Review the requirements](mdb-requirements.md)** to configure and use Defender for Business.

2. **[Assign roles and permissions](mdb-roles-permissions.md)** in the Microsoft 365 Defender portal.

   - [Learn about roles in Defender for Business](mdb-roles-permissions.md#roles-in-defender-for-business). 
   - [View or edit role assignments for your security team](mdb-roles-permissions.md#view-and-edit-role-assignments).

3. **[Set up email notifications](mdb-email-notifications.md)** for your security team.

   - [Learn about types of email notifications](mdb-email-notifications.md#types-of-email-notifications).
   - [View and edit email notification settings](mdb-email-notifications.md#view-and-edit-email-notifications).

4. **[Onboard devices](mdb-onboard-devices.md)**. To onboard Windows and Mac clients, you can use a local script.

5. **[View and configure your security policies](mdb-configure-security-settings.md)**. After you onboard your company's devices to Defender for Business, the next step is to view and edit your security policies and settings. 

Defender for Business includes pre-configured security policies that use recommended settings. But you can edit the settings to suit your business needs.

Security policies to review and configure include:

- [Next-generation protection policies](mdb-next-generation-protection.md) which determine antivirus and antimalware protection for your company's devices
- [Firewall protection and rules](mdb-firewall.md) which determine what network traffic is allowed to flow to and from your company's devices
- [Web content filtering](mdb-web-content-filtering.md) which prevents people from visiting certain websites (URLs) based on categories, such as adult content or legal liability
- [Advanced features](mdb-portal-advanced-feature-settings.md#view-settings-for-advanced-features) such as automated investigation and response and endpoint detection and response (EDR) in block mode

## Start using Defender for Business

For the next 30 days, here's guidance from the product team on key features to try:

1. [Use your Microsoft Defender Vulnerability Management dashboard](#1-use-the-defender-vulnerability-management-dashboard). 

2. [View and respond to detected threats](#2-view-and-respond-to-detected-threats).

3. [Review security policies](#3-review-security-policies).

4. [Prepare for ongoing security management](#4-prepare-for-ongoing-security-management).

5. [Try the Document Drops Backdoor tutorial](#5-try-the-document-drops-backdoor-tutorial).

### 1. Use the Defender Vulnerability Management dashboard

Defender for Business includes a Defender Vulnerability Management dashboard that's designed to save your security team time and effort. Learn how to [use your Defender Vulnerability Management dashboard](mdb-view-tvm-dashboard.md).

- View your exposure score, which is associated with devices in your organization.
- View your top security recommendations, such as address impaired communications with devices, turn on firewall protection, or update Microsoft Defender Antivirus definitions.
- View remediation activities, such as any files that were sent to quarantine, or vulnerabilities found on devices.

### 2. View and respond to detected threats

As threats are detected and alerts are triggered, incidents are created. Your organization's security team can view and manage incidents in the Microsoft 365 Defender portal. Learn how to [view and respond to detected threats](mdb-view-manage-incidents.md). 

- [View and manage incidents](mdb-view-manage-incidents.md).
- [Respond to and mitigate threats](mdb-respond-mitigate-threats.md).
- [Review mediation actions in the Action Center](mdb-review-remediation-actions.md).
- [View and use reports](mdb-reports.md).

### 3. Review security policies

In Defender for Business, security settings are configured through policies that are applied to devices. Defender for Business includes pre-configured policies to help protect your company's devices as soon as they are onboarded, safeguarding your organization against identity, device, application, and document security threats. 

Learn how to [review security policies](mdb-view-edit-create-policies.md).

### 4. Prepare for ongoing security management

New security events, such as threat detection on a device, adding new devices, and employees joining or leaving the organization, will require you to manage security. In Defender for Business, there are many ways for you to manage device security.

- [View a list of onboarded devices](mdb-manage-devices.md#view-the-list-of-onboarded-devices) to see their risk level, exposure level, and health state.
- [Take action on a device](mdb-manage-devices.md#take-action-on-a-device-that-has-threat-detections) that has threat detections.
- [Onboard a device to Defender for Business](mdb-manage-devices.md#onboard-a-device).
- [Offboard a device from Defender for Business](mdb-manage-devices.md#offboard-a-device).

### 5. Try the Document Drops Backdoor tutorial

Quickly see how Defender for Business works by trying a tutorial.

Simulate an attack that introduces file-based malware on a test device. The tutorial describes how to use the simulation file and what to watch for in the Microsoft 365 Defender portal.

> [!NOTE]
> This tutorial requires Microsoft Word to be installed on your test device.

To access the tutorial, do the following:

1. Go to the [Microsoft 365 Defender portal](https://security.microsoft.com) and sign in.

2. In the navigation pane, under **Endpoints**, choose **Tutorials**.

3. Choose **Document Drops Backdoor**.

## Additional resources

- [Overview of Defender for Business](mdb-overview.md)
- [Tutorials and simulations in Defender for Business](mdb-tutorials.md)
- [Video: Enterprise-Grade Protection for Small & Medium Sized Businesses](https://youtu.be/umhUNzMqZto)
- [Get Defender for Business](get-defender-business.md)
