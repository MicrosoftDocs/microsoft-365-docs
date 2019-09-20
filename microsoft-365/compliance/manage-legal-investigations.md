---
title: "Manage legal investigations in Office 365"
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: 2e5fbe9f-ee4d-4178-8ff8-4356bc1b168e
description: "Use eDiscovery cases in the Security & Compliance Center in Office 365 to manage your organization's legal investigation. If you have an E5 subscription, you can further analyze case data by using the text analytics, machine learning, and predictive coding capabilities of Advanced eDiscovery."
---

# Manage legal investigations in Office 365

Organizations have many reasons to respond to a legal case involving certain executives or other employees in your organization. This might involve quickly finding and retaining for further investigation specific information in email, documents, instant messaging conversations, and other content locations used by people in their day-to-day work tasks. You can perform these and many other similar activities by using the eDiscovery case tools in the Security & Compliance Center.
  
[Manage legal investigations with eDiscovery cases](#manage-legal-investigations-with-ediscovery-cases)
  
[Analyze case data using Office 365 Advanced eDiscovery](#analyze-case-data-using-office-365-advanced-ediscovery)
  
**Want to know how Microsoft manages its eDiscovery investigations?** Here's a [technical white paper](https://go.microsoft.com/fwlink/?linkid=852161) you can download that explains how we use the same Office 365 search and investigation tools to manage our internal eDiscovery workflow.
   
## Manage legal investigations with eDiscovery cases

eDiscovery cases let you control who can create, access, and manage eDiscovery cases in your organization. Use cases to add members and control what types of actions they can perform, place a hold on content locations relevant to a legal case, and use the Content Search tool to search the locations on hold for content that might be responsive to your case. Then you can also export and download those results for further investigation by external reviewers. If your Office 365 organization has an E5 subscription, you can also prepare search results for analysis in Advanced eDiscovery.
  
- [Manage your eDiscovery workflow](ediscovery-cases.md) by creating and using eDiscovery cases for every legal investigation your organization has to undertake 
    
- [Assign eDiscovery permissions](assign-ediscovery-permissions.md) to control who can create and manage eDiscovery cases in your organization 
    
- [Set up compliance boundaries](tagging-and-assessment-in-advanced-ediscovery.md) to control the user content locations that eDiscovery managers can search 
    
- [Search for content](search-for-content.md) in your organization 
    
- [Prepare case content for Advanced eDiscovery](prepare-search-results-for-advanced-ediscovery.md) so you can perform analysis using Advanced eDiscovery's powerful analytic tools, such as optical character recognition, email threading, and predictive coding 
    
### Use scripts for advanced scenarios

Like the previous section that listed scripts for content search scenarios, we've also created some Security & Compliance Center PowerShell scripts to help you manage eDiscovery cases.
  
- [Create a eDiscovery hold report](create-a-report-on-holds-in-ediscovery-cases.md) that contains information about all holds associated with eDiscovery cases in your organization 
    
- [Add mailboxes and OneDrive locations](use-a-script-to-add-users-to-a-hold-in-ediscovery.md) for a list of users to an eDiscovery hold 
  
## Analyze case data using Office 365 Advanced eDiscovery

Office 365 Advanced eDiscovery builds on the content search and eDiscovery capabilities described in the previous sections. After you create an eDiscovery case, place custodian locations on hold, and collect data that might be responsive to the case, you can then further analyze the data by using the text analytics, machine learning, and the predictive coding capabilities of Advanced eDiscovery. This can help your organization quickly process thousands of email messages, documents, and other kinds of data to find those items that are most likely relevant to a specific case. And, we've unified case management and Advanced eDiscovery so that you can seamlessly manage the same case within the Security & Compliance Center.
  
> [!NOTE]
> To analyze a user's data using Advanced eDiscovery, the user (the custodian of the data) must be assigned an Office 365 E5 license. Alternatively, users with an Office 365 E1 or E3 license can be assigned an Advanced eDiscovery standalone license. Administrators and compliance officers who are assigned to cases and use Advanced eDiscovery to analyze data don't need an E5 license. 
  
### Get started

The quickest way to get started with Advanced eDiscovery is to create a case and prepare search results in Security & Compliance Center, load those results in Advanced eDiscovery, and then run Express analysis to analyze that case data and then export the results for external review.
  
- [Get a quick overview](quick-setup-for-advanced-ediscovery.md) of the Advanced eDiscovery workflow 
    
- [Set up users and cases](set-up-users-and-cases-in-advanced-ediscovery.md) for Advanced eDiscovery by creating a case, assigning eDiscovery permissions, and adding case members, all by using the Security & Compliance Center 
    
- [Prepare and load search data](prepare-data-for-advanced-ediscovery.md) in to the case in Advanced eDiscovery 
    
- [Load non-Office 365 data](import-non-office-365-data-into-advanced-ediscovery.md) in to a case to analyze it in Advanced eDiscovery 
    
- [Use Express analysis](use-express-analysis-in-advanced-ediscovery.md) to quickly analyze the data in a case and then easily export the results 
    
### Analyze data

After search data is loaded into the case in Advanced eDiscovery, you'll use the Analyze module to start analyzing it. The first part of the analysis process consists of organizing files into groups of unique files, duplicates, and near-duplicates (also know as document similarity). Then you'll organize the data again into hierarchically structured groups of email threads and themes and, optionally, set ignore text filters to exclude certain text from analysis. Then you'll run the analysis and view the results.
  
- [Learn about document similarity](understand-document-similarity-in-advanced-ediscovery.md) to prepare you for analyzing data in Advanced eDiscovery 
    
- [Set up the options](set-analyze-options-in-advanced-ediscovery.md) for near-duplicates, themes, and email threading and then run the Analyze module 
    
- [Set up Ignore Text filters](set-ignore-text-in-advanced-ediscovery.md) to exclude text and text strings from being analyzed; these filters will also ignore text when you run Relevance analysis 
    
- [View the results](view-analyze-results-in-advanced-ediscovery.md) of the analysis process 
    
- [Configure advanced settings](set-analyze-advanced-settings-in-advanced-ediscovery.md) for the analysis process 
    
### Set up Relevance training

Predictive coding (called Relevance) in Advanced eDiscovery lets you train the system on what you're looking for by letting you to make decisions (about whether something is relevant or not) on a small set of documents.
  
- [Learn about setting up Relevance training](manage-relevance-setup-in-advanced-ediscovery.md) , tagging files that are relevant to a case, and defining case issues 
    
- [Define case issues](define-issues-and-assign-users.md) and assign each issue to a user who will train the files 
    
- [Add imported files to current or new load](set-up-loads-to-add-imported-files.md) that will be added to the Relevance training; a load is a new batch of files that are added to a case and then used for Relevance training 
    
- [Define highlighted keywords](define-highlighted-keywords-and-advanced-options.md) that can be added to the Relevance training; this helps you better identify files that are relevant to a case 
    
### Run the Relevance module

After set up training, you're ready to run the Relevance module and assess the effectiveness of the training settings This results in a relevance ranking that helps you decide if you need to perform additional training or if you're ready to start tagging files as relevant to your case.
  
- [Learn about the Relevance process](use-relevance-in-advanced-ediscovery.md) and the iterative process of assessment, tagging, tracking, and re-training based on sample set of files 
    
- [Learn about assessment](assessment-in-relevance-in-advanced-ediscovery.md) , where a expert familiar with the case reviews a set of case files and determines the effectiveness of the Relevance training 
    
- [Assess case files](tagging-and-assessment-in-advanced-ediscovery.md) to calculate the effectiveness (called  *richness*  ) of training settings, and then tag files as relevant or not relevant to your case; this helps you determine if the current training is sufficient or if you should adjust the training settings. 
    
- [Perform the relevance training](tagging-and-relevance-training-in-advanced-ediscovery.md) after assessment is complete, and then once again tag files as relevant or not relevant to the issues you've defined for the case 
    
- [Track the Relevance analysis](track-relevance-analysis-in-advanced-ediscovery.md) process to determine if Relevance training has achieved your assessment target (known as a  *stable training status*  ) or whether more training is needed; you can also view the Relevance results for each case issue 
    
- [Make decisions based on Relevance analysis](decision-based-on-the-results-in-advanced-ediscovery.md) to determine the size of the resulting set of case files that can be exported for review 
    
- [Test the quality of the Relevance analysis](test-relevance-analysis-in-advanced-ediscovery.md) to validate the culling decisions made during the Relevance process 
    
### Export results

The final step in analyzing case data in Advanced eDiscovery is to export results of the analysis for external review.
  
- [Learn about exporting case data](export-case-data-in-advanced-ediscovery.md)
    
- [Export case data](export-results-in-advanced-ediscovery.md)
    
- [View batch history and export past results](view-batch-history-and-export-past-results.md)
    
- [Export report fields](export-report-fields-in-advanced-ediscovery.md)
    
### Other Advanced eDiscovery tools

Advanced eDiscovery provides additional tools and capabilities beyond analyzing case data, relevance analysis, and exporting data.
  
- [Run Advanced eDiscovery reports](run-reports-in-advanced-ediscovery.md)
    
- [Define case and tenant settings](define-case-and-tenant-settings-in-advanced-ediscovery.md)
    
- [Advanced eDiscovery utilities](use-advanced-ediscovery-utilities.md)
