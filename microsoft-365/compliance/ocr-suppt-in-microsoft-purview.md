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

Microsoft Purview can scan for <!--sensitive--> content in documents to help protect those documents from inappropriate exposure. Microsoft Purview supports optical character recognition (OCR) scanning to detect <!--sensitive--> content in stand-alone images. With OCR scans enabled, you can apply policies to protect the information in those images.

OCR scanning is an optional feature in Microsoft Purview. When you enable optical character recognition (OCR) data classifiers, such as sensitive information types and trainable classifiers, can detect characters that are in images. To set up pay-as-you-go billing for OCR scans, 

OCR is first enabled at the tenant level, and then you select which services you want to enable it for. Image scanning is available for images in Exchange, SharePoint, OneDrive for Business, Teams, and Windows endpoint devices

Once the OCR settings are configured, your existing data loss protection (DLP), data lifecycle management, autolabeling, and insider risk policies are applied to both images and documents. For example, say that you've configured the DLP condition *content contains sensitive information* and included a data classifier such as the "Credit Card" sensitive information type (SIT). In this case, Microsoft Purview not only scans for credit card numbers in text at those locations, it also scans images at those locations for credit card numbers.

## Workflow at a glance

| Phase | What's needed|
|-------|--------------|
|**Phase 1:** Create your initial Azure subscription | If your organization doesn't already have an Azure pay-as-you-go subscription for your tenant, your Global admin needs to start by creating an [Azure account](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions). |
|**Phase 2:** Set up pay as you go billing to enable OCR scans | Your Global or SharePoint admin must follow the instructions in [Configure Microsoft Syntex for pay-as-you-go billing in Azure (preview)](/syntex/syntex-azure-billing) to add a subscription for OCR scans. |
|**Phase 3:** Configure OCR scanning settings | Your Compliance admin configures the OCR settings for your tenant.|


## Phase 1: Prerequisites

Your organization's Global admin needs to verify that an Azure pay-as-you-go subscription is in place. If not, they need to set that up, following the instructions in [Create your initial Azure subscriptions](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions)

## Phase 2: Configure billing

To use OCR scans, your organization must have a pay-as-you-go Microsoft Azure subscription. For information about how to create an Azure subscription, follow the pay-as-you-go instructions in [Configure Microsoft Syntex for pay-as-you-go billing in Azure](/syntex/syntex-azure-billing).

> [!NOTE]
> When you go to the Microsoft Syntex billing page to sign up for your OCR subscription, you do **not** need to also sign up for Microsoft Syntex.

<!-- Do we have instructions for how to monitor OCR usage? Or will that come later? -->

## Phase 3: Configure your OCR settings

1. In the Microsoft Purview compliance portal, go to **Settings**.
2. Select **Optical character recognition (OCR) (preview)** to enter your OCR configuration settings.
3. Select the locations where you wish to scan images. And then, for each location and workload, define the scope (users/groups/sites) for the OCR scans. Supported locations and workflows are:

| Feature area | Location |
|--------------|----------|
| Scanning of images for <!--sensitive-->  information is supported in <br>data lifecycle management policies (automatically <br> applied retention labels) that are scoped to these locations: |  -Exchange <br> -SharePoint |
| Scanning of images for <!--sensitive-->  information is supported in <br> data loss protection policies that are scoped to <br>  these locations:| -Endpoint Windows devices <br> -Exchange  <br> -OneDrive for Business <br> -SharePoint  <br> -Teams |
| Scanning of images for <!--sensitive-->  information is supported in <br> insider risk management policies that are scoped to <br> these locations: | -Endpoint Windows devices <br> -Exchange  <br> -OneDrive for Business <br> -SharePoint  <br> -Teams |
| Scanning of images for <!--sensitive-->  information is supported in <br> information protection autolabeling  policies that <br> are scoped to these locations: |  -Exchange  <br> -OneDrive for Business <br>-SharePoint  |

> [!NOTE]
> For information on OCR functionality in Communications Compliance, see the [Optical Character](/communication-compliance-policies?view=o365-worldwide#optical-character-recognition-ocr&preserve-view=true) Recognition section of [Create and Manage communication compliance policies](/communication-compliance-policies).

## What file types are supported?

This new functionality supports scanning images in the following file types, with the noted requirements:

| Supported file types | Image requirements  |
|----------------------|---------------------|
| JPEG, JPG, PNG, and BMP, TIFF, and PDF (image only) | - Images that are embedded in Microsoft Office documents aren't supported. <br>  - Image file sizes must be no larger than 20 MB. Additionally, in Exchange and in Teams, images must be at least 50 x 50 pixels and not larger than 16000 x 16,000 px. For SharePoint, OneDrive for Business, and Windows Endpoints, the maximum image file size is 50 MB.|

>[!NOTE]
>
> - SharePoint and OneDrive for Business support only the following file types: JPEG, JPG, PNG, and BMP.
> - Data loss protection policy tips are not supported for images in Exchange.
> - Only images with machine-typed text are supported
> - Only images uploaded after OCR has been enabled are scanned.
> - OCR scans are not supported for images embedded in Office documents or compressed files (such as ZIP and 7z).

## What languages are supported?
OCR scanning supports more than [150 languages](/azure/cognitive-services/computer-vision/language-support#print-text).

## Summary

- You can subscribe to OCR scanning without subscribing to Microsoft Syntex.
- Configuring OCR scanning occurs at the tenant level, so once OCR scans are configured, they apply to all workflows.
- You don't need to create separate classifiers for OCR scans. Once OCR is configured, existing sensitive information types (SITs), exact data matches, trainable classifiers, and fingerprint SITs scan images as well.

## See also

- [Apply a sensitivity label to content automatically](/compliance/apply-sensitivity-label-automatically)
- [Learn about data loss prevention](/compliance/dlp-learn-about-dlp)
- [Learn about insider risk management](/compliance/insider-risk-management)
- [Learn about data lifecycle management](/compliance/data-lifecycle-management)