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

## Setting up your trial

### Step 1: Add users and assign licenses

As soon as you have signed up for Microsoft Defender for Business, your first step is to add users and assign licenses. Follow the steps in [Add users and assign licenses in Microsoft Defender for Business](mdb-add-users.md).

> [!NOTE]
> You must be a global administrator to perform this task. The person who signed your company up for Microsoft 365 or Microsoft Defender for Business is the global administrator by default. 

## Step 1: Setting up your trial

Microsoft Defender for Business features a simplified configuration process designed especially for small and medium-sized businesses. This experience takes the guesswork out of onboarding and managing Windows devices, with a wizard-like experience and default policies that are designed to protect your organization's Windows devices from day one. We recommend using the simplified configuration process; however, you're not limited to this option. 

> [!NOTE]
> You can only go through the wizard once. 

### Before onboarding your devices

- [Review the requirements](mdb-requirements.md).
- Servers are supported through a Defender for Business server license. See the server preview announcement for more details.

### Onboard and configure settings and policies for Defender for Business 

When it comes to onboarding and configuring security settings for your organization’s Windows devices, you can choose from several options:
1.	Microsoft Endpoint Manager to onboard devices and manage their security policies

2.	Microsoft 365 Defender portal to onboard devices and manage their security policies

3.	A combination of Endpoint Manager to onboard devices and the simplified configuration in Defender for Business to manage security policies and settings in the Microsoft 365 Defender portal. 

### Onboarding devices

Defender for Business offers you several different methods for onboarding devices, whether you're already using Microsoft Endpoint Manager, or you just want a simplified onboarding experience. The most commonly used methods to onboard devices to Defender for Business include:

- Microsoft Intune or Microsoft Endpoint Manager to onboard Windows, macOS, and mobile devices. You can enroll devices in Endpoint Manager, and then onboard your devices to Defender for Business. [Microsoft 365 Business Premium](../../business-premium/index.md) customers already have [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), and both Microsoft Intune and [Mobile Device Management](/mem/intune/enrollment/device-enrollment) are now part of Endpoint Manager. To use this method, see [Microsoft Endpoint Manager](mdb-onboard-devices.md). 
- Automatic onboarding for Windows devices that are already enrolled in Microsoft Endpoint Manager. Automatic onboarding sets up a connection between Defender for Business and Microsoft Endpoint Manager, and then onboards Windows devices to Defender for Business. In order to use this option, your devices must already be enrolled in Endpoint Manager. To learn more, see [Automatic onboarding](mdb-onboard-devices.md).
- Local script to onboard Windows and macOS devices to Defender for Business manually. You can onboard up to 10 devices at a time using the local script. To learn more, see [Local script in Defender for Business](mdb-onboard-devices.md).

### Simplified configuration

Defender for Business is designed to provide strong protection while saving you time and effort in configuring your security settings. The streamlined experience in the Microsoft 365 Defender portal makes it simple to onboard devices and manage them. In addition, default policies are included so that your company's devices are protected as soon as they're onboarded. You can keep your default settings as they are or make changes to suit your business needs. You can also add new policies to manage devices as needed.

The following table describes the simplified configuration process as it applies to managing devices and security policies.


| Item  | Simplified configuration (uses the Microsoft 365 Defender portal)  | Configuration using Endpoint Manager  |
|---------|---------|---------|
| Devices  | Automatic onboarding for Windows devices already enrolled in Microsoft Endpoint Manager. <br/><br/>Manual device onboarding (local script) for Windows and macOS devices.<br/><br/>Manual device onboarding for iOS devices (Settings > Endpoints > Onboarding).  | Device enrollment (supports Windows, macOS, Android, and iOS devices).<br/><br/>Device management ([Manage devices with endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security-manage-devices))
 |
| Policies  | Next-generation protection ([Understand next-generation protection configuration settings in Defender for Business](mdb-next-gen-configuration-settings.md))<br/><br/>Firewall protection ([Firewall in Defender for Business](mdb-firewall.md))<br/><br/>[Web content filtering](mdb-configure-security-settings.md)<br/><br/>Preconfigured security policies & settings  | Manage endpoint security policies ([Manage endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy)) <br/><br/>Antivirus ([Manage antivirus settings with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-antivirus-policy))
Firewall ([Manage firewall settings with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-firewall-policy)) |

## Step 2: Get started using Microsoft 365 Defender Portal 

After your setup and configuration process is complete for your company, the best way to get started using Microsoft Defender for Business is by visiting your Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and signing in with your user account for Microsoft 365.

The Microsoft 365 Defender portal is your one-stop shop for using and managing Microsoft Defender for Business. It includes a welcome banner and callouts to help you get started, cards that surface relevant information, and a navigation bar to give you easy access to the various features and capabilities.

Use the navigation bar on the left side of the screen to access your incidents, view reports, and manage your security policies. See [Use the navigation bar](mdb-get-started.md#use-the-navigation-bar) for a list of items that you’ll see in your navigation bar.

