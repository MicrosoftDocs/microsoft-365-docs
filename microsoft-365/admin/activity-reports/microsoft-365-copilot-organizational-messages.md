---
title: "Microsoft 365 Copilot features adoption using organizational messages"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 10/16/2023
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
- m365copilot
- magic-ai-copilot
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MST160
- MET150
- MOE150
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how you can use organizational messages to help with the adoption of Microsoft 365 Copilot."
---

# Microsoft 365 Copilot features adoption using organizational messages

Organizational messages enable Enterprise administrators to deliver clear, actionable in-product messages to users of Microsoft 365 experiences. To learn more about organizational messages, see [Organizational Messages in Adoption Score](../adoption/organizational-messages.md) and [Organizational Messages in Intune](/mem/intune/remote-actions/organizational-messages-prerequisites).

To help with the adoption of Microsoft 365 Copilot features, organizational messages in Microsoft 365 usage analytics report enable admins to send messages to their Microsoft 365 licensed users who haven't recently used any Copilot features. In the pipeline, we're planning to expand organizational messages across platforms like Teams, Outlook, Excel, PowerPoint, and Word to further enhance the adoption of specific Copilot features.

## Who can use the feature?

To preview organizational messages in the Microsoft 365 Copilot usage report, you need to have one of the following admin roles:

- Global administrator

- Organizational Message Writer

The Organizational Message Writer role is a built-in role that allows assigned admins to view and configure organizational messages for their tenant. Note that this role doesn't grant access to user-level details in usage reports or the ability to modify permission settings. To learn more about the Organizational Message Writer role, see [About admin roles](../add-users/about-admin-roles.md).

The global administrator can assign the Organizational Messages Writer role to an admin user by following these steps:

1. Go to **Roles** > **Role assignments**.

2. Search for and select **Organizational Message Writer**.

3. Under **Assigned**, select **Add users** or **Add groups**.

4. Choose a group of admins you'd like to assign the role to, and select **Add**.

## Prerequisites

There are certain policies, if not configured properly, that can block the delivery of organizational messages to your employees. For guidance on adjusting all policy settings within [Microsoft Intune](https://intune.microsoft.com/) and to ensure that delivery to your users works as intended, see [Prerequisites for organizational messages](/mem/intune/remote-actions/organizational-messages-prerequisites#policy-requirements).

## Getting started

In the Microsoft 365 admin center, go to **Reports** > **Usage > Microsoft 365 Copilot**.

:::image type="content" source="../../media/copilot-usage-org-message.png" alt-text="Screenshot showing the Microsoft 365 Copilot usage dashboard with information about organization adoption." lightbox="../../media/copilot-usage-org-message.png":::

Select **Schedule message** within the recommendation card and follow these steps to create an Organizational message:

### Step 1: Select message content

Within the **Message** section of the Organizational messages panel, choose one from the set of the pre-made content, each containing a title, message, and link for your users to visit when they interact with the message. You can then review what the message will look like to your targeted users within the **Preview** section.  In the preview, we support the Windows 11 notification and Teaching popover in new Teams.

:::image type="content" source="../../media/copilot-notification-for-org.png" alt-text="Screenshot showing the notification pop-up for Copilot.":::

*The users see the Windows 11 notification recommending they use Microsoft 365 Copilot.*

>[!NOTE]
> Messages will align with your computer's system language settings. We currently support 15 languages. If your language is not among them, we will default to the nearest available option. [Check the appendix to see which languages are supported](#appendix).

:::image type="content" source="../../media/from-your-admin-teams.png" alt-text="Screenshot showing the notification pop-up in Teams from the admin to use Copilot.":::

*The users see Teams in-product Teaching Popovers in the new Teams recommending they use Copilot in Teams.*

>[!NOTE]
> Organizational messages will only show up in the new Teams.

### Step 2: Select the recipients

For this Copilot awareness scenario, the recipients of your message are, by default, selected based on their activities. Accordingly, within the Recipients section, your messages' recipient list will, at minimum, include users in your tenant who have Microsoft 365 licenses but have not actively used any Microsoft 365 Copilot features in the past month. You can further restrict the message to be seen only by members of the Microsoft 365 group you specify with the **Filter by Microsoft 365 Group** component.

### Step 3: Schedule a time window and frequency for delivery of the messages

Within the Schedule section, you must select a start date and an end date for your selected message. Additionally, you'll choose a frequency, which determines how often the message can be shown to the same targeted user within the scheduled timeframe. It's important to note that your message can be delivered to a user according to your set schedule and frequency. However, if the user takes the recommendation or dismisses the message, the message won't reappear to that user unless your team creates a subsequent message using this experience.

:::image type="content" source="../../media/copilot-organizational-message-panel.png" alt-text="Screenshot showing the panel to select an Organizational message about Microsoft 365 Copilot." lightbox="../../media/copilot-organizational-message-panel.png":::

### Step 4: Acknowledge and complete

Once you're satisfied with the configuration of your message, check the acknowledgment box and then select **Schedule message**. This causes the message to be registered for delivery according to your selections.

:::image type="content" source="../../media/copilot-schedule-organizational-message.png" alt-text="Screenshot showing the panel to schedule the delivery of an Organizational message about Microsoft 365 Copilot." lightbox="../../media/copilot-schedule-organizational-message.png":::

## What’s next?

The Organizational message will start sending on your provided start date. You can confirm the status of your message within the recommendation card and/or by selecting **View details**. If you need to make any changes, you can cancel the current message within the details panel and create a new one by repeating the previously described process.

## FAQ

### Can I customize the text in the messages?

Not currently, but additional customization options may be enabled in future releases.

### How frequently is the recipients list updated?

The recipient list is refreshed daily. The users who adopted the recommended practices will be removed from the recipient lists.

### Can users on Windows 10 view the messages?

No, viewing these messages requires Windows 11.

## Appendix

Messages Localization supported.

| **Languages**           | **Locale** |
|-------------------------|------------|
| Chinese (Simplified)    | zh-hans    |
| Chinese (Traditional)   | zh-hant    |
| Dutch                   | nl         |
| English (United States) | en         |
| French (France)         | fr         |
| German                  | de         |
| Italian                 | it         |
| Japanese                | ja         |
| Korean                  | ko         |
| Polish                  | pl         |
| Portuguese (Brazil)     | pt-br      |
| Portuguese (Portugal)   | pt-pt      |
| Russian                 | ru         |
| Spanish (Spain)         | es         |
| Turkish                 | tr         |

## Related links

[Organizational messages in Adoption Score](../adoption/organizational-messages.md)

[Organizational Messages in Intune](/mem/intune/remote-actions/organizational-messages-prerequisites)
