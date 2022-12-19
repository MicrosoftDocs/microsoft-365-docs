---
title: Themes in eDiscovery (Premium)
description: "Use Themes in eDiscovery (Premium) to organize review sets by finding the dominant theme in each document."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-mar2020
---

# Themes in eDiscovery (Premium)

How does a person write a document? They generally start with one or more ideas they want to convey in the document, and compose using words that align with the ideas. The more prevalent an idea is, the more frequent the words that are related to that idea tend to be. This informs how people consume documents as well. The important thing to understand from reading a document is the ideas that the document is trying to convey, which ideas appear where, and what the relationships between the ideas are.

This can be extended to how a person wants to consume a set of documents. They want to see which ideas are present in the sets, and which documents are talking about those ideas. Also, if they find a particular document of interest, they want to be able to see documents that discuss similar ideas.

The Themes functionality in eDiscovery (Premium) attempts to mimic how humans reason about documents, by analyzing the *themes* that are discussed in a review set and assigning a theme to documents in the review set. In eDiscovery (Premium), Themes goes one step further and identifies the *dominant theme* in each document. The dominant theme is the one that appears the most often in a document.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## How does Themes work?

The Themes functionality analyzes documents with text in a review set to parse out common themes that appear across all the documents in the review set. eDiscovery (Premium) assigns those themes to the documents in which they appear. It also labels each theme with the words used in the documents that are representative of the theme. Because a document can contain various types of subject matter, eDiscovery (Premium) often assigns multiple themes to documents. The theme that appears most prominently in a document is designated as its dominant theme.
