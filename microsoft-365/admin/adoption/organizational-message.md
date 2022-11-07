---
title: "Microsoft Adoption Score Organizational Message"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: high
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
search.appverid:
- MET150
- MOE150
description: "Learn how to send messages to your organization in Microsoft 365 using organizational messages in Adoption Score."
ROBOTS: NOINDEX, NOFOLLOW 
---

# Adoption Score Organizational Message

Organizational messages enable IT admins to deliver clear, actionable messages in-product and in a targeted way, while maintaining user-level privacy. Organizational messages in Adoption Score use targeted in-product notifications to advise on Microsoft 365 recommended practices based on Adoption Score insights. Users can be reminded to use products that have recently been deployed, encouraged to try a product on a different surface, or to recommend new ways of working, such as using @mentions to improve response rates in communications. Templatized messages are delivered to users in their flow of work through surfaces including Outlook, Excel, PowerPoint, and Word. Authorized professionals can use the organizational messages wizard in Adoption Score to choose from up to three templatized message types, define when and how often a message can be displayed, and exclude groups or priority accounts from receiving the message.

Organizational messages for Adoption Score will initially roll out to Communication, Content Collaboration, Mobility, and more to follow to support all People Experience categories. Check out the [2022 Ignite session](https://ignite.microsoft.com/en-US/sessions/ff17a80f-2fa6-4e52-b92c-745f0ca8d574?source=sessions) for a detailed demonstration and feature description.

> [!NOTE]
> The feature is currently in preview. If you encounter any bugs or have any suggestions, please give us feedback in the Microsoft 365 admin center. We appreciate your feedback and will reach out to you as fast as we can.

## Who can use the feature?

For a successful preview experience, you need to be one of the following admin roles:

- Global administrator

- Organizational message writer

The organizational message writer role is the new built-in role that allows assigned admins to view and configure messages. The global administrator can assign the organizational message writer role to admin:

1) Go to **Roles** > **Role assignments**

2) Search for and select **Organizational message writer**

3) Under **Assigned**, select **Add users** or **Add groups**

4) Choose a group of admins you’d like to assign this to, and select **Add**

## Where will the messages appear?

In this preview, we support the teaching callout and business bars in Word, Excel, PowerPoint, and Outlook Desktop Apps.

Business bars are supported by Microsoft 365 Consumer subscribers, Office 2019, Office 2016, Office 2013, and Office 2010.

The desktop teaching callout is supported by Microsoft 365 Consumer and Commercial Office 2019, and Office 2016 Consumer.

## How to enable Adoption Score Organizational Message

To enable Adoption Score Organizational Message, the global administrator needs to enable Adoption Score first:

1. Log in to the [admin center](https://admin.microsoft.com/) as a global administrator and go to **Reports** > **Adoption Score**

2. Select **Enable Adoption Score**. It can take up to 24 hours for insights to become available.

> [!NOTE]
> Only a global administrator can enable Adoption Score. The organizational message writer role can only opt-in for Adoption Score Organizational Messages.

After Adoption Score is enabled, the global administrator and organizational message writer role can opt-in for Adoption Score Organizational Message.

3. Under the **Organizational Messages** tab, select **Allow approved admins to send in-product recommendations to specified users**

Visit [privacy controls for Adoption Score](privacy.md) to understand how to enable Adoption Score.

## Getting Started

In the Microsoft 365 admin center, go to **Reports** > **Adoption Score.**

We currently have organizational messages for three people experience categories: Communication, Content collaboration, and Mobility. In each category, you’ll find available actions to take under the **How can I impact my score** section. Select **See what action you can take** > **Create message** to start the process.

To see all available organizational messages, go to the **Action (Preview)** tab next to **Overview**. There are currently five available messages for you to create. Choose one and select **Create message** to start.

## Capabilities

As global administrator or organizational message writer role, you can do any the following:

- Choose a message from a set of templatized content for business bars or teaching callouts

- Select the recipients based on user activities, Azure AD user groups, and group level aggregates

- Schedule a timeframe and frequency for delivery of the messages

- Save drafts anytime during the message creation process

- Track the status of organizational messages and user engagement

- Manage scheduled or active organizational messages

## Choose a message for business bars or teaching callout

1. Under the **Messages** tab, view where the messages will appear.

2. Choose a message from a set of templatized content.

3. Select **Preview this message** to see an example of what recipients will see during the date range you choose.

4. The messages will show up in the same language as the user’s surface. Currently, there are 41 languages supported. [Check the appendix to see which languages are supported](#appendix).

5. Select **Next** to proceed to the **Recipients** tab.

6. If you want to exit the message creation process for now and save a draft, select **Save and close**. The drafts are stored in the **Your org’s messages** tab under **Actions**.

## Select the recipients

1) Under the **Recipients** tab, the recipients are by default selected based on their activities. For example, targeted users who are not actively using OneDrive or SharePoint with the apps enabled for the past 28 days.

2) Select **Apply filter** > **Choose organizational attribute**

    - **Groups**: In addition to the default recipients, you can send messages to specific Azure AD user groups

    - **Companies, Country (State) – City, Departments**: Leveraging group-level aggregates, you can apply attributes filter such as attributes like location, departments, and companies to target specific groups of audiences.

3) You can also omit users with priority accounts or in certain Microsoft 365 groups.

4) Select **Next** to proceed to the **Schedule** tab.

> [!NOTE]
> The recipient list is refreshed daily. The users who adopted the recommended practices will be removed from the recipient lists.

## Schedule a time window and frequency for delivery of the messages

1) Under the **Schedule** tab, select **Start date**.

2) Selecting an **End date** is optional. The default duration is 365 days.

3) Choose **Frequency**.

4) Select **Next** to proceed to the **Finish** tab.

> [!NOTE]
> If the frequency of the message is set as once a week, the message will only show on one of the surfaces per week. After the user clicks or dismisses the message, it won’t show up again. Teaching callout messages only appear twice in their lifetime even if the user doesn’t click on it.

## Finish or Save Draft

1) Under the **Finish** tab, confirm the message details and then select **Schedule**.

2) If you want to exit the message creation process for now and save a draft, select **Save and close.** The drafts are stored in the **Your org’s messages** tab under **Actions**.

## Track the status of the messages and user engagement

Once messages have been created, you will see the reporting in the table under the **Your org’s messages** tab under **Actions**. The following information is available:

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

## Cancel or clone messages

Once messages have been created, you will see the reporting in the table under the **Your org’s messages** tab under **Actions**.

- Click three dots to the right of **Message name** to see a dropdown of actions

- Select **cancel** or **clone**.

> [!NOTE]
> Each tenant can have one active message for each insight. If you want to schedule a new message, you can go to the **Your org’s message** page to cancel active ones.

## FAQ

### Q: Why does the total number of messages seen differ from the expected number?

A: For any given message, not every user **in its selected audience** (selected as message recipients) will receive the message. This is expected behavior because message delivery depends on additional factors that impact a message’s reach, including:

- **User behavior**: some delivery channels require the user to go to a specific location/app to have a chance to see the message (e.g., an Office desktop app callout message can only be delivered to a user who opens the Office desktop app).

- **System protections to prevent over-messaging and user dissatisfaction**: some communication channels have message frequency limits if too many messages are live at a given time (e.g., an Teaching callout won't appear more than twice to each user).

### Q: How can I test the messages before sending them to users of my entire company?

A: You can send messages to specific Azure AD groups, such as your IT department. See [Select the recipients](#select-the-recipients) for details.

### Q: What is the recommended time frame window for the messages?

A: As the frequency of the messages are at most once a week, the recommended minimum duration is 1 month. The recommended length of the time window is 12 months. The recipient’s list is refreshed daily. Your messages will always be sent to users who haven’t adopted the recommended practices in the last 28 days, so they won’t repeatedly send to users who have already adopted.

### Q: Will I be able to customize the text in the messages?

A: Not currently.

## Organizational Messages in Windows Endpoint Manager

Organizational messages in Windows Endpoint Manager enable organizations to deliver branded personalized messages to their employees via native Windows 11 surfaces, such as Notification Center and the Get started app. These messages are intended to help people ramp up in new roles quicker, learn more about their organization, and stay informed of new updates and trainings. [Learn more about Organizational messages in Windows Endpoint Manager](/mem/intune/remote-actions/custom-notifications).

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