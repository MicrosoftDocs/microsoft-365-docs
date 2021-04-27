---
title: Insider risk management Content explorer
description: Learn about insider risk management Content explorer in Microsoft 365
keywords: Microsoft 365, insider risk management, risk management, compliance
localization_priority: Normal
ms.prod: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: m365-security-compliance
---

# Insider risk management Content explorer

The insider risk management **Content explorer** allows users assigned the *Insider Risk Management Investigators* role to examine the context and details of content associated with activity in alerts. The case data in Content explorer is refreshed daily to include new activity. For all alerts that are confirmed to a case, copies of data and message files are archived as a snapshot in time of the items, while maintaining the original files and messages in the storage sources. If needed, case data files may be exported as a portable document file (PDF) or in the original file format.

The copying of data and messages is transparent to the user associated with the alert and to the owner of the content. For new cases, it usually takes about an hour for content to populate in Content explorer. For cases with large amounts of content, it may take longer to create a snapshot. If content is still loading in Content explorer, you will see a progress indicator that displays the completion percentage.

In some cases, data associated with a case may not be available as a snapshot for review in Content explorer. This situation may occur when case data has been deleted or moved, or when a temporary error occurs when processing case data. If this situation occurs, select **View files** in the warning bar to view the file names, file path, and reason for the failure for each file. If needed, this information can be exported to a .csv (comma-separated values) file.

If the content includes Information Rights Management permissions, these permissions are maintained for the copied content and users assigned the *Insider Risk Management Investigators* role will need these permissions and rights if they need to open and view the files. Each file and message are automatically assigned a unique file ID in the insider risk management case for management purposes. Documents associated with device indicator activities are not included in Content explorer.

>[!Note]
>Content explorer includes activities related to Microsoft Office files. Site-level activities, such as when a SharePoint site is deleted or if site permissions are changed, aren't included in Content explorer.

## Column options

To make it easier for risk analysts and investigators to review captured data and messages and review the context to the case, several filtering and sorting tools are included in the Content explorer. For basic sorting, the **Date** and **File class** columns support sorting using the column titles in the content queue pane. Other queue columns are available to add to the view to provide different pivots on the files and messages.

To add or remove column headings for the content queue, use the **Edit columns** control and select from the following column options. These columns map to the common, email, and document property conditions supported in the Content explorer and listed later in this article.

| **Column option** | **Description** |
|:------------------|:----------------|
| **Author** | The author field from Office documents, which persists if a document is copied. For example, if a user creates a document and the emails it to someone else who then uploads it to SharePoint, the document will still retain the original author. |
| **Bcc** | Available for email messages, the users in the Bcc message field. |
| **Cc** | Available for email messages, the users in the Cc message field. |
| **Compound path** | Human readable path that describes the source of the item. |
| **Conversation ID** | Conversation Id from the message. |
| **Conversation index** | Conversation index from the message. |
| **Created time** | The time the file or email message was created. |
| **Date (UTC)** | For email, the date a message was received by a recipient or sent by the sender. For documents, the date a document was last modified. Date is in Coordinated Universal Time (UTC).|
| **Dominant theme** | Dominant theme as calculated for analytics. |
| **Email set ID** | Group ID for all messages in the same email set. |
| **Family ID** | Family Id groups together all items; for email, this column includes the message and all attachments; for documents, this column includes the document and any embedded items. |
| **File class** | For content from SharePoint and OneDrive: **Document**; for content from Exchange: **Email** or **Attachment**. |
| **File ID** | Document identifier unique within the case. |
| **File type icon** | The extension of a file; for example, docx, one, pptx, or xlsx. This field is the same property as the FileExtension site property. |
| **ID** | The GUID identifier for the file. |
| **Immutable ID** | Immutable Id as stored in Office 365. |
| **Inclusive type** | Inclusive type calculated for analytics: **0** - not inclusive; **1** - inclusive; **2** - inclusive minus; **3** - inclusive copy. |
| **Last modified** | The date that a document was last changed. |
| **Marked as representative** | One document from each set of exact duplicates is marked as representatives. |
| **Message kind** | The type of email message to search for. Possible values: contacts, docs, email, external data, faxes, im, journals, meetings, microsoft teams (returns items from chats, meetings, and calls in Microsoft Teams), notes, posts, RSS feeds, tasks, voicemail |
| **Participants** | List of all participants of a message; for example, Sender, To, Cc, Bcc. |
| **Pivot ID** | The ID of a pivot. |
| **Received** | The date that an email message was received by a recipient. This field is the same property as the Received email property. |
| **Recipients** | All recipient fields in an email message. These fields are To, Cc, and Bcc. |
| **Representative ID** | Numeric identifier of each set of exact duplicates. |
| **Sender** | The sender of an email message. |
| **Sender/Author** | For email, the person who sent a message. For documents, the person cited in the author field from Office documents. You can type more than one name, separated by commas. Two or more values are logically connected by the OR operator. |
| **Sensitive info types** | The sensitive info types identified in content. |
| **Sensitivity labels** | The sensitivity labels applied to the content. |
| **Sent** | The date that an email message was sent by the sender. This field is the same property as the Sent email property. |
| **Size** | For both email and documents, the size of the item (in bytes). |
| **Subject** | The text in the subject line of an email message. |
| **Subject/Title** | For email, the text in the subject line of a message. For documents, the title of the document. As previously explained, the Title property is metadata specified in Microsoft Office documents. You can type the name of more than one subject/title, separated by commas. Two or more values are logically connected by the OR operator. |
| **Themes list** | Themes list as calculated for analytics. |
| **Title** | The title of the document. The Title property is metadata that's specified in Office documents. It's different than the file name of the document. |
| **To** | The recipient of an email message in the To field. |

## Filtering

You can use one or more filters to narrow the scope of a search and return a more refined set of results. To set a filter, select **Filters** at the top of the content queue. Many filters include additional filtering options to help narrow the results returned by the filter. For example, the *Date* filter includes controls to configure a *Start date* and *Ending date* for the **Date** filter. Select one or more filter items from the following categories:

### Common filters

| **Filter** | **Description** |
|:---------------------|:----------------|
| **Date (UTC)** | For email, the date a message was received by a recipient or sent by the sender. For documents, the date a document was last modified. |
| **Sender/Author** | For email, the person who sent a message. For documents, the person cited in the *Author* field from Office documents. You can type more than one name, separated by commas. |
| **Source** | The location of the document in your organization. For example, a specific SharePoint site location. |
| **Subject/Title** | For email, the text in the subject line of a message. For documents, the title of the document. The Title property in documents is metadata specified in Microsoft Office documents. You can type the name of more than one subject/title, separated by commas. Two or more values are logically connected by the OR operator. |

### Email filters

| **Filter** | **Description** |
|:---------------------|:----------------|
| **Bcc** | The Bcc field of an email message. |
| **Cc** | The Cc field of an email message. |
| **Has attachment** | Indicates whether a message has an attachment. Values are listed as **true** or **false**. |
| **Is email attachment** | If the document is an attachment, the value is listed as **Yes**. |
| **Is embedded document** | If the document is embedded in the email message, the value is listed as **Yes**. |
| **Is inline attachment** | If the document is an inline attachment in the email message, the value is listed as **Yes**. |
| **Participants** | All the people fields in an email message. These fields are From, To, Cc, and Bcc. |
| **Received** | The date that an email message was received by a recipient. |
| **Recipient domains** | List of all domains of recipients of a message. |
| **Recipients** | The email message recipients. |
| **Sender** | Sender (From) field for message types.  Format is **DisplayName \<SmtpAddress>**. |
| **Sender domain** | Domain of the sender. |
| **To** | The To field of an email message. |
| **Unique in email set** | False if there's a duplicate of the attachment in its email set. |

## Document filters

| **Filters** | **Description** |
|:---------------------|:----------------|
| **Compliance labels** | Compliance labels applied in Office 365. |
| **Created time (UTC)** | The date and time the file or email message was created. The date and time are in Coordinated Universal Time (UTC). |
| **Last modified date (UTC)** | The date that a document was last changed. The date and time are in Coordinated Universal Time (UTC). |
| **File extension** | The extension type of the file. |
| **User activity events** | Activity for items related to specific user activity in a case.  For example, when you select a link to 'Explore Content' for an activity in the **User Activity** page of a case, this filter is used to display items related to that activity. |
| **Work product** | The type of work product for the document. For example, annotations or tags in the document. |
