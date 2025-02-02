---
ms.date: 01/01/2024
title: Edit an existing topic in Topics
ms.author: daisyfeller
author: daisyfell
manager: elizapo
audience: admin
ms.reviewer: daisyfeller
ms.topic: article
ms.collection:
  - m365initiative-viva-topics
  - highpri
  - Tier1
ms.service: viva-topics 
search.appverid:
- MET150   
ms.localizationpriority:  medium
description: Learn how to edit an existing topic in Topics.
---

# Edit an existing topic in Topics

> [!NOTE]
> Topics will be retired on February 22, 2025. [Learn more about the changes coming to Topics.](changes-coming-to-topics.md)

</br>

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=06271f85-a711-4360-a8d6-add373de0c3b]  

</br>

In Topics, you can edit an existing topic. You might need to do this if you want to correct or add additional information to an existing topic page.

> [!NOTE]
> While information in a topic that is gathered by AI is [security trimmed](topic-experiences-security-trimming.md), the topic description and people information that you manually add when editing an existing topic is visible to all users who have permissions to view topics.

## Requirements to edit a topic

To edit an existing topic, you need to:

- Have a license that includes Topics.
- Have permissions to [create or edit topics](./topic-experiences-user-permissions.md). Knowledge admins can give users this permission in the Topics topic permissions settings.

> [!NOTE]
> Users who have permission to manage topics in the topic center (knowledge managers) already have permissions to create and edit topics.

## How to edit a topic page

You can edit a topic by opening the topic page from a topic highlight, and then selecting the **Edit** button on the top right of the topic page. You can also edit a topic from the Topic Center.

   ![Screenshot showing the Edit button.](../media/knowledge-management/edit-button.png)

### To edit a topic page

1. On the topic page, select **Edit**. This lets you make changes as needed to the topic page.

   ![Screenshot showing the Edit button on the topic page.](../media/knowledge-management/topic-page-edit.png)  

1. In the **Alternate Names** section, type any other names that the topic might be referred to.

    ![Screenshot of the Alternate names section.](../media/knowledge-management/alt-names.png)  

1. In the **Description** section, type a couple of sentences that describe the topic.

    ![Screenshot of the topic description section.](../media/knowledge-management/description.png)

1. In the **Pinned people** section, you can "pin" a person to show them as having a connection to the topic (for example, an owner of a connected resource). Begin by typing their name or email address in the **add a new user** box, and then select the user you want to add from the search results. You can also "unpin" them by selecting the **Remove from list** icon on the user card. You can also drag the person to another place in the list.

    ![Screenshot of the Pinned people section.](../media/knowledge-management/pinned-people.png)

1. In the **Pinned files and pages** section, you can add or "pin" a file or SharePoint site page that is associated to the topic.

   ![Screenshot of the pinned files and pages section.](../media/knowledge-management/pinned-files-and-pages.png)

    To add a new file, select **Add**, select the SharePoint site from your Frequent or Followed sites, and then select the file from the site's document library.

    You can also use the **From a link** option to add a file or page by providing the URL.

    > [!NOTE]
    > Files and pages that you add must be located within the same Microsoft 365 tenant. If you want to add a link to an external resource in the topic, you can add it through the canvas icon in step 8.

1. The **Related sites** section shows sites that have information about the topic.

    ![Screenshot of the related sites section.](../media/knowledge-management/related-sites.png)

    You can add a related site by selecting **Add** and then either searching for the site, or selecting it from your list of Frequent or Recent sites.

    ![Select site.](../media/knowledge-management/sites.png)

1. The **Related topics** section shows connections that exist between topics.

    With the topic page in edit mode, you can add, edit, or remove connections in the Related Topics web part. You can only add or modify first-degree connections because modifying a second-degree connection would be tantamount to directly editing a different topic page, which we don't allow.

    You can add a connection to a different topic by selecting the Connect to a related topic button, typing the name of the related topic, and selecting it from the search results.

    ![Screenshot of topic picker in related topics.](../media/knowledge-management/topic-picker-related.png)

    You can then give a description of how the topics are related. Select **Update**

    ![Screenshot of relationship description on related topics.](../media/knowledge-management/topics-relationships-related.png)

    The related topic added will display as a connected topic.

    When a connection between Topic A and Topic B is manually created on Topic Page A, the connection between these topics is represented as a suggested connection (dotted line) on Topic Page B. Representing this as a manual connection on Topic Page B would be equivalent to making a direct change to Topic Page B from Topic Page A, which is not allowed.

    To remove a related topic, select the line segment corresponding to the topic you want to remove, then select the Remove relationship icon.

    ![Screenshot of relationship description on related topics with option to remove relationship.](../media/knowledge-management/topics-related-description.png)

    Dotted lines represent connections suggested by AI. Users can optionally confirm or remove these connections by selecting the line segment between two nodes.

    ![Screenshot of pane to confirm topic relationships.](../media/knowledge-management/topics-relationships.png)

1. You can also add static items to the page (such as text, images, or links) by selecting the canvas icon, which you can find below the short description. Selecting it opens the SharePoint toolbox from which you can choose the item you want to add to the page.

   ![Screenshot of the available canvas icons.](../media/knowledge-management/webpart-library-topics.png)

1. Select **Publish** or **Republish** to save your changes. **Republish** will be your available option if the topic has been published previously.
