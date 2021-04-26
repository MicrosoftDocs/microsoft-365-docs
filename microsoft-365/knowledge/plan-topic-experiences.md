---
title: "Plan for Microsoft Viva Topics"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.reviewer: nkokoye
audience: admin
ms.topic: article
ms.service: o365-administration
search.appverid: MET150
localization_priority: Normal
description: "Learn how to plan for Plan for Microsoft Viva Topics"
---

# Plan for Microsoft Viva Topics

You're in control of how topics are experienced in your organization. Your planning decisions for Topics ensures that high quality topics are shown to your users and they have the right permissions to consume and contribute knowledge.

In this article we'll examine these planning decisions:

- Which SharePoint sites you want to crawl for topics
- Which topics, if any, you want to exclude from topic experiences
- Which users you want to make topics visible to
- Which users you want to give permissions to manage topics in the topic center
- Which users you want to give permissions to create or edit topics in the topic center
- What name you want to give your topic center

Security and privacy of your data is respected, and topic experiences does not grant users additional access to files they don’t have rights to. We recommend you also read [Microsoft Viva Topics security and privacy](topic-experiences-security-privacy.md) as part of your planning process.

## Requirements

You must be [subscribed to Viva Topics](https://www.microsoft.com/microsoft-viva/topics) and be a global administrator or SharePoint administrator to access the Microsoft 365 admin center and set up Topics.

All users who are going to use Topics require a **Topic Experiences** license. Assigning licenses is covered in [Set up Microsoft Viva Topics](set-up-topic-experiences.md).

## Topic discovery

The topic discovery settings specify which SharePoint sites are used as sources for topics. You can choose to include all SharePoint sites, a specific list of sites, or no sites. We recommend that you choose all sites so that topic experiences can discover a large number of good topics for your users.

When you set up Topics, you can choose from the following options:

- **All sites**: All SharePoint sites in your organization. This includes current and future sites.
- **All, except selected sites**: All sites except for the ones you specify. Sites created in future will be included as sources for topic discovery. 
- **Only selected sites**: Only the sites that you specify. Sites created in the future will not be included as sources for topic discovery.
- **No sites**: Do not include any SharePoint sites.

If you choose either **All, except selected sites** or **Only selected sites**, you can upload a .csv file with a list of sites. These options are useful if you're doing a pilot and you want to include a limited number of sites to start.

You can copy the .csv template below:

``` csv
Site name,URL
```

We don't recommend choosing **No sites** because it prevents topics from being automatically created or updated. However, you can choose this option if you want to set up Topics and then add sites later.

We recommend you create a process for users or knowledge managers to request individual sites be removed from topic discovery if needed in your organization.

### Multi-geo

If your organization has deployed [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo), the topic center is provisioned in the central location and only SharePoint sites in the central location are available to use as sources for topics. (If you select **All sites**, Viva Topics will use all site in the central location.)

All processing and storage of content is done in the central location.

## User permissions

The user permissions that you specify determine which people in your organization interact with topics and what they can do.

> [!Note] 
> At this time, Viva Topics doesn't support providing licenses or user permissions for Guest (External) users. 

*Manage topics*

Knowledge managers oversee the quality of information, how its structured, and other best practices in your organization. They can confirm and reject topics.

While you can specify individual topic managers, we recommend that you create a security group (or use an existing one) that contains the people who you want to be knowledge managers. You can specify this security group during the setup process.

*Create and edit topics*

Topic contributors are the champions and subject matter experts in your organization. They can create and edit topics. 

We recommend that you allow everyone in your organization to create and edit topics because topic experiences work best when all users can share information.

If you want to limit creating and editing topics to specific people or groups, create a security group for them and specify it during the setup process.

You can choose to not allow anyone to contribute to topics, however this is not recommended. Knowledge managers will still be able to edit and create topics if you choose this option.

*Topic viewers*

Topic viewers can see information on topic pages, in search results and when topics are highlighted in the content like SharePoint pages. Users can only see discovered topics when they have access to the files and pages the topic was discovered in.

When setting up topic viewers, you can choose from:

- **Everyone in my organization**
- **Only selected people or security groups**
- **No one**

We recommend **Everyone in my organization**, but if you're doing a pilot you may want to choose only selected people or security groups. You can also choose **No one** if you want to set up Topics, but not allow people to see topics yet. (Knowledge managers will still have access to allow them view the topics and help with the decision to make Topics broadly available.)

## Knowledge rules

As an administrator, you can exclude certain topics from topic experiences. This is useful if you want to keep sensitive data from appearing in topics. While knowledge managers can exclude topics in the topic center, topics excluded by the administrator are not even visible to knowledge managers. (Knowledge managers can also remove topics in the topic center after discovery.)

If you want to exclude topics at the administrator level, you must add them to a .csv file and upload the file. You can do this during setup or later.

The .csv file must contain the following parameters:

- **Name**: Type the name of the topic you want to exclude. There are two ways to do this:
- **MatchType-Exact/Partial**: Type whether the name you entered was an *exact* or *partial* match type.
    - Exact match: You can include the exact name or acronym (for example, *Contoso* or *ATL*).
    - Partial match: You can exclude all topics that have a specific word in it.  For example, *arc* will exclude all topics with the word *arc* in it, such as *Arc circle*, *Plasma arc welding*, or *Training arc*. Note that it will not exclude topics in which the text is included as part of a word, such as *Architecture*.
- **Stands for (optional)**: (Also known as *expansion*) If you want to exclude an acronym, type the words the acronym stands for.

    ![Exclude topics in CSV template](../media/exclude-topics-csv.png) 

You can copy the csv template below:

``` csv
Name (required),Expansion,MatchType- Exact/Partial (required)
```

## Administration

When you set up Topics, as part of the setup process, a topic center is automatically created. Think about what you want to name the topic center and what you want the URL to be. You can set both the name and URL as part of the setup process, and you can change the name (but not URL) later in the Microsoft 365 admin center. You can only have one topic center.

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

[Set up topic experiences](set-up-topic-experiences.md)

[Manage topic discovery in Microsoft 365](topic-experiences-discovery.md)

[Manage topic visibility in Microsoft 365](topic-experiences-knowledge-rules.md)

[Manage topic permissions in Microsoft 365](topic-experiences-user-permissions.md)

[Change the name of the topic center in Microsoft 365](topic-experiences-administration.md)
