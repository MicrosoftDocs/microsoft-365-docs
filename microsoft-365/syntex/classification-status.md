---
title: View the classification status of a document in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
ms.date: 06/01/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to use the classification status column in a SharePoint document library with Microsoft Syntex.
---

# View the classification status of a document in Microsoft Syntex

<sup>**Applies to:**  &ensp; &#10003; All custom models &ensp; | &ensp; &#10003; All prebuilt models</sup>

You can view the status of a file being processed by a model in Microsoft Syntex.

We are adding a new column to inform users of the status of a file being processed by Syntex. The listed states will inform whether processing is in progress, completed, or wasn’t done due to an error with the file or the job. This will help users know whether a file needs to be re-enqueued for processing or additional investigation is required.  

There is no impact to any existing library configuration. When a model is applied to a library the new status column will be added.  

This column will not be automatically added to libraries where a model has already been applied. To add the column We recommend notifying your Syntex users about these updates.

| Classification status | Description |
| ------- | ------- 
| In progress | File has been queued for processing. |
| Finished | File has been processed. |
| Not supported | File has been queued, but can't be processed (for example, the file type extension is not supported). |
| Error | File can't be queued for processing (for example, the file is not supported at all). |
| [Empty] | No models are applied to the library. |