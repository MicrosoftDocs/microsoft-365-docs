---
title: Handle incoming documents with Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: lauris
ms.date: 01/09/2025
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.custom: Adopt
search.appverid: 
ms.localizationpriority:  medium
description: Learn how to use Microsoft Syntex to manage various incoming business documents.
---

# Scenario: Handle incoming documents with Microsoft Syntex

:::row:::
   :::column span="":::      
      Use Microsoft Syntex to manage and process incoming business documents, such as insurance forms, business verifications, and rental contracts.

      Features used:
      - Document processing models 
      - Power Automate
      - Power BI
      - Content assembly
   :::column-end:::
   :::column span="":::
      ![Image of generic firstline workers in a worksite setting.](../media/content-understanding/uc-incoming-documents.png)
   :::column-end:::
:::row-end:::

## Insurance claims

A healthcare provider fills in a paper-based enrollment application form and submits it to insurance company for processing. Currently, the enrollment forms are processed manually, and the data is fed into a system for review. Manual data entry leads to loss in productivity along with increased risk due to human error.

Microsoft Syntex uses advanced AI to extract information including checkboxes and handwritten content. The information is stored as metadata in SharePoint along with the document. Power Automate is then used to drive review and integrate the data with downstream applications.

AI-based automation significantly reduces the time needed to process these forms and increase the response rate to providers. The AI model takes 10 minutes to train, and it saves hours of manual data entry every week for the staff. SharePoint also lets you analyze this data using Power BI dashboards. Content query can be used by providers to locate specific patient information. 

## Rental contract management

Most owners use a standard rental agreement with their tenants. Once a new tenant completes the agreement and sends it to the landlord, the agreement is placed in a SharePoint library where Microsoft Syntex extracts the key information.

During the life of the contract, certain events can occur that require correspondence to be sent to the tenant such as late rental notices, grievances, and eviction notices.  Correspondence for these events also uses standard templates that can use the information originally captured from the agreement.

Taking this further, PowerApps can begin to list all the active tenants, the correspondence sent and even allow them to create new correspondence using content assembly and Power Automate.

## Construction documentation verification

As part of annual verification of partners and vendors, W-9 forms and Certificates of Liability (CLIs) are sent in. These documents are reviewed and updates are made accordingly. Thousands of CLIs and W-9 forms are reviewed manually for changes and updates into the appropriate systems used for bids.

An improved process is required to do more with less. A Power Platform solution is created to extract attachments from incoming emails to save them to SharePoint.

Microsoft Syntex models are then created to identify and extract information from CLIs and W-9 forms, such as name, type of coverage, amount of coverage, date. Extracted information can be used to populate other applications used during construction proposals. 
<br>
<br>

> [!div class="nextstepaction"]
> [See more scenarios and use cases for Syntex](adoption-scenarios.md)