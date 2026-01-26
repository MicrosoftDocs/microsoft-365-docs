---  
title: "Block Dynamic Data Exchange (DDE) server launches in Excel"  
description: Use the Microsoft 365 admin center, Office Group policies or registry keys to block Dynamic Data Exchange (DDE) server launches in Excel.
author: kwekuako
ms.author: kwekua  
manager: dansimp
ms.date: 06/24/2025  
ms.topic: how-to
ms.service: microsoft-365-admin
ms.localizationpriority: medium
ms.collection: RestrictedMode
ms.custom: QuickDraft
ms.reviewer: kwekua
audience: admin
ROBOTS: NOINDEX, NOFOLLOW
---

# Block Dynamic Data Exchange (DDE) server launches in Excel

As a Microsoft 365 admin, you want to protect and secure your business environment. **Baseline security mode** helps you protect and secure your organization.

Dynamic Data Exchange (DDE) allows Excel to pull data from external sources in real time. However, if the source is malicious, it can send harmful code to Excel and potentially compromise the system without requiring macros or other active content. Attackers have used this technique in targeted phishing attacks to execute arbitrary commands. Blocking DDE server launches reduces this risk.  

When you enable this setting, Excel will block DDE server launches, helping prevent malicious external sources from injecting harmful code into spreadsheets.

If you have enabled this setting but need to revert to the default behavior, you can turn this setting off directly in the Microsoft 365 admin center.

## Turn off setting in the Microsoft 365 admin center

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a> and select Org settings.
1. Select Baseline Security Mode, find the **Block Dynamic Data Exchange (DDE) server launches in Excel** setting, and switch the toggle to **Off**.

## Use Office Cloud Policy service

Alternatively, you can make changes to the policy settings directly using the [Office Cloud Policy service](https://config.office.com/). Set the **Don’t allow Dynamic Data Exchange (DDE) server launch in Excel** policy as not configured to revert to the default behavior.
