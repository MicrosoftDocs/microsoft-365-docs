---
title: "Create and manage Advanced eDiscovery cases in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- m365solution-aed
- m365initiative-compliance
- m365solution-scenario
search.appverid: 
- MOE150
- MET150
description: "This article describes how to create and manage Advanced eDiscovery cases. The first step is to create a case and start using Advanced eDiscovery features and functionality."
---

# Create and manage an Advanced eDiscovery case

After setting up Advanced eDiscovery and [assigning permissions to eDiscovery managers](get-started-with-advanced-ediscovery.md#step-2-assign-ediscovery-permissions) in your organization that will manage cases, the next step is to create and manage a case.

This article also provides a high-level overview of using cases to manage the Advanced eDiscovery workflow for a legal case or other types of investigations.

## Create a case

Complete the following steps to create a case and add members. The user who creates the case is automatically added as a member. Members of the case can access the case in the Microsoft 365 compliance center and perform Advanced eDiscovery tasks.

1. Go to <https://compliance.microsoft.com> and sign in using the credentials for user account that has been assigned eDiscovery permissions. Members of the Organization Management role group can also create Advanced eDiscovery cases.

2. In the left navigation pane of the Microsoft 365 compliance center, click **Show all**, and then click **eDiscovery > Advanced**.

3. On the **Advanced eDiscovery** page, click the **Cases** tab, and then click **Create a case**.

4. On the **New eDiscovery case** flyout page, give the case a name (required), and then type an optional case number and description. The case name must be unique in your organization.

5. Click **Save** to create the case.

   The new case is created and the **Settings** tab in the new case is displayed.

6. In the **Access & permissions** tile on the **Settings** tab, click **Select**.

7. On the **Manage this case** flyout page, under **Manage members**, click **Add** to add members to the case.

8. In the list of people, select the check box next to the names of the people that you want to add to the case. As previously explained, be sure that the people you add to the case have been assigned the appropriate eDiscovery permissions.

9. After you've selected the people to add as members of the case, click **Add**.

10. In the **Manage this case** flyout page, click **Save** to save the new list of case members.

11. Click the **Home** tab to go to the case home page.

## Manage the workflow

To get you started using Advanced eDiscovery, here's a basic workflow that aligns with [common eDiscovery practices](advanced-ediscovery-edrm.md). In each of these steps, we'll also highlight some extended Advanced eDiscovery functionality that you can explore.

![Advanced eDiscovery workflow](../media/AeDWorkflow.png)

1. **[Add custodians](add-custodians-to-case.md) and [non-custodial data sources](non-custodial-data-sources.md) to the case**. The first step after creating a case is to add custodians. A *custodian* is a person having administrative control of a document or electronic file that may be relevant to the case. Additionally, you can add data sources that aren't associated with a specific user but may be relevant to the case.

   Here are some things that happen (or that you can do) when you add custodians to a case:

   - Data in the custodian's Exchange mailbox, OneDrive account, and any Microsoft Teams or Yammer groups that the custodian is a member of can be "marked" as custodial data in the case.
  
   - Custodian data is reindexed (by a process called *Advanced indexing*). This helps optimize searching for it in the next step.
  
   - You can place a hold on custodian data. This preserves data that may be relevant to the case during the investigation.
  
   - You can associate other data sources with a custodian (for example, you can associate a SharePoint site or Microsoft 365 Group with a custodian) so this data can be reindexed, placed on hold, and searched, just like the data in the custodian's mailbox or OneDrive account.

   - You can use the [communications workflow](managing-custodian-communications.md) in Advanced eDiscovery to send a legal hold notification to custodians.

2. **[Collect relevant content from data sources](create-draft-collection.md)**. After you add custodians and non-custodial data sources to a case, use the built-in collections tool to search these data sources for content that may be relevant to the case. You use keywords, properties, and conditions to [build search queries](building-search-queries.md) that return search results with the data that's most likely relevant to the case. You can also:

   - View [collection statistics](collection-statistics-reports.md) that may help you refine a collection to narrow the results.

   - Preview a sample of the collection to quickly verify whether the relevant data is being found.

   - Revise a query and rerun the collection.

3. **[Commit collection to a review set](commit-draft-collection.md)**. Once you've configured and verified that a search returns the desired data, the next step is to add the search results to a review set. When you add data to a review set, items are copied from their original location to a secure Azure Storage location. The data is reindexed again to optimize it for thorough and fast searches when reviewing and analyzing items in the review set. Additionally, you can also [add non-Office 365 data into a review set](load-non-office-365-data-into-a-review-set.md).

   There's also a special kind of review set that you can add data to, called a *conversation review set*. These types of reviews sets provide conversation reconstruction capabilities to reconstruct, review, and export threaded conversations like those in Microsoft Teams. For more information, see [Review conversations in Advanced eDiscovery](conversation-review-sets.md).

4. **Review and analyze data in a review set**. Now that data is in a review set, you can use a wide-variety of tools and capabilities to view and analyze the case data with the goal of reducing the data set to what is most relevant to the case you're investigating. Here's a list of some tools and capabilities that you can use during this process.

   - [View documents](view-documents-in-review-set.md). This includes viewing the metadata for each document in a review set, and viewing the document in its native version or text version.

   - [Create queries and filters](review-set-search.md). You create search queries using various search criteria (including the ability to search all [file metadata properties](document-metadata-fields-in-advanced-ediscovery.md)) to further refine and cull the case data to what is most relevant to the case. You can also use review set filters to quickly apply other conditions to the results of a search query to further refine those results. 

   - [Create and use tags](tagging-documents.md). You can apply tags to documents in a review set to identify which are responsive (or non-responsive to the case) and then use those tags when creating search queries to include or exclude the tagged documents. You can also tagging to determine which documents to export.

   - [Annotate and redact documents](view-documents-in-review-set.md#annotate-view). You can use the annotation tool in a review to annotate documents and redact content in documents as work product. We generate a PDF version of an annotated or redacted document during review to reduce the risk of exporting the unredacted native version of the document.

   - [Analyze case data](analyzing-data-in-review-set.md). The analytics functionality in Advanced eDiscovery is powerful. After you run analytics on the data in review set, we perform analysis such as near duplicate detection, email threading, and themes that can help reduce the volume of documents that you have to review. We also generate an Analytics reports that summarize the result of running analytics. As previously explained, running analytics also runs [the attorney-client privilege detection model](attorney-privilege-detection.md#use-the-attorney-client-privilege-detection-model).

5. **Export and download case data**. A final step after collecting, reviewing, and analyzing case data is to export it out of Advanced eDiscovery for external review or for review by people outside of the investigation team. Exporting data is a two-step process. The first step is to [export](export-documents-from-review-set.md) data out of the review set and copy it to a different Azure Storage location (one provided by Microsoft or one managed by your organization). Then you use Azure Storage Explorer to [download](download-export-jobs.md) the data to a local computer. In addition to the exported data files, the contains of the export package also contains an export report, a summary report, and an error report.

## Advanced eDiscovery architecture

Here's an architecture diagram that shows the Advanced eDiscovery end-to-end workflow in a single-geo environment and in a multi-geo environment, and the end-to-end data flow that's aligned with the [Electronic Discovery Reference Model](overview-ediscovery-20.md#advanced-ediscovery-alignment-with-the-electronic-discovery-reference-model).

[![Model poster: Advanced eDiscovery Architecture in Microsoft 365](../media/solutions-architecture-center/ediscovery-poster-thumb.png)](../media/solutions-architecture-center/m365-advanced-ediscovery-architecture.png)

[View as an image](../media/solutions-architecture-center/m365-advanced-ediscovery-architecture.png)

[Download as a PDF file](https://download.microsoft.com/download/d/1/c/d1ce536d-9bcf-4d31-b75b-fcf0dc560665/m365-advanced-ediscovery-architecture.pdf)

[Download as a Visio file](https://download.microsoft.com/download/d/1/c/d1ce536d-9bcf-4d31-b75b-fcf0dc560665/m365-advanced-ediscovery-architecture.vsdx)
