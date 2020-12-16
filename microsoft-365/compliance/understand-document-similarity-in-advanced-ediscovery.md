---
title: "Understand document similarity in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
titleSuffix: Office 365
ms.date: 09/14/2017
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: 4d4cb381-4c9a-4165-a455-609d525c7a88
description: "Review how document Similarity value, the minimal level of resemblance for two files to be considered near-duplicates, works in Advanced eDiscovery."
ms.custom: seo-marvel-apr2020
---

# Understand document similarity in Advanced eDiscovery (classic)

> [!NOTE]
> Advanced eDiscovery requires an Office 365 E3 with the Advanced Compliance add-on or an E5 subscription for your organization. If you don't have that plan and want to try Advanced eDiscovery, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279). 
  
In Advanced eDiscovery, Document Similarity is the minimal level of resemblance required for two documents to be considered as near-duplicates.
  
> [!TIP]
> For most business applications, it is recommended to use a Similarity value of 60%-75%. For very poor quality optical character recognition (OCR) material, lower Similarity values can be applied. 
  
> [!NOTE]
> After it's set and run for a given case, the Similarity value cannot be changed. 
  
Within a Near-duplicate (ND) set, there may be documents with a level of resemblance below the Similarity threshold. For a document to join an ND set, there must be at least one document in the ND set with a level of resemblance exceeding the Similarity. 
  
For example, assume the Similarity is set to 80%, document F1 resembles document F2 at a level of 85%, and document F2 resembles document F3 at a level of 90%. 
  
However, document F1 may resemble document F3 at a level of only 70%, which is below the threshold. Nonetheless, in this example, documents F1, F2, and F3 all appear in the one ND set. Similarly, using a Similarity value of 80%, we may have created two sets, EquiSet-1 and EquiSet-2. EquiSet-1 contains documents E1 and E2. Equiset-2 contains documents F1, F2, and F3. 
  
The levels of resemblance are illustrated as follows:
  
![Document similarity](../media/3907ea7d-e28a-4027-8fc3-be090dd39144.gif)
  
Assume that another document, X1, is now inserted. The resemblance between X1 and E3 is 87%. Similarly, the resemblance between X1 and F1 is 92%. As a result, EquiSet -1, EquiSet -2, and X1 are now combined into one ND set.
  
![Document Similarity](../media/d140d347-33d5-475a-af04-594a0f2ab13d.gif)
  
> [!NOTE]
> If any two documents are assigned to one ND set, they will remain together in the same ND set, even if additional documents are added to the set or if the sets are merged. 
  
After sets are merged, the Pivot document can change when new documents are added to a set. 
  
## Related topics

[Advanced eDiscovery (classic)](office-365-advanced-ediscovery.md)
  
[Setting Analyze options](set-analyze-options-in-advanced-ediscovery.md)
  
[Setting ignore text](set-ignore-text-in-advanced-ediscovery.md)
  
[Setting Analyze advanced settings](set-analyze-advanced-settings-in-advanced-ediscovery.md)
  
[Viewing Analyze results](view-analyze-results-in-advanced-ediscovery.md)

