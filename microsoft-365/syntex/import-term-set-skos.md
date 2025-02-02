---
title: Import a term set using a SKOS-based format
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.date: 01/10/2025
audience: admin
ms.service: microsoft-syntex
ms.topic: conceptual
ms.collection:
- enabler-strategic
- m365initiative-syntex
ms.custom: admindeeplinkSPO
search.appverid: 
ms.localizationpriority: medium
description: Learn how to import a term set using a SKOS-based format.
---

# Import a term set using a SKOS-based format

You can import a term set using a SKOS-based format. For details about the format, see [SharePoint taxonomy SKOS format reference](skos-format-reference.md). This feature requires a [Microsoft Syntex license](syntex-licensing.md).

We recommend keeping your import files to less than 20,000 terms. Larger files can increase the time taken for validation and import.

## Import a term set

1. In the SharePoint admin center, expand **Content services**, and then select <a href="https://go.microsoft.com/fwlink/?linkid=2185073" target="_blank">**Term store**</a>.

2. Select the term group where you want to import the term set.

3. In the command bar, click **Import term set**.

4. If you want to download a sample file to use as a template, click **sample-metadata.ttl** to get a sample file that uses the SKOS-based format.

1. Create the import file that contains the term sets and terms you want to import.
6. Under **File format**, select **SKOS (*.ttl)**.

7. Click **Browse** and navigate to and add your import file.

8. Click **Import**. Do not close the panel until the import completes.

On successful import of the file, a success message will be displayed, and the term store will refresh and you can navigate to the newly created term sets.

## Related topics

[Introduction to managed metadata](/sharepoint/managed-metadata)

[Import term sets (site level)](https://support.microsoft.com/office/168fbc86-7fce-4288-9a1f-b83fc3921c18)

