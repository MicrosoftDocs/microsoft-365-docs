---
title: "Decision based on the results in eDiscovery (Premium)"
description: "Learn how the Decide tab in eDiscovery (Premium) provides data that can help you determine the correct size of the review set of case files."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
titleSuffix: Office 365
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid: 
- MOE150
- MET150
ROBOTS: NOINDEX, NOFOLLOW
ms.custom: seo-marvel-apr2020
ms.collection:
- tier1
- M365-security-compliance
- ediscovery
---

# Decisions based on Relevance results in eDiscovery (Premium)
  
In the Relevance module in eDiscovery (Premium), the Decide tab provides additional information for viewing and using decision-support statistics for determining the size of the review set of case files.
  
## Using the Decide tab

![Relevance Decide.](../media/f32fed89-f3b5-404a-90c7-ea25d2eb58a9.png)
  
This tab includes the following components:
  
- **Issue**: From here, you can select the issue of interest from the list.

- **Review-recall ratio**: Comparisons of eDiscovery (Premium) review according to Relevance scores. The Cutoff point in the chart represents the percentage of files to review, mapped to a Relevance score. This is used in the Relevance Test phase and as an Export threshold for culling. The default cutoff point, for the number of files to review is at the point in which the balance between Recall and Precision is optimal. The actual cutoff point should be determined by the user depending on objectives and the cost tradeoff (%review) and risk (%recall). Using the slider, you can adjust the cutoff point and see the effect on the graph and parameters, when adjusting the percent of relevant files to be retrieved, and before validating a decision.

- **Parameters**: Review, Recall, Next relevant and Total cost parameters are cumulative calculated statistics pertaining to the review set in relation to the collection for the entire case. Definitions for these parameters are as follows:

  - **Review**: Percentage of files to review based on this cutoff.

  - **Recall**: Percentage of relevant files in the review set.

  - **Next relevant**: Cost to review and identify another relevant file that isn't currently in the review set.

  - **Total cost**: Cost for reviewing this percentage of the case files. Cost parameter settings can be set by the Case manager.

  - **Distribution by relevance score**: Files in the dark gray display to the left are below the cutoff score. A tool-tip displays the Relevance score and the related percentage of files in the review file set in relation to the total files.

The expanded **Details** pane displays more details. Files in collection figures don't include empty or nebulous files. Family files figures represent files that aren't loaded in Relevance, yet still counted as part of the family.
