---
title: "Microsoft Adoption Score Organizational Messages"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 06/14/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
monikerRange: 'o365-worldwide'
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
- campaignIDs-batch1
search.appverid:
- MET150
- MOE150
description: "Learn how to send messages to your organization in Microsoft 365 using organizational messages in Adoption Score."
---

# Adoption Score Organizational Messages

Organizational messages enable IT admins to deliver clear, actionable messages in-product and in a targeted way, while maintaining user-level privacy. Organizational messages in Adoption Score use targeted in-product notifications to advise on Microsoft 365 recommended practices based on Adoption Score insights. Users can be reminded to use products that have recently been deployed, encouraged to try a product on a different surface, or to recommend new ways of working, such as using @mentions to improve response rates in communications. Templated messages are delivered to users in their flow of work through surfaces including Outlook, Excel, PowerPoint, Word, and new Teams. Authorized professionals can use the organizational messages wizard in Adoption Score to choose from up to three templated message types, define when and how often a message can be displayed, and exclude groups or priority accounts from receiving the message.

Organizational messages for Adoption Score will initially roll out to Communication, Content Collaboration, Mobility, and more to follow to support all People Experience categories.

> [!NOTE]
> The feature is currently in preview. If you encounter any bugs or have any suggestions, give us feedback in the Microsoft 365 admin center. We appreciate your feedback and will reach out to you as fast as we can.

## Who can use the feature?

For a successful preview experience, you need to be one of the following admin roles:

- Global administrator

- Organizational message writer

The Organizational message writer role is the new built-in role that allows assigned admins to view and configure messages. The Global administrator can assign the Organizational message writer role to admins:

1. Go to **Roles** \> **Role assignments**.

2. Search for and select **Organizational message writer**.

3. Under **Assigned**, select **Add users** or **Add groups**.

4. Choose a group of admins you'd like to assign the role to, and select **Add**.

## Where will the messages appear?

In this preview, we support the teaching call-out and business bars in Word, Excel, PowerPoint, Outlook Desktop Apps, and new Teams.
Business bars are supported by Microsoft 365 Consumer subscribers, Office 2019, Office 2016, Office 2013, and Office 2010.

:::image type="content" source="../../media/org-message-location-bar-expanded.jpg" alt-text="In-product notification recommending to use Teams messages" lightbox="../../media/org-message-location-bar-expanded.jpg":::

*The user sees an in-product notification recommending they use Teams messages more.*

The desktop teaching call-out is supported by Microsoft 365 Consumer and Commercial Office 2019, and Office 2016 Consumer.

:::image type="content" source="../../media/org-message-location.png" alt-text="In-product notification recommending to save to OneDrive":::

*The user sees an in-product notification recommending they save to OneDrive more.*

:::image type="content" source="../../media/teams-from-your-org.png" alt-text="Screenshot showing the notification pop-up in Teams from the admin to use Copilot.":::

*The user sees an in-product notification recommending they use interactive features during Teams meetings.*

## How to enable Adoption Score Organizational Messages

To enable Adoption Score Organizational Messages, the global administrator needs to enable Adoption Score first:

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a> and go to **Reports** \> **Adoption Score**.

2. Select **Enable Adoption Score**. It can take up to 24 hours for insights to become available.

3. Under the **Organizational Messages** tab, select **Allow approved admins to send in-product recommendations to specified users**.

> [!NOTE]
> Only a global administrator can enable Adoption Score. The organizational message writer role can only opt in for Adoption Score Organizational Messages.

After Adoption Score is enabled, the global administrator and organizational message writer role can opt in for Adoption Score Organizational Message.

Visit [privacy controls for Adoption Score](privacy.md) to understand how to enable Adoption Score.

:::image type="content" source="../../media/org-message-adoption-score.png" alt-text="Screenshot: How to enable Organizational Messages in Adoption Score." lightbox="../../media/org-message-adoption-score-expanded.jpg":::

## Getting started

In the Microsoft 365 admin center, go to **Reports** \> **Adoption Score.**

We currently have organizational messages for three people experience categories: Communication, Content collaboration, and Mobility. In each category, you'll find available actions to take under the **How can I impact my score** section. Select **See what action you can take** \> **Create message** to start the process.

To see all available organizational messages, go to the **Actions** tab next to **Overview**. Choose one of the available messages listed and select **Create message** to start.

## Capabilities

As global administrator or organizational message writer role, you can do any of the following actions:

- Choose a message from a set of templated content for business bars or teaching call-outs

- Select the recipients based on user activities, Microsoft Entra user groups, and group level aggregates

- Schedule a time frame and frequency for delivery of the messages

- Save drafts anytime during the message creation process

- Track the status of organizational messages and user engagement

- Manage scheduled or active organizational messages

## Take action on insights

### Step 1: Choose a message to take action

1. Under the **Messages** tab, view where the messages will appear.

2. Choose a message from a set of templated content.

3. Select **Preview this message** to see an example of what recipients will see during the date range you choose.

4. The messages will show up in the same language as the user's surface. Currently, there are 41 languages supported. [Check the appendix to see which languages are supported](#appendix).

5. Select **Next** to proceed to the **Recipients** tab.

6. If you want to exit the message creation process for now and save a draft, select **Save and close**. The drafts are stored in the **Your org's messages** tab under **Actions**.

### Step 2: Select the recipients

1. Under the **Recipients** tab, the recipients are by default selected based on their activities. For example, targeted users who aren't actively using OneDrive or SharePoint with the apps enabled for the past 28 days.

2. Select **Apply filter** \> **Choose organizational attribute**.

    - **Groups**: In addition to the default recipients, you can send messages to specific Microsoft Entra user groups

    - **Companies, Country (State) - City, Departments**: Using group-level aggregates, you can apply attributes filter such as attributes like location, departments, and companies to target specific groups of audiences. [Learn more about how to open Group Level Aggregates and validate data accuracy](group-level-aggregates.md).

3. You can also omit users with priority accounts or in certain Microsoft 365 groups.

4. Select **Next** to proceed to the **Schedule** tab.

> [!NOTE]
> The recipient list is refreshed daily. The users who adopted the recommended practices will be removed from the recipient lists.

:::image type="content" source="../../media/org-message-select-recipients.png" alt-text="Screenshot: Select recipients for Organizational Messages in Adoption Score." lightbox="../../media/org-message-select-recipients-expanded.jpg":::

### Step 3: Schedule a time window and frequency for delivery of the messages

1. Under the **Schedule** tab, select **Start date**.

2. Selecting an **End date** is optional. The default duration is 365 days.

3. Choose **Frequency**.

4. Select **Next** to proceed to the **Finish** tab.

> [!NOTE]
> If the frequency of the message is set as once a week, the message will only show on one of the surfaces per week. After the user selects or dismisses the message, it won't show up again. Teaching call-out messages only appear twice in their lifetime even if the user doesn't select it.

:::image type="content" source="../../media/org-message-schedule-message.png" alt-text="Screenshot: Schedule your message for Organizational Messages in Adoption Score." lightbox="../../media/org-message-schedule-time-expanded.jpg":::

### Step 4: Finish or Save Draft

1. Under the **Finish** tab, confirm the message details and then select **Schedule**.

2. If you want to exit the message creation process for now and save a draft, select **Save and close.** The drafts are stored in the **Your org's messages** tab under **Actions**.

### Step 5: Track the status of the messages and user engagement

Once messages have been created, you'll see the reporting in the table under the **Your org's messages** tab under **Actions**. The following information is available:

- Message name

- Status: Draft/Scheduled/Active/Scheduled/Canceled/Completed/Error

- Last edited date

- Start date

- End date

- Related category

- Related metric

- Creator

- (Available after messages are active) Total messages seen: total number of times the message was shown to users

- (Available after messages are active) Total clicks: total number of times the message was clicked by users

> [!NOTE]
> This capability is only available to Product admins, report reader roles, and user success specialists who have reader permissions.

:::image type="content" source="../../media/org-message-track-status.png" alt-text="Screenshot: Track the status of your message for Organizational Messages in Adoption Score." lightbox="../../media/org-message-track-status-expanded.jpg":::

### Step 6: Cancel or clone messages

Once messages have been created, you'll see the reporting in the table under the **Your org's messages** tab under **Actions**.

- Select three dots to the right of **Message name** to see a dropdown of actions.

- Select **cancel** or **clone**.

> [!NOTE]
> Each tenant can have one active message for each insight. If you want to schedule a new message, you can go to the **Your org's message** page to cancel active ones.

## FAQs

### Why does the total number of messages seen differ from the expected number?

A: For any given message, not every user **in its selected audience** (selected as message recipients) will receive the message. This is expected behavior because the message delivery depends on other factors that affect a message's reach, including:

- **User behavior**: some delivery channels require the user to go to a specific location/app to have a chance to see the message (for example, a  Microsoft 365 app call-out message can only be delivered to a user who opens the Microsoft 365 app).

- **System protections to prevent over-messaging and user dissatisfaction**: some communication channels have message frequency limits if too many messages are live at a given time (for example, a Teaching call-out won't appear more than twice to each user).

### How can I test the messages before sending them to users of my entire company?

You can send messages to specific Microsoft Entra groups, such as your IT department. See [Select the recipients](#step-2-select-the-recipients) for details.

### What is the recommended time frame window for the messages?

As the frequency of the messages is at most once a week, the recommended minimum duration is one month. The recommended length of the time window is 12 months. The recipient's list is refreshed daily. Your messages will always be sent to users who haven't adopted the recommended practices in the last 28 days. Messages won't repeatedly send to users who have already adopted.

### Will I be able to customize the text in the messages?

Not currently, but additional customization options will be enabled in future releases.

## Organizational Messages in Microsoft Intune

Organizational messages in Intune enable organizations to deliver branded personalized messages to their employees via native Windows 11 surfaces, such as Notification Center and the Get started app. These messages are intended to help people ramp up in new roles quicker, learn more about their organization, and stay informed of new updates and trainings. [Learn more about Organizational messages in Microsoft Intune](/mem/intune/remote-actions/organizational-messages-prerequisites).

## Appendix

### Messages Localization supported

| Languages               | Locale  |
|-------------------------|---------|
| Arabic                  | ar      |
| Bulgarian               | bg      |
| Chinese (Simplified)    | zh-cn   |
| Chinese (Traditional)   | zh-tw   |
| Croatian                | hr      |
| Czech                   | cs      |
| Danish                  | da      |
| Dutch                   | nl      |
| English (United States) | en      |
| Estonian                | et      |
| Finnish                 | fi      |
| French (France)         | fr      |
| German                  | de      |
| Greek                   | el      |
| Hebrew                  | he      |
| Hungarian               | hu      |
| Indonesian              | id      |
| Italian                 | it      |
| Japanese                | ja      |
| Korean                  | ko      |
| Latvian                 | lv      |
| Lithuanian              | lt      |
| Norwegian (Bokmål)      | no      |
| Polish                  | pl      |
| Portuguese (Brazil)     | pt-br   |
| Portuguese (Portugal)   | pt-pt   |
| Romanian                | ro      |
| Russian                 | ru      |
| Serbian (Latin)         | sr      |
| Slovak                  | sk      |
| Slovenian               | sl      |
| Spanish (Spain)         | es      |
| Swedish                 | sv      |
| Thai                    | th      |
| Turkish                 | tr      |
| Ukrainian               | uk      |
| Vietnamese              | vi      |
| Catalan                 | ca      |
| Basque                  | eu      |
| Galician                | gl      |
| Serbian (Cyrillic) RS   | sr-Cyrl |

## Related content

[Microsoft 365 apps health – Technology experiences](apps-health.md) (article)\
[Content collaboration – People experiences](content-collaboration.md) (article)\
[Meetings – People experiences](meetings.md) (article)\
[Mobility – People experiences](mobility.md) (article)\
[Privacy controls for Adoption Score](privacy.md) (article)\
[Teamwork – People experiences](teamwork.md) (article)
