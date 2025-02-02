---
ms.date: 01/01/2024
title: Roles in Topics
ms.author: daisyfeller
author: daisyfell
manager: elizapo
ms.reviewer: daisyfeller
audience: admin
ms.topic: article
ms.collection:
  - m365initiative-viva-topics
  - Tier1
ms.service: viva-topics 
search.appverid:
    - MET150  
ms.localizationpriority:  medium
description: Learn about the different user roles in Topics.
---

# Roles in Microsoft Topics

> [!NOTE]
> Topics will be retired on February 22, 2025. [Learn more about the changes coming to Topics.](changes-coming-to-topics.md)

When you use Topics in your Microsoft 365 environment, your users can have the following roles:

- [Topic viewer](#topic-viewer)
- [Topic contributor](#topic-contributor)
- [Knowledge manager](#knowledge-manager)
- [Topics admin](#topics-admin)

## Topic viewer

Topic viewers are users in your organization who can view topics highlighted in their SharePoint modern site, Microsoft Search through SharePoint and Office.com, with the topic picker in Microsoft Teams and Outlook, and the topic center. They can view more details about a topic on the topic page.

For topic highlights and their topic pages to be visible to a topic viewer, the user must:

- [Be assigned a Topics license](./set-up-topic-experiences.md#assign-licenses) by their Microsoft 365 admin.
- Be allowed to have visibility to topics. This task is done by the Topics admin in the Topics settings page in the Microsoft 365 admin center.

## Topic contributor

Topic contributors are users in your organization that not only have topic viewer permissions, but who also can edit an existing topic or create a new topic. They have an important role in manually “curating” the information in a topic page (both AI or manually provided) to ensure its quality.

Users who have topic contributor permissions can see an **Edit** button displayed on Topic pages, which allows them to make updates to and publish a topic.

A topic contributor can also create and publish a new topic through their topic center.

To create and edit a topic, the user must:

- [Be assigned a license that includes Topics](./set-up-topic-experiences.md#assign-licenses) by their Microsoft 365 admin.
- [Be assigned permissions to create and edit topics](./topic-experiences-user-permissions.md). This task is done by the Topics admin in the Topics settings page in the Microsoft 365 admin center.

## Knowledge manager

Knowledge managers are users who manage topics in your organization.  Topic management is done through the **Manage topics** page in the topic center, and it's only visible to knowledge managers.

On the **Manage topics** page, knowledge managers can do the following tasks:

- View AI-suggested topics.
- Review topics to confirm that they're valid.
- Remove topics that you don’t want visible to your users.

Additionally, a knowledge manager can edit existing topics or create new ones.

To manage topics, the user must:

- [Be assigned a license that includes Topics](./set-up-topic-experiences.md#assign-licenses) by their Microsoft 365 admin.
- [Be assigned permissions to manage topics](./topic-experiences-user-permissions.md). This task is done by the Topics admin in the Topics settings page in the Microsoft 365 admin center.

Users who have a good overall knowledge of your business can be good candidates for the knowledge manager role. Such people might not only have the knowledge to know if topics are valid or not, but might also know people within the company who are related to those topics.

Knowledge managers need to be able to coordinate with all Topics stakeholders in their organization to know how to configure it. For example, if a new project has sensitive information, the knowledge manager needs to be informed so that they can make sure that the SharePoint site isn't crawled for topics, or specific topic names need to be excluded.

## Topics admin

Topics admins are admins who set up and configure Topics in your Microsoft 365 environment. They also manage the Topics settings after set up has completed. To administer Topics, you must be a SharePoint administrator and Groups administrator, since setup and management are done in the Microsoft 365 admin center.

During setup, Topics admins can configure Topics to:

- Select which SharePoint sites are crawled for topics.
- Select which licensed users who can view topics (topic viewers).
- Select which topics should be excluded from being identified.
- Select which licensed users who can create and edit topics (topic contributors).
- Select which licensed users who can manage topics (knowledge managers).
- Name the topic center.
