---
title: "Plan topics in Microsoft 365"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: admin
ms.topic: article
ms.service: o365-administration
search.appverid: MET150
localization_priority: Normal
description: "Learn how to plan for topics in Microsoft 365"
---

# Plan topics in Microsoft 365

It is important to plan the best way to set up and configure topics in your environment.

Consider the following before you begin the procedures in this article:

- Which SharePoint sites you want to crawl for topics.
- Which users you want to make topics visible to.
- Which users you want to give permissions to manage topics in the topic center.
- Which users you want to give permissions to create or edit topics in the topic center.
- What name you want to give your topic center.

> [!Note]
> You may find it useful to create security groups to assign your users the permissions needed to view topics, manage topic, and create and edit topics.

You can also [make changes to your selected settings anytime after setup](topic-experiences-discovery.md) by using the topics settings in the Microsoft 365 admin center.

## Requirements

You must be a global administrator or SharePoint administrator to access the Microsoft 365 admin center and set up topic experiences.

All users who are going to use topic experiences require a **Topic Experiences** license along with the associated **Graph Connectors Search with Index** and **Topic Experiences** app licenses.

## Topic discovery

The topic discovery settings specify which SharePoint sites are crawled for topics. You can choose to include all SharePoint sites, a specific list of sites, or no sites. We recommend that you choose all sites so that topic experiences can discover a large number of good topics for your users.

When you set up topic experiences, you can choose from the following options:

- **All sites**: All SharePoint sites in your organization. This includes current and future sites.
- **All, except selected sites**: All sites except for the ones you specify. Sites created in future will be included as sources for topic discovery. 
- **Only selected sites**: Only the sites that you specify. Sites created in the future will not be included as sources for topic discovery.
- **No sites**: Do not include any SharePoint sites.

If you choose either **All, except selected sites** or **Only selected sites**, you can upload a .csv file with a list of sites. These options are useful if you're doing a pilot and you want to include a limited number of sites to start.

We don't recommend choosing **No sites** because it prevents topics from being automatically created or updates. However, you can choose this option if you want to set up topic experiences and then add sites later.

## User permissions

The user permissions that you specify determine which people in your organization interact with topics and what they can do.

*Knowledge managers*

Knowledge managers oversee the quality of information, how its structured, and other best practices in your organization. They can confirm and reject topics.

You can choose to have everyone in your organization be a knowledge manager, or you can limit it to specific people with this role.

If you don't want everyone in your organization to be able to manage topics, create a security group that contains the people who you want to be knowledge managers. You can specify this security group during the setup process.

*Topic contributors*

Topic contributors can create and edit topics. We recommend that you choose everyone in your organization to be topic contributors because topic experiences work best when all users can share information.

If you want to limit creating and editing topics to specific people or groups, create a security group for them and specify it during the setup process.

You can choose to not allow anyone to contribute to topics, however this is not recommended.

*Topic viewers*

Topic viewers can see information on topic pages, in search results and when topics are highlighted in the content like SharePoint pages. Users can only see discovered topics when they have access to the files and pages the topic was discovered in.

When setting up topic viewers, you can choose from:

- **Everyone in my organization**
- **Only selected people or security groups**
- **No one**

We recommend **Everyone in my organization**, but if you're doing a pilot you may want to choose only selected people or security groups. You can also choose **No one** if you want to set up topic experiences, but not allow people to see topics yet.

## Knowledge rules

: governance, compliance, and other business rules. Additional controls on what data is discovered in your organization

Exclude topics by name
Limit discovery of topics based on sensitivity label of resources (e.g. confidential, general, internal, external)
Allow users to give free form feedback on topics
Notifications for updates to a topic
Control where a topic can be shown
Include topic answer in Search results



In the **Exclude topics by name** section, you can add names of topics you want to exclude from the discovered results. Use this setting to prevent sensitive topics from being included as topics. The options are:
a. **Don't exclude any topics** 
b. **Exclude topics by name**:  If you have topics you don't want shown to users.

You can use this option to prevent the Knowledge Network from discovering sensitive information in your organization. These topics won’t be visible to anyone, including knowledge managers.

If you need to exclude topics, after selecting **Exclude topics by name**, select download the .csv template and update it with the list of topics that you want to exclude from your discovery results.

![Exclude topics in CSV template](../media/exclude-topics-csv.png) 

In the CSV template, enter the following information about the topics you want to exclude:

- **Name**: Type the name of the topic you want to exclude. There are two ways to do this:
- Exact match: You can include the exact name or acronym (for example, *Contoso* or *ATL*).
- Partial match: You can exclude all topics that have a specific word in it.  For example, *arc* will exclude all topics with the word *arc* in it, such as *Arc circle*, *Plasma arc welding*, or *Training arc*. Note that it will not exclude topics in which the text is included as part of a word, such as *Architecture*.
- **Stands for (optional)**: If you want to exclude an acronym, type the words the acronym stands for.
- **MatchType-Exact/Partial**: Type whether the name you entered was an *exact* or *partial* match type.

After you've completed and saved your .csv file, select **Browse** to locate and select it.


## Administration

: General controls

Create a Content center
Create a knowledge center/ Knowledge center details
Controls for how to roll-out the knowledge graph and functionality
Deactivate the Topic experiences

On the **Create Topic  Center** page, you can create your topic center site in which topic pages can be viewed and topics can be managed.  In the **Site name** box, type a name for your Topic center. You can optionally type a short description in the **Site description** box. 

> [!Note]
> After setup, an admin can [make changes to your selected knowledge management settings](topic-experiences-discovery.md) any time by returning to this page.


## Setup checklist

When you set up topic experiences, you'll need the following items as you go through the setup wizard:

> [!div class="checklist"]
> * List of sites to include or exclude if not including all sites for topic discovery
> * Security group for topic viewers if not allowing all users to view topics
> * Security group for topic contributors if not allowing all users to create and edit topics
> * Security group for topic knowledge managers if not allowing all users to manage topics
> * List of sensitive topics to exclude from topic discovery
> * A name for your topic center site

## See also


