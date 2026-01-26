---  
title: "Block Basic authentication"  
description: Block Basic authentication in Microsoft 365 apps
author: kwekuako
ms.author: kwekua  
manager: dansimp
ms.date: 11/13/2025  
ms.topic: how-to
ms.service: microsoft-365-admin  
ms.localizationpriority: medium
ms.collection: RestrictedMode
ms.custom: QuickDraft
audience: admin
ai-usage: ai-assisted
ROBOTS: NOINDEX, NOFOLLOW
---

# Block Basic authentication in Microsoft 365 apps

As a Microsoft 365 admin, you want to protect and secure your business environment. **Baseline security mode** helps you protect and secure your organization.

Basic authentication is an outdated authentication method that transmits user credentials in a way that can easily be intercepted and stolen. Blocking Basic authentication helps protect users from credential theft, especially during phishing attacks or when accessing services over insecure networks. Because of these security risks, Basic authentication is now blocked by default in Microsoft 365 apps.

When users attempt to open files on servers that only use Basic authentication, they see a message indicating that the file has been blocked because it uses a sign-in method that might be insecure.

When this setting is turned on, users in your environment won't be able to override the default configuration using Trust Center.

If you have enabled this setting but need to revert to the default behavior (allow users to override the Basic authentication blocking using Trust Center), you can turn this setting off directly in the Microsoft 365 admin center.  

## Turn off setting in the Microsoft 365 admin center

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a> and select Org settings.
1. Select Baseline Security Mode, find the **Block Basic authentication prompts** setting, and switch the toggle to **Off**.

## Use Office Cloud Policy service

Alternatively, you can make changes to the policy settings directly using the [Office Cloud Policy service](https://config.office.com/).

The policy setting **Allow Basic authentication prompts from network proxies** controls whether network proxies are allowed to show Basic authentication prompts, and the policy setting **Allow specified hosts to show Basic authentication prompts to Office apps** controls whether specific hosts can show Basic authentication sign-in prompts. Set both of these policies as not configured to revert to the default behavior.
