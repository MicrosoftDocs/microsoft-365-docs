---
title: "Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
titleSuffix: Office 365
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: fd53438a-a760-45f6-9df4-861b50161ae4
description: "Learn how Advanced eDiscovery can help you analyze data, streamline document reviews, and make decisions for efficient eDiscovery."
---

# Advanced eDiscovery (classic)

> [!IMPORTANT]
> **Advanced eDiscovery (classic) will be permanently retired on December 31, 2020.**<br/>
> As we continue to invest in newer versions of Advanced eDiscovery, we're announcing the permanent retirement and removal of cases and case data from Advanced eDiscovery (classic).
> If you're still using Advanced eDiscovery (classic), also known as *Advanced eDiscovery v1.0*, please transition your usage to [Advanced eDiscovery v2.0](overview-ediscovery-20.md) (also known as the *Advanced eDiscovery solution in Microsoft 365*) as soon as possible.  In preparation for the removal of all cases and case data, you can archive case data by [exporting data from a case](https://docs.microsoft.com/microsoft-365/compliance/export-results-in-advanced-ediscovery?view=o365-worldwide).
> Advanced eDiscovery v2.0 contains similar functionality found in Advanced eDiscovery v1.0, but also offers many new features such as custodian management, communications management, and review sets. To learn more about the previous retirment phases of Advanced eDiscovery v1.0, see [Retirement of legacy eDiscovery tools](legacy-ediscovery-retirement.md#advanced-ediscovery-v10).

With Advanced eDiscovery, you can better understand your data and reduce your eDiscovery costs. Advanced eDiscovery helps you analyze unstructured data, perform more efficient document review, and make decisions to reduce data for eDiscovery. You can work with data stored in Exchange Online, SharePoint Online, OneDrive for Business, Skype for Business, Microsoft 365 Groups, and Microsoft Teams. You can perform an eDiscovery search in the security and compliance center to search for content in groups, individual mailboxes and sites, and then analyze the search results with Advanced eDiscovery. When you prepare search results for analysis in Advanced eDiscovery, Optical Character Recognition enables the extraction of text from images. This feature allows the powerful text analytic capabilities of Advanced eDiscovery to be applied to image files.
  
Advanced eDiscovery streamlines and speeds up the document review process by identifying redundant information with features like Near-duplicates detection and Email Thread analysis. The Relevance feature applies predictive coding technology to identify relevant documents. Advanced eDiscovery learns from your tagging decisions on sample documents and applies statistical and self-learning techniques to calculate the relevance of each document in the data set. This enables you to focus on key documents, make quick yet informed decisions on case strategy, cull data, and prioritize review.
  
 **Why advanced eDiscovery?** Advanced eDiscovery builds on the existing set of eDiscovery capabilities in Office 365. For example, you can use the Search feature in the Security &amp; Compliance Center to perform an initial search of all the content sources in your organization to identify and collect the data that may be relevant to a specific legal case. Then you can perform analysis on that data by applying the text analytics, machine learning, and the Relevance/predictive coding capabilities of Advanced eDiscovery. This can help your organization quickly process thousands of email messages, documents, and other kinds of data to find those items that are most likely relevant to a specific 
 
> [!NOTE]
> Advanced eDiscovery requires an Office 365 E3 with the Advanced Compliance add-on or an E5 subscription for your organization. If you don't have that plan and want to try Advanced eDiscovery, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279). case. The reduced data set can then be exported out of Office 365 for further review. 
  
## Get started

The quickest way to get started with Advanced eDiscovery is to create a case and prepare search results in Security & Compliance Center, load those results in Advanced eDiscovery, and then run Express analysis to analyze that case data and then export the results for external review.
  
- [Get a quick overview](quick-setup-for-advanced-ediscovery.md) of the Advanced eDiscovery workflow 
    
- [Set up users and cases](set-up-users-and-cases-in-advanced-ediscovery.md) for Advanced eDiscovery by creating a case, assigning eDiscovery permissions, and adding case members, all by using the Security & Compliance Center 
    
- [Prepare and load search data](prepare-data-for-advanced-ediscovery.md) in to the case in Advanced eDiscovery 
    
- [Load non-Office 365 data](import-non-office-365-data-into-advanced-ediscovery.md) in to a case to analyze it in Advanced eDiscovery 
    
- [Use Express analysis](use-express-analysis-in-advanced-ediscovery.md) to quickly analyze the data in a case and then easily export the results 
    
## Analyze data

After search data is loaded into the case in Advanced eDiscovery, you'll use the Analyze module to start analyzing it. The first part of the analysis process consists of organizing files into groups of unique files, duplicates, and near-duplicates (also know as document similarity). Then you organize the data again into hierarchically structured groups of email threads and themes and, optionally, set ignore text filters to exclude certain text from analysis. Then you run the analysis and view the results.
  
- [Learn about document similarity](understand-document-similarity-in-advanced-ediscovery.md) to prepare you for analyzing data in Advanced eDiscovery 
    
- [Set up the options](set-analyze-options-in-advanced-ediscovery.md) for near-duplicates, themes, and email threading and then run the Analyze module 
    
- [Set up Ignore Text filters](set-ignore-text-in-advanced-ediscovery.md) to exclude text and text strings from being analyzed; these filters will also ignore text when you run Relevance analysis 
    
- [View the results](view-analyze-results-in-advanced-ediscovery.md) of the analysis process 
    
- [Configure advanced settings](set-analyze-advanced-settings-in-advanced-ediscovery.md) for the analysis process 
    
## Set up Relevance training

Predictive coding (called Relevance) in Advanced eDiscovery lets you train the system on what you're looking for by letting you to make decisions (about whether something is relevant or not) on a small set of documents.
  
- [Learn about setting up Relevance training](manage-relevance-setup-in-advanced-ediscovery.md) , tagging files that are relevant to a case, and defining case issues 
    
- [Define case issues](define-issues-and-assign-users.md) and assign each issue to a user who will train the files 
    
- [Add imported files to current or new load](set-up-loads-to-add-imported-files.md) that will be added to the Relevance training. A load is a new batch of files that are added to a case and then used for Relevance training 
    
- [Define highlighted keywords](define-highlighted-keywords-and-advanced-options.md) that can be added to the Relevance training. This helps you better identify files that are relevant to a case 
    
## Run the Relevance module

After set up training, you're ready to run the Relevance module and assess the effectiveness of the training settings. This results in a relevance ranking that helps you decide if you need to perform additional training or if you're ready to start tagging files as relevant to your case.
  
- [Learn about the Relevance process](use-relevance-in-advanced-ediscovery.md) and the iterative process of assessment, tagging, tracking, and retraining based on sample set of files 
    
- [Learn about assessment](assessment-in-relevance-in-advanced-ediscovery.md) , where an expert familiar with the case reviews a set of case files and determines the effectiveness of the Relevance training 
    
- [Assess case files](tagging-and-assessment-in-advanced-ediscovery.md) to calculate the effectiveness (called  *richness) of training settings, and then tag files as relevant or not relevant to your case. This helps you determine if the current training is sufficient or if you should adjust the training settings. 
    
- [Perform the relevance training](tagging-and-relevance-training-in-advanced-ediscovery.md) after assessment is complete, and then once again tag files as relevant or not relevant to the issues you've defined for the case 
    
- [Track the Relevance analysis](track-relevance-analysis-in-advanced-ediscovery.md) process to determine if Relevance training has achieved your assessment target (known as a  *stable training status) or whether more training is needed; you can also view the Relevance results for each case issue 
    
- [Make decisions based on Relevance analysis](decision-based-on-the-results-in-advanced-ediscovery.md) to determine the size of the resulting set of case files that can be exported for review 
    
- [Test the quality of the Relevance analysis](test-relevance-analysis-in-advanced-ediscovery.md) to validate the culling decisions made during the Relevance process 
    
## Export results

The final step in analyzing case data in Advanced eDiscovery is to export results of the analysis for external review.
  
- [Learn about exporting case data](export-case-data-in-advanced-ediscovery.md)
    
- [Export case data](export-results-in-advanced-ediscovery.md)
    
- [View batch history and export past results](view-batch-history-and-export-past-results.md)
    
- [Export report fields](export-report-fields-in-advanced-ediscovery.md)
    
## Other Advanced eDiscovery tools

Advanced eDiscovery provides additional tools and capabilities beyond analyzing case data, relevance analysis, and exporting data.
  
- [Run Advanced eDiscovery reports](run-reports-in-advanced-ediscovery.md)
    
- [Define case and tenant settings](define-case-and-tenant-settings-in-advanced-ediscovery.md)
    
- [Advanced eDiscovery utilities](use-advanced-ediscovery-utilities.md)
