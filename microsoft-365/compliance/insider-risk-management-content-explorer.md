---
title: Insider risk management content explorer (preview)
description: Learn about insider risk management content explorer in Microsoft 365
keywords: Microsoft 365, insider risk management, risk management, compliance
localization_priority: Normal
ms.prod: Microsoft-365-enterprise
ms.topic: article
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: m365-security-compliance
---

# Insider risk management content explorer (preview)

The insider risk management content explorer allows risk analysts and investigators....

## Basic filters

To make it easier for risk analysts and investigators to review captured data and messages and review the context to the case, several filtering and sorting tools are included in the Content Explorer. For basic sorting, the **Date** and **File class** columns support sorting using the column titles in the content queue pane. Other queue columns are available to add to the view to provide different pivots on the files and messages.

To add or remove column headings for the content queue, use the **Edit columns** control and select from the following column options:

| **Column option** | **Description** |
| :---------------- | :-------------- |
| **Author** | The author field from Office documents, which persists if a document is copied. For example, if a user creates a document and the emails it to someone else who then uploads it to SharePoint, the document will still retain the original author. |
| **Bcc** | Available for email messages, the users in the Bcc message field. |
| **Caption** |  |
| **Cc** | Available for email messages, the users in the Cc message field. |
| **Comments** |  |
| **Compound path** |  |
| **Conversation ID** |  |
| **Conversation index** |  |
| **Created time** | The time the file or email message was created. |
| **Date** | For email, the date a message was received by a recipient or sent by the sender. For documents, the date a document was last modified. |
| **Dominant theme** |  |
| **Email set ID** |  |
| **Family ID** |  |
| **File class** |  |
| **File ID** |  |
| **File type icon** | The extension of a file; for example, docx, one, pptx, or xlsx. This is the same property as the FileExtension site property. |
| **ID** |  |
| **Immutable ID** |  |
| **Inclusive type** |  |
| **Last modified** | The date that a document was last changed. |
| **Marked as pivot** |  |
| **Marked as representative** |  |
| **Message kind** |  |
| **Participants** |  |
| **Pivot ID** |  |
| **Received** | The date that an email message was received by a recipient. This is the same property as the Received email property. |
| **Recipients** | All recipient fields in an email message. These fields are To, Cc, and Bcc. |
| **Representative ID** |  |
| **Sender** | The sender of an email message. |
| **Sender/Author** | For email, the person who sent a message. For documents, the person cited in the author field from Office documents. You can type more than one name, separated by commas. Two or more values are logically connected by the OR operator. |
| **Sent** | The date that an email message was sent by the sender. This is the same property as the Sent email property. |
| **Size** | For both email and documents, the size of the item (in bytes). |
| **Source** |  |
| **Subject** | The text in the subject line of an email message. |
| **Subject/Title** | For email, the text in the subject line of a message. For documents, the title of the document. As previously explained, the Title property is metadata specified in Microsoft Office documents. You can type the name of more than one subject/title, separated by commas. Two or more values are logically connected by the OR operator. |
| **Themes list** |  |
| **Title** | The title of the document. The Title property is metadata that's specified in Office documents. It's different than the file name of the document. |
| **To** | The recipient of an email message in the To field. |

## Advanced conditions and search

You can add search conditions to narrow the scope of a search and return a more refined set of results. Each condition adds a clause to the search query that is created and run when you start the search. A condition is logically connected to the keyword query (specified in the keyword box) by a logical operator (which is represented as c:c) that is similar in functionality to the AND operator. That means that items have to satisfy both the keyword query and one or more conditions to be included in the search results. This is how conditions help to narrow your results.

For advanced filter and search tools, expand the **Filter** pane on the left side of the content queue. Select the **Add a condition** button to open the condition list:

### Common property conditions

| **Condition option** | **Description** |
| :------------------- | :-------------- |
| **Date** | For email, the date a message was received by a recipient or sent by the sender. For documents, the date a document was last modified. |
| **Sender/Author** | For email, the person who sent a message. For documents, the person cited in the author field from Office documents. You can type more than one name, separated by commas. Two or more values are logically connected by the **OR** operator. |
| **Size** | For both email and documents, the size of the item (in bytes). |
| **Subject/Title** | For email, the text in the subject line of a message. For documents, the title of the document. The Title property in documents is metadata specified in Microsoft Office documents. You can type the name of more than one subject/title, separated by commas. Two or more values are logically connected by the OR operator. |

### Email property conditions

The following table lists email message property conditions available the Content Explorer.

| **Condition option** | **Description** | **Examples** |
| :------------------- | :-------------- | :----------- |
| **Bcc** | The Bcc field of an email message. | `bcc:pilarp@contoso.com` <br> `bcc:pilarp` <br> `bcc:"Pilar Pinilla"` |
| **Cc** | The Cc field of an email message. | `cc:pilarp@contoso.com` <br> `cc:pilarp` <br/> `cc:"Pilar Pinilla"` |
| **Email Internet headers** |  |  |
| **Email security** |  |   |
| **Email sensitivity** |  |   |
| **Email set ID** |  |  |
| **From** | The sender of an email message. | `from:pilarp@contoso.com` <br> `from:contoso.com` |
| **Has attachment** | Indicates whether a message has an attachment. Use the values **true** or **false**. | `hasattachment:true` |
| **Importance** | The importance of an email message, which a sender can specify when sending a message. By default, messages are sent with normal importance, unless the sender sets the importance as **high** or **low**. | `importance:high`  <br> `importance:medium` <br> `importance:low`  |
| **Meeting end date** |  |  |
| **Meeting start date** |  |  |
| **Message kind** | The type of email message to search for. Possible values: <br> contacts <br> docs <br> email <br> externaldata <br> faxes <br> im <br> journals <br> meetings <br> microsoftteams (returns items from chats, meetings, and calls in Microsoft Teams) <br> notes <br> posts <br> rssfeeds <br> tasks <br> voicemail | `kind:email` <br/> `kind:email OR kind:im OR kind:voicemail` <br> `kind:externaldata` |
| **Participant domain** |  |  |
| **Participants** | All the people fields in an email message. These fields are From, To, Cc, and Bcc. | `participants:garthf@contoso.com` <br> `participants:contoso.com` |
| **Received** | The date that an email message was received by a recipient. | `received:04/15/2016` <br> `received>=01/01/2016 AND received<=03/31/2016` |
| **Recipient domains** |  |  |
| **Subject** | The text in the subject line of an email message.  <br/> **Note:** When you use the Subject property in a query, the search returns all messages in which the subject line contains the text you're searching for. In other words, the query doesn't return only those messages that have an exact match. For example, if you search for `subject:"Quarterly Financials"`, your results will include messages with the subject "Quarterly Financials 2018". | `subject:"Quarterly Financials"` <br> `subject:northwind` |
| **To** | The To field of an email message. | `to:annb@contoso.com` <br> `to:annb ` <br> `to:"Ann Beebe"` |
| **Unique in email set** |  |

## Document property conditions

| **Condition option** | **Description** |
| :------------------- | :-------------- |
| **Annotations** |  |
| **Attorney-client privilege score** |  |
| **Author** | The author field from Office documents, which persists if a document is copied. For example, if a user creates a document and the emails it to someone else who then uploads it to SharePoint, the document will still retain the original author. |
| **Comments** |  |
| **Compliance labels** |  |
| **Compound path** |  |
| **Conversation ID** |  |
| **Created time** | The time the file or email message was created. |
| **Custodian** |  |
| **Data source** |  |
| **Dominant theme** |  |
| **Family ID** |  |
| **File class** |  |
| **File types** | The extension of a file; for example, docx, one, pptx, or xlsx. |
| **Has attorney participant** |  |
| **Ignored processing errors** |  |
| **Immutable ID** |  |
| **Inclusive type** |  |
| **Item class** |  |
| **Keywords** |  |
| **Last modified** | The date that a document was last changed. |
| **Load ID** |  |
| **Location name** |  |
| **Marked as pivot** |  |
| **Marked as representative** |  |
| **Native file extension** |  |
| **Native file name** |  |
| **NdEtSortExclAttach** |  |
| **Pivot ID** |  |
| **Potentially privileged** |  |
| **Processing status** |  |
| **Read percentile** |  |
| **Relevance score** |  |
| **Relevance tag** |  |
| **Representative ID** |  |
| **Sender** |  |
| **Sender domain** |  |
| **Source** |  |
| **Tags** |  |
| **Themes list** |  |
| **Title** | The title of the document. The Title property is metadata that's specified in Office documents. It's different than the file name of the document. |
| **Was remediated** |  |
| **Word count** | The number of words in a file. |
| **Work product** |  |

## Guidelines for using conditions

