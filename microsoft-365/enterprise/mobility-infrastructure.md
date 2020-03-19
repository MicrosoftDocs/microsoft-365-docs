---
title: Phase 5 - Mobile device management 
description: Microsoft 365 Enterprise includes mobile device management using Microsoft Intune. Review the requirements and prerequisites, set up Intune using your Azure Active Directory resource, enroll iOS, macOS, Android, and Windows devices, deploy apps, create a configure profile, use a compliance policy, and enable conditional access for mobile device management with Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, mobile device management, Intune
author: JoeDavies-MSFT 
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 10/03/2019
ms.topic: conceptual 

ms.prod: microsoft-365-enterprise
ms.service: 
ms.technology: 
ms.assetid: fb4182e6-5e78-45d0-9641-d791c4519441
audience: ITPro
ms.custom: microsoft-intune
---

# Phase 5: Mobile device management for Microsoft 365 Enterprise

![Phase 5: Mobile Device Management](../media/deploy-foundation-infrastructure/mobiledevicemgmt_icon.png)

*This feature applies to the E3 and E5 versions of Microsoft 365 Enterprise*

Microsoft 365 Enterprise includes features to help manage devices, and their apps, within your organization. Using Microsoft Intune, you can manage iOS, Android, macOS, and Windows devices to protect access to your organization's resources, including your data. 

In this phase, you enroll your devices in Intune, and create and enforce policies to help keep your data secure and protected. The entire library of Intune documentation is [available online](https://docs.microsoft.com/intune). It's also good practice to review the [Intune deployment planning, design and implementation guide](https://docs.microsoft.com/intune/planning-guide) before you get started.

## Step 1: Plan for your scenario

One of the main reasons to manage mobile devices is to secure and protect your organization's resources. [Common ways to use Microsoft Intune](https://docs.microsoft.com/intune/common-scenarios) lists some real-world examples, including securing Microsoft email and data.

Intune gives you options to manage access to your organization using Mobile Device Management (MDM) or Mobile Application Management (MAM). MDM is when users "enroll" their devices in Intune. Once enrolled, they are managed devices, and can receive any policies, rules, and settings used by your organization. For example, you can install specifics apps, create a password policy, install a VPN connection, and more.

Users with their own personal devices may not want to enroll their devices or be managed by Intune and your policies. But you still need to protect your organization's resources and data. In this scenario, you can protect your apps using MAM. For example, you can use a MAM policy that requires a user to enter a PIN when accessing SharePoint on the device.

You'll also determine how you're going to manage personal or organization-owned devices. You may want to treat devices differently, depending on their use. For example, you may want different plans for users in Human Resources (HR) or users in Sales. [Identify mobile device management use-case scenarios](https://docs.microsoft.com/intune/planning-guide-scenarios) can get you started and includes some guidance on these different scenarios.

## Step 2: Get your prerequisites

Next, get your prerequisites based on your requirements and your scenarios created in the previous step. [Implement your plan](https://docs.microsoft.com/intune/planning-guide-onboarding) lists all the requirements. Here are the significant items you need for Intune with Microsoft 365:

- **Intune subscription**: Included with Microsoft 365, and gives you access to Microsoft Intune in the [Azure portal](https://portal.azure.com)
- **Office 365 subscription**: Included with Microsoft 365, and is used for Office apps, including email
- **Azure Active Directory (Azure AD) premium**: Included with Microsoft 365, and is used to create user or security groups. These groups receive Intune policies that you create, such as forcing a password length to unlock a device. The groups you create in [Phase 2: Identity](https://docs.microsoft.com/microsoft-365/enterprise/identity-infrastructure) can be used.

There may be some additional requirements, depending on your organization's needs. For example, if you'll be managing iOS devices, you'll need an Apple MDM Push certificate. If you're using on-premises Exchange, then you'll need the on-premises Exchange connector. These additional requirements are outlined when you get to those steps.

## Step 3: Set up Intune

Intune uses many features in Azure AD, including your domain, your users, and your groups. You can also create new users and new groups to fit your company needs. For example, you can create a group called **iOS devices**, or **All HR users**.  Take advantage of [Dynamic Groups](https://docs.microsoft.com/intune/groups-add) that lets you build either user or device groups based around simple or advanced rules.

This step focuses on setting up Intune and getting it ready for you to manage your devices.

1. **[Confirm your devices are supported](https://docs.microsoft.com/intune/supported-devices-browsers)**. Confirm your iOS, macOS, Android, Galaxy, and Windows devices are supported by Intune. If your organization includes devices that aren't supported, then the policies aren't applied to those devices.

2. **[Customize your domain name](https://docs.microsoft.com/intune/custom-domain-name-configure)**. By default, a domain named something like **your-domain.onmicrosoft.com** is automatically created in Azure AD. **onmicrosoft.com** can be customized for your organization. When you customize, it also gives users a familiar domain when connecting to Intune and using resources.

3. **[Sign in to Intune](https://docs.microsoft.com/intune/account-sign-up)**. When you sign in, you may be prompted to enter information about your organization. Intune is included with Microsoft 365, and can be opened directly from the [Microsoft 365 admin center](https://admin.microsoft.com). You can also open Intune directly from the [Azure portal](https://portal.azure.com).

4. **[Choose your mobile device management configuration](https://docs.microsoft.com/intune/mdm-authority-set)**. The first time you use Intune, you must enable device management. Intune can be used as a cloud-only service, a hybrid with Intune and Microsoft Endpoint Configuration Manager, or using Mobile Device Management for Office 365. You can choose which setup works best for your organization.

5. **[Add users](https://docs.microsoft.com/intune/users-add)** and **[add groups](https://docs.microsoft.com/intune/groups-add)**. 

   You can manually add users or use hybrid identity and Azure AD Connect to sync your on-premises user accounts with Intune. You can also give Admin roles to specific users. Users are required unless your devices are "userless" devices, such as kiosk devices.

   Azure AD groups are used to simplify how you manage devices and users in Intune. Using groups, you can do many different tasks. For example, your organization wants to require a specific app on Android devices. You can create an Android devices group and deploy a policy with this app to the group.

    In Intune, you can add users or groups that you create in [Phase 2: Identity](https://docs.microsoft.com/microsoft-365/enterprise/identity-infrastructure)

6. **[Assign licenses](https://docs.microsoft.com/intune/licenses-assign)**. For users or devices to enroll in Intune, they require a Microsoft 365 license with the Intune service enabled to access the Intune service. You assign Microsoft 365 licenses, which have the Microsoft Intune service enabled by default, in the Microsoft 365 admin center or with PowerShell.

## Step 4: Enroll devices

To manage devices, the devices must be enrolled in Intune. As an administrator, you'll set up enrollment restrictions and policies for your users and devices. Each device platform (iOS, Android, macOS, and Windows) has a variety of options. You can have your users enroll themselves. Or, you can automate enrollment so users simply sign in to the device.

Enrollment is a key step when using Intune. [Enroll devices](https://docs.microsoft.com/intune/device-enrollment) lists the steps for the different devices.

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: iOS and Android device enrollment](enroll-ios-and-android-devices-in-your-microsoft-enterprise-365-dev-test-environ.md) |
|||


## Step 5: Add and deploy apps

Apps on mobile devices are often the quickest way users get access to your corporate resources. 

There are challenges when using apps, as there are different devices, including personal devices and corporate devices. And, you want to protect your organization's resources and its data while also making sure users are productive.

Intune can manage apps, including add apps, assign them to different users or groups, and review other key details. For example, you can see which apps fail to install, check the version of an app, and more.

When users get a mobile device, one of the first tasks is to access organizational email and documents. Using Intune, you can [create and deploy email settings](https://docs.microsoft.com/intune/email-settings-configure) using email apps that are pre-installed on the devices. 

The [Add apps](https://docs.microsoft.com/intune/apps/apps-add) article lists the steps to add, deploy, monitor, configure, and protect apps on devices within your org.

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Device compliance policies](mam-policies-for-your-microsoft-365-enterprise-dev-test-environment.md) |
|||

## Step 6: Turn on compliance and conditional access

In the previous steps, you set up your environment, and enabled Intune. Now, you're ready to create some policies using compliance and conditional access.

Compliance and conditional access are important to managing devices. [Compliance policies](https://docs.microsoft.com/intune/device-compliance-get-started) are created to help protect your organization's resources. When you create a compliance policy, you're defining the standard or the "baseline" of what a device must have. For example, you can choose an acceptable (or unacceptable) threat level, block jailbroken devices, require a password length, and more. If these devices don't meet your rules, meaning they aren't compliant, then you can block access to your resources.

This "blocking" introduces [Conditional Access](https://docs.microsoft.com/intune/conditional-access). If a device is considered not-compliant, then you can block access to email, SharePoint, and more.

Intune in the [Azure portal](https://portal.azure.com) lets you create these policies, and apply them to your users and devices. As a best practice, start small, and use a staged approach. For example, create an iOS policy that blocks jailbroken devices. Apply (called "assign" in Intune) the policy to a pilot or test group. After initial testing, add more users to the pilot group. Using a staged approach, you can get feedback from a wide range of user types.

See [Get started with device compliance policies](https://docs.microsoft.com/intune/device-compliance-get-started) and [Learn about Conditional Access and Intune?](https://docs.microsoft.com/intune/conditional-access) to help you get started.

## Step 7: Apply features and settings

These features and settings are often considered the "cool" part of Intune, and are very powerful. Once you've successfully enforced some compliance policies using conditional access, you're ready to create **Device profiles**.

Intune in the [Azure portal](https://portal.azure.com) lets you create different profiles based on your device platform - iOS, macOS, Android, and Windows. For example, you can:

- Use Endpoint protection on Windows 10 devices to enable different BitLocker options, including encryption.
- Use the Restricted apps feature on iOS devices to create a list of approved apps that can be installed. Or, create a list of prohibited apps.
- Use the Kiosk settings to choose which apps can be used on Android devices running in kiosk mode.
- Apply a Wi-Fi connection and its settings, including the security type, on devices running macOS.

[Apply features and settings on your devices using device profiles](https://docs.microsoft.com/intune/device-profiles) is a great place to read about profiles, see how to create a profile, and more.

Remember, start small, and use a staged approach. Assign the profile to a pilot or test group. Then, assign the profile to more pilot groups.

## Step 8: Get to know the other features

Intune is a powerful service and includes many features. Here are some other tasks you can do using Intune:

- Manage software and updates on Windows [devices](https://docs.microsoft.com/intune/windows-update-for-business-configure) & [PCs](https://docs.microsoft.com/intune/keep-windows-pcs-up-to-date-with-software-updates-in-microsoft-intune), and [iOS](https://docs.microsoft.com/intune/software-updates-ios) devices
- Turn on [Microsoft Defender Advanced Threat Protection (ATP)](https://docs.microsoft.com/intune/advanced-threat-protection) on your Windows 10 devices, and use compliance and conditional access to protect access to corporate resources, such as SharePoint or Exchange Online
- Use [Lookout](https://docs.microsoft.com/intune/lookout-mobile-threat-defense-connector), [Symantec](https://docs.microsoft.com/intune/skycure-mobile-threat-defense-connector), and other mobile defense threat partners
- Add a [partner certification authority (CA)](https://docs.microsoft.com/intune/certificate-authority-add-scep-overview) to issue and renew certificates
- [Provide guidance to your end users](https://docs.microsoft.com/intune/end-user-educate) on the Company Portal app, getting apps, and more
- Monitor [apps](https://docs.microsoft.com/intune/apps-monitor) and [device compliance and configuration profiles](https://docs.microsoft.com/intune/compliance-policy-monitor), and more telemetry using the audit logs. You can also connect to the [Intune Data Warehouse](https://docs.microsoft.com/intune/reports-nav-create-intune-reports) and use Power BI for even more reporting needs.


## Identity and device access recommendations

Microsoft provides a set of recommendations for [identity and device access](microsoft-365-policies-configurations.md) to ensure a secure and productive workforce. For device access, use the recommendations and settings in the following articles along with the steps in this phase:

- [Prerequisites](identity-access-prerequisites.md)
- [Common identity and device access policies](identity-access-policies.md)

## How Microsoft does Microsoft 365 Enterprise

Learn how IT experts at Microsoft [manage devices with EMS](https://www.microsoft.com/itshowcase/deploying-and-managing-microsoft-365#primaryR8).

## How Contoso did Microsoft 365 Enterprise

See how the Contoso Corporation, a fictional but representative multi-national business, [deployed their mobile device management infrastructure](contoso-mdm.md) with Microsoft 365 cloud services.

![The Contoso Corporation](../media/contoso-overview/contoso-icon.png)

## Next step

[Mobile device management infrastructure exit criteria](mobility-infrastructure-exit-criteria.md)

