---
title: "Support for optical character recognition in Microsoft Purview (preview)"
f1.keywords:
- NOCSH
ms.author: v-katykoenen
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
description: How to implement this preview of optical character recognition (OCR) within MS Purview.
---

# Support for optical character recognition in Microsoft Purview (preview)

Microsoft Purview can scan for sensitive content in documents to help protect those documents from inappropriate exposure. Microsoft Purview supports optical character recognition (OCR) scanning to detect sensitive content in stand-alone images. With OCR scans enabled, you can apply policies to protect the information in those images.

Once the OCR settings are configured, your existing data loss protection (DLP), autolabeling, and insider risk policies are applied to both images and documents. For example, say that you've configured the DLP condition *content contains sensitive information* and included a data classifier such as the "Credit Card" sensitive information type (SIT). In this case, Microsoft Purview not only scans for credit card numbers in text at those locations, it also scans images at those locations for credit card numbers.

## Workflow at a glance

| Phase | What's needed|
|-------|--------------|
|**Phase 1:** Create your initial Azure subscription | If your organization does not already have an Azure subscription for your tenant, your Global admin will need to start by creating an [Azure account](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions). |
|**Phase 2:** Set up OCR scans for pay-as-you-go billing | Your Global or SharePoint admin follows the instructions in [Configure Microsoft Syntex for pay-as-you-go billing in Azure (preview)](/syntex/syntex-azure-billing) to add a subscription for OCR scans. |
|**Phase 3:** Configure OCR scanning settings | Your Compliance admin configures the OCR settings for your tenant.|


## Phase 1: Prerequisites

OCR scanning is an optional feature in Microsoft Purview. When you enable optical character recognition (OCR) data classifiers, such as sensitive information types and trainable classifiers, can detect characters that are in images.

OCR is first enabled at the tenant level, and then you select which services you want to enable it for. For this preview, image scanning is available for stand-alone images in Exchange Online, SharePoint Online, OneDrive for business, Teams, and Windows endpoint devices.

## Phase 2: Configure billing (once the preview is over)

During the preview, this feature is available for free. When the preview is over, to continue to use OCR scans, your organization must have a pay-as-you-go Microsoft Azure subscription. For information about how to create an Azure subscription, see [Create your initial Azure subscriptions](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions) and then follow the pay-as-you-go instructions in [Configure Microsoft Syntex for pay-as-you-go billing in Azure (preview)](/syntex/syntex-azure-billing).

<!-- Do we have instructions for how to monitor OCR usage? Or will that come later? -->
## Phase 3: Configure your OCR settings

1. In the Microsoft Purview compliance portal, go to **Settings**.
2. Select **Optical character recognition (OCR) (preview)** to enter your OCR configuration settings.
3. Select the locations where you wish to scan images. Available locations are:
    - Endpoint
    - Windows devices,
    - Exchange Online
    - OneDrive for Business
    - SharePoint Online
    - Teams
4. For each location and scope, define the scope (users/groups/sites) for the OCR scans.

## Where is OCR scanning supported?

OCR scanning is available in the following locations:

- Endpoint devices (Windows)  <!-- Create a matrix here --> 
- Exchange Online
- OneDrive for Business
- SharePoint Online
- Teams

OCR scans are supported for the following workflows:

- Autolabeling <!-- if you'd applied an AL policy in EXO, it will also check OCR Talk to Carol -->
- Data loss prevention
- Digital lifecycle management
- Insider risk management  

For information on OCR functionality in Communications Compliance, see the [Optical Character](/communication-compliance-policies?view=o365-worldwide#optical-character-recognition-ocr) Recognition section of [Create and Manage communication compliance policies](/communication-compliance-policies).

## What file types are supported?

This new functionality supports scanning images in the following file types:

- JPEG
- JPG
- PNG
- BMP
- TIFF
- PDF (image only)

## What languages are supported?
OCR scanning supports more than [150 languages](/azure/cognitive-services/computer-vision/language-support#print-text).

## Limits

- Images that are embedded in Office documents aren't supported.
- Image file sizes must be at least 20 MB
- Images must be at least 50 x 50 pixels and not larger than 16000 x 16,000 px.
- The preview only supports images with machine-typed text
- Only images uploaded after OCR has been enabled are scanned.

## See also

- [Apply a sensitivity label to content automatically](/compliance/apply-sensitivity-label-automatically)
- [Learn about data loss prevention](/compliance/dlp-learn-about-dlp)
- [Learn about insider risk management](/compliance/insider-risk-management)
- [Learn about data lifecycle management](/compliance/data-lifecycle-management)
