---
title: Set up email notifications for your security team
description: Set up email notifications to tell people about alerts and vulnerabilities with Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 03/15/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: M365-security-compliance
---

# Set up email notifications

> [!IMPORTANT]
> Microsoft Defender for Business is rolling out to [Microsoft 365 Business Premium](../../business-premium/index.md) customers, beginning March 1, 2022. Defender for Business as a standalone subscription is in in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. Preview includes an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

You can set up email notifications for your security team. Then, as alerts are generated, or new vulnerabilities are discovered, people on your security team will be notified automatically. 

## What to do

1. [Learn about types of email notifications](#types-of-email-notifications).

2. [View and edit email notification settings](#view-and-edit-email-notifications).

3. [Proceed to your next steps](#next-steps).


>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about Microsoft Defender for Business</a>. We'd love to hear from you!
>

## Types of email notifications

When you set up email notifications, you can choose from two types, as described in the following table: <br/><br/>

| Notification type  | Description  |
|---------|---------|
| Vulnerabilities  | Whenever any new exploits or vulnerability events are detected, recipients receive an email. |
| Alerts & vulnerabilities  | When alerts are generated because threats are detected on devices, or when any new exploits or vulnerability events are detected, recipients receive an email. |

> [!TIP]
> **Email notifications are not the only way your security team can find out about new alerts or vulnerabilities**.
> 
> Email notifications are a convenient way to help keep your security team informed, in real time. But there are others! For example, whenever your security team signs into the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), they'll see cards highlighting new threats, alerts, and vulnerabilities. Defender for Business is designed to highlight important information that your security team cares about as soon as they sign in.
> 
> Your security team can also choose **Incidents** in the navigation pane to view information. To learn more, see [View and manage incidents in Microsoft Defender for Business](mdb-view-manage-incidents.md).

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

- [Step 4: Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md)
