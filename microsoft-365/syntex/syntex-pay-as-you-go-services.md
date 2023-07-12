---
title: Pay-as-you-go services and pricing for Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires, kkameth
ms.date: 03/06/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
    - Tier1
search.appverid: MET150
ms.localizationpriority: medium
description: Learn about pay-as-you-go services and pricing for Microsoft Syntex.
---

# Pay-as-you-go services and pricing for Microsoft Syntex

When you use Microsoft Syntex [pay-as-you-go](syntex-azure-billing.md), services are billed using Syntex meters in the Azure subscription that you specified when you set up Microsoft Syntex. The following table describes each meter, its pricing, and how it measures usage. When you connect your Azure subscription to Microsoft Syntex, users in your organization will be able to take advantage of Syntex services right away. Your tenant will be billed according to the details shown in this article.

|Service|What's counted?|What's billed?|
|:----|:--------------|:-------------|
|Unstructured document processing|The number of pages processed for Word, PDF, or TIFF files; the number of sheets for Excel files; the number of slides for PowerPoint files; or the number of files for other file types. Each of these counts as one transaction. You won't be charged for model training. You will be charged for processing whether or not there's a positive classification, or any entities extracted.<br><br>Processing occurs on document upload and on subsequent updates. Processing is counted for each model applied. For example, if you have two models applied to a library and you upload or update a five-page document in that library, the total pages processed is 10.|$0.05/transaction|
|Prebuilt document processing|The number of pages processed for PDF or image files. Each of these counts as one transaction. You won't be charged for model training. You will be charged for processing whether or not there's a positive classification, or any entities extracted.<br><br>Processing occurs on document upload and on subsequent updates. Processing is counted for each model applied. For example, if you have two models applied to a library and you upload or update a five-page document in that library, the total pages processed is 10.|$0.01/transaction|
|Optical character recognition   |The number of pages processed for for images (JPEG, JPG, PNG, or BMP); the number of pages processed for PDF, TIF, or TIFF; or the number of embedded images in Teams chats and email messages. Each of these counts as one transaction. Processing occurs every time the file is edited. |$0.001/transaction| 
<!---|Image tagging |The number of images processed. Each processed image counts as one transaction. You won’t be charged if you only enable pay-as-you-go billing for image tagging. You will be charged only when you enable image tagging on a [document library](image-tagging.md#to-enable-image-tagging-in-a-library). |$0.001/image --->

## Related topics

[Microsoft Syntex - SharePoint Advanced Management overview](/sharepoint/advanced-management)

[Licensing for Microsoft Syntex](syntex-licensing.md)
