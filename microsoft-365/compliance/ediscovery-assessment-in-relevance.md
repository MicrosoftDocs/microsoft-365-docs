---
title: "Understand Assessment in Relevance in eDiscovery (Premium)"
description: "Get an overview of the Assessment stage and its role in determining the richness of issues during Relevance training in Microsoft Purview eDiscovery (Premium)."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 01/01/2023
titleSuffix: Office 365
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid: 
- MOE150
- MET150
ROBOTS: NOINDEX, NOFOLLOW
ms.custom: seo-marvel-apr2020
ms.collection:
- tier1
- purview-compliance
- ediscovery
---

# Assessment in the Relevance module in eDiscovery (Premium)
  
Microsoft Purview eDiscovery (Premium) enables early assessment, for example, for the defined issues and the data imported for a case. eDiscovery (Premium) lets the expert make decisions about an adopted approach and to apply these decisions to the document review project.
  
[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Understanding assessment

In Assessment, the expert reviews a random set of at least 500 files, which are used to determine the richness of the issues and to produce statistics that reflect the training results. Assessment is successful when enough relevant files are found to reach a statistical level that will help eDiscovery (Premium) Relevance to provide accurate statistics and to effectively determine the stabilization point in the training process.
  
The higher the number of relevant files in the assessment set, the more accurate the statistics and the effectiveness of the stability algorithm. The number of relevant files within the assessment files depends on the richness of the issue. Richness is the estimated percent of relevant files in the set relevant to an issue. Issues with higher richness will reach a higher number of relevant files more quickly than issues with lower richness. Issues with extremely low richness (for example, 2% or less) will require a very large assessment set to reach a significant number of Relevant files.
  
The statistics, which are presented in the Track and Decide tabs during training and after Batch calculation, include estimations of recall for different review sets. In statistics, estimations that are based on a sample set (in this case, the assessment files) include the margin of error and the confidence level of that error margin. For example, estimated recall of 80% might have a margin of error of plus or minus 5% with a confidence level of 95%. This means that the estimated recall is actually 75%-85% and this estimation has 95% confidence. The larger the assessment set, the margin of error becomes smaller and the statistics are more accurate.
  
After the expert reviews an initial assessment set of 500 files, Relevance can determine the current margin of error of the recall values. Relevance will also recommend a default margin of error to reach to optimize the assessment set. Here are some examples:
  
- If the assessment set already yielded a margin of error of plus or minus 10%, Relevance will recommend moving on to training (no additional assessment review is needed).
- If the assessment set yielded a margin of error of plus or minus 13%, Relevance might recommend the review of another set of assessment files to reach a smaller margin.
- If richness is extremely low, Relevance might recommend stopping assessment even though the margin of error is large (making statistics impractical), because the assessment set needed to reach a useful margin of error is too large.

Each issue has its own richness, current margin of error, and as a result, estimated number of additional assessment files. The next assessment set is created according to the maximum number of files (up to 1,000 in a single set).
  
You can accept the Relevance recommendations or adjust the current margin of error according to your needs. The default current margin of error is determined for recall at equal or above 75%.
  
> [!NOTE]
> The Assessment stage can be bypassed, in the **Relevance \> Track** tab in the expanded view for an issue, by clearing the **Assessment** check box per issue and then for "all issues". As a result, there will be no statistics for this issue. Clearing the **Assessment** check box can only be done before assessment is performed. Where multiple issues exist in a case, assessment is bypassed only if the check box is cleared for each issue.
