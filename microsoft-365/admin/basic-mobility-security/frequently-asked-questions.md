---
title: "Basic Mobility and Security frequently-asked questions (FAQ)"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: reference
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
search.appverid:
- MET150
description: "Frequently-asked questions about Basic Mobility and Security."
---

# Basic Mobility and Security frequently-asked questions (FAQ)

This article contains frequently asked questions about Basic Mobility and Security, a feature that helps you manage and secure mobile devices in Microsoft 365. If you can't find an answer to your question, let us know by leaving a comment on the page so we can consider adding your question to this article.

## How can I get Basic Mobility and Security? I don't see it in the Microsoft 365 admin center

1.  Activate Basic Mobility and Security by going to the [Office 365 Security & Compliance](https://protection.office.com/) page.

2.  Go to Data loss prevention > Device management.

## How can I get started with device management in Basic Mobility and Security?

There are four steps to getting started with Basic Mobility and Security: 

1. Activate Basic Mobility and Security by going to the [Office 365 Security & Compliance](https://protection.office.com/).

2. Go to Data loss prevention > Device management > Device policies.
    
3. Create device management policies, and apply them to groups of users that are set up in security groups. We recommend that you start by deploying the policies to a small test group. For more info, see [Create device security policies in Basic Mobility and Security](create-device-security-policies.md).

4. Users who have had a policy applied to them are prompted to enroll their devices when they try to access Microsoft 365 data. For more info, see [Enroll your mobile device using Basic Mobility and Security](enroll-your-mobile-device.md).

For more details, see [Set up Basic Mobility and Security](set-up.md).

## I’m trying to set up Basic Mobility and Security but it seems stuck. The Microsoft 365 Service Health has been showing “provisioning” for a while. What can I do?

It may take some time to get the service ready for you. When provisioning is complete, you'll see the Basic Mobility and Security page. If you've waited 24 hours and the status is still provisioning, please contact Support and we'll help figure out what the issue is.

## What can I do if device enrollment fails?

If you're having trouble getting a device enrolled, first check the following:

- Make sure that the device isn't already enrolled with another mobile device management provider, such as Intune.

- Make sure that the device is set to the correct date and time.

- Switch to a different WIFI or cellular network on the device.

- For Android or iOS devices, uninstall and reinstall the Intune Company Portal app on the device.
    
If enrollment still isn't working, see [Troubleshoot Basic Mobility and Security](troubleshoot.md).

## What's the difference between Intune and Basic Mobility and Security?

Basic Mobility and Security is hosted by the Intune service. It is a subset of Intune services provided as an added benefit to Microsoft 365 and is a built-in cloud-based solution for managing devices in your organization. For a side-by-side comparison of the two services to help you decide if using Intune or Basic Mobility and Security for Microsoft 365 is the best fit for you, see [Choose between Basic Mobility Security and Intune](choose-between-basic-mobility-and-security-and-intune.md).

## How do policies work for Basic Mobility and Security? How do I set them up? Disable them?

After you complete initial setup for Basic Mobility and Security, you create policies and apply them to groups of users in the Security & Compliance Center. Policies require users of the policies to enroll their devices in Basic Mobility and Security before the device can be used to access Microsoft 365 data. The policies that you set up determine settings for mobile devices, for example, how often passwords must be reset or whether data encryption is required. For more information, see [Create device security policies in Basic Mobility and Security](create-device-security-policies.md) and [Microsoft 365 compliance center](../../compliance/microsoft-365-compliance-center.md).

For step-by-step instructions for creating and deploying device policies, see [Create device security policies in Basic Mobility and Security](create-device-security-policies.md).

If you want to exclude a specific group of users from being affected by policies, you can add a group to the exclusion group.

## Can I switch from Exchange ActiveSync device management to Basic Mobility and Security for Microsoft 365?

If you’re already using Exchange ActiveSync policies to manage mobile devices, you can start using Basic Mobility and Security by following the steps to set up Basic Mobility and Security. For more information, see [Protect user and device access](../../compliance/protect-access-to-data-and-services.md) and [Set up Basic Mobility and Security](set-up.md).

When you apply the policies that you create in Basic Mobility and Security to groups of users, these policies override Exchange ActiveSync mobile device mailbox policies and device access rules that you’ve previously created in the Exchange admin center for those users.

After a device is enrolled in Basic Mobility and Security, any Exchange ActiveSync mobile device mailbox policy or device access rule applied to the device is ignored.

## I  set up Basic Mobility and Security but now I want to remove it. What are the steps?

Unfortunately, you can't simply "unprovision" Basic Mobility and Security after you've set it up. But you can remove it for groups of users by removing user security groups from the device policies you've created. Or, you can disable it for everyone by removing the device policies so they aren't in place and aren't enforced. For more info, see [Turn off Basic Mobility and Security](turn-off.md).