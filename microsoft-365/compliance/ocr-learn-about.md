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

Optical character recognition (OCR) scanning enables Microsoft Purview to scan content in images for sensitive information. An optional feature, OCR scanning is first enabled at the tenant level. Once enabled, you select the locations where you want to scan images. Image scanning is available for Exchange, SharePoint, OneDrive, Teams, and Windows devices. Once the OCR settings are configured, your existing policies for data loss prevention (DLP), records management, and insider risk management are applied to images as well as text-based content. For example, say that you've configured the DLP condition *content contains sensitive information* and included a data classifier such as the "Credit Card" sensitive information type (SIT). In this case, Microsoft Purview scans for credit card numbers in both text and images at all of the chosen locations.

## Workflow at a glance


| Phase | What's needed|
|-------|--------------|
|**Phase 1:** Create Azure subscription if needed | If your organization doesn't already have an Azure pay-as-you-go subscription for your tenant, your Global admin needs to start by creating an [Azure account](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions). |
|**Phase 2:** Set up pay-as-you-go billing to enable OCR. | Your Global or SharePoint admin must follow the instructions in [Configure Microsoft Syntex for pay-as-you-go billing in Azure](/syntex/syntex-azure-billing.md) to add a subscription for OCR. |
|**Phase 3:** Configure OCR scanning settings | The Compliance admin for your organization configures the OCR settings for your tenant.|


### Phase 1: Prerequisites

To use OCR scanning, your organization's Global admin needs to verify that an Azure pay-as-you-go subscription is in place. If not, they need to set that up, following the instructions in [Create your initial Azure subscriptions](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions)


### Phase 2: Configure billing

When you enable OCR, all sensitive information types and trainable classifiers can detect characters that are in images.

Because it's an optional feature, your Global admin must set up pay-as-you-go billing to enable OCR. Refer to the instructions in [Configure Microsoft Syntex for pay-as-you-go billing in Azure](/syntex/syntex-azure-billing.md) to add a subscription for OCR.

> [!NOTE]
> When you go to the Microsoft Syntex billing page to sign up for your OCR subscription, you do **not** need to also sign up for Microsoft Syntex.

### Phase 3: Configure your OCR settings

1. In the Microsoft Purview compliance portal, go to **Settings**.
2. Select **Optical character recognition (OCR) (preview)** to enter your OCR configuration settings.
3. Select the locations where you wish to scan images. Then, for each location and solution, define the scope (users/groups/sites) for the OCR. Supported locations and solutions are listed below.

> [!NOTE]
> For information on OCR functionality in Microsoft Purview Communication Compliance, see **[Create and manage communication compliance policies](communication-compliance-policies.md#optical-character-recognition-ocr)**.

| Location | Supported Solutions | Policies Applied| Notes |
|--------------|----------|-------------------|---------------| 
| Exchange | Data loss prevention <br> <br> Information protection <br> <br> Records management  | **DLP policies** <br> <br>**Information protection policies:** *Auto-labeling policy:* <br> * OCR detects keywords as well as content caught by sensitive information classifiers and trainable classifiers. <br> * Outgoing emails are labeled for sensitive information types and trainable classifiers. <br><br> **Records management policies:** *Auto-apply retention label policy:* <br> OCR detects keywords as well as content caught by sensitive information classifiers and trainable classifiers. <br> * Retention labels are applied to images embedded in and/or attached to outgoing emails. |  Policies are only applied to outgoing emails. | 
| SharePoint sites | Data loss prevention <br> <br> Information protection <br> <br> Records management <br><br> Insider risk management  | **DLP policies** <br> <br>**Information protection policies:** *Auto-labeling policy:* <br> * OCR detects keywords as well as content caught by sensitive information classifiers and trainable classifiers. <br> * Outgoing emails are labeled for sensitive information types and trainable classifiers. <br><br> **Records management policies:** *Auto-apply retention label policy:* <br> OCR detects keywords as well as content caught by sensitive information classifiers and trainable classifiers. <br> * Retention labels are applied to images embedded in and/or attached to outgoing emails. <br><br> **IRM policies** consider sensitive information types and trainable classifiers present in images for risk scoring.|  Policies are only applied to outgoing emails. |  
| OneDrive accounts | Data loss prevention <br> <br> Information protection <br> <br> Records management | **DLP policies** <br> <br>**Information protection policies:** *Auto-labeling policy:* <br> OCR detects keywords as well as content caught by sensitive information classifiers and trainable classifiers. <br><br> **Records management policies:** *Auto-apply retention label policy:* <br> OCR detects keywords as well as content caught by sensitive information classifiers and trainable classifiers. |  |
| Teams chat and channel messages | Data loss prevention <br> <br> Insider risk management  |**DLP policies** <br><br> **IRM policies** consider sensitive information types and trainable classifiers present in images for risk scoring. |  |
| Devices | Data loss prevention | **DLP policies** <br><br> **IRM policies** consider sensitive information types and trainable classifiers present in images for risk scoring.| |

<br>

## What file types are supported?

This functionality supports scanning images in the following file types, with the noted requirements:

| Supported file types | Image requirements  |
|----------------------|---------------------|
| JPEG, JPG, PNG, BMP, TIFF, and PDF (image only) | **File sizes:** Image files must be no larger than 20 MB for Exchange and Teams. For SharePoint, OneDrive, and Windows endpoints, the maximum image file size is 50 MB. <br><br> **Image resolution:** Image resolution must be at least 50 x 50 pixels and not larger than 16,000 x 16,000 px. |

>[!IMPORTANT]
>
> - Only images with machine-typed text are supported.
> - Only images uploaded after OCR has been enabled are scanned.
> - Only stand-alone images are scanned.
> - SharePoint and OneDrive support only the following file types: JPEG, JPG, PNG, and BMP.
> - Data loss prevention policy tips are not supported for images in Exchange.
> - Scanning images in compressed/archive files isn't supported.

<br>

## What languages are supported?
OCR scanning supports more than [150 languages](/azure.microsoft.com/cognitive-services/computer-vision/language-support).

## Summary
- You can subscribe to OCR scanning without subscribing to Microsoft Syntex.
- Configuring OCR occurs at the tenant level, so once OCR are configured, they're available to the entire Microsoft Purview stack.
- You don't need to create separate data classifiers for OCR. Once OCR is configured, existing [sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types), [exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types), [trainable classifiers](classifier-learn-about.md#learn-about-trainable-classifiers), and [fingerprint SITs](document-fingerprinting.md#document-fingerprinting) scan images as well as documents and emails.

## See also

- [Learn about data loss prevention](dlp-learn-about-dlp.md#learn-about-data-loss-prevention)
- [Learn about insider risk management](insider-risk-management.md#learn-about-insider-risk-management)
- [Learn about records management](data-lifecycle-management.md#learn-about-data-lifecycle-management)