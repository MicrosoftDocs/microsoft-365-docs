---
title: "Document metadata fields in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 

description: "This article defines the metadata fields for documents in a review set in a case in Advanced eDiscovery in Microsoft 365."
---

# Document metadata fields in Advanced eDiscovery

The following table lists the metadata fields for documents in a review set in a case in Advanced eDiscovery. The table provides the following information:

- **Field name** and **Display field name:** The name of the metadata field and the name of the field that's displayed when viewing the file metadata of a selected document in a review set. Some metadata fields aren't included when viewing the file metadata of a document. These fields are highlighted with an asterisk (*).

- **Searchable field name:** The name of the property that you can search for when running a [review set query](review-set-search.md). A blank cell means that you can't search for the field in a review set query.

- **Exported field name:** The name of the metadata field that included when documents are exported.  A blank cell means the field isn't included with the exported metadata.

- **Description:** A description of the metadata field.

> [!NOTE]
> The **Keywords** field in [review set search](./review-set-search.md) uses Keyword Query Language (KQL). The fields listed in the **Searchable field name** column can be used in the **Keywords** field in a review set search to form complex queries without you having to use the query builder. For more information about KQL, see [Keyword Query Language syntax reference](/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference).

|**Field name** and **Display field name**|**Searchable field name**|**Exported field name**|**Description**|
|:-----|:-----|:-----|:-----|
|Attachment Content Id|AttachmentContentId||Attachment content Id of the item.|
|Attorney client privilege score|AttorneyClientPrivilegeScore||Attorney-client privilege model content score.|
|Author|Author|Doc_authors|Author from the document metadata.|
|BCC|Bcc|Email_bcc|Bcc field for message types. Format is **DisplayName \<SMTPAddress>**.|
|CC|Cc|Email_cc|Cc field for message types. Format is **DisplayName \<SMTPAddress>**.|
|Compliance labels|ComplianceLabels|Compliance_labels|[Retention labels](retention.md) applied to content in Office 365.|
|Compound Path|CompoundPath|Compound_path|Human readable path that describes the source of the item.|
|Content*|Content||Extracted text of the item.|
|Conversation Body|Conversation Body||Conversation body of the item.|
|Conversation Topic|Conversation Topic||Conversation topic of the item.|
|Conversation ID|ConversationId|Conversation_ID|Conversation Id from the message.|
|Conversation Index||Conversation_index|Conversation index from the message.|
|Conversation Pdf Time|ConversationPdfTime||Date when the PDF version of the conversation was created.|
|Conversation Redaction Burn Time|ConversationRedactionBurnTime||Date when the PDF version of the conversation was created for Chat.|
|||Converted_file_path|The path of the converted export file. For internal Microsoft use only.|
|Document date created|CreatedTime|Doc_date_created|Create date from document metadata.|
|Custodian|Custodian|Custodian|Name of the custodian the item was associated with.|
|Date|Date|Date|Date is a computed field that depends on the file type.<br /><br />Email: Sent date<br />Email attachments: Last modified date of the document;if not available, the parent's Sent date<br />Embedded documents: Last modified date of the document; if not available, the parent's last modified date<br />SPO documents (includes modern attachments): SharePoint Last modified date; if not available, the documents last modified date<br />Non-Office 365 documents: Last modified date<br />Meetings: Meeting start date<br />VoiceMail: Sent date<br />IM: Sent date|
|Other paths|Dedupedcompoundpath|Deduped_compound_path|List of compound paths of documents that are exact duplicates (email: based on content, documents: based on hash).|
|Other custodians|DedupedCustodians|Deduped_custodians|List of custodians of documents that are exact duplicates (for email, based on content; for documents, based on hash).|
|Other file IDs|DedupedFileIds|Deduped_file_IDs|List of file IDs of documents that are exact duplicates (for email, based on content; for documents, based on hash).|
|Document comments|DocComments|Doc_comments|Comments from the document metadata.|
|Document company||Doc_company|Company from the document metadata.|
|DocIndex*|||The index in the family. **-1** or **0** means it is the root.|
|Document keywords||Doc_keywords|Keywords from the document metadata.|
|Document modified by||Doc_modified_by|Last modified date by from document metadata.|
|Document Revision|Doc_Version|Doc_Version|Revision from the document metadata.|
|Document subject||Doc_subject|Subject from the document metadata.|
|Document template||Doc_template|Template from the document metadata.|
|DocLastSavedBy||Doc_last_saved_by|The name of the user who last saved the document.|
|Dominant theme|DominantTheme|Dominant_theme|Dominant theme as calculated for analytics.|
|Duplicate subset||Duplicate_subset|Group ID for exact duplicates.|
|EmailAction*||Email_action|Values are **None**, **Reply**, or **Forward**; based on the subject line of a message.|
|Email Delivery Receipt Requested||Email_delivery_receipt|Email address supplied in Internet Headers for delivery receipt.|
|Importance|EmailImportance|Email_importance|Importance of the message: **0** - Low; **1** - Normal; **2** - High|
|EmailInternetHeaders|EmailInternetHeaders|Email_internet_headers|The full set of email headers from the email message|
|EmailLevel*||Email_level|Indicates a message's level within the email thread it belongs to; attachments inherit its parent message's value.|
|Email Message Id||Email_message_ID|Internet message Id from the message.|
|EmailReadReceiptRequested||Email_read_receipt|Email address supplied in Internet Headers for read receipt.|
|Email Security|EmailSecurity|Email_security|Security setting of the message: **0** - None; **1** - Signed; **2** -  Encrypted; **3** -  Encrypted and signed.|
|Email Sensitivity|EmailSensitivity|email_sensitivity|Sensitivity setting of the message: **0** - None; **1** Personal; **2** - Private; **3** - CompanyConfidential.|
|Email set|EmailSet|Email_set|Group ID for all messages in the same email set.|
|EmailThread*||Email_thread|Position of the message within the email set; consists of node IDs from the root to the current message and are separated by periods (.).|
|||Export_native_path|The path of the exported file.|
|Extracted content type||Native_type|Extracted content type, in the form of mime type; for example, **image/jpeg**|
|||Extracted_text_path|The path to the extracted text file in the export.|
|ExtractedTextLength*||Extracted_text_length|Number of characters in the extracted text.|
|FamilyDuplicateSet*||Family_duplicate_set|Numeric identifier for families that are exact duplicates of each other (same content and all the same attachments).|
|Family ID|FamilyId|Family_ID|Groups together all items for email. This includes the message and all attachments and extracted items.|
|Family Size||Family_size|Number of documents in the family.|
|File class|FileClass|File_class|For content from SharePoint and OneDrive: **Document**; for content from Exchange: **Email** or **Attachment**.|
|File ID|FileId|File_ID|Document identifier unique within the case.|
|File system date created||File_system_date_created|Created date from file system (only applies to non-Office 365 data).|
|File system date modified||File_system_date_modified|Modified date from file system (only applies to non-Office 365 data).|
|File Type|FileType||File type of the item based on file extension.|
|Group Id|Group Id|Group_ID|Groups together all items for email and documents. For email, this includes the message and all attachments and extracted items. For documents, this includes the document and any embedded items.|
|Has attachment|HasAttachment|Email_has_attachment|Indicates whether or not the message has attachments.|
|Has attorney|HasAttorney||**True** when at least one of the participants is found in the attorney list; otherwise, the value is **False**.|
|HasText*||Has_text|Indicates whether or not the item has text; possible values are **True** and **False**.|
|Immutable ID||Immutable_ID|This Id is used to uniquely identify a document within a review set. This field can't be used in a review set search and the Id can't be used to access a document in its native location.|
|Inclusive type|InclusiveType|Inclusive_type|Inclusive type calculated for analytics: **0** - not inclusive; **1** - inclusive; **2** - inclusive minus; **3** - inclusive copy.|
|In Reply To Id||In_reply_to_ID|In reply to Id from the message.|
|InputFileExtension||Original_file_extension|The original file extension of the file.|
|InputFileID||Input_file_ID|The file ID of the top level item in the review set. For an attachment, this ID will be the ID of the parent. This can be used to group families together.|
|Is modern attachment| IsModernAttachment|  |This file is a modern attachment or linked file.|
|Is from document version | IsFromDocumentVersion |  |Current document is from a different version of another document.|
|Is email attachment | IsEmailAttachment|  |This item is from an email attachment that shows up as an attached item to the message.|
|Is inline attachment| IsInlineAttachment|  |This was attached inline and shows up in the body of the message.|
|Is Representative|IsRepresentative|Is_representative|One document in every set of exact duplicates is marked as representative.|
|Item class|ItemClass|Item_class|Item class supplied by exchange server; for example, **IPM.Note**|
|Last modified date|LastModifiedDate|Doc_date_modified|Last modified date from document metadata.|
|Load ID|LoadId|Load_ID|The Id of the load set in which the item was added to a review set.|
|Location|Location|Location|String that indicates the type of location that documents were sourced from.<br /><br />**Imported Data** - Non-Office 365 data<br />**Teams** - Microsoft Teams<br />**Exchange** - Exchange mailboxes<br />**SharePoint** - SharePoint sites<br />**OneDrive** - OneDrive accounts|
|Location name|LocationName|Location_name|String that identifies the source of the item. For exchange, this will be the SMTP address of the mailbox; for SharePoint and OneDrive, the URL for the site collection.|
|||Marked_as_pivot|This file is the pivot in a near duplicate set.|
|Marked as representative|MarkAsRepresentative||One document from each set of exact duplicates is marked as representatives.|
|Meeting End Date|MeetingEndDate|Meeting_end_date|Meeting end date for meetings.|
|Meeting Start Date|MeetingStartDate|Meeting_start_date|Meeting start date for meetings.|
|Message kind|MessageKind|Message_kind|The type of message to search for. Possible values: **<br /><br />contacts <br />docs <br />email <br />externaldata <br />faxes <br />im <br />journals <br />meetings <br />microsoftteams** (returns items from chats, meetings, and calls in Microsoft Teams) **<br />notes <br />posts <br />rssfeeds <br />tasks <br />voicemail**| 
|Modern Attachment Parent Id||ModernAttachment_ParentId|The Immutable Id of the document's parent.|
|Native Extension|NativeExtension|Native_extension|Native extension of the item.|
|Native file name|NativeFileName|Native_file_name|Native file name of the item.|
|NativeMD5||Native_MD5|MD5 hash (128-bit hash value) of the file stream.|
|NativeSHA256||Native_SHA_256|SHA256 hash (256-bit hash value) of the file stream.|
|ND/ET Sort: Excluding attachments|NdEtSortExclAttach|ND_ET_sort_excl_attach|Concatenation of the email thread (ET) set and Near-duplicate (ND) set. This field is used for efficient sorting at review time. A **D** is prefixed to ND sets and an **E** is prefixed to ET sets.|
|ND/ET Sort: Including attachments|NdEtSortInclAttach|ND_ET_sort_incl_attach|Concatenation of an email thread (ET) set and near-duplicate (ND) set. This field is used for efficient sorting at review time. A **D** is prefixed to ND sets and an **E** is prefixed to ET sets. Each email item in an ET set is followed by its appropriate attachments.|
|Near Duplicate Set||ND_set|Items that are similar to the pivot document share the same ND_set.|
|O365 authors||O365_authors|Author from SharePoint.|
|O365 created by||O365_created_by|Created by from SharePoint.|
|O365 date created||O365_date_created|Created date from SharePoint.|
|O365 date modified||O365_date_modified|Last modified date from SharePoint.|
|O365 modified by||O365_modified_by|Modified by from SharePoint.|
|Parent ID|ParentId|Parent_ID|Id of the item's parent.|
|ParentNode||Parent_node|The closest preceding email message in the email thread.|
|Participant domains|ParticipantDomains|Email_participant_domains|List of all domains of participants of a message.|
|Participants|Participants|Email_participants|List of all participants of a message; for example, Sender, To, Cc, Bcc.|
|Pivot ID|PivotId|Pivot_ID|The ID of a pivot.|
|Potentially privileged|PotentiallyPrivileged|Potentially_privileged|True if attorney-client privilege detection model considers the document potentially privileged|
|Processing status|ProcessingStatus|Error_code|Processing status after the item was added to a review set.|
|Read percentile|ReadPercentile||Read percentile for the document based on Relevance.|
|Received|Received|Email_date_received|The date and time the email was received in UTC.|
|Recipient Count||Recipient_count|Number of recipients in the message.|
|Recipient domains|RecipientDomains|Email_recipient_domains|List of all domains of recipients of a message.|
|Recipients|Recipients|Email_recipients|List of all recipients of a message (To, Cc, Bcc).|
|||Redacted_file_path|The path of the redacted replacement file in the export.|
|||Redacted_text_path|The path of the redacted text file replacement in the export. For internal Microsoft use only.|
|Relevance tag Case issue 1||Relevance_tag_case_issue_1|Relevance tag Case issue 1 from Relevance.|
|Relevance score|RelevanceScore||Relevance score of a document based on Relevance.|
|Relevance tag|RelevanceTag||Relevance score of a document based on Relevance.|
|Representative ID|RepresentativeId||Numeric identifier of each set of exact duplicates.|
|||Row_number|The row number of the item in the load file.|
|Sender|Sender|Email_sender|Sender (From) field for message types. Format is **DisplayName \<SmtpAddress>**.|
|Sender/Author|SenderAuthor||Calculated field comprised of the sender or author of the item.|
|Sender domain|SenderDomain|Email_sender_domain|Domain of the sender.|
|Sent|Sent|Email_date_sent|Sent date of the message.|
|Set Order: Inclusive First|SetOrderInclusivesFirst|Set_order_inclusives_first|Sorting field - email and attachments: counter-chronological; documents: pivot first then by descending similarity score.|
|Set ID||Set_ID|Documents of similar content (ND_set) or email within the same email thread (Email_set) share the same Set_ID.|
|SimilarityPercent||Similarity_percent|Indicates how similar a document is to the pivot of the near duplicate set.|
|Native file size|Size|Native_size|Number of bytes of the native item.|
|Subject|Subject|Email_subject|Subject of the message.|
|Subject/Title|SubjectTitle||Calculated field comprised of the subject or title of the item.|
|Tags|Tags|Tags|Tags applied in a review set.|
|Themes list|ThemesList|Themes_list|Themes list as calculated for analytics.|
|Title|Title|Doc_title|Title from the document metadata.|
|To|To|Email_to|To field for message types. Format is **DisplayName\<SmtpAddress>**|
|Unique in email set|UniqueInEmailSet||**False** if there's a duplicate of the attachment in its email set.|
|Version Group ID||Version_Group_Id|Groups together the different versions of the same document.|
|Was Remediated|WasRemediated|Was_Remediated|**True** if the item was remediated, otherwise **False**.|
|Word count|WordCount|Word_count|Number of words in the item.|
|||||

> [!NOTE]
> For more information about searchable properties when searching Office 365 content locations when you're collecting data for an Advanced eDiscovery case, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md).
