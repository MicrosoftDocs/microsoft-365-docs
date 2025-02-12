---
title: Licensing for Microsoft Syntex
ms.author: chucked
author: chuckedmonson
ms.reviewer: ssquires, kkameth
ms.date: 01/07/2025
manager: jtremper
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.collection: 
    - essentials-get-started
    - m365initiative-syntex
    - Tier1
search.appverid: MET150
ms.localizationpriority: medium
description: Learn about pay-as-you-go licensing for Microsoft Syntex.
---

# Licensing for Microsoft Syntex

Microsoft Syntex uses pay-as-you-go licensing for new and renewing customers. With pay-as-you-go, you can use Syntex without any license commitment or upfront purchasing. Any user in your organization can use Syntex services and only pay if and when services are used.

Pay-as-you-go requires an Azure subscription. Pay-as-you-go services are billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md). For information about how to set up pay-as-you-go, see [Configure Microsoft Syntex for pay-as-you-go billing](syntex-azure-billing.md).

Before you configure pay-as-you-go, read the [Microsoft Syntex pay-as-you-go terms of service](/legal/microsoft-365/microsoft-syntex-pay-as-you-go-terms).

<!--The features available for each license type are described in this article.  You can use both licenses if you need to.-->

> [!NOTE]
> Microsoft Syntex is an add-on and requires users also to have a license for Microsoft 365.

> [!NOTE]
> For Government Community Cloud (GCC) organizations, pay-as-you-go licensing—and the services that require pay-as-you-go licensing—are not yet available. GCC organizations can continue to purchase and use per-user licenses until pay-as-you-go becomes available.

## Microsoft Syntex pay-as-you-go

The following pay-as-you-go services are currently available:

**Document and image services**
- Autofill columns
- Content assembly
- Document translation
- eSignature
- Image tagging
- Optical character recognition
- Prebuilt document processing
- Structured and freeform document processing
- Taxonomy tagging
- Unstructured document processing

**Video services**
- Video translation

**Storage services**
- Microsoft 365 Archive
- Microsoft 365 Backup

**Apps**
- SharePoint Embedded

More services will be added as they become available.

### Included features

Pay-as-you-go licensing includes access to additional content management features. You won't be charged on a pay-as-you-go basis when you use these features. These features include:

- Content query
- Universal annotations
- Contracts management accelerator
- Accounts payable accelerator
- Taxonomy features (including import using SKOS, SKOS formatting reference, push content type to hub, and term store reports)
- PDF merge and extract pages
- Content processing rules (including rules to move or copy a file and to set a content type)

## If you still have active per-user licenses

As of July 1, 2023, per-user licenses are no longer available for purchase. Per-user licenses purchased prior to that date can still be assigned to new users. After existing per-user licenses expire, you'll need to opt in to [pay-as-you-go billing](syntex-azure-billing.md) to continue using Microsoft Syntex services.

Users with active per-user licenses can perform the following tasks:

- Apply an unstructured document processing model to a library. (Unlicensed users can be granted access to a content center and can create models there, but can't apply them to a document library.)
- Create a prebuilt, structured, or freeform document processing model via the entry point in a library.
- Upload content to a library where a custom model has been applied.
- Run an unstructured document processing model on-demand.
- Create a modern template with content assembly.
- Generate a document from a modern template.
- Use of content query to search for metadata.
- Use of annotations to add notes and comments.
- Use of premium taxonomy services. (Premium taxonomy services comprise SKOS-based term set import, pushing enterprise content types to hub-associated sites, and term store reports.)
- Use the document library rules to move or copy content.
- Merge and extract PDFs

If you plan to use a custom Power Platform environment for structured or freeform document processing, see [Set up a custom Power Platform environment](structured-freeform-setup.md#set-up-a-custom-power-platform-environment).
