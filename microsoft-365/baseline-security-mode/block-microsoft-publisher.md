---  
title: "Block Microsoft Publisher"  
description: Use the Microsoft 365 admin center, Office Group policies, or registry keys to block Microsoft Publisher.
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
audience: admin
ROBOTS: NOINDEX, NOFOLLOW
---

# Block Microsoft Publisher

As a Microsoft 365 admin, you want to protect and secure your business environment. **Baseline security mode** helps you protect and secure your organization.

Publisher has a large attack surface and won't be included in Microsoft 365 starting in October 2026. Blocking Publisher now reduces security risk and aligns with Microsoft’s support strategy.

When you enable this setting, Microsoft Publisher won't launch. When users try to launch Publisher, they get an error message “Publisher could not start because of a security policy set by your organization.”

If you've already enabled this setting but need to revert to the default behavior, you can turn off this setting directly in the Microsoft 365 admin center.

## Turn off setting in the Microsoft 365 admin center

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a> and select Org settings.
1. Select Baseline Security Mode, find the **Block Microsoft Publisher** setting, and switch the toggle to **Off**.

## Office Cloud Policy service

Alternatively, you can make changes to the policy setting directly using the [Office Cloud Policy service](https://config.office.com/). Set the **Disable Publisher** policy as not configured to revert to the default behavior.
