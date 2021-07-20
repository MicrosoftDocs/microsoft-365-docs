---
title: "Manage jobs in Advanced eDiscovery"
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
description: "Advanced eDiscovery jobs help you track the status of long-running processes related to performing various Advanced eDiscovery tasks."
---

# Manage jobs in Advanced eDiscovery

Here's a list of the jobs (which are typically long-running processes) that are tracked on the **Jobs** tab of a case in Advanced eDiscovery. These jobs are triggered by user actions when using and managing cases.

| Job type           | Description     |
| :----------------- | :----------     |
|Adding data to a review set | A user adds a collection to a review set. This job consists of two sub jobs: </br>• **Export** - A list of items in the collection is generated. </br>• **Ingestion & Indexing** - The items in the collection that match the search query are copied to an Azure Storage location (in a process called *ingestion*) and then those items in the Azure Storage location are reindexed. This new index is used when querying and analyzing items in the data set. </br></br>For more information, see [Add search results to a review set](add-data-to-review-set.md). |
|Adding data to another review set | A user adds documents from one review set to a different review set in the same case. For more information, see [Add data to a review set from another review set](add-data-to-review-set-from-another-review-set.md).|
|Adding non-Microsoft 365 data to a review set | A user uploads non-Microsoft 365 data to a review set. The data is also indexed during this process. For example, files from an on-premises file server or a client computer are uploaded to a review set. For more information, see [Load non-Microsoft 365 data into a review set](load-non-office-365-data-into-a-review-set.md).| 
|Adding remediated data to a review set | Data with processing errors is remediated and loaded back into a review set. For more information, see:</br>• [Error remediation when processing data](error-remediation-when-processing-data-in-advanced-ediscovery.md)</br>• [Single item error remediation](single-item-error-remediation.md)| 
|Comparing load sets | A user looks at the differences between different load sets in a review set. A load set is an instance of adding data to a review set. For example, if you add the results of two different searches to the same review set, each would represent a load set. |
|Conversation reconstruction|When a user adds the results of a search to a conversation review set, instant message conversations (also called *threaded conversations*) in services like Microsoft Teams are reconstructed in a PDF file. This job is also triggered when a user clicks **Action > Create conversation PDFs** in a review set. For more information, see [Review conversations in Advanced eDiscovery](conversation-review-sets.md).
|Converting redacted documents to PDF|After a user annotates a document in a review set and redacts a portion of it, they can choose to convert the redacted document to a PDF file. This ensures that the redacted portion will not be visible if the document is exported for presentation. For more information, see [View documents in a review set](annotating-and-redacting-documents.md). |
|Estimating search results | After a user creates and runs or reruns a draft collection, the search tool searches the index for items that match the search query and prepares an estimate that includes the number and total size of all items by the search, and the number of data sources searched.  For more information, see [Collect data for a case](collecting-data-for-ediscovery.md). | 
|Preparing data for export | A user exports documents from a review set. When the export process is complete, they can download the exported data to a local computer. For more information, see [Export case data](exporting-data-ediscover20.md). | 
|Preparing for error resolution |When a user selects a file and creates a new error remediation in the Error view on the **Processing** tab of a case, the first step in the process is to upload the file that has the processing error to an Azure Storage location in the Microsoft cloud. This job tracks the progress of the upload process. For more information about the error remediation workflow, see [Error remediation when processing data](error-remediation-when-processing-data-in-advanced-ediscovery.md). | 
|Preparing search preview | After a user creates and runs a new draft collection (or reruns an existing draft collection), the search tool prepares a sample subset of items (that match the search query) that can be previewed. Previewing search results help you determine the effectiveness of the search.  For more information, see [Collect data for a case](collecting-data-for-ediscovery.md#view-search-results-and-statistics). | 
|Re-indexing custodian data | When you add a custodian to a case, all partially indexed items in the custodian's selected data sources are reindexed by a process called *Advanced indexing*. This job is also triggered when you click **Update index** on the **Processing** tab of a case, and when you update the index for a specific custodian on the custodian properties flyout page. For more information, see [Advanced indexing of custodian data](indexing-custodian-data.md).
|Running analytics | A user analyzes data in a review set by running Advanced eDiscovery analytics tools such as near duplicate detection, email threading analysis, and themes analysis. For more information, see [Analyze data in a review set](analyzing-data-in-review-set.md). | 
|Tagging documents | This job is triggered when a user clicks **Start tagging job** in the **Tagging panel** when reviewing documents in a review set. A user can start this job after tagging documents in a review set and then bulk-selecting them in the view document panel. For more information, see [Tag documents in a review set](tagging-documents.md). | 
|||

## Job status

The following table describes the different status states for jobs.

| Status           | Description     |
| :----------------- | :----------     |
| Submitted | A new job was created.  The date and time that the job was submitted is displayed in the **Created** column on the **Jobs** tab. |
| Submission failed | The job submission failed.  You should attempt to rerun the action that triggered the job. |
| In progress | The job is in progress, you can monitor the progress of the job in the **Jobs** tab. |
| Successful | The job was successfully completed. The date and time that the job completed is displayed in the **Completed** column on the **Jobs** tab. |
| Partially successful | The job was successful. This status is typically returned when the job didn't find any partially indexed data (also called *unindexed data*) in some of the custodian data sources.  |
| Failed | The job failed.  You should attempt to rerun the action that triggered the job. If the job fails a second time, we recommend that you contact Microsoft Support and provide the support information from the job. |
|||
