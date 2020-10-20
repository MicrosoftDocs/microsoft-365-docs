---
title: "Manage Relevance setup in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
titleSuffix: Office 365
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
ms.assetid: fd6be6d3-2e8d-449d-9851-03ab7546e6aa
description: "Read the recommendations for setting up Relevance training in Advanced eDiscovery to score files by their relevance and generate analytical results."
---

# Manage Relevance setup in Advanced eDiscovery (classic)

> [!NOTE]
> Advanced eDiscovery requires an Office 365 E3 with the Advanced Compliance add-on or an E5 subscription for your organization. If you don't have that plan and want to try Advanced eDiscovery, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279). 
  
 Advanced eDiscovery Relevance technology employs expert-guided software for scoring files by their relevance. Advanced eDiscovery Relevance can be used for Early Case Assessment (ECA), culling, and file sample review. 
  
 Advanced eDiscovery includes components for the Relevance training and tagging of files relevant to a case. Advanced eDiscovery learns from the trained samples of Relevant and Not Relevant files to provide Relevance scores for each file, and generates analytical results that can be used during and after the file review process. 
  
## Guidelines for setting up Relevance training

 In Advance eDiscovery, in the **Cases** window, select a case and click **Go to case**. Click **Relevance** \> **Relevance setup**. Follow these recommended guidelines to set up Relevance. 
  
- **Tagging**: The effectiveness of the iterative Relevance training process is dependent on the ability of the expert to tag the file samples with precision and consistency.

- **Case issues**:
  
  - For each issue, use the same expert throughout the entire Relevance training process. Simultaneous tagging of the same issue by multiple experts is not permitted.
  
  - Determine if each group of files is pertinent only to a specific issue.

  - If an issue is defined too generally, Advanced eDiscovery may yield too many files that are not relevant. If an issue is defined too narrowly, the Relevance training process may take more time. 

  - During each Relevance training cycle, Advanced eDiscovery focuses on a single active issue and interim sample results are displayed accordingly.

  - In a multiple-issue scenario, the Sampling mode enables the selection of issues to be included in processing. Issues defined as "off" are not handled until their Sampling mode is changed. An issue can be "idle" or "on" for only one expert.

  - Advanced eDiscovery can be used to generate candidate privilege files. Set up a separate issue for privilege. If possible, train and cull for relevance first, and then train for privilege on the culled set only (reload the culled set as a separate case). 

  - Batch calculation can be performed only when there are no open samples (when clicking Batch Calculation, there will be a list displayed of users with open samples). To "close" samples of other users (this should be performed only if these users are not tagging these samples), an Administrator can use the "Modify relevance" utility with the "All users sample" option.

- **Metadata**: Advanced eDiscovery focuses on content. It does not consider metadata as part of the relevance criteria.

- **Richness**: If the Richness for an issue is less than 3% after Assessment, consider seeding the Relevance training with known Relevant and Not Relevant files.

- **File size**: Large files (over 5,242,880 characters of extracted text) are ignored in Relevance. The files do not participate in the Relevance training process and do not receive a Relevance score after Batch Calculation. Files over 5 MB can be included in the Assessment set.

## Setting up case issues

The parameters described in this section are available in the Advanced eDiscovery **Relevance** \> **Relevance setup**.
  
- Issues must be assigned to a user who will train the files.

- Imported files must then be added to the load being processed.

- Define and organize issues carefully, as this can impact the Relevance training results.

After parameters are set, the reviewer / expert can start training the files in the **Relevance** tab. 
  
## See also

[Advanced eDiscovery (classic)](office-365-advanced-ediscovery.md)
  
[Defining issues and assigning users](define-issues-and-assign-users.md)
  
[Setting up loads to add imported files](set-up-loads-to-add-imported-files.md)
  
[Defining highlighted keywords and advanced options](define-highlighted-keywords-and-advanced-options.md)

