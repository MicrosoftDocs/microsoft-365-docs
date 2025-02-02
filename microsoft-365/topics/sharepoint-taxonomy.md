---
title: Use SharePoint taxonomy terms to create topics in Topics
ms.author: daisyfeller
author: daisyfell
manager: elizapo
ms.reviewer: daisyfeller
audience: admin
ms.date: 01/01/2024
ms.topic: article
ms.collection:
  - m365initiative-viva-topics
  - Tier1
ms.service: viva-topics 
search.appverid:
    - MET150  
ms.localizationpriority: medium
description: Learn about how to find topics in Topics by using SharePoint taxonomy.
---

# Use SharePoint taxonomy terms to create topics in Topics

> [!NOTE]
> Topics will be retired on February 22, 2025. [Learn more about the changes coming to Topics.](changes-coming-to-topics.md)

You can use SharePoint taxonomy terms to help guide artificial intelligence (AI) to create topics in Topics. The SharePoint taxonomy service provides global terms that are available to all sites. Users can create topics that correspond with concepts that are represented as terms.

## Permissions required

To create a topic from terms:

- Your organization needs to have Topics set up.
- You need to have edit permissions to the desired term sets or terms.

## How it works

:::image type="content" alt-text="Diagram showing the stages and statuses of creating a topic in the Term store." source="../media/knowledge-management/taxonomy-diagram.png":::

When someone requests to create a topic from a term, the taxonomy service relays information about the term to Topics for the creation of a corresponding topic. This information includes the following:

- Name (default label)
- Synonyms
- Description
- Files tagged with the term

The topic that gets created uses the original name from the term, considers the synonyms to be the topic’s alternate names, and uses the description from the term for the topic description. The files that are tagged with the taxonomy term are considered “suggested” files on the topic. The AI then continues to discover additional content for the topic.

> [!NOTE]
> For topic creation to succeed, the taxonomy term must have at least one file tagged with it. If it doesn’t, the system declines the request.

After a topic is created from a term, the term continues to exist in the SharePoint term store and is unaffected by topic creation. You’ll continue to be able to use it in SharePoint lists and libraries.

If a term is deleted, the deletion doesn’t automatically remove the topic. If Topics identifies content related to the topic that’s not solely from the term and its tagged content, the topic continues to exist.

If a term’s default label or description changes, Topics evaluates the changes and updates the topic information if it determines that the change is appropriate. The content that’s tagged with the term is also passed periodically to Topics. If there’s no longer any content tagged with the term, and Topics hasn’t identified any other content associated with the topic, the topic might be removed.

Updates to the topic don't affect the original term.

## Initiate a topic creation request

You can request a single term or multiple terms in a term set. You initiate the topic creation request in the modern SharePoint term store. Users who can edit the term set have permission to initiate the request. These users include term store admins, group managers, and contributors.

### Request a single term

1. In the SharePoint admin center, in the left navigation, select **Term store**.

    ![Screenshot showing navigation to the Term store in the SharePoint admin center for a single term.](../media/knowledge-management/taxonomy-single-term-01.png)

2. On the **Term store** page, search for and select the term you want to use.

    ![Screenshot showing list of terms on the Term store page in the SharePoint admin center for a single term.](../media/knowledge-management/taxonomy-single-term-02.png)

3. On the term page, select the **Usage settings** tab.

    ![Screenshot showing the Usage settings tab on the term page in the SharePoint admin center for a single term.](../media/knowledge-management/taxonomy-single-term-03.png)

4. In the **Create topic from this term** section, select **Request topic**.

    ![Screenshot showing the Create topic from this term page in the SharePoint admin center for a single term.](../media/knowledge-management/taxonomy-single-term-04.png)

### Request multiple terms in a term set

1. In the SharePoint admin center, in the left navigation, select **Term store**.

    ![Screenshot showing navigation to the Term store in the SharePoint admin center for a multiple terms.](../media/knowledge-management/taxonomy-multi-term-01.png)

2. On the **Term store** page, search for and select the term set you want to use.

    ![Screenshot showing list of terms on the Term store page in the SharePoint admin center for a multiple terms.](../media/knowledge-management/taxonomy-multi-term-02.png)

3. On the term page, select the **Usage settings** tab.

    ![Screenshot showing the Usage settings tab on the term page in the SharePoint admin center for a multiple terms.](../media/knowledge-management/taxonomy-multi-term-03.png)

4. In the **Create topics from terms** section, select **Get started**. If you’ve raised requests in the past, the option that appears is **Create terms for creation**.

    ![Screenshot showing the Request topics from terms section in the SharePoint admin center for a multiple terms.](../media/knowledge-management/taxonomy-multi-term-04-new-set.png)

    In the **Create topic from terms** section, select **Request topics**.

    ![Screenshot showing the Create topic from this term page in the SharePoint admin center for a multiple terms.](../media/knowledge-management/taxonomy-multi-term-04-existing-set.png)

    1. On the **Select terms to create topics** page, the hierarchy of terms within this term set is available for selection.

        ![Screenshot showing the Select terms for creating topics panel in the SharePoint admin center for a multiple terms.](../media/knowledge-management/taxonomy-multi-term-04a.png)

    2. To select specific terms, select each term individually.

    3. You can also select all immediate children of a node in the hierarchy.

5. After you select the terms for which you want to create topics, select **Submit**.

   Topics creates the request and queues it to be processed. Topics evaluates the terms and their associated resources and creates new topics or merges with existing topics. After the initial request, the topic will be created within 24 hours.

## View the status of the topic creation request

Requests for topic creation from a taxonomy term fall into one of three states: Requested, Success, or Declined.

- **Requested** – Indicates that the request is queued and the service is gathering all the required term info. A new request might remain in the Requested state for a few hours before it moves to one of the two final states.

- **Success** – Indicates that the request was successfully relayed to Topics with all necessary term information. Topics creates the corresponding topic within the next 24 hours.

- **Declined** – Indicates that the request can’t be processed because there aren’t any files that are tagged with the term. There should be at least one file tagged for the request to succeed. If files later get tagged with the term, you can manually create a new request for the term.

In the term store, you can view the status of requests by:

- Going to an individual term.
- Viewing all the requests for a specific term set.

### View the status for a single term

1. On the **Term store** page, search for and select the term for which you want to view the status.

    ![Screenshot showing list of terms on the Term store page in the SharePoint admin center for viewing the status of a single term.](../media/knowledge-management/taxonomy-status-single-term-01.png)

2. On the term page, select the **Usage settings** tab.

    ![Screenshot showing the Usage settings tab on the term page in the SharePoint admin center for viewing the status of a single term.](../media/knowledge-management/taxonomy-status-single-term-02.png)

3. In the **Create topic from this term** section, view the status of the request.

    ![Screenshot showing the Create topic from this term page and the request status in the SharePoint admin center for viewing the status of a single term.](../media/knowledge-management/taxonomy-status-single-term-03.png)

### View the status for multiple terms in a term set

1. On the **Term store** page, search for and select the term set for which you want to view the status.

    ![Screenshot showing a term set on the Term store page in the SharePoint admin center for viewing the status of a multiple terms.](../media/knowledge-management/taxonomy-status-multi-term-01.png)

2. On the term page, select the **Usage settings** tab.

    ![Screenshot showing the Usage settings tab and the Create topics from terms section in the SharePoint admin center for viewing the status of a multiple terms.](../media/knowledge-management/taxonomy-status-multi-term-02.png)

    In the **Create topics from terms** section, you can see the total number of requests, how many are linked to topics, and how many were declined.

3. Select **View all requests**.

4. On the **All requested terms for topic creation** panel, view the status of the term requests.

    ![Screenshot showing the status of the requested topics from terms in the SharePoint admin center for viewing the status of a multiple terms.](../media/knowledge-management/taxonomy-status-multi-term-04.png)

5. If you have many requests, select **Load more** to keep loading additional items.

    ![Screenshot showing the Load more option in the SharePoint admin center for viewing the status of a multiple terms.](../media/knowledge-management/taxonomy-status-multi-term-05.png)

6. To review requests that are in a particular state, on the **Status** column, select **Filter by**.

    ![Screenshot showing the Status and Filter by option in the SharePoint admin center for viewing the status of a multiple terms.](../media/knowledge-management/taxonomy-status-multi-term-06a.png)

     Select the status you want to filter by: **Declined**, **Success**, or **Requested**.

    ![Screenshot showing the Filter by status options in the SharePoint admin center for viewing the status of a multiple terms.](../media/knowledge-management/taxonomy-status-multi-term-06b.png)
