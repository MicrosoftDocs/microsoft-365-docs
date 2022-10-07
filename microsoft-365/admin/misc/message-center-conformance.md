---
title: "Conformance metadata for Message Center posts"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ROBOTS: NOINDEX, NOFOLLOW

description: "Get an overview of...."
---

# Conformance metadata for Message Center posts

When planning for new features or service deployments, you need to understand and assess the changes for conformance to industry, region, and country regulations. We've heard your feedback that if there's insufficient conformance information about a new or changing feature, you may have to conduct your own research about the feature or reach out to the Compliance Program with questions.  

In this pilot program, we want to proactively provide metadata for new and updated Microsoft 365 features and services. Our goal is to help you efficiently assess your compliance requirements and help you with adoption and change management decisions.  

For example, if for a feature the metadata has the following values, feature adoption decision should be quick.  

- Customer data is stored? **Yes/No**

- Change to customer data storage? **No**

- Changes to existing data flow? **No**

- Feature integrates with 3rd party services? **No**

> [!NOTE]
> The above list is slightly different from what you previously saw in the pilot conformance posts. We've updated the list based on feedback we've received from pilot customers.

For features where the metadata is different from the list above, the Message center post may provide you with documentation.

## Understanding conformance metadata

Metadata name 

Values 

Definition and Question asked to feature team) 

Example: Yes 

Example: No 

Customer data is stored  

Yes/No 

Does this change/feature store or process any NET NEW data (classified as customer or personal data) which was not previously stored or processed by the service/previous version of this feature  

 

Teams Meetings Recordings capturing/collecting customer data/content and is now stored in OD. 

 

Message Center Service MAU feature which shows the aggregated service monthly active users for a tenant ID which is not classified as customer or personal data. 

 

Change to customer data storage 

Yes/No 

Does this change/feature use a NEW or DIFFERENT service to store data 

 

Teams Meetings Recordings capturing/collecting customer data/content and is now stored in OD. 

 

Expanded reactions in Teams. This is expanding message reactions in Teams to a larger set. The newer reactions being stored are customer data. However, there is no change in HOW data is stored or processed.  

 

Changes to existing data flow 

Yes/No 

Does this feature process data via a new or different processing pipeline  

 

 

OR 

is the feature just extending an existing processing pipeline to newer data / exposing data already exposed on one surface to another surface?  (Answer = No) 

 

When Bing for Business started using text from Word to send to Bing then bring data back to Word, the flow of data changed 

 

Productivity score being used on the Experience Insights page in admin center, the data is showed on a new surface, but storage and processing is the same.  

 

Suggested Reply in Group Chats on Teams Desktop (an extension of 1:1 chats) does not have any net new data; it is an extension of the pipeline already set up for Suggested Reply in 1:1 chats . 

 

 

Feature integrates with 3rd party services 

Yes/No 

Does this feature utilize a net new service / app (1st party or 3rd party) such that customer data could potentially be stored or processed "outside" of M365. 

Bing for Business may receive customer content in the form of "search" data to present a user with potentially relevant information/content. 

Message Center Service MAU feature which shows the service monthly active users using Usage Report Graph API which is within M365 boundary 

Feature benefits from regional deployment 

We are removing this metadata since currently we are unable to accurately provide information, which would meet the customer need. This is because the nuances of the Microsoft365 features make it difficult to efficiently extract and standardize this information at scale. 

 

Background 

 

Why are we doing this pilot? 

When planning for new features or service deployments, we understand the need to assess changes for conformance to industry, region, and country regulations. 

  

We have heard that if there is insufficient conformance information about a new or changing feature, you may conduct your own research or reach out to the Compliance Program with questions.  

  

Responding to this feedback, we are looking to pilot a project where we proactively provide metadata for new and updated M365 features and services. Our goal is to help our customers efficiently assess their compliance posture and assist them in making adoption and change management decisions.  

 

Joining this pilot, you will have conformance metadata supporting a few applicable Message Center posts and we’ll need you to provide us with feedback on how we can improve. 

 

How Can you Join? What Should You Expect? 

Join by completing this opt-in survey. 

After a Message center post has been delivered, you will receive an additional Message Center post that says, “Additional Conformance Information for MC######”. This post will contain additional conformance metadata. The additional posts will begin at the end of May 2022. 

We’ll start with a few features from Microsoft Teams, OneDrive for Business and SharePoint Online. 

Once you start receiving these conformance related posts, please provide feedback on how helpful this additional metadata is by… 

Directly providing feedback on the additional post 

Emailing MCSHDPMS@Microsoft.com 

Sending feedback on our Co-Dev channel 

 

Example of pilot post V2 

Graphical user interface, text, application, email

Description automatically generated 

Example of pilot post V1 

 

Graphical user interface, text, application, email

Description automatically generated 

 

 

 

## Frequently asked questions

<br>

****

|Metadata name|Values|Definition and questions asked| Example|
|---|---|---|---|
|Customer data is stored|Yes/No|Does this change/feature store or process any NET NEW data (classified as customer or personal data) which was not previously stored or processed by the service/previous version of this feature|Teams Meetings Recordings capturing/collecting customer data/content and is now stored in|Message Center Service MAU feature which shows the aggregated service monthly active users for a tenant ID which is not classified as customer or personal data.|
|Change to customer data storage|Yes/No|Does this change/feature use a NEW or DIFFERENT service to store data|Teams Meetings Recordings capturing/collecting customer data/content and is now stored in|Expanded reactions in Teams. This is expanding message reactions in Teams to a larger set. The newer reactions being stored are customer data. However, there is no change in HOW data is stored or processed.|
|Changes to existing data flow|Yes/No|Does this feature process data via a new or different processing pipeline <br> OR <br> is the feature just extending an existing processing pipeline to newer data / exposing data already exposed on one surface to another surface?  (Answer = No)|When Bing for Business started using text from Word to send to Bing then bring data back to Word, the flow of data changed|Productivity score being used on the Experience Insights page in admin center, the data is showed on a new surface, but storage and processing is the same. <br> Suggested Reply in Group Chats on Teams Desktop (an extension of 1:1 chats) does not have any net new data; it is an extension of the pipeline already set up for Suggested Reply in 1:1 chats|
|Feature integrates with 3rd party services|Yes/No|Does this feature utilize a net new service / app (1st party or 3rd party) such that customer data could potentially be stored or processed "outside" of M365.|Bing for Business may receive customer content in the form of "search" data to present a user with potentially relevant information/content.|Message Center Service MAU feature which shows the service monthly active users using Usage Report Graph API which is within M365 boundary.|
|

## Filter messages

Message center presents a view of all active messages in a table format. By default, it shows the most recent message at the top of the list. You can select **Service** to see messages for various services, such as Microsoft 365 Apps, SharePoint Online, etc.   Under **Tag** you can select **Admin impact**, **Data privacy**, **Feature update**, **Major update**, **New feature**, **Retirement**, or **User impact** messages. Under **Message state** you can select **Favorites**, **Unread**, or **Updated** messages.

The Archive tab shows the messages you have archived. To archive a message, in the message pane, Select **Archive**.

::: moniker range="o365-worldwide"

Use the **Service**, **Tag**, and **Message state**  drop-down menus to select a filtered view of messages. For example, in this diagram the messages are tagged with the **Admin impact** tag.

You can select any column heading, except **Service** and **Tag**,  to sort messages in ascending or descending order.

:::image type="content" source="../../media/message-center-admin-impact1.png" alt-text="Message center view sorted by Admin impact.":::

::: moniker-end

::: moniker range="o365-21vianet"

Use the **Service**, **Tag**, and **Message state**  drop-down menus to select a filtered view of messages. For example, in this diagram the messages are tagged with the **Admin impact**.

You can select any column heading, except **Service** and **Tags**,  to sort messages in ascending or descending order.

::: moniker-end

### Major updates

Major updates can be reviewed by selecting the **Major update** from the **Tags** drop-down.

Major updates are communicated at least 30 days in advance when an action is required and might include:

- Changes to daily productivity such as inbox, meetings, delegations, sharing, and access
- Changes to themes, web parts, and other components that may affect customized features
- Increases or decreases to visible capacity such as storage, number of rules, items, or durations
- Changes to product branding that may:
  - Cause end user confusion,
  - Result in changes to help desk processes and reference material, or
  - Change a URL
- A new service or application
- Changes requiring an admin action (exclusive of prevent or fix issues)
- Changes to where your data is stored
  
### Preferences

If administration is distributed across your organization, you may not want or need to see posts about all Microsoft 365 services. Each admin can:

- Set preferences that control which messages are displayed in Message center.
- Filter messages
- Set email preferences to receive a weekly digest of all messages, emails for major updates only, and emails for data privacy messages.  

::: moniker range="o365-worldwide"

1. Select **Preferences** at the top of Message center.

2. In the **Custom View** tab, make sure that the check box is selected for each service that you want to monitor. Clear the check boxes for the services you want to filter out of your Message center view.

3. Digest emails are turned on by default and are sent to your primary email address. To stop receiving the weekly digest, clear the **Send me email notifications from message center** check box in he **Email tab**. 

   You can also enter up to two email addresses, separated by a semicolon.

   You can also choose the emails you want to get, as well as a weekly digest of services you select.

4. Select **Save** to keep your changes.
  
::: moniker-end

::: moniker range="o365-21vianet"

1. Select **Preferences** at the top of Message center.

2. In the **Custom View** tab, make sure that the check box is selected for each service that you want to monitor. Clear the check boxes for the services you want to filter out of your Message center view.

3. Digest emails are turned on by default and are sent to your primary email address. To stop receiving the weekly digest, clear the **Send me email notifications from message center** check box in he **Email tab**.

   You can also enter up to two email addresses, separated by a semicolon.

   You can also choose the emails you want to get, as well as a weekly digest of services you select.

4. Select **Save** to keep your changes.

::: moniker-end

### Display messages in your preferred language
  
We use machine translation to automatically display messages in your preferred language. Read [Language translation for Message center posts](language-translation-for-message-center-posts.md) for more information on how to set your language.
  
> [!NOTE]
> The weekly digest and any posts that are emailed are sent in English-only. Recipients can use [Translator for Outlook](https://support.microsoft.com/office/3d7e12ed-99d6-406e-a453-b9db0d9653fa) to read the message in their preferred language.

## Monthly active users

When you open a message center post, we'll tell you the number of users who've been using that Microsoft 365 app or service in the **Service & monthly active users** section. The numbers are for the last 28 days. This info can help you prioritize which changes you should work on.

:::image type="content" source="../../media/msgctr-mau-teams.png" alt-text="Screenshot: Showing the Microsoft Teams Chat density page in the message center post with monthly active user data":::

The number of monthly users applies to all users who've used that Microsoft 365 app or service on any device.

> [!NOTE]
> This feature isn't available for all Microsoft 365 apps and services yet. We'll let you know when the feature isn't available.

## Choose columns

To choose columns, on the **Message center** page, on the far right, select **Choose columns**, and in the **Choose columns** pane, select the ones you want displayed.

Here's a quick overview of the information you'll see in each column.

### Column information

<br>

****

|Column|Description|
|---|---|
|Check mark|Selecting the check mark in the column heading row will select all messages currently displayed. Selecting the check mark next to one or more messages lets you take action on those messages.|
|Message title|Message titles are brief descriptions of upcoming changes. If the full title doesn't display, hover your cursor over it and the entire title will appear in a pop-up box.|
|Service|Icons indicate the application to which the message applies.|
|More options|More options lets you dismiss a message, mark it as read or unread, or share it with another admin. To restore an archived message, select the **Archive** tab, select the check mark next to the message, and select **Restore**.|
|Tags| You can choose tags from the Tag drop-down to filter messages. <br> <p> **Data Privacy**: Data privacy notification (limited to global administrator and Message center Privacy reader roles). <p> **Major update**: Changes communicated at least 30 days in advance ([Major updates](#major-updates)). <p> **Retirement**: Retirement of a service or feature. <p> **New feature**: New feature or service. <p> **Feature update**: Update to an existing feature. <p> **Admin impact**: When the change clearly impacts the admin in the following ways - UI change, workflow change, control available and Specific/Potential Action. <p> **User impact**: When the change to the service clearly impacts the user - UI Change and workflow change. <p> **Updated message**: When a message is updated.|
|Category| This is not shown by default, but can be specified in the **Choose columns** panel. Messages are identified by one of the following three categories: <p> **Prevent or fix issues**: Informs you of known issues affecting your organization and may require that you take action to avoid disruptions in service. Prevent or fix issues are different than Service health messages because they prompt you to be proactive to avoid issues. <p> **Plan for change**: Informs you of changes to Microsoft 365 that may require you to act to avoid disruptions in service. For example, we'll let you know about changes to system requirements or about features that are being removed. We try to provide at least 30 days' notice of any change that requires an admin to act to keep the service running normally. <p> **Stay informed**: Tells you about new or updated features we are turning on in your organization. The features are usually announced first in the [Microsoft 365 Roadmap](https://go.microsoft.com/fwlink/?linkid=2070821). <p> May also let you know about planned maintenance in accordance with our Service Level Agreement. Planned maintenance may result in down time, where you or your users can't access Microsoft 365, a specific feature, or a service such as email or OneDrive for Business.|
|Act by|We'll only have dates here if we're making a change that requires you to take an action by a certain deadline. Since we rarely use the **Act by** column, if you see something here, you should pay extra attention to it.|
|Last updated|Date that the message was published or last updated.|
|Message ID|Microsoft tracks our Message center posts by message ID. You can refer to this ID if you want to give feedback or if you call Support about a particular message.|
|

### Admin roles that don't have access to the Message center

- Compliance administrator
- Conditional access administrator
- Customer Lockbox access approver
- Device administrators
- Directory readers
- Directory synchronization accounts
- Directory writers
- Intune service administrator
- Privileged role administrator
- Reports reader

## Give feedback on a post

In the Message center, you can select a message to see details.

If you want to provide feedback on the message, in the details pane, select either the **Like** or **Dislike** icon on the bottom of the message details pane, and provide optional feedback in the text box that appears. Do not provide any personal information. You can optionally select **It's OK to contact me about this feedback** and then select **Send**.

> [!NOTE]
> If you're using Microsoft 365 for Government - GCC, Microsoft 365 for Government - GCC High and Office 365 Government - DoD, you won't be able to provide feedback on a post.

## Share a message

See a message that someone else needs to act on? You can share the contents of the message with any user by email:
  
1. Select the message to open it, and then select **Share**.
  
2. To share the message, enter up to two email addresses separated by a colon. You can send to individual and to group email addresses. Optionally, you can choose to receive a copy of the message in email (the message will go to your primary email address) or add a personal message to provide recipients with more context.
  
3. Select **Share** to send the email.

## Get a link

Need to follow up with another admin to make sure they're aware of a change and taking action? You can generate a link to share in email or instant messaging, for example, that will connect the user directly to that message. The person you share the link with has to have access to Message center. See [admin roles that don't have access to the Message center](message-center.md#admin-roles-that-dont-have-access-to-the-message-center) for more information.

1. Select the message to open it.

2. Select **Copy link**.

3. Use Ctrl+V or right-click and select **Paste** to insert the link to whatever document you wish.

## Read and unread states

Any message in Message center that is unread will appear in bold. Opening a message marks it as read. You can mark a message as unread.

On the main page of the message center, select the **More options** ellipses next to a message, and then select **Mark as unread**.

You can also open a message and mark it as unread in the details panel.
  
## Archive and restore

If you see a message that doesn't pertain to you, or maybe you've already acted on it, you can archive the message to remove it from Inbox. The view that you see in the Message center is specific to your user account, so archiving it from your view doesn't affect other admins. There are two ways to archive a message.

- On the main page of the Message center, select a message, and then select **Archive** above the list of messages.
- Open the message, and then select **Archive** on the top of the message pane.

Need to get an archived message back? No problem.
  
1. Select the **Archive** tab at the top of the Message center. A list of archived messages appears.

1. Select the message, select **Restore**, and the message is restored to Inbox.

## Favorite messages

To mark a message as a favorite, hover over the message title and you will see a **Favorite** :::image type="icon" source="../../media/favorite-star.png" border="false"::: star you can select right after the **More options** ellipses. Once you have marked messages as favorite you can also sort and filter them.

## Scroll messages in the message pane

When you open a message in a reading pane, you can use the **Up** and **Down** :::image type="icon" source="../../media/updownarrows.png" border="false"::: arrows on the top of the pane to move to the next, or the previous message in the list.

## Track your message center tasks in Planner

A lot of actionable information about changes to Microsoft 365 services arrives in the Microsoft 365 message center. It can be difficult to keep track of which changes require tasks to be done, when, and by whom, and to track each task to completion. You also might want to make a note of something and tag it to check on later. You can do all this and more when you sync your messages from the Microsoft 365 admin center to Microsoft Planner. For more information, see [Track your message center tasks in Planner](/office365/planner/track-message-center-tasks-planner).

For an overview of Message center, see [Message center in Microsoft 365](message-center.md). Or, to learn how to set your language preferences to enable machine translation for Message center posts, see [Language translation for Message center posts](language-translation-for-message-center-posts.md). If you'd like to program an alternative way to get real-time service health information and Message center communications, see [Working with service communications API in Microsoft Graph](/graph/api/resources/service-communications-api-overview).

## Unsubscribe from Message center emails

1. Digest emails are turned on by default and are sent to your primary email address. To stop receiving the weekly digest, select **Preferences** and then **Email**.
    - De-select the **Send a weekly digest of my messages** checkbox.
    - Email notification for major updates is a separate control. If you don't want to receive email notices about major updates, verify that **Send me emails for major updates** checkbox is not selected.
    - To stop receiving email notices about data privacy messages, verify that **Send me emails for data privacy messages** checkbox is not selected.  (Data privacy messages are not included in the weekly digest.)

2. Select **Save** to keep your changes.

## Related content

[Set up the Standard or Targeted release options](../manage/release-options-in-office-365.md) (article)\
[Business subscriptions and billing documentation](../../commerce/index.yml) (link page)
