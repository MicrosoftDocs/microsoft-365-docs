---
title: 'Manage topics in the Topic center in Microsoft Viva Topics'
description: 'How to manage topics in the Topic Center.'
author: efrene
ms.author: efrene
manager: pamgreen
ms.reviewer: cjtan
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic 
    - m365initiative-viva-topics
localization_priority: None

---
# Manage topics in the Topic center 

</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4LxDx]  

</br>


In the Viva Topics Topic center, a knowledge manager can view the **Manage topics** page to review topics that have been identified in SharePoint source locations as specified by your knowledge admin.  

   ![Topic Center](../media/knowledge-management/topic-center.png) </br> 



Knowledge managers help to guide discovered topics through the topic lifecycle in which topics are:

- Suggested: A topic has been identified by AI and has enough supporting resources, connections, and properties.
- Confirmed: A topic that has been suggested by AI is validated. Validation is done by confirmation from a knowledge manager. Additionally, a topic can be confirmed if at least two users give positive feedback through the feedback question on the topic card.
- Published: A confirmed topic that has been curated: manual edits have been made to improve its quality.
- Removed: A topic is rejected by a knowledge manager and will no longer be visible to viewers. The topic can be in any state when it is removed (suggested, confirmed or published). When a published topic is removed, the page with the curated details will need to be deleted manually through the Pages Library of the topic center.

   ![Topic Lifecycle chart](../media/knowledge-management/topic-lifecycle.png) </br> 

> [!Note] 
> In the Manage Topics page, each knowledge manager will only be able to see topics where they have access to the files and pages of the topic. This will be reflected in the topics that are listed under the Suggested, Confirmed, Removed, and Published tabs. The topic counts, however, show the total counts in the organization.

## Requirements

To manage topics in the Topic center, you need to:
- Have a Viva Topics license.

- Have the [**Who can manage topics**](./topic-experiences-user-permissions.md) permission. Knowledge admins can give users this permission in the Viva Topics topic permissions settings. 

You will not be able to view the Manage Topics page in the Topic Center unless you have the **Who can manage topics** permission.

In the topic center, a knowledge manager can review topics that have been identified in the SharePoint source locations you specified, and can either confirm or reject them. A knowledge manager can also create and publish new topic pages if one was not found in topic discovery, or edit existing ones if they need to be updated.


## Review suggested topics

On the Topic center Manage Topics page, topics that were discovered in your specified SharePoint source locations will be listed in the **Suggested** tab. If needed, a knowledge manager can review unconfirmed topics and choose to confirm or reject them.

   ![Suggested Topics](../media/knowledge-management/quality-score.png) </br> 

To review a suggested topic:

1. On the **Manage topics** page, select the **Suggested** tab, select the topic to open the topic page.</br>

2. On the topic page, review the topic page, and select **Edit** if you need to make any changes to the page. Publishing any edits will move this topic to the **Published** tab.

3. After reviewing the topic, go back to the Manage topics page. For the selected topic, you can:

   - Select the check mark to confirm the topic.
    
   - Select the **x** if you want to reject the topic.

    Confirmed topics will be removed from the **Suggested** list and will now display in the **Confirmed** list.

    Rejected topics will be removed from the **Suggested** list and will now display in the **Removed** tab.

   </br> 

### Quality score

Each topic that appears in your Suggested Topics page has a <b>Quality</b> score assigned to it. The Quality score is a reflection of the amount of information that the average user will see for the information on the topic, keeping in mind that each user may see more or less information because of the permissions they may or may not have on the information in a topic. 

The Quality score can help give insight to the topics with the most information and can be useful for finding topics that may need to be manually edited.  For example, a topic with a lower quality score may be the result of some users not having SharePoint permissions to pertinent files or sites that AI has included in the topic. A contributor could then edit the topic to include the information (when appropriate), which will then be viewable to all users who can view the topic.

The Quality score could range from 1 to 100. A newly discovered topic will have a quality score of 0 until two or more users have viewed it. Each users quality score is determined by a number of factors, such as the amount of content displayed for the specific user, which is controlled the user's permissions as each topic page has security trimming in place for AI-generated content. The Quality score shown on the Suggested topics tab is an average of each users individual score.

### Impressions

The <b>Impressions</b> column displays the number of times a topic has been shown to end users. This includes views through topic cards in search, through topic highlights, and through Topic center views. It does not reflect the click-through on these topics, but that the topic has been displayed. The Impressions column will show for topics in the Suggested, Confirmed, Published, and Removed tabs in the Manage Topics page.


## Confirmed topics

On the Manage topics page, topics that were discovered in your specified SharePoint source locations and have been confirmed by a knowledge manager or "crowd-sourced" confirmed by two or more people through the card feedback mechanism will be listed in the **Confirmed** tab. If needed, a user with permissions to manage topics can review confirmed topics and choose to reject them.

To review a confirmed topic:

1. On the **Confirmed** tab, select the topic to open the topic page.</br>

2. On the topic page, review the topic page, and select **Edit** if you need to make any changes to the page.

Note that you can still chose to reject a confirmed topic.  To do this, go to the selected topic in the Confirmed list, and select the **x** if you want to reject the topic.

## Published topics
Published topics have been edited so that specific information will always appear to whoever encounters the page. Manually created topics are listed here as well.

   ![Manage Topics](../media/knowledge-management/manage-topics-new.png) </br>