---
title: "Themes"
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

# Themes
How does a person write a document? They generally start with one or more ideas they want to convey in the document, and compose using words that align with the ideas. The more prevalent an idea is, the more frequent the words that are related to that idea tend to be. This informs how people consume documents as well; the important thing to get from reading a document is the ideas that the document is trying to convey, and which ideas appear where, and what the relationships between the ideas are.

This can be extended to how a person wants to consume a set of documents. They want to see which ideas are present in the sets, and which documents are talking about those ideas. Also, if they find a particular document of interest, they want to be able to see documents that discuss similar ideas.

Themes module tries to mimic how humans reason about documents, by analyzing the "themes" that are discussed in a review set and assigning them to documents. Themes goes one step further and identifies per document the "dominant theme"; i.e. the theme that appears the most.

## How does Themes work?
Themes analyzes documents with text in a review set to parse out common themes that appear accross the documents. Then, it assigns those themes to the documents in which they appear. It also labels each with words used in the documents that are representative of the theme. Since a document can be about more than one subject matter, in many cases a document has more than one themes assigned to it. The theme that appears most prominently in a document is designated as its dominant theme.