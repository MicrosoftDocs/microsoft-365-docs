---  
title: "Block insecure protocols for file opens"  
description: Hypertext Transfer Protocol (HTTP) and File Transfer Protocol (FTP) are outdated protocols that can expose sensitive data because they transmit information in plain text. Blocking file opens using these protocols helps prevent attackers from intercepting credentials or other confidential data during file access.
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

# Block insecure protocols for file opens in Microsoft 365 apps

As a Microsoft 365 admin, you want to protect and secure your business environment. **Baseline security mode** helps you protect and secure your organization.

Hypertext Transfer Protocol (HTTP) and File Transfer Protocol (FTP) are outdated protocols that can expose sensitive data because they transmit information in plain text. Blocking file opens using these protocols helps prevent attackers from intercepting credentials or other confidential data during file access.

When this setting is turned on, users will be prevented from opening files from locations that use HTTP or FTP. Users will not be able to override this configuration in **Trust Center**. This helps enforce secure data transmission practices and reduces exposure to adversary-in-the-middle attacks. If you need to revert to the default behavior, you can turn off this setting directly in the Microsoft 365 admin center.

## Turn off setting in the Microsoft 365 admin center

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a> and select Org settings.
1. Select Baseline Security Mode, find the **Block insecure protocols for file opens** setting, and switch the toggle to **Off**.

## Use Office Cloud Policy service

Alternatively, you can make changes to the policy setting directly using the [Office Cloud Policy service](https://config.office.com/). Set the **Block Insecure Protocols** policy as not configured to revert to the default behavior.
