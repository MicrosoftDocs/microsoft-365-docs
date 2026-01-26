---  
title: "Block FPRPC protocol for file opens"
description: FPRPC (FrontPage Server Extensions Remote Procedure Call) is an outdated protocol that poses security risks. It can be exploited by attackers to execute arbitrary commands or compromise systems through specially crafted files or network traffic. Due to these risks, Microsoft 365 apps block file opens using FPRPC by default. When FPRPC fallback is blocked, the app will attempt to open the file using HTTPS instead.
author: kwekuako
ms.author: kwekua  
manager: dansimp
ms.date: 06/25/2025  
ms.topic: how-to
ms.service: microsoft-365-admin
ms.localizationpriority: medium
ms.collection: RestrictedMode
ms.custom: QuickDraft  
ms.reviewer: kwekua
audience: Admin 
ai-usage: ai-assisted
ROBOTS: NOINDEX, NOFOLLOW 
---  

# How to Block FrontPage Server Extensions Remote Procedure Call (FPRPC) for file opens in Microsoft 365 apps

As a Microsoft 365 admin, you want to protect and secure your business environment. **Baseline security mode** helps you protect and secure your organization.

FrontPage Server Extensions Remote Procedure Call (FPRPC) is an outdated protocol that poses security risks. It can be exploited by attackers to execute arbitrary commands or compromise systems through specially crafted files or network traffic. Due to these risks, Microsoft 365 apps block file opens using FPRPC by default. When FPRPC is blocked, the app will attempt to open the file using HTTPS instead.

When this setting is turned on, users in your environment won’t be able to override the default configuration using Trust Center.

If you have turned on this setting and you need to revert to the default behavior, allowing users to override FPRPC blocking using Trust Center, you can turn off the Baseline Security Mode setting directly in the Microsoft 365 admin center.

## Turn off setting in the Microsoft 365 admin center

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a> and select Org settings.
1. Select Baseline Security Mode, find the Block FPRPC protocol for file opens setting, and switch the toggle to **Off**.

## Use Office Cloud Policy service

Alternatively, you can make changes to the policy setting directly using the [Office Cloud Policy service](https://config.office.com/). Set the **Restrict Apps from FPRPC Fallback** policy as not configured to revert to the default behavior.
