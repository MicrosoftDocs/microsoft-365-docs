---
title: Pay-as-you-go services and pricing for Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires, kkameth
ms.date: 08/01/2023
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

> [!NOTE]
> Through June 2024, if you have [pay-as-you-go billing](syntex-azure-billing.md) set up, your organization will receive a limited amount of included capacity each month for selected services, letting you try these services at no cost. This offering does not include capacity for Microsoft 365 Archive or Microsoft 365 Backup. For more information, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

When you use Microsoft Syntex [pay-as-you-go](syntex-azure-billing.md), services are billed using Syntex meters in the Azure subscription that you specified when you set up Microsoft Syntex. The following table describes each meter, its pricing, and how it measures usage. When you connect your Azure subscription to Microsoft Syntex, users in your organization are able to take advantage of Syntex services right away. Your tenant is billed according to the details shown in this article.

|Service|What's counted?|What's billed? (USD)|
|:----|:--------------|:-------------|
|Prebuilt document processing|The number of pages processed for PDF or image files. Each of these counts as one transaction. You won't be charged for model training. You're charged for processing whether or not there's a positive classification, or any entities extracted.<br><br>Processing occurs on document upload and on subsequent updates. Processing is counted for each model applied. For example, if you have two models applied to a library and you upload or update a five-page document in that library, the total pages processed is 10.|$0.01/transaction|
|Structured and freeform document processing|The number of pages processed for PDF or image files. Each of these counts as one transaction. You won't be charged for model training. You're charged for processing whether or not there's a positive classification, or any entities extracted.<br><br>Processing occurs on document upload and on subsequent updates. Processing is counted for each model applied. For example, if you have two models applied to a library and you upload or update a five-page document in that library, the total pages processed is 10.<br><br>If you have AI Builder credits allocated to the environment, these credits are used first. Once the credits are exhausted, the processing transactions are charged to the meter.|$0.05/transaction|
|Unstructured document processing|The number of pages processed for Word, PDF, or TIFF files; the number of sheets for Excel files; the number of slides for PowerPoint files; or the number of files for other file types. Each of these counts as one transaction. You won't be charged for model training. You're charged for processing whether or not there's a positive classification, or any entities extracted.<br><br>Processing occurs on document upload and on subsequent updates. Processing is counted for each model applied. For example, if you have two models applied to a library and you upload or update a five-page document in that library, the total pages processed is 10.|$0.05/transaction|
|Content assembly |The number of documents (Word or PDF) created using Syntex templates. Each processed document counts as one transaction.<br><br>If you have an existing Syntex per-user license, you won't be charged for generating documents manually but will be charged for automated document generation using Power Automate. |$0.15/transaction |
|Image tagging |The number of images processed. Each processed image counts as one transaction. You won’t be charged if you only enable pay-as-you-go billing for image tagging. You are charged only when you [enable image tagging on a document library](image-tagging.md). |$0.001/transaction |
|Taxonomy tagging |The number of documents processed. Each processed document counts as one transaction. You won’t be charged if you only enable pay-as-you-go billing for taxonomy tagging. You're charged only when you [enable taxonomy tagging on a document library](taxonomy-tagging.md). |$0.05/transaction |
|SharePoint eSignature |The number of electronic signature requests processed. Each signature request for up to 10 recipients counts as one transaction. |$2.00/transaction |
|Optical character recognition  |The number of pages processed for images (JPEG, JPG, PNG, or BMP); the number of pages processed for PDF, TIF, or TIFF; or the number of embedded images in Teams chats and email messages. Each of these counts as one transaction. Processing occurs every time the file is edited. |$0.001/transaction|
|Microsoft 365 Archive (Preview)  |The number of gigabytes (GB) of data archived. (This meter is only charged when archived storage plus active storage in SharePoint exceeds a tenant’s included or licensed allocated SharePoint storage quota limit.) <br>Reactivation of archived data after seven days. |$0.05/GB/month (shows on invoice as $0.00167/GB/day)<br><br><br>$0.60/GB|
|Microsoft 365 Backup (Preview)  |The number of gigabytes (GB) of data backed up. |$0.15/GB/month (shows on invoice as $0.005/GB/day)|

## Related articles

[Microsoft Syntex - SharePoint Advanced Management overview](/sharepoint/advanced-management)

[Licensing for Microsoft Syntex](syntex-licensing.md)

[Configure pay-as-you-go billing](syntex-azure-billing.md)