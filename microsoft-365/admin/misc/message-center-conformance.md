---
title: "Conformance metadata for Message Center posts"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ROBOTS: NOINDEX, NOFOLLOW

description: "Get an overview of...."
---

# Conformance metadata for Message Center posts

When planning for new features or service deployments, you need to understand and assess the changes for conformance to industry, region, and country regulations. We've heard your feedback that if there's insufficient conformance information about a new or changing feature, you may have to conduct your own research about the feature or reach out to the Compliance Program with questions.  

In this pilot program, we want to proactively provide metadata for new and updated Microsoft 365 features and services. Our goal is to help you efficiently assess your compliance requirements and help you with adoption and change management decisions.  

For example, if for a feature the metadata has the following values, feature adoption decision should be quick.  

- Customer data is stored? **Yes/No**

- Change to customer data storage? **No**

- Changes to existing data flow? **No**

- Feature integrates with 3rd party services? **No**

> [!NOTE]
> The above list is slightly different from what you previously saw in the pilot conformance posts. We've updated the list based on feedback we've received from pilot customers.

For features where the metadata is different from the list above, the Message center post may provide you with documentation.

## Understanding conformance metadata

|**Metadata name**|**Values**|**Definition and questions asked**|**Example: Yes**|**Example: No**|
|---|---|---|---|
|**Customer data is stored**|Yes/No|Does this change store or process any net new data (classified as customer or personal data) which was not previously stored or processed by the service/previous version of this feature?|Teams Meetings recordings capturing and collecting customer data and is now stored in.|Message Center Service monthly active users (MAU) feature which shows the aggregated service monthly active users for a tenant ID which is not classified as customer or personal data.|
|**Change to customer data storage**|Yes/No|Does this change use a new or different service to store data|Teams Meetings Recordings capturing/collecting customer data/content and is now stored in.|Expanded reactions in Teams. This is expanding message reactions in Teams to a larger set. The newer reactions being stored are customer data, however, there is no change in how data is stored or processed.|
|**Changes to existing data flow**|Yes/No|Does this feature process data via a new or different processing pipeline? <br> Or <br> Is the feature just extending an existing processing pipeline to newer data or exposing data already exposed on one surface to another surface? (**Answer = No**).|When Bing for Business started using text from Word to send to Bing then bring data back to Word, the flow of data changed.|Productivity score being used on the Experience Insights page in admin center, the data is showed on a new surface, but storage and processing is the same. <br> Suggested Reply in Group Chats on Teams Desktop (an extension of 1:1 chats) does not have any net new data. It is an extension of the pipeline already set up for Suggested Reply in 1:1 chats.|
|**Feature integrates with 3rd party services**|Yes/No|Does this feature utilize a net new service or app (1st party or 3rd party) that customer data could potentially be stored or processed outside of Microsoft 365?|Bing for Business may receive customer content in the form of "search" data to present a user with potentially relevant information/content.|Message Center Service monthly active users (MAU) feature which shows the service monthly active users using Usage Report Graph API which is within M365 boundary.|
|

## Join the pilot program

You can join by completing this questionnaire.

When a Message center post is delivered, you'll receive an additional Message Center post that says, “Additional Conformance Information for MC######”. This post contains additional conformance metadata. You can provide feedback directly on the additional post or you can email: MCSHDPMS@Microsoft.com. You can also send feedback on Teams channel.

> [!NOTE]
> We’ll start with features from Microsoft Teams, OneDrive for Business and SharePoint Online.
