---
title: Set up and manage document translation in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
ms.date: 12/01/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set up document translation in Microsoft Syntex.
---

# Set up and manage document translation in Microsoft Syntex

The document translation service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use translation in Syntex, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Translation in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up translation in Syntex.  

## Set up translation

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), translation will be automatically set up and enabled for all SharePoint sites.

## Manage sites

Follow these steps to manage on which SharePoint sites users can use translation.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**.

3. On the **Microsoft Syntex** panel, select **Document translation**.

4. On the **Document translation** panel:

    a. By default, translation is turned on for libraries in all SharePoint sites.  Choose which site or sites this service should be enabled for.

    b. To restrict user access to this service, under **Sites where files can be translated**, select **Edit**. Select **No sites** or **Selected sites (up to 100)** and follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.

## Video transcript translation

To turn on translation for video transcripts and closed captioning, see [Enable transcript translations in Stream for SharePoint](https://prod.support.services.microsoft.com/office/microsoft-syntex-pay-as-you-go-transcript-translations-in-stream-for-sharepoint-2e34ad1b-e213-47ed-a806-5cc0d88751de#bkmk_enabletranslations).