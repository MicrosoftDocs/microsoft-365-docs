---
ms.date: 01/01/2024
title: Topic center overview in Topics
ms.author: daisyfeller
author: daisyfell
manager: elizapo
ms.reviewer: daisyfeller
audience: admin
ms.topic: article
ms.collection:
  - m365initiative-viva-topics
  - highpri
  - Tier1
ms.service: viva-topics 
search.appverid:
- MET150  
ms.localizationpriority:  medium
description: Learn about the topic center in Topics.
---

# Topic center overview in Topics

> [!NOTE]
> Topics will be retired on February 22, 2025. [Learn more about the changes coming to Topics.](changes-coming-to-topics.md)

In Topics, the topic center is a modern SharePoint site that serves as a center of knowledge for your organization. It's created during [Topics setup](set-up-topic-experiences.md) in the Microsoft 365 admin center.

The topic center has a default home page with the **Topics** web part where all licensed users can see the topics to which they have a connection.

While all licensed users who can view topics will have access to the topic center, knowledge managers can also manage topics through the **Manage topics** page. The **Manage topics** tab will only display to users who have the Manage topics permissions.

## Where is my topic center

The topic center is created during Topics setup. After setup completes, an admin can find the URL on the [Topic center management page](rename-topic-center.md#access-topics-management-settings).

1. In the Microsoft 365 admin center, select **Settings**, then **Org settings**.
2. On the **Services** tab, choose **Topics**.

    ![Screenshot of the Services tab with Topics selected.](../media/knowledge-management/org-settings-topics.png)

3. Select the **Topic center** tab. Under **Site address** is a link to your topic center.

    ![Screenshot of the Topic center tab.](../media/topics/knowledge-network-settings-topic-center.png)

## Home page

</br>

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=5651a7aa-5b62-4640-8e30-8fbd35412c78]

</br>

On the topic center home page, you can see the topics in your organization to which you have a connection.

- Suggested connections - You will see topics listed under **We've listed you on these topics. Did we get it right?** These are topics in which your connection to the topic has been suggested through AI. For example, you might be an author of a related file or site. You're asked to confirm that you should stay listed as a related person for the topic.

   ![Screenshot of suggested topics in the topic center.](../media/knowledge-management/my-topics.png)

- Confirmed connections - These are topics in which you're pinned on the topic page or you've confirmed a suggested connection to the topic. Topics will move from the suggested to confirmed section when you confirm a suggested connection.

   ![Screenshot of confirmed connections in the topic center.](../media/knowledge-management/my-topics-confirmed.png)

Once a user confirms their connection to a topic, the user can make edits to the topic page to curate their connection. For example, they can provide more information about their connection to the topic.

>[!NOTE]
>Users need to have edit permissions to make edits to topic pages.

## Manage topics page

To work on the **Manage topics** page of the topic center, you need to have permissions to manage topics. Your admin can assign these permissions to users during [Topics setup](set-up-topic-experiences.md), or new users can be [added afterwards](manage-topic-visibility.md) by an admin through the Microsoft 365 admin center.

On the **Manage topics** page, the topic dashboard shows all the topics, you have access to that were identified from the source locations specified when you set up Topics. Each topic will show the date the topic was discovered. A user who was assigned Manage topics permissions can review the unconfirmed topics and choose to:

- Confirm the topic: Indicates to users that an AI-suggested topic has been validated by a human as a relevant topic for the organization.

- Publish the topic: Edit the topic information to improve the quality of the topic that was initially identified, and enable all Topics users in the organization to access the topic. Note that users will only see content on the topic that their permissions give them access to.

- Remove the topic: Makes the topic undiscoverable to end users. The topic is moved to the **Removed** tab and can be confirmed later if needed. Note that removing a topic doesn't delete it.

For more information about how to manage topics on the **Manage topics** page, see [Manage topics](manage-topics.md).

## Create or edit a topic

If you have Create and edit topics permissions, you can:

- [Edit existing topics](edit-a-topic.md): You can make changes to existing topic pages that were created through discovery or created by other users.

- [Create new topics](create-a-topic.md): You can create new topics for ones that weren't found through discovery, or if AI tools didn't find enough evidence to create a topic.

## See also

[Manage topics in the topic center](manage-topics.md)
