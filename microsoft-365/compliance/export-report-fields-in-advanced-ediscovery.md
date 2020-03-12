---
title: "Export report fields in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
titleSuffix: Office 365
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: 840a5aff-ecd0-4e56-ad22-fe99bc143687
description: "Describes all the fields that are included in the Export reports for Advanced eDiscovery."
---

# Export report fields in Advanced eDiscovery (classic)

> [!NOTE]
> Advanced eDiscovery requires an Office 365 E3 with the Advanced Compliance add-on or an E5 subscription for your organization. If you don't have that plan and want to try Advanced eDiscovery, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279). 
  
This topic describes the Advanced eDiscovery Export report fields for the Standard and All templates.
  
## Export report fields

The following table lists the fields for each export template.
  
|**Export field name**|**Group**|**Description**|**Available in Standard template**|**Available in All template**|
|:-----|:-----|:-----|:-----|:-----|
|Row_number  <br/> |General  <br/> |Row number.  <br/> |Yes  <br/> |Yes  <br/> |
|File_ID  <br/> |General  <br/> |File ID.  <br/> |Yes  <br/> |Yes  <br/> |
|File_class  <br/> |Processing  <br/> |File class.  <br/> |Yes  <br/> |Yes  <br/> |
|Family_ID  <br/> |Processing  <br/> |Numeric identifier that is used to group files (usually email instance and its attachments).  <br/> |Yes  <br/> |Yes  <br/> |
|For_review  <br/> |Processing  <br/> |Flag to indicate that the field will be included in export for review.  <br/> |Yes  <br/> |Yes  <br/> |
|Native_file_name  <br/> |Processing  <br/> |Native file name, without referencing folder and extension.  <br/> |Yes  <br/> |Yes  <br/> |
|Custodians  <br/> |General  <br/> |Custodian of the file.  <br/> |Yes  <br/> |Yes  <br/> |
|Set_ID  <br/> |Analyze  <br/> |"ND set" or "Email set" id.  <br/> |Yes  <br/> |Yes  <br/> |
|Inclusive_type  <br/> |Email  <br/> |Indicates if file is inclusive, according to the following values: 0 - not inclusive, 1 - Inclusive, 2 - Inclusive minus, 3 - Inclusive copy.  <br/> |Yes  <br/> |Yes  <br/> |
|Marked_as_pivot  <br/> |Near duplicates  <br/> |Indicates if the file is a pivot.  <br/> |Yes  <br/> |Yes  <br/> |
|Similarity_percent  <br/> |Near duplicates  <br/> |Percentage of similarity relative to the pivot.  <br/> |Yes  <br/> |Yes  <br/> |
|Duplicate_subset  <br/> |Near duplicates  <br/> |Unique identifier of the duplicate subset. Indicates whether the file has exact text duplicates.  <br/> |Yes  <br/> |Yes  <br/> |
|Date  <br/> |General  <br/> |Date of file (depends on file type - email: date sent; document: date modified).  <br/> |Yes  <br/> |Yes  <br/> |
|Dominant_theme  <br/> |Analyze  <br/> |Primary Theme of the file.  <br/> |Yes  <br/> |Yes  <br/> |
|Themes_list  <br/> |Themes  <br/> |List of Theme names.  <br/> |Yes  <br/> |Yes  <br/> |
|ND_set  <br/> |EquiSet  <br/> |Unique numeric identifier of a Nearduplicate set.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_set  <br/> |Email  <br/> |Unique numeric identifier of an Email set.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_thread  <br/> |Email  <br/> |Describes the position of the email within the Email set Consists of all Node IDs from the root to the current email, separated by periods.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_subject  <br/> |Email  <br/> |Subject of the email.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_date_sent  <br/> |Email  <br/> |Date on which the email was sent.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_participants  <br/> |Email  <br/> |Email addresses of all participants in an email thread, including for missing links.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_participant_domains  <br/> |Email  <br/> |Domains of all participants in an email thread, including for missing link.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_sender  <br/> |Email  <br/> |Email sender name and/or address.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_sender_domain  <br/> |Email  <br/> |Email sender's domain.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_to  <br/> |Email  <br/> |To recipient of the email.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_cc  <br/> |Email  <br/> |CC recipient of the email.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_bcc  <br/> |Email  <br/> |BCC recipient of the email.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_recipient_domains  <br/> |Email  <br/> |Email recipients domains (To, CC, and BCC).  <br/> |Yes  <br/> |Yes  <br/> |
|Email_date_received  <br/> |Email  <br/> |Date on which email was received.  <br/> |Yes  <br/> |Yes  <br/> |
|Email_action  <br/> |Email  <br/> |Values: according to Email Subject: "Forward" (for "FW:"), "Reply" (for "RE:") or "Other" (other Subject text).  <br/> |Yes  <br/> |Yes  <br/> |
|Meeting_Start_Date/Time  <br/> ||The date and time at which a meeting item started.  <br/> |Yes  <br/> |Yes  <br/> |
|Meeting_End_Date/Time  <br/> ||The date and time at which a meeting item ended.  <br/> |Yes  <br/> |Yes  <br/> |
|File_relevance_score  <br/> |Relevance  <br/> |Relevance score (0-100). Per issue.  <br/> |Yes  <br/> |Yes  <br/> |
|Family_relevance_score  <br/> |Relevance  <br/> |Max family Relevance score (0-100). Per issue.  <br/> |Yes  <br/> |Yes  <br/> |
|Relevance_tag  <br/> |Relevance  <br/> |Tagging of the file, if the file was manually tagged in Relevance. Per issue.  <br/> |Yes  <br/> |Yes  <br/> |
|Relevance_load_group  <br/> |Relevance  <br/> |Relevance Load group, of the specified file, with a field per issue.  <br/> |Yes  <br/> |Yes  <br/> |
|Normalized_relevance_score  <br/> |Relevance  <br/> |Normalized Relevance score (0-100), which is comparable between issues and loads.  <br/> |Yes  <br/> |Yes  <br/> |
|Marked_as_seed  <br/> |Relevance  <br/> |Tagging of the file, if it was set to be as a seed file in Relevance Per issue/category.  <br/> |Yes  <br/> |Yes  <br/> |
|Marked_as_pre-tagged  <br/> |Relevance  <br/> |Tagging of the file, if it was set as pre-tagged in Relevance Per issue/category.  <br/> |Yes  <br/> |Yes  <br/> |
|Relevance_status_description  <br/> |Relevance  <br/> |Description of the relevance status.  <br/> |Yes  <br/> |Yes  <br/> |
|Comment  <br/> |General  <br/> |Comment entered by the user.  <br/> |Yes  <br/> |Yes  <br/> |
|Export_input_path  <br/> |Processing  <br/> |Export input path.  <br/> |Yes  <br/> |Yes  <br/> |
|Pivot_ID  <br/> |Near Duplicates  <br/> |Pivot ID of the file.  <br/> |Yes  <br/> |Yes  <br/> |
|Family_size  <br/> |Processing  <br/> |Number of files in a family.  <br/> |Yes  <br/> |Yes  <br/> |
|Native_type  <br/> |Processing  <br/> |Native file type. For example, spreadsheet or presentation.  <br/> |Yes  <br/> |Yes  <br/> |
|Native_MD5  <br/> |Processing  <br/> |MD5 hash value of the native file.  <br/> |Yes  <br/> |Yes  <br/> |
|Native_size  <br/> |Processing  <br/> |Native file size.  <br/> |Yes  <br/> |Yes  <br/> |
|Native_extension  <br/> |Processing  <br/> |Native file extension.  <br/> |Yes  <br/> |Yes  <br/> |
|Doc_date_modified  <br/> |Document Properties  <br/> |Date native file was modified, taken from the file's metadata.  <br/> |Yes  <br/> |Yes  <br/> |
|Doc_date_created  <br/> |Document Properties  <br/> |Date native file was created, taken from the file's metadata.  <br/> |Yes  <br/> |Yes  <br/> |
|Doc_modified_by  <br/> |Document Properties  <br/> |User who modified native file, taken from the file's metadata.  <br/> |Yes  <br/> |Yes  <br/> |
|O365_date_modified  <br/> |Document Properties  <br/> |Date native file was modified, taken from the either SharePoint or Exchange fields.  <br/> |Yes  <br/> |Yes  <br/> |
|O365_date_created  <br/> |Document Properties  <br/> |Date native file was created, taken from either SharePoint or Exchange fields.  <br/> |Yes  <br/> |Yes  <br/> |
|O365_modified_by  <br/> |Document Properties  <br/> |User who last modified native file, taken from either SharePoint or Exchange fields.  <br/> |Yes  <br/> |Yes  <br/> |
|Compound_path  <br/> |Processing  <br/> |Native file path including its compound source.  <br/> |Yes  <br/> |Yes  <br/> |
|Input_path  <br/> |Processing  <br/> |Path of the input file.  <br/> |Yes  <br/> |Yes  <br/> |
|Input_date_modified  <br/> |Processing  <br/> |Date Input file was last modified.  <br/> |Yes  <br/> |Yes  <br/> |
|ND_ET_sort_excl_attach  <br/> |Analyze  <br/> |Concatenation of Email set and ND set for review. 'D' is added as a prefix to ND sets, and 'E' is added to Email ssets.  <br/> |Yes  <br/> |Yes  <br/> |
|ND_ET_sort_incl_attach  <br/> |Analyze  <br/> |Concatenation of Email set and ND set for review 'D' is added as a prefix to ND sets, and 'E' is added to Email sets. In addition, each email within an Email_set is followed by its appropriate attachments.  <br/> |Yes  <br/> |Yes  <br/> |
|Deduped_custodians  <br/> |General  <br/> |Custodians of de-duped files  <br/> |Yes  <br/> |Yes  <br/> |
|Deduped_file_IDs  <br/> |General  <br/> |IDs of de-duped files  <br/> |Yes  <br/> |Yes  <br/> |
|Deduped_paths  <br/> |General  <br/> |Paths of de-duped files  <br/> |Yes  <br/> |Yes  <br/> |
|File_key  <br/> |General  <br/> |Internal identifier for future use.  <br/> |Yes  <br/> |Yes  <br/> |
|Export_native_path  <br/> |Processing  <br/> |Path of the native file in the export package.  <br/> |Yes  <br/> |Yes  <br/> |
|Extracted_text_path  <br/> |Processing  <br/> |Path of the extracted file.  <br/> |Yes  <br/> |Yes  <br/> |
|Process_batch  <br/> |Processing  <br/> |Batch identifier for Import batch.  <br/> |Yes  <br/> |Yes  <br/> |
|Process_status_ID  <br/> |Processing  <br/> |Identifier representing Process stage status.  <br/> |Yes  <br/> |Yes  <br/> |
|Process_status_description  <br/> |Processing  <br/> |Process stage status description: successful or error description.  <br/> |Yes  <br/> |Yes  <br/> |
|Export_status_ID  <br/> |Processing  <br/> |ID of the export status.  <br/> |Yes  <br/> |Yes  <br/> |
|Export_status_description  <br/> |Processing  <br/> |Description of the export status; successful or error description.  <br/> |Yes  <br/> |Yes  <br/> |
|Read_percent  <br/> |Relevance  <br/> |Read % (0-100). Per issue.  <br/> |Yes  <br/> |Yes  <br/> |
|Doc_author  <br/> |Document properties  <br/> |Document properties: author.  <br/> |No  <br/> |Yes  <br/> |
|Doc_comments  <br/> |Document properties  <br/> |Document properties: comments.  <br/> |No  <br/> |Yes  <br/> |
|Doc_keywords  <br/> |Document properties  <br/> |Document properties: keywords.  <br/> |No  <br/> |Yes  <br/> |
|Doc_last_saved_by  <br/> |Document properties  <br/> |Document properties: last saved by.  <br/> |No  <br/> |Yes  <br/> |
|Doc_revision  <br/> |Document properties  <br/> |Document properties: revision number.  <br/> |No  <br/> |Yes  <br/> |
|Doc_subject  <br/> |Document properties  <br/> |Document properties: subject.  <br/> |No  <br/> |Yes  <br/> |
|Doc_template  <br/> |Document properties  <br/> |Document properties: template.  <br/> |No  <br/> |Yes  <br/> |
|Doc_title  <br/> |Document properties  <br/> |Document properties: title.  <br/> |No  <br/> |Yes  <br/> |
|Email_has_attachment  <br/> |Email  <br/> |Indicates if the email has one or more attachments.  <br/> |No  <br/> |Yes  <br/> |
|Email_importance  <br/> |Email  <br/> |Email importance property.  <br/> |No  <br/> |Yes  <br/> |
|Email_level  <br/> |Email  <br/> |Indicates email's level within the email thread. For attachments, the value of the attached email.  <br/> |No  <br/> |Yes  <br/> |
|Email_recipients  <br/> |Email  <br/> |Email recipients name and/or addresses (To, CC, and BCC).  <br/> |No  <br/> |Yes  <br/> |
|Email_security  <br/> |Email  <br/> |Email security property.  <br/> |No  <br/> |Yes  <br/> |
|Email_sensitivity  <br/> |Email  <br/> |Email sensitivity property.  <br/> |No  <br/> |Yes  <br/> |
|Export_batch  <br/> |Processing  <br/> |File's last Export batch name.  <br/> |No  <br/> |Yes  <br/> |
|Export_session  <br/> |Processing  <br/> |File's last Export session Id including date.  <br/> |No  <br/> |Yes  <br/> |
|Extracted_text_length  <br/> |Processing  <br/> |Character length of the Extracted text file.  <br/> |No  <br/> |Yes  <br/> |
|Family_duplicate_set  <br/> |Processing  <br/> |Numeric Identifier for families that are exact text duplicates of each other (respectively - all members of the families are exact duplicates).  <br/> |No  <br/> |Yes  <br/> |
|Has_Text  <br/> |Processing  <br/> |Indicates if there is a text in the file: 0 - no ; 1- yes.  <br/> |No  <br/> |Yes  <br/> |
|Input_file_ID  <br/> |Processing  <br/> |ID of the Input file from which file was extracted from.  <br/> |No  <br/> |Yes  <br/> |
|Native_SHA_256  <br/> |Processing  <br/> |SHA-256 hash value of the native file.  <br/> |No  <br/> |Yes  <br/> |
|O365_authors  <br/> |Document properties  <br/> |Users who modified native file, taken from either SharePoint or Exchange fields.  <br/> |No  <br/> |Yes  <br/> |
|O365_created_by  <br/> |Document properties  <br/> |User who created native file, taken from either SharePoint or Exchange fields.  <br/> |No  <br/> |Yes  <br/> |
|Parent_node  <br/> |Email  <br/> |Relates a node in an email thread to the closest parent node that is not a missing link.  <br/> |No  <br/> |Yes  <br/> |
|Set_order_inclusives_first  <br/> |Email  <br/> |Emails and attachments: counter chronological order (Inclusives first). Documents: pivots first and the rest by similarity score, descending.  <br/> |No  <br/> |Yes  <br/> |
|Tagged_By  <br/> |Relevance  <br/> |User who tagged the file in Relevance for the specific issue.  <br/> |No  <br/> |Yes  <br/> |
|Word_count  <br/> |Analyze  <br/> |Number of words in the document.  <br/> |No  <br/> |Yes  <br/> |
|
   
## Related Topics

[Advanced eDiscovery (classic)](office-365-advanced-ediscovery.md)
  
[Exporting case data with Advanced eDiscovery](export-case-data-in-advanced-ediscovery.md)
  
[Exporting results](export-results-in-advanced-ediscovery.md)
  
[Viewing batch history and exporting past results](view-batch-history-and-export-past-results.md)
  

