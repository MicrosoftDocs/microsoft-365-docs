---
title: "Support for optical character recognition in Microsoft Purview"
f1.keywords:
- NOCSH
ms.author: chrfox
author: kmkoenen
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date: 03/28/2023
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
description: How to implement use optical character recognition (OCR) with MS Purview.
---

# Support for optical character recognition in Microsoft Purview

Data loss prevention policies in Microsoft Purview can scan for sensitive content in documents to help protect those documents from inappropriate exposure. Historically, scanning for sensitive information has been limited to text in various types of documents. We're now adding support for optical character recognition (OCR) scanning to detect sensitive content in images. With OCR scans enabled, you can apply policies to protect the information in those images.

## Where is OCR scanning supported?

OCR scanning is available in the following workflows:

- Endpoint devices (Windows)
- Exchange Online (EXO)
- OneDrive for Business (ODB)
- SharePoint Online (SPO)
- Teams

## What file types are supported?

This new functionality supports scanning images in the following file types:

- JPEG
- JPG
- PNG
- BMP
- TIFF
- PDF (image only)

## Prerequisites

OCR scanning is an optional feature in Microsoft Purview. During the preview, it's available for free. When the preview is over, to continue to use OCR scans, your organization must have an account that includes this feature.

## Configuring OCR Scans

To configure OCR scans for your tenant:

1. Turn on OCR for your tenant. Open **Settings** and select **Optical character recognition (OCR) (preview)**.
2. Select the places where you wish to scan images. (Endpoint Windows devices, EXO, ODB, SPT, Teams)
3. For each workload, define the scope (users/groups/sites) for the OCR scans.

Once the OCR settings are configured, your existing data loss protection (DLP), auto-labeling, and insider risk policies are applied to both images and documents. For example, if you've configured the DLP condition "content contains sensitive information" and have included a data classifier such as the "Credit Card" sensitive information type (SIT), Microsoft Purview not only scans for credit card numbers in text at those locations, it also scans images at those locations for credit card numbers as well.