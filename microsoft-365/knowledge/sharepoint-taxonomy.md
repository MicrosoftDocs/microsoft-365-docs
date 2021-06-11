---
title: "Use SharePoint taxonomy terms to create topics in Microsoft Viva Topics"
author: chuckedmonson
ms.author: chucked
manager: pamgreen
ms.reviewer: anfra
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic 
    - m365initiative-viva-topics
localization_priority: None
description: "Learn about how to find topics in Viva Topics by using SharePoint taxonomy."
---
# Use SharePoint taxonomy terms to create topics in Microsoft Viva Topics

If you’ve purchased Viva Topics and already have a rich enterprise taxonomy in SharePoint with terms that represent potential topics, you can now use taxonomy terms to create topics.

You can use this capability to help guide the AI to find content. Mining content reduces discovery time, so customers can quickly access topics that were created using taxonomy terms.

How does it work?

When someone requests to create a topic from a term, the taxonomy service relays the following information about the term to the Viva Knowledge network for the creation of a corresponding Viva Topic.

- Name (default label)
- Synonyms
- Description
- Files tagged with the term

The topic that gets created uses the original name from the term, considers the synonyms to be the topic’s alternate names, and uses the description from the term for the topic description. The files that are tagged with the taxonomy term are considered “suggested” files on the topic. The AI then continues to discover additional content for the topic.  
Note: For topic creation to succeed, the taxonomy term should have at least one file tagged with it. If it doesn’t, the system declines the request.

Initiate a topic creation request

Viva Topics are currently available across your entire organization, so their parallel in the SharePoint Taxonomy service are global terms that are available to all sites. Your organization can create topics that correspond with concepts that are represented as terms.
Customers can initiate the request in the modern SharePoint term store. Customers who can edit the term set have permission to initiate the request. In the taxonomy permissions model, this includes term store admins, group managers, and contributors.

Request a single term

1.	In the term store, go to the desired term.
2.	On the right, select Usage settings.
3.	In the Create topic from this term section, select Request for creation.

<Insert screenshots from actual UX listing steps>

Request multiple terms in a term set

1.	In the term store, go to the desired term set.
2.	On the right, select Usage settings.
3.	In the Create topics from terms section, select Get started. If you’ve raised requests in the past, the option that appears is Request terms for creation.
•	In the panel, the hierarchy of terms within this term set is available for selection.
•	To select specific terms, select each term individually.
•	You can also  select all immediate children of a node in the hierarchy. 
4.	After you make the necessary selections, select Next.

Viva Topics creates the request and queues it to be processed.

<Insert screenshots from actual UX listing steps>

Understand request statuses

Requests for topic creation from a term fall into one of three states:

•	Requested: Indicates that the request is queued and the service is gathering all the required term info. A new request might remain in the Requested state for a few hours before it moves to one of the two final states.

•	Success: Indicates that the request was successfully relayed to the Knowledge network with all necessary term info. Viva Topics creates the corresponding topic within the next 24 hours.

•	Declined: Indicates that the request can’t be processed because there aren’t any files that are tagged with the term. There should be at least one file tagged for the request to succeed. If files later get tagged with the term, you can manually create a new request for the term.

In the term store, you can view the status of requests by:

•	Going to an individual term.
•	Viewing all the requests for a specific term set.

View the status for a single term

1.	In the term store, go to the desired term.
2.	On the right, select Usage settings.
In the Create topic from this term section, you’ll see the status of the request.

<Insert screenshots from actual UX listing steps>

View the status for multiple terms in a term set

1.	In the term store, go to the desired term set.
2.	On the right, select Usage settings.
a.	In the Create topics from terms section, aggregate metrics will give you a sense of the volume of requests and how many were successful.
3.	Select View all requests.
4.	If you have many requests, select Load more to keep loading additional data.
5.	To review requests that are in a particular state, use the filter option on the Status column.

<Insert screenshots from actual UX listing steps>

Identify topics created from terms

After Viva Topics processes a request and creates a topic, you can see a topic card when you hover over a term name in the list of requests for the term set.
Also, if you go to individual terms, and go to Usage settings, the Create topic from this term section shows a topic card when you hover over the name.

<Insert screenshot from actual UX of topic card on hover>

Topic pages also indicate that the taxonomy is one of the sources for the topic.

<Insert screenshot of source string in topic page>

Questions

How long does it take to create a topic from terms?
After the initial request, the topic will be created within 24 hours.
Why is the “Select All” option limited to immediate children?
In hierarchies with multiple levels, there are often container terms or nodes that don’t represent a topic. But it’s likely that if a term at a particular level is a good candidate, so are its siblings. To prevent any excessive and unintended bulk selection across levels, and to promote a conservative approach to keeping quality high, the bulk selection is currently limited to immediate children.

Why are only global term sets considered?
Topics are available across your entire organization, so the immediate comparison that can be drawn to SharePoint taxonomies are global terms. In the future, based on usage and feedback, support might be expanded.  

Why am I unable to see some requests I created in the report?
If you make bulk requests, especially using the Select All option, it could take longer than expected to process the requests. This might delay them from appearing in the report. If this happens, check back later to see the requests.

Why does my request status say “Declined”?
If your request is declined, it means that there aren’t any files that are currently tagged with the term. Topics require at least one document to be present for creation. You can try your request again after a file has this term tagged to it in any SharePoint library.

Why can’t I see a topic when my request status says “Success”?
The success status indicates that the processing is complete, and that topic creation is in progress. It can take up to 24 hours for the topic to be created and visible.

What happens to the term after a topic is created from it?
The term continues to exist in the SharePoint term store and is unaffected by topic creation. You’ll continue to be able to use it in SharePoint lists and libraries.

What happens if a term is updated?
Periodically, the term information is relayed to the topic  to reconcile updates from the term store. If the term’s default label or description changes, the Knowledge network evaluates the changes and updates the topic information if it determines that the change is appropriate.
Additionally, the content that’s tagged with the term is also passed periodically to the Knowledge network. If there’s a point where there’s no longer any content tagged with the term, and the Knowledge network hasn’t identified any other content associated with the topic, the topic might be removed.

What happens if a term is deleted?
If a term is deleted, the deletion doesn’t automatically remove the topic. If the Knowledge network identifies content related to the topic that’s not solely from the term and its tagged content, the topic continues to exist.

Do updates to the topic affect the term?
Changes to the topic don’t affect the original term.

