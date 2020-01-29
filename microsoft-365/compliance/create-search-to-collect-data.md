---
title: "Create a search"
f1.keywords:
- NOCSH
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

# Create a search

On the **Searches** tab in your case, you can create a new search by clicking **New search** and following the wizard.

## Name your search and give it a description

Each search with a case should have a unique name. You can optionally provide a description for your search. 

## Define your search query and conditions

You can define the keywords query and any conditions for the search by using the pre-built condition cards or using Keyword Query Language (KQL). For more information, see [Build search queries](building-search-queries.md).

## Choose the custodians to search from

Once you have defined your conditions, you need to choose which locations you want to search. One way to do it is by specifying which custodians you have already added to the case you want to search. By selecting a custodian, you will run the search against all data sources mapped to the custodian. See [Work with custodians](managing-custodians.md) for more information on how to add custodians to your case and manage their data sources.

## Choose non-custodial locations

In some cases, you may wish to search data sources that are not mapped to a custodian. In this case, you can specify the locations you would like to search, or choose to search all content locations for a specific Office 365 service (such as searching all Exchange mailboxes or all SharePoint and OneDrive for Business sites).