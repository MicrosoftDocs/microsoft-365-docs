---
title: "Topic experiences security and privacy"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: admin
ms.topic: article
ms.service: o365-administration
search.appverid: MET150
localization_priority: Normal
description: "Learn how to plan for topic experiences security and privacy in Microsoft 365"
---

# Topic experiences security and privacy




## Topic stages

Each topic has a stage associated with it as described in the table below.

|Topic stage|Description|
|:----------|:----------|
|Suggested|AI has identified a topic that has supporting resources, connections, and properties.|
|Confirmed|A knowledge manager has confirmed a suggested topic. No updates are made to the topic itself.|
|Published|A knowledge manager or contributor has updated any of the AI-discovered items or added new items to the topic. Topic experiences continues to add to the topic in this stage, increasing its connections. In this stage, a page for the topic is created in the topic center. Manually created topics start as published.|
|Removed|A topic that has been removed from topic experiences by a knowledge manager.|




Only specific people can edit 
Only people who can edit will see the Edit button




## Who can see what

To see topics at all, a user must:

- Have a Topic Experiences license
- Be a [topic viewer](topic-experiences-knowledge-rules#change-who-can-see-topics-in-your-organization)

These two things give a user view access to the topic center and allow them to see highlights and topic cards.

Contributors additionally have [create and edit](topic-experiences-user-permissions#change-who-has-permissions-to-do-tasks-on-the-topic-center) permissions. They can create and update topics.

Topic viewers and contributors can see the list of confirmed and published topics in the topic center, but the topic details that a given person can see depends on the permissions that they have to the source material and on whether the topic has been manually edited.

The following table describes what topic viewers and contributors can see based on their permissions.

|Topic item|What people can see|
|:---------|:------------------|
|Topic name|Topic viewers and contributors can see the topic name of all topics in the topic center. Some topics may not be visible if they have a low relevancy to the user.|
|Topic description|AI-generated descriptions are visible only to people who have permissions to the source content. Manually entered or updated descriptions are visible to all topic viewers and contributors.|
|People|Pinned people are visible to all viewers and contributors. Suggested people are only visible to people who have permissions to the source content.|
|Files|Files are only visible to topic viewers and contributors who have permissions to the source content.|
|Pages|Pages are only visible to topic viewers and contributors who have permissions to the source content.|
|Sites|Sites are only visible to topic viewers and contributors who have permissions to the source content.|



You can change topic page permissions for individual topics, but this is not recommended.


pages can contain local content or content that's separately ACL'd

Topic's discoverability is dictated by the resources associated with the topic. 

People with read permissions to the information from which the topic was discovered can discover the topic.

Manually added topics require permissions to be determined by the person adding the topic page. See New Topic.


A mined topic starts with being able to be edited by those that can see it. If a person seeing the result wants to change any information on the topic, this is the curation for everyone who sees the topic.

Page is created in single knowledge center
Default permissions is to be read and write for everyone
The information curated on the page will be visible to everyone
Suggestions continue to be security-protected




The topic name is visible. Correct – AI discovered descriptions are protected by source document. The human edit is visible only if the topic page is visible


Suggested people are protected by the source documents. Pinned people will always be visible.


If AI associates a document to a Manually created topic and I don't have access to the document, you don't see the document


AI discovers
anyone can see the title

people with page perms see all human-created content on the page
they only see associated info if they have perms to it

When a topic is first discovered, knowledge managers can see it in the topic center. Depending on the completeness and relevance of the topic, topic viewers may or may not see the topic presented in topic cards.

Topic viewers can see published topics in the topic center. 


## Best practices

workflow for requesting changes

[Select SharePoint topic sources](topic-experiences-discovery#select-sharepoint-topic-sources)

[Exclude topics by name](topic-experiences-discovery#exclude-topics-by-name)

have knowledge managers remove topics in the topic center.

be aware of the audience and the sensitivity of information when creating topic descriptions. These descriptions may be widely visible to users who don't have permissions to the source content for the topic.

we don't do anything to prevent people from creating topics. (people with create and edit perms)






## See also

[Plan topic experiences](plan-topic-experiences.md)

[Set up topic experiences](set-up-topic-experiences.md)

