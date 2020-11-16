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




## Suggested topics
## Topic pages
## 
## 
## 
## Manually created topics

only knob is page perms
pages can contain local content or content that's separately ACL'd
page owner controls page perms
if km is first to update page, then they're the owner

|Topic stage|Description|
|:----------|:----------|
|Suggested|AI has identified a topic that has supporting resources, connections, and properties.|
|Confirmed|A knowledge manager has confirmed a suggested topic. No updates are made to any of the AI-discovered data.|
|Published|A knowledge manager or contributor has updated any of the AI-discovered items or added new items to the topic. Topic experiences continues to add to the topic in this stage, increasing its connections. Manually created topics start as published.|
|Removed|A topic that has been removed from topic experience by a knowledge manager.|


workflow for requesting changes

Topic's discoverability is dictated by the resources associated with the topic. 

People with read permissions to the information from which the topic was discovered can discover the topic.


Confirmed and Published topics
A confirmed topic has been confirmed through feedback or KM (voted up).
A published topic is also a confirmed topic, but it has human added updates (a topic page - curated)
These topics show across all experiences.
Manually added
Creation entry points:
-	Knowledge center (Knowledge center.docx)
-	By adding a related topic to a topic where you have edit permissions (Knowledge-aware web part - Related Topics.pptx)
-	Through the topic picker (Entity picker - spec.pptx)
-	P2 – Search answer

Manually added topics require permissions to be determined by the person adding the topic page. See New Topic.


A mined topic starts with being able to be edited by those that can see it. If a person seeing the result wants to change any information on the topic, this is the curation for everyone who sees the topic.
The person who makes the first contribution will be asked to set the permissions on the topic:
1.	Encourage that the topic be available to everyone – enterprise topic
a.	Topic is discoverable for everyone
2.	Specific: Only specific people or groups can discover the topic – ACL on the page


Topic Owner
Mined topics do not have an owner. The person who confirms the topic or with the first curation becomes the owner of topic. They are set to the page owner.

For manually added topics, the person who adds (creates) the topic will be the topic owner.


How did we get the right owner for the mined topic?
The topic is only visible to people who have permissions to the files/pages.

Mined topic (Suggestion – no human curation)
If I can read it, I can edit.
As soon as a mined topic has a contribution, a page is created in the enterprise knowledge center.
Permissions are to be read for everyone.

Manually added / Mined topic + curation
Contributor will be asked to set permissions for the visibility of the topic (read permissions).
The edit permissions initially follow the read permissions.
The contributor has the option to change the edit permissions, as well.



Anyone can edit
Page is created in single knowledge center
Default permissions is to be read and write for everyone
The information curated on the page will be visible to everyone
Suggestions continue to be security-protected
Page permission can be changed if the information should not be for the tenant

Only specific people can edit 
Only people who can edit will see the Edit button
Feedback mechanisms are available for feedback




Some open questions
-	Do we ever show just topic names and description but nothing else on a card?
[cj] It's possible. The knowledge manager will be able to see such a topic, but quality filters may prevent this from showing to a normal end user. 

-	Can topics that have been published (as in, have a SP page) be seen by everyone with view access to the Topic center?
[cj] Ultimately, the visibility will be dictated by the page. The default permissions for the page are the view access to topic center, so yes, that is the initial state. But, this is SP, so someone can change the permissions of the topic page.

-	Will the title always be visible? The description would be visible to everyone if it was human edited, but it might not be visible if it was not human edited and you don't have permission to the source doc?
[cj] The topic name is visible. Correct – AI discovered descriptions are protected by source document. The human edit is visible only if the topic page is visible

-	People on published topics are always visible to everyone with view access to the Topic center even if it was AI generated or manually created?
[cj] Suggested people are protected by the source documents. Pinned people will always be visible.

-	Does this mean that if you add a description to a topic i didn't have access to the resources before, I now get to see the topic, description, people and resources due to the default behavior of manually edited topics being visible to all with admin permissions?
[cj] The information on the topic page that becomes visible to you when you have permissions to the topic page:
-	Name
-	Description
-	Pinned people
-	Suggested people you have permissions to source document
-	Pinned files/pages you have permissions to
-	Suggested files/pages you have permissions to
-	Suggested sites you have permissions to
-	Added sites you have permissions to

If AI associates a document to a Manually created topic and I don't have access to the document, what is my experience? Does this AI action take away my access?
[cj] no, you still have permission to the manually created topic, you just don't see the document

-	How are we ensuring that someone does not create a topic page for something not everyone should have access to? Or is this just an accepted risk?
[cj] we don't do anything to prevent people from creating topics.


AI discovers
anyone can see the title
first person to edit sets page perms



people with page perms see all human-created content on the page
they only see associated info if they have perms to it


|Item|Who can see it|
|:---|:-------------|
|Topic title|Everyone|
|AI-generated description|People with permissions to description source|
|Human-generated description|People with permissions to the topic page|



## See also

[Plan topic experiences](plan-topic-experiences.md)

[Set up topic experiences](set-up-topic-experiences.md)

