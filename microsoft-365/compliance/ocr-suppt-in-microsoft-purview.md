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

Microsoft Purview can scan for content in documents to help protect those documents from inappropriate exposure. Microsoft Purview supports optical character recognition (OCR) scanning to detect content in images. With OCR scans enabled, you can apply policies to protect the information in those images.
<br><br>
OCR scanning is an optional feature in Microsoft Purview. When you enable optical character recognition (OCR) data classifiers, such as sensitive information types and trainable classifiers, can detect characters that are in images. To set up pay-as-you-go billing for OCR scans.
<br><br>
OCR is first enabled at the tenant level, and then you select which services you want to enable it for. Image scanning is available for images in Exchange, SharePoint, OneDrive for Business, Teams, and Windows endpoint devices
<br><br>
Once the OCR settings are configured, your existing policies for data loss protection (DLP), data lifecycle management, data loss prevention, and autolabeling for insider risk are applied to both images and documents. For example, say that you've configured the DLP condition *content contains sensitive information* and included a data classifier such as the "Credit Card" sensitive information type (SIT). In this case, Microsoft Purview not only scans for credit card numbers in both text and images at those locations.

## Workflow at a glance

| Phase | What's needed|
|-------|--------------|
|**Phase 1:** Create your initial Azure subscription | If your organization doesn't already have an Azure pay-as-you-go subscription for your tenant, your Global admin needs to start by creating an [Azure account](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions). |
|**Phase 2:** Set up pay as you go billing to enable OCR scans | Your Global or SharePoint admin must follow the instructions in [Configure Microsoft Syntex for pay-as-you-go billing in Azure (preview)](/syntex/syntex-azure-billing) to add a subscription for OCR scans. |
|**Phase 3:** Configure OCR scanning settings | Your Compliance admin configures the OCR settings for your tenant.|


## Phase 1: Prerequisites

To use OCR scanning, your organization's Global admin needs to verify that an Azure pay-as-you-go subscription is in place. If not, they need to set that up, following the instructions in [Create your initial Azure subscriptions](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions)


## Phase 2: Configure billing

OCR scanning is an optional feature in Microsoft Purview. When you enable optical character recognition (OCR), all types of sensitive information types and trainable classifiers, can detect characters that are in images.

To enable OCR scans, your Global admin must set up pay as you go billing by following the instructions in [Configure Microsoft Syntex for pay-as-you-go billing in Azure (preview)](/syntex/syntex-azure-billing) to add a subscription for OCR scans. |

<!-- Need link to Configure Billing page in the UI. --> 

> [!NOTE]
> When you go to the Microsoft Syntex billing page to sign up for your OCR subscription, you do **not** need to also sign up for Microsoft Syntex.



## Phase 3: Configure your OCR settings

1. In the Microsoft Purview compliance portal, go to **Settings**.
2. Select **Optical character recognition (OCR) (preview)** to enter your OCR configuration settings.
3. Select the locations where you wish to scan images. And then, for each location and solution, define the scope (users/groups/sites) for the OCR scans. Supported locations and solutions are:

|Location| Solutions | Limitations |
|--------------|----------|----------|
| Endpoints(Windows devices) | -Data loss prevention policies | |
|Exchange | -Data loss prevention policies <br><br><br>-Data lifecycle management (automatically applied retention labels) | -Exchange email: Outgoing emails are labeled <br> -Microsoft 365 group mailboxes and sites  <br> Outgoing emails are labeled  |
|OneDrive for Business | -Data loss prevention policies <br><br><br> -Data lifecycle management (automatically applied retention labels)<br><br><br> -Insider risk management (automatically applied sensitivity labels)| |
|SharePoint | -Data loss prevention policies <br><br><br> -Data lifecycle management (automatically applied retention labels)<br><br><br> -Insider risk management (automatically applied sensitivity labels)| |
|Teams | -Data loss prevention policies <br><br><br> -Data lifecycle management (automatically applied retention labels)<br><br><br> -Insider risk management (automatically applied sensitivity labels)| |

> [!NOTE]
> For information on OCR functionality in Microsoft Purview Communication Compliance, see [Create and Manage communication compliance policies](/communication-compliance-policies.md#optical-character-recognition-ocr).

## What file types are supported?

This new functionality supports scanning images in the following file types, with the noted requirements:

| Supported file types | Image requirements  |
|----------------------|---------------------|
| JPEG, JPG, PNG, and BMP, TIFF, and PDF (image only) | -Images that are embedded in Microsoft Office documents aren't supported. <br> <br>   -**File sizes:** Image files must be no larger than 20 MB. For SharePoint, OneDrive for Business, and Windows Endpoints, the maximum image file size is 50 MB. <br>  -**Image resolution:** Image resolution must be at least 50 x 50 pixels and not larger than 16000 x 16,000 px. |

>[!NOTE]
>
> - SharePoint and OneDrive for Business support only the following file types: JPEG, JPG, PNG, and BMP.
> - Data loss protection policy tips are not supported for images in Exchange.
> - Only images with machine-typed text are supported
> - Only images uploaded after OCR has been enabled are scanned.
> - OCR scans of images that are embedded in Office documents aren’t supported.
> - Currently, scanning images in compressed/archive files is not supported.

## What languages are supported?
OCR scanning supports more than [150 languages](/azure/cognitive-services/computer-vision/language-support#print-text).

## Summary

- You can subscribe to OCR scanning without subscribing to Microsoft Syntex.
- Configuring OCR scanning occurs at the tenant level, so once OCR scans are configured, they're available to the entire Microsoft Purview stack.
- You don't need to create separate data classifiers for OCR scans. Once OCR is configured, existing sensitive information types (SITs), exact data matches, trainable classifiers, and fingerprint SITs scan images as well.

## See also

- [Apply a sensitivity label to content automatically](/compliance/apply-sensitivity-label-automatically)
- [Learn about data loss prevention](/compliance/dlp-learn-about-dlp)
- [Learn about insider risk management](/compliance/insider-risk-management)
- [Learn about data lifecycle management](/compliance/data-lifecycle-management)