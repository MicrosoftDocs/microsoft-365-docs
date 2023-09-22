---
title: Set up email notifications for your security team
description: Set up email notifications to tell your security team about alerts and vulnerabilities in Defender for Business.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.reviewer: nehabha
ms.date: 05/01/2023
f1.keywords: NOCSH 
ms.collection: 
 - m365-security
 - m365solution-mdb-setup
 - highpri
 - tier1
---

# Set up email notifications

This article describes how to set up email notifications for your security team.

:::image type="content" source="media/mdb-setup-step4.png" alt-text="Visual depicting step 4 - set up email notifications for your security team.":::

When you can set up email notifications for your security team, they can be notified via email whenever any alerts are generated, or new vulnerabilities are discovered. 

## What to do

1. [Learn about types of email notifications](#types-of-email-notifications).
2. [View and edit email notification settings](#view-and-edit-email-notifications).
3. [Proceed to your next steps](#next-steps).

## Types of email notifications

When you set up email notifications, you can choose from two types, as described in the following table:

| Notification type  | Description  |
|---------|---------|
| Vulnerabilities  | Whenever any new exploits or vulnerability events are detected, recipients receive an email. |
| Alerts & vulnerabilities  | When alerts are generated because threats are detected on devices, or when any new exploits or vulnerability events are detected, recipients receive an email. |

> [!TIP]
> **Email notifications are not the only way your security team can find out about new alerts or vulnerabilities**.
> 
> Email notifications are a convenient way to help keep your security team informed, in real time. But there are others! For example, whenever your security team signs into the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), they'll see cards highlighting new threats, alerts, and vulnerabilities. Defender for Business is designed to highlight important information that your security team cares about as soon as they sign in.
> 
> Your security team can also choose **Incidents** in the navigation pane to view information. To learn more, see [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md).

## View and edit email notifications

To view or edit email notification settings for your company, follow these steps:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, select **Settings**, and then select **Endpoints**. Then, under **General**, select **Email notifications**. 

3. Review the information on the **Alerts** and **Vulnerabilities** tabs.

   - If you don't see any items listed on the **Alerts** tab, you can create a rule for people to be notified when alerts are generated. To get help with this task, see [Create rules for alert notifications](../defender-endpoint/configure-email-notifications.md).

   - If you don't see any items listed on the **Vulnerabilities** tab, you can create a rule for people to be notified whenever a new vulnerability is discovered. To get help with this task, see [Create rules for vulnerability events](../defender-endpoint/configure-vulnerability-email-notifications.md).

   - If you do have rules created, select a rule to edit it. You can also delete a rule. 

> [!IMPORTANT]
> When you set up email notifications in Defender for Business, you must assign the notification rules to specific users. Defender for Business doesn't use [role-based access control like Defender for Endpoint does](../defender-endpoint/rbac.md). Also, email notifications cannot be applied to device groups in Defender for Business. 

## Next steps

Proceed to:

- [Step 5: Onboard devices to Defender for Business](mdb-onboard-devices.md)
- [Step 6: Set up, review, and edit your security policies and settings in Microsoft Defender for Business](mdb-configure-security-settings.md)
