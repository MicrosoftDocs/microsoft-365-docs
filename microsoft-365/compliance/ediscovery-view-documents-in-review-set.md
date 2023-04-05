---
title: View documents in a review set in eDiscovery (Premium)
description: "Choose how you view content in eDiscovery (Premium) review sets, such as source, plain text, annotate, and metadata."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 03/17/2023
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
ms.custom: seo-marvel-mar2020
---

# View documents in a review set in eDiscovery (Premium)

eDiscovery (Premium) review sets display content using several viewers each with different purposes. These viewers are used by selecting the viewer on any document within a review set. The available document viewers are:

- Source
- Plain text
- Annotate
- Metadata

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Source view

The source viewer displays the richest view of a document. It supports hundreds of file types and is meant to display the truest to native experience possible. For Microsoft Office files, the viewer uses the web version of Office apps to display content such as document comments, Microsoft Teams chats, Excel formulas, hidden rows/columns, and PowerPoint notes.

![Review set source view](../media/ediscovery-source-view.png)

## Text view

The Text viewer provides a view of the extracted text of a file. It ignores any embedded images and formatting but is useful if you're trying to understand the content quickly. Text view also includes these features:

- Line counter makes it easier to reference specific portions of a document
- Search hit highlighting that highlights terms within the document and in the scrollbar

![Review set plain text view.](../media/ediscovery-plain-text-view.png)

## Annotate view

The Annotate view provides features that allow users to apply markup on a document including:

- **Select annotations**: Select annotations on a document to delete
- **Select text**: Select text on the document to delete
- **Area redactions**: Draw a box on the document to hide sensitive content
- **Pencil**: Free-hand draw in selectable colors on a document in order to bring attention to certain portions of a document
- **Toggle annotation transparency**: Make annotations semi-transparent in order to view the content behind the annotation
- **Previous page**: Navigates to previous page
- **Next page**: Navigates to the next page
- **Go to page**: Enter a specific page number to navigate to
- **Zoom**: Set the zoom level for annotate view
- **Rotate**: Rotate the document clockwise

![Review set annotate view.](../media/ediscovery-annotate-view.png)

## Metadata view

This panel can be toggled on/off to display various metadata associated with the document. Although the search results grid can be customized to display specific metadata, there are instances where scrolling horizontally can be difficult while reviewing data. The File metadata panel allows a user to toggle on a view within the viewer.

![Review set metadata view](../media/ediscovery-metadata-view.png)

## Viewer and management tools

For selected content, there are additional view and management tools to help you work with documents. 

![Review set additional viewer tools](../media/ediscovery-additional-viewer-tools.png)

You can select the following actions for selected content:

- **View or update notes**: Opens the **Notes** pane where you can view or add notes to the selected document. You can display the notes for the document in a column in the dashboard list by customizing your displayed columns.
- **Show in a new window**: Displays the selected document in a new browser window/tab.
- **Download PDF**: Downloads the selected document as a .pdf file.
- **Move up**: Selects the previous review set item and displays the item in the viewer.
- **Move down**: Selects the next review set item and displays the item in the viewer.
- **Maximize/Minimize**: Maximizes the viewer pane to full screen and minimizes the viewer pane.
- **Close**: Closes the selected item from the viewers
