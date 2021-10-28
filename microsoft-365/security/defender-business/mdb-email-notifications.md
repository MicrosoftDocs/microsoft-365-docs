---
title: Set up email notifications for your security team
description: Set up email notifications to tell people about alerts and vulnerabilities with Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 10/27/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
---

# Set up email notifications

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

Set up email notifications for your security team. Then, as alerts are generated, or new vulnerabilities are discovered, people on your security team will be notified automatically. 

**Email notifications are not the only way your security team can find out about new alerts or vulnerabilities**. Whenever your security team signs into the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), they'll see cards highlighting new threats, alerts, and vulnerabilities. Email notifications are another way to keep your security team informed, in real time. 

:::image type="content" source="media/mdb-wizard-email-notifications.png" alt-text="Set up email notifications in Microsoft Defender for Business.":::

You can choose from two types of notifications:

- **Vulnerabilities** - email notifications about new exploits or vulnerability events
- **Alerts & vulnerabilities** - email notifications about alerts on devices, new exploits, or vulnerability events

## View and edit email notifications

To view or edit email notification settings for your company, follow these steps:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, select **Settings**, and then select **Endpoints**. Then, under **General**, select **Email notifications**. 

3. Review the information on the **Alerts** and **Vulnerabilities** tabs.

   - If you don't see any items listed on the **Alerts** tab, you can create a rule for people to be notified when alerts are generated. To get help with this task, see [Create rules for alert notifications](../defender-endpoint/configure-email-notifications.md).

   - If you don't see any items listed on the **Vulnerabilities** tab, you can create a rule for people to be notified whenever a new vulnerability is discovered. To get help with this task, see [Create rules for vulnerability events](../defender-endpoint/configure-vulnerability-email-notifications.md).

   - If you do have rules created, select a rule to edit it. You can also delete a rule. 

## Next steps

Proceed to:

- [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md)
- [Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)