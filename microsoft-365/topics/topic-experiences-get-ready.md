---
ms.date: 01/01/2024
title: Get your environment ready for Topics
ms.author: daisyfeller
author: daisyfell
manager: elizapo
ms.reviewer: daisyfeller
audience: admin
ms.topic: article
ms.custom: intro-get-started
ms.collection:
  - m365initiative-viva-topics
  - Tier1
ms.service: viva-topics 
search.appverid:
    - MET150  
ms.localizationpriority:  medium
description: Get your environment ready so you can provide as much content as possible for your users with Topics.
---

# Get your environment ready for Topics

> [!NOTE]
> Topics will be retired on February 22, 2025. [Learn more about the changes coming to Topics.](changes-coming-to-topics.md)

To make the most of Topics, you want to have as much content as possible included for topic discovery, so that you can have a rich set of topics for your users. But what content should be used for topic discovery? How do you maximize the content that is indexed, while staying in control? The more content is in scope, the better the insights the artificial intelligence can discover. This article walks you through planning steps to ensure that you're including the appropriate content, and that you have the right people and resources to make a good experience for your users.

To plan for Topics, you need to:

![Migrate, connect, modernize, secure, and identify steps for onboarding to Topics.](../media/knowledge-management/km-adoption-onboarding-checklist.png)

1. [Migrate content to SharePoint](#1-migrate-content-to-microsoft-365)
    - Topic indexing only includes content on SharePoint sites.
      - Where possible, migrate valuable content into SharePoint Online from external sources.
      - Prioritize content sources with high potential for tacit knowledge.
      - Highlight the benefits of Topics to encourage users to move content from OneDrive to SharePoint sites.

2. [Connect information to Microsoft Graph](#2-connect-information-to-microsoft-graph)
    - In the future, external content can be brought into the knowledge graph and become available.
    - For content that can't be moved, consider using Graph Connectors to enhance search and prepare for future inclusion.

3. [Modernize SharePoint pages](#3-modernize-sharepoint-pages)
    - Topic cards can only be surfaced on modern pages.
    - Identify high profile classic pages that are modernization candidates.

4. [Secure content appropriately](#4-secure-content-appropriately)
    - Topic resources are security trimmed based on a user's permissions.
    - Identify any content that might have incorrectly broad or restrictive permissions:
      - Encourage site owners to use the Sharing reports to review permissions
      - Have admins audit broadly shared content using Search
      - Encourage content owners to share content that isn't sensitive and might have broader benefit to the organization.
    - Review your Microsoft Graph configuration on users and content:
      - Topic indexing honors configuration excluding content from Search or Delve (for example, NOINDEX). Review whether these configurations are still relevant.

5. [Identify knowledge managers and topics](#5-identify-knowledge-managers-and-topics)
    - Use existing taxonomies to manually create topics, or help to confirm AI-suggested topics.
    - Identify subject matter experts (SMEs) for anticipated or seeded topics.
    - Identify sites that cover a large body of valuable data that can be used to pilot topic mining.
    - Engage Knowledge Managers and communities of practice.

## 1. Migrate content to Microsoft 365

There are several tools and services to help with your migration - you can get an overview and information about how to migrate at [Migrate your content to Microsoft 365](/sharepointmigration/migrate-to-sharepoint-online). Migration tools include:

- [Migration Manager](/sharepointmigration/mm-get-started)
- [SharePoint Migration Tool (SPMT)](/sharepointmigration/introducing-the-sharepoint-migration-tool)
- [Microsoft 365 FastTrack](https://www.microsoft.com/fasttrack/microsoft-365)
- [Partner migration tools and services](https://www.microsoft.com/solution-providers)

Make the most of your migration:

- Migrate to a modern site - that includes Microsoft Teams. While indexing can happen on any SharePoint site (classic or modern), displaying topics to users through highlights and cards only happens on modern pages.
- Maintain usernames - most migration tools allow you to map user identities across the migration, so that properties like Created By or Modified By are maintained after the migration. This is important for topics because the authorship of files is used to identify the experts that are added to a topic page or card. 
- Make service account names descriptive - There can be some cases where maintaining user names isn't possible. For example, if you're migrating content that was created by someone who is no longer an employee of the organization. In this instance, most migration tools move a file as if it was created by an admin account or a service account. If this happens frequently, then that service account could then be listed against topics as an expert. This is where the naming of that account becomes important. If you make it descriptive, the presence of these nonhuman accounts is understandable by your users consuming topics.

## 2. Connect information to Microsoft Graph

If you can’t migrate some content, then connect it with the Microsoft Graph:

- Consider implementing [Graph Content Connectors](/microsoftsearch/connectors-overview). External content can be indexed into the Microsoft Graph using connectors, where users can then discover it through Microsoft Search.

## 3. Modernize SharePoint pages

Because topic cards and highlights can only appear on modern pages, update any pages you want to include in Topics from classic to modern. See [Modernize your classic SharePoint sites](/sharepoint/dev/transform/modernize-classic-sites). You can use the [SharePoint Modernization scanner](/sharepoint/dev/transform/modernize-scanner) to prepare your classic sites for modernization.

If you have many classic sites, prioritize high profile pages to convert to modern.

## 4. Secure content appropriately

When users interact with a topic card or a topic page, they might see different resources. This is because they have access to different files that are associated with the topic. If your underlying permissions are too strict, then the serendipitous aspects of information discovery through topics could be diminished. On the other hand, if they're too broad, then a topic could surface content to a user that you don't intend them to see.
Good permissions management is critical here. And good permissions management is based on an ongoing partnership between administrators and content owners. While this might be an ongoing activity, there are some practical steps that you can take when preparing for topics:

- Encourage site owners to review sharing and permissions.

  SharePoint site owners can review a sharing report for their site that shows full details of all permissions and sharing links configured on the site, see [Sharing reports](/sharepoint/sharing-reports). This lists internal and external (guest) users.

  Site owners can also see who has permissions for the site by going to the **Site Permissions** and **Advanced Permissions Settings** pages.

  1. On your site, choose **Settings** > **Site permissions**. Check to see who is listed under Site Owners, Site Members, and Site Visitors. Check for any Guest users.
  2. On the **Permissions** page, choose **Advanced Permissions Settings**. You can check for unique permissions and see who has limited access to any items in the site.

- Audit Microsoft 365 Groups and Teams to make sure they're appropriately set as public or private groups or teams. New Teams and Microsoft 365 Groups are set to private by default, but when first released were public by default. If you were earlier adopters of these technologies, you might want to review. Also, the function of a team often evolves over its lifecycle, and the setting might need to be updated to reflect the current use of the team.
- Review use of “everyone," “everyone except external users” or broad security groups. Content might be incorrectly shared with these values. To review the use of these groups, you can:
  - Create an account that has no group memberships
  - Use search with this account to discover content that is broadly shared.
  - If inappropriate content is visible to this account through search, then you can work with the site owners to correct the permission configuration.

In addition to permissions, you can also control the scope of what is discoverable through topics. You're always in control of what is indexed.

Administrators can configure indexing in the Microsoft 365 Admin Center. When you [set up Topics](set-up-topic-experiences.md), you can:

- Allow discovery across all SharePoint sites or specify sites to include or exclude as topic sources.
- Where you have sensitive terms, you can also exclude topics by name. For example, if you have the name of a sensitive project where you don't want a highlight or card to appear, irrespective of the user's permissions, you can exclude that project name.

At the content level, you can also control what is discoverable. Any configuration to exclude content from search is also used by content discovery. So, for example, if you exclude a specific document library from appearing in search results, this document library isn't used for topic discovery.

## 5. Identify knowledge managers and topics

Managing topics involves three key roles, including two new Microsoft Entra roles: Knowledge administrator and Knowledge manager:

- The Knowledge administrator (KA) is a technical role, typically in IT. This role allows the setup of the Topics in the Microsoft 365 admin center, and the configuration of topic discovery and visibility.
- The Knowledge manager (KM) works with the topics themselves and oversees their quality and completeness.
- Topic contributors (TCs) aren't based on a Microsoft Entra role, but on permissions in the admin center. The TCs are subject-matter experts who are able to curate the content on topics, adding resources and people.

Depending on your organization, you might have few or many people acting in these roles. For some organizations, they might be the same people.

| Knowledge admin | Knowledge manager | Topic contributor |
|:-------|:-------|:-------|:-------|
| Microsoft Entra role | Microsoft Entra role | SME |
| Has access to the admin center | Has access to the admin center | No access to the admin center |
| Sets up Topics | Owns management and quality of topics | Contributes to topics based on their expertise. |
| Ensures that security and compliance standards are enforced and understands licensing agreement.| Performs topic management tasks such as create, edit, delete, and reject topics. Supports Topic contributors with their tasks. | Curates the information and content on topic pages, including which people and resources are pinned to that topic. |

Highlights and cards appear to users in the context of their work, for example as they browse modern pages in SharePoint. You control the end user experience for topics.

- Who can see Topics? Topic visibility is configured in the Microsoft 365 Admin Center. Choose which groups to allow to see topics:
  - Everyone in my organization. "Everyone" doesn't include guests, it's all internal users in your directory
  - Only Selected people or security groups (this option is good while you're still rolling out Viva Topics, so you can test with a subset of users). If you want guests to view Topics, you need to use the “selected people or security groups” option, and grant them a license.
  - No one.

    All users, even guest users, must have a license applied in order to view the topic experience. And remember that permissions always control what can be seen.

- Which Topics are visible? You can choose to:
  - Show all candidate topics.
  - Show only confirmed topics.

Now that we have the managers, experts, and users, we can talk about the topics themselves.

- It's a good practice to seed topics into your topic list. The quality and quantity of topics is based on your content—it's only created as a topic if it's included in the content that is in scope. If there's sufficient information and evidence for the topic, the AI creates it. Seeding topics is where the Knowledge Manager and subject-matter experts can help. Combining human knowledge with the AI is the best route for quality topics. So if there are topics you anticipate you can manually create these in the Topic center. Doing that gives the AI a strong signal of the relevance of that topic and it identifies resources and people to associate with that topic.
- Use existing taxonomies to help your topic planning, either from SharePoint or elsewhere. Existing taxonomies often include organizational terms, products, subject areas, and so on. Sources for topics can also come from lists of projects, existing search bookmarks, and so on.
