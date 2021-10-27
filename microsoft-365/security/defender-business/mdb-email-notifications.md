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

Email notifications are not the only way your security team can find out about new alerts or vulnerabilities. Whenever your security team signs into the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), they'll see cards highlighting new threats, alerts, and vulnerabilities. Email notifications are an additional way to keep your security team informed, in real time.

Typically, email notifications are set up during the initial setup and configuration process for Microsoft Defender for Business:

1. Assign user permissions
2. Set up email notifications (*We are here!*)
3. Onboard and configure devices   

:::image type="content" source="media/mdb-welcome-setup.png" alt-text="Welcome screen in Microsoft Defender for Business.":::

## Set up email notifications

To set up email notifications, specify a user's email address and the type of notification they should receive. You can choose from:

- **Vulnerabilities** - email notifications about new exploit or vulnerability events; or
- **Alerts & vulnerabilities** - email notifications about alerts on devices and new exploit or vulnerability events

:::image type="content" source="media/mdb-wizard-email-notifications.png" alt-text="Set up email notifications in Microsoft Defender for Business.":::

## View and edit email notifications

If you skipped the email notification step, or if you want to view or edit email notification settings for your company, follow these steps:

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