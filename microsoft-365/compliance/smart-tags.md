---
title: "Set up smart tags in eDiscovery (Premium)"
description: "Smart tags let you apply the machine learning capabilities when reviewing content in an eDiscovery (Premium) case. Use smart tag groups to display the results of machine learning detection models, such as the attorney-client privilege model."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
ROBOTS: NOINDEX, NOFOLLOW 
---

# Set up smart tags in eDiscovery (Premium)

Machine learning (ML) capabilities in Microsoft Purview eDiscovery (Premium) can help you make the decision process more efficient when reviewing case documents in a review set. Smart tags are a way to bring the ML capabilities to where the decisions are recorded: when tagging documents during review. When you create a smart tag group, then the decisions that are the result of the ML model that you've associated with the smart tag group are displayed in-line with the tags in the tag group. This helps see the ML results information in-line when you're reviewing specific documents.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## How to set up a smart tag group

1. In a review set, click **Manage review set** and then click **Manage tags**.

2. Click **Add tag group** and then select **Add smart tag group**.

3. Select the ML model that you want to associate to the tag group.
    
   This creates a tag group and *N* child tags, where *N* is the number of possible outputs of the model. For example, the [attorney-client privilege detection model](attorney-privilege-detection.md) has two possible outputs: 

   - **Positive** – Use to tag documents that contain attorney-client privileged content.
   
   - **Negative** – Use to tag documents that don't contain attorney-client privileged content.
    
    If you select this model, a tag group with two child tags is created (one child tag named **Positive** and the other named **Negative**) for the review set. In this example, each child tag corresponds to one of the possible outputs from the attorney-client privilege detection model.

4. Optionally, you can rename the tag group and the child tags. For example, you could rename the **Positive** tag to **Privileged** and the **Negative** tag to **Not privileged**.

## How to use smart tags

When reviewing a document, the model's results are displayed next to the appropriate child tag. For example, if you have a smart tag group for attorney-client privilege detection and you review a document that is potentially privileged, the reason for that conclusion is displayed next to the appropriate tag. It's important to note that the tag isn't automatically applied to the document. The reviewer makes the decision about how to tag the document.
