---
title: "Document metadata fields in Advanced eDiscovery"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 

description: ""
---

# Document metadata fields in Advanced eDiscovery

The following table lists the metadata fields for documents in a review set in a case in Advanced eDiscovery. The table provides the following information:

- The name of the metadata field (in the **Field name** column).

- The name of the property that you can search for when running a [review set query](review-set-search.md) (in the **Searchable field name** column). A blank cell means that you can't search for the field in a review set query.

- The name of the metadata field that included when documents are exported (in the **Exported field name** column).  A blank cell means the meta data field is not included with the exported metadata.

- The name of the metadata field that's displayed when viewing the file metadata of a selected document in a review set (in the **Display field name** column). A blank cell means the meta data field is not included when viewing the file metadata of a document.

- A description of the meta data field (in the **Description column**).

| Field name | Searchable field name | Exported field name | Display field name | Description |
| :- |  :- |  :- |  :- |  :- |
| Attachment Content Id | AttachmentContentId |  | Attachment Content Id | Attachment content Id of the item. |
| Attachment Names | AttachmentNames | Attachment_Names | Attachment Names | List of names of attachments. |
| Attorney client privilege score | AttorneyClientPrivilegeScore |  | Attorney client privilege score | Attorney-client privilege model content score. |
| Author | Author | Doc_authors | Author | Author from the document metadata. |
| BCC | Bcc | Email_bcc | BCC | Bcc field for message types.  Format is **DisplayName \<SMTPAddress>**. |
| CC | Cc | Email_cc | CC | Cc field for message types.  Format is **DisplayName \<SMTPAddress>**. |
| Compliance labels | ComplianceLabels | Compliance_labels | Compliance labels | Compliance labels applied in Office 365. |
| Compound Path | CompoundPath | Compound_path | Compound Path | Human readable path that describes the source of the item. |
| Content | Content |  |  | Extracted text of the item. |
| Conversation Body | Conversation Body |  | Conversation Body | Conversation body of the item. |
| Conversation Topic | Conversation Topic |  | Conversation Topic | Conversation topic of the item. |
| Conversation ID | ConversationId | Conversation_ID | Conversation ID | Conversation Id from the message. |
| Conversation Index |  | Conversation_index | Conversation Index | Conversation index from the message. |
| Conversation Pdf Time | ConversationPdfTime |  | Conversation Pdf Time | Date when the PDF version of the conversation was created. |
| Conversation Redaction Burn Time | ConversationRedactionBurnTime |  | Conversation Redaction Burn Time | Date when the PDF version of the conversation was created for Chat. |
| Document date created | CreatedTime | Doc_date_created | Document date created | Create date from document metadata. |
| Custodian | Custodian | Custodian | Custodian | Name of the custodian the item was associated with. |
| Date | Date | Date | Date | Date is a computed field that depends on the file type.<br />**Email**: Sent date<br />**Email attachments**: Last modified date of the document, if not available, the parent's Sent date<br />**Embedded documents**: Last modified date of the document, if not available, the parent's last modified date.<br />**SPO documents (includes modern attachments)**: SharePoint Last modified date, if not available, the documents last modified date<br />**Non-Office documents**: Last modified date<br />**Meetings**: Meeting start date<br />**VoiceMail**: Sent date<br />**IM**: Sent date. |
| Other paths | Dedupedcompoundpath | Deduped_compound_path | Other paths | List of compound paths of documents that are exact duplicates (email: based on content, documents: based on hash). |
| Other custodians | DedupedCustodians | Deduped_custodians | Other custodians | List of custodians of documents that are exact duplicates (for email: based on content; for documents: based on hash). |
| Other file IDs | DedupedFileIds | Deduped_file_IDs | Other file IDs | List of file IDs of documents that are exact duplicates (for email: based on content; for documents: based on hash). |
| Document comments | DocComments | Doc_comments | Document comments | Comments from the document metadata. |
| Document company |  | Doc_company | Document company | Company from the document metadata. |
| DocIndex |  |  |  | The index in the family. -1 or 0 means it is the root. |
| Document keywords |  | Doc_keywords | Document keywords | Keywords from the document metadata. |
| Document modified by |  | Doc_modified_by | Document modified by | Last modified date by from document metadata. |
| Document Revision |  | Doc_revision | Document Revision | Revision from the document metadata. |
| Document subject |  | Doc_subject | Document subject | Subject from the document metadata. |
| Document template |  | Doc_template | Document template | Template from the document metadata. |
| Dominant theme | DominantTheme | Dominant_theme | Dominant theme | Dominant theme as calculated for analytics. |
| Duplicate subset |  | Duplicate_subset | Duplicate subset | Group ID for exact duplicates. |
| EmailAction |  | Email_action |  | None, Reply, Forward based on the subject line of a message. |
| Email Delivery Receipt |  | Email_delivery_receipt | Email Delivery Receipt | Email address supplied in Internet Headers for delivery receipt. |
| Importance | EmailImportance | Email_importance | Importance | Importance of the message: **0**: Low; **1**: Normal; **2**: High |
| EmailLevel |  | Email_level |  | Indicates a message's level within the email thread it belongs to; attachments inherit its parent message's value. |
| Email Message Id |  | Email_message_ID | Email Message Id | Internet message Id from the message. |
| EmailReadReceipt |  | Email_read_receipt |  | Email address supplied in Internet Headers for read receipt. |
| Email Security | EmailSecurity | Email_security | Email Security | Security setting of the message: **0**: None; **1**: Signed; **2**: Encrypted; **3**: Encrypted and signed. |
| Email Sensitivity | EmailSensitivity | email_sensitivity | Email Sensitivity | Sensitivity setting of the message: **0**: None; **1**: Personal; **2**: Private; **3**: CompanyConfidential. |
| Email set | EmailSet | Email_set | Email set | Group ID for all messages in the same email set. |
| EmailThread |  | Email_thread |  | Position of the message within the email set; consists all node IDs from the root to the current message, period-separated. |
| Extracted content type |  | Extracted_content_type | Extracted content type | Extracted content type, in the form of mime type; for example, image/jpeg. |
| ExtractedTextLength |  | Extracted_text_length |  | Number of characters in the extracted text. |
| Family relevance score Case issue 1 |  | Family_relevance_score_case_issue_1 |  | Family relevance score Case issue 1 from Relevance. |
| FamilyDuplicateSet |  | Family_duplicate_set |  | Numeric identifier for families that are exact duplicates of each other (same content and all the same attachments). |
| Family ID | FamilyId | Family_ID | Family ID | Family Id groups together all items; for email, this includes the message and all attachments; for documents, this includes the document and any embedded items. |
| Family Size |  | Family_size | Family Size | Number of documents in the family. |
| File relevance score Case issue 1 |  | File_relevance_score_case_issue_1 |  | File relevance score Case issue 1 from Relevance. |
| File class | FileClass | File_class | File class | For content from SharePoint and OneDrive: **Document**; for content from Exchange: **Email or **Attachment**. |
| File ID | FileId | File_ID | File ID | Document identifier unique within the case.|
| File system date created |  | File_system_date_created | File system date created | Created date from file system (only applies to non-Office 365 data). |
| File system date modified |  | File_system_date_modified | File system date modified | Modified date from file system (only applies to non-Office 365 data). |
| File Type | FileType |  | File Type | File type of the item, based on file extension. |
| Has attachment | HasAttachment | Email_has_attachment | Has attachment | Indicates whether or not the message has attachments. |
| Has attorney | HasAttorney |  | Has attorney | True when at least one of the participants is found in the attorney list; otherwise, the value is False. |
| HasText |  | Has_text |  | Indicates whether or not the item has text, possible values are True and False. |
| Immutable ID | ImmutableId | Immutable_ID | Immutable ID | Immutable Id as stored in Office 365. |
| Inclusive type | InclusiveType | Inclusive_type | Inclusive type | Inclusive type calculated for analytics: **0** - not inclusive; **1** - inclusive; **2** - inclusive minus; **3** - inclusive copy. |
| In Reply To Id |  | In_reply_to_ID | In Reply To Id | In reply to Id from the message. |
| Is Representative | IsRepresentative | Is_representative | Is Representative | One document in every set of exact duplicates is marked as representative. |
| Item class | ItemClass | Item_class | Item class | Item class supplied by exchange server; for example, **IPM.Note** |
| Last modified date | LastModifiedDate | Doc_date_modified | Last modified date | Last modified date from document metadata. |
| Load ID | LoadId | Load_ID | Load ID | Load Id, in which the item was loaded into a review set. |
| Location | Location | Location | Location | String that indicates the type of location that documents were sourced from;<br />Non-O365 -> Imported Data<br />Teams -> Teams<br />EXO -> Exchange<br />SPO -> SharePoint<br />OneDrive for Business -> OneDrive |
| Location name | LocationName | Location_name | Location name | String that identifies the source of the item.  For exchange, this will be the SMTP address of the mailbox.  For SharePoint and OneDrive, the URL to the site collection. |
| Marked as representative | MarkAsRepresentative |  | Marked as representative | One document from each set of exact duplicates is marked as representatives. |
| Marked as pre tagged Case issue 1 |  | Marked_as_pre_tagged_Case_issue_1 |  | Marked as pre-tagged Case issue 1 from Relevance. |
| Marked as seed Case issue 1 |  | Marked_as_seed_Case_issue_1 |  | Marked as seed Case issue 1 from Relevance. |
| Meeting End Date | MeetingEndDate | Meeting_end_date | Meeting End Date | Meeting end date for meetings. |
| Meeting Start Date | MeetingStartDate | Meeting_start_date | Meeting Start Date | Meeting start date for meetings. |
| Message kind | MessageKind | Message_kind | Message kind | The type of message to search for.<br />Possible values: <br />contacts <br />docs <br />email <br />externaldata <br />faxes <br />im <br />journals <br />meetings <br />microsoftteams (returns items from chats, meetings, and calls in Microsoft Teams) <br />notes <br />posts <br />rssfeeds <br />tasks <br />voicemail |
| Native Extension | NativeExtension | Native_extension | Native Extension | Native extension of the item. |
| Native file name | NativeFileName | Native_file_name | Native file name | Native file name of the item. |
| NativeMD5 |  | Native_MD5 |  | MD5 hash of file stream. |
| ND/ET Sort: Excluding attachments | NdEtSortExclAttach | ND_ET_sort_excl_attach | ND/ET Sort: Excluding attachments | Concatenation of email set and ND set for efficient sorting at review time; D is added as a prefix to ND sets and E is added to email sets. |
| ND/ET Sort: including attachments | NdEtSortInclAttach | ND_ET_sort_incl_attach | ND/ET Sort: including attachments | Concatenation of email set and ND set for efficient sorting at review time; D is added as a prefix to ND sets and E is added to email sets. Each email within an email set is followed by its appropriate attachments. |
| Normalized relevance score Case issue 1 |  | Normalized_relevance_score_case_issue_1 |  | Normalized relevance score Case issue 1 from Relevance. |
| O365 authors |  | O365_authors | O365 authors | Author from SharePoint. |
| O365 created by |  | O365_created_by | O365 created by | Created by from SharePoint. |
| O365 date created |  | O365_date_created | O365 date created | Created date from SharePoint. |
| O365 date modified |  | O365_date_modified | O365 date modified | Last modified date from SharePoint. |
| O365 modified by |  | O365_modified_by | O365 modified by | Modified by from SharePoint. |
| Parent ID | ParentId | Parent_ID | Parent ID | Id of the item's parent. |
| ParentNode |  | Parent_node |  | The closest preceding email message in the email thread. |
| Parent path | ParentPath | Parent_path | Parent path | Compound path of the direct parent of the item. |
| Participant domains | ParticipantDomains | Email_participant_domains | Participant domains | List of all domains of participants of a message. |
| Participants | Participants | Email_participants | Participants | List of all participants of a message; for example, Sender, To, Cc, Bcc. |
| Pivot ID | PivotId | Pivot_ID | Pivot ID | The ID of a pivot. |
| Potentially privileged | PotentiallyPrivileged | Potentially_privileged | Potentially privileged | True if attorney-client privilege detection model considers the document potentially privileged |
| Processing status | ProcessingStatus | Error_code | Processing status | Processing status after the item was added to a review set. |
| Read percent Case issue 1 |  | Read_percent_Case_issue_1 |  | Read percent Case issue 1 from Relevance. |
| Read percentile | ReadPercentile |  | Read percentile | Read percentile for the document based on Relevance. |
| Recipient Count |  | Recipient_count | Recipient Count | Number of recipients in the message. |
| Recipient domains | RecipientDomains | Email_recipient_domains | Recipient domains | List of all domains of recipients of a message. |
| Recipients | Recipients | Email_recipients | Recipients | List of all recipients of a message (To, Cc, Bcc). |
| Relevance load group Case issue 1 |  | Relevance_load_group_case_issue_1 |  | Relevance load group Case issue 1 from Relevance. |
| Relevance status description Case issue 1 |  | Relevance_status_description_Case_issue_1 |  | Relevance status description Case issue 1 from Relevance. |
| Relevance tag Case issue 1 |  | Relevance_tag_case_issue_1 |  | Relevance tag Case issue 1 from Relevance. |
| Relevance Comment |  | Relevance_comment | Relevance Comment | Comment field from Relevance. |
| Relevance score | RelevanceScore |  | Relevance score | Relevance score of a document based on Relevance. |
| Relevance tag | RelevanceTag |  | Relevance tag | Relevance score of a document based on Relevance. |
| Representative ID | RepresentativeId |  | Representative ID | Numeric identifier of each set of exact duplicates. |
| Sender | Sender | Email_sender | Sender | Sender (From) field for message types.  Format is **DisplayName \<SmtpAddress>**. |
| Sender/Author | SenderAuthor |  | Sender/Author | Calculated field comprised of the sender or author of the item. |
| Sender domain | SenderDomain | Email_sender_domain | Sender domain | Domain of the sender. |
| Sent | Sent | Email_date_sent | Sent | Sent date of the message. |
| Set Order: Inclusive First | SetOrderInclusivesFirst | Set_order_inclusives_first | Set Order: Inclusive First. | Sorting field - email and attachments: counter-chronological, documents: pivot first then by similarity score, descending. |
| SimilarityPercent |  | Similarity_percent |  | Indicates how similar a document is to the pivot of the near duplicate set. |
| Native file size | Size | Native_size | Native file size | Number of bytes of the native item. |
| Subject | Subject | Email_subject | Subject | Subject of the message. |
| Subject/Title | SubjectTitle |  | Subject/Title | Calculated field comprised of the subject or title of the item. |
| Tagged by Case issue 1 |  | Tagged_by_Case_issue_1 |  | User who tagged this document for Case issue 1 in Relevance. |
| Tags | Tags | Tags | Tags | Tags applied in a review set. |
| Themes list | ThemesList | Themes_list | Themes list | Themes list as calculated for analytics. |
| Title | Title | Doc_title | Title | Title from the document metadata. |
| To | To | Email_to | To | To field for message types.  Format is **DisplayName\<SmtpAddress>** |
| Unique in email set | UniqueInEmailSet |  | Unique in email set | False if there's a duplicate of the attachment in its email set. |
| Was Remediated | WasRemediated | Was_Remediated | Was Remediated | True if the item was remediated, otherwise False. |
| Word count | WordCount | Word_count | Word count | Number of words in the item. |
||||||

  > [!NOTE]
  > For more information about searchable properties when searching Office 365 content locations when you're collecting data for an Advanced eDiscovery case, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md).