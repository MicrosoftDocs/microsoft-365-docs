---
title: "Learn about optical character recognition in Microsoft Purview (preview)"
f1.keywords:
- NOCSH
ms.author: v-katykoenen
author: kmkoenen
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date: 06/16/2023
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
description: How to implement this preview of optical character recognition (OCR) within MS Purview.
---

# Learn about optical character recognition in Microsoft Purview (preview)

Optical character recognition (OCR) scanning enables Microsoft Purview to scan content in images for sensitive information. An optional feature, OCR scanning is first enabled at the tenant level. Once enabled, you select the locations where you want to scan images. Image scanning is available for Exchange, SharePoint, OneDrive, Teams, and Windows devices. Once the OCR settings are configured, your existing policies for data loss prevention (DLP), records management, and insider risk management (IRM) are applied to images and text-based content. For example, say that you've configured the DLP condition *content contains sensitive information* and included a data classifier such as the "Credit Card" sensitive information type (SIT). In this case, Microsoft Purview scans for credit card numbers in both text and images at all of the chosen locations.

## Workflow at a glance

| Phase | What's needed|
|-------|--------------|
|**Phase 1:** Create Azure subscription if needed | If your organization doesn't already have an Azure pay-as-you-go subscription for your tenant, your Global admin needs to start by creating an [Azure account](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions). |
|**Phase 2:** Set up pay-as-you-go billing to enable OCR. | Your Global or SharePoint admin must follow the instructions in [Set up Microsoft Syntex billing in Azure](../syntex/syntex-azure-billing.md#set-up-microsoft-syntex-billing-in-azure) to add a subscription for OCR. |
|**Phase 3:** Configure OCR scanning settings | The Compliance admin for your organization configures the OCR settings for your tenant.|


### Phase 1: Prerequisites

To use OCR scanning, your organization's Global admin needs to verify that an Azure pay-as-you-go subscription is in place. If not, they need to set that up, following the instructions in [Create your initial Azure subscriptions](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions)

### Phase 2: Configure billing

When you enable OCR, all sensitive information types and trainable classifiers can detect characters that are in images.

Because it's an optional feature, your Global admin must set up pay-as-you-go billing to enable OCR. Refer to the instructions in [Set up Microsoft Syntex billing in Azure](../syntex/syntex-azure-billing.md#set-up-microsoft-syntex-billing-in-azure) to add a subscription for OCR.

> [!NOTE]
> When you go to the Microsoft Syntex billing page to sign up for your OCR subscription, you do **not** need to also sign up for Microsoft Syntex.
>
> You can find OCR pay-as-you-go pricing information on the [Set up Microsoft Syntex billing in Azure](../syntex/syntex-azure-billing.md#set-up-microsoft-syntex-billing-in-azure) page.

#### Charges 

The charge for using OCR is $1.00 for every 1,000 items scanned. Each image scanned counts as one transaction. This means that stand-alone images (JPEG, JPG, PNG, BMP, or TIFF) each count as a single transaction. It also means that *each page* in a PDF file is charged separately. For example, if there are 10 pages in a PDF file, an OCR scan of the PDF file counts as 10 separate scans.

> [!NOTE]
> To reduce your OCR costs, charges for scanning each unique image are incurred only once.
>
> Small images, such as logos and signatures that are sent in email via Microsoft Exchange are scanned and billed only once per unique image across all users of the tenant. For all subsequent instances, the results of the previous scan will be reused.
>
>Additionally, each scanned image can be used in any number of policies across data loss prevention, insider risk management, auto-labeling, and records management at no additional charge.

[!INCLUDE [dlp-pdf-adobe-requirements](../includes/dlp-pdf-adobe-requirements.md)]


To view your bill, follow the instructions described in [Monitor your Microsoft Syntex pay-as-you-go usage](/microsoft-365/syntex/syntex-azure-billing#monitor-your-microsoft-syntex-pay-as-you-go-usage).

#### Estimate your bill ####

When you first start using OCR, limit usage to just a few people and applicable workloads. After a short while, you can view your bill in Azure and see the usage statistics & charges for each day. From there, you can extrapolate the costs for your full set of users. In addition, you can use the "workload" tag in Azure cost management to see the breakdown of usage per workload.

### Phase 3: Configure your OCR settings

1. In the Microsoft Purview compliance portal, go to **Settings**.
2. Select **Optical character recognition (OCR) (preview)** to enter your OCR configuration settings.
3. Select the locations where you wish to scan images. Then, for each location and solution, define the scope (users/groups/sites) for the OCR. Supported locations and solutions are listed in the table below.

#### Permissions ####

The account you use to create and deploy policies must be a member of one of these role groups

- Compliance administrator
- Compliance data administrator
- Information Protection
- Information Protection Admin

> [!NOTE]
> - In general, OCR settings take effect about an hour after being turned on.
>
> - For information on OCR functionality in Microsoft Purview Communication Compliance, see **[Create and manage communication compliance policies](communication-compliance-policies.md#optical-character-recognition-ocr)**.

#### Supported Locations and Solutions ####
| Location | Supported Solutions |
|--------------|----------|
| Exchange | Data loss prevention <sup>1</sup><br> <br> Information protection: [Auto-labeling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-policies-for-sharepoint-onedrive-and-exchange)<sup>1</sup> <br> <br> Records management: [Auto-apply retention label policies](apply-retention-labels-automatically.md#automatically-apply-a-retention-label-to-retain-or-delete-content)<sup>2</sup> | 
| SharePoint sites | Data loss prevention <br><br> Insider risk management<sup>3</sup> <br><br> Records management: [Auto-apply retention label policies](apply-retention-labels-automatically.md#automatically-apply-a-retention-label-to-retain-or-delete-content)<sup>2</sup> |
| OneDrive accounts | Data loss prevention <br><br>  Records management: [Auto-apply retention label policies](apply-retention-labels-automatically.md#automatically-apply-a-retention-label-to-retain-or-delete-content)<sup>2</sup> |
| Teams chat and channel messages | Data loss prevention <br> <br> Insider risk management<sup>3</sup>  |
| Devices | Data loss prevention <br> <br> Insider risk management<sup>3</sup> |

<sup>1</sup> Supports outgoing emails only.<br>
<sup>2</sup> Supports keywords and sensitive information types.<br>
<sup>3</sup> Considers sensitive information types and trainable classifiers present in images for risk scoring.<br>

<br>

## What file types are supported?

This functionality supports scanning images in the following file types, with the noted requirements:

| Supported file types | Image requirements  |
|----------------------|---------------------|
| JPEG, JPG, PNG, BMP, TIFF, and PDF (image only) | **File sizes:** Image files must be no larger than 20 MB for Exchange and Teams. For SharePoint, OneDrive, and Windows endpoints, the maximum image file size is 50 MB. <br><br> **Image resolution:** Image resolution must be at least 50 x 50 pixels and not larger than 16,000 x 16,000 px. |

> [!IMPORTANT]
>
> - Only images with machine-typed text are supported.
> - Only images uploaded after OCR has been enabled are scanned.
> - Only stand-alone images are scanned.
> - SharePoint and OneDrive support only the following file types: JPEG, JPG, PNG, and BMP.
> - Data loss prevention policy tips are not supported for images in Exchange.
> - Scanning images in compressed/archive files isn't supported.
> - If you [exclude a path](dlp-configure-endpoint-settings.md#file-path-exclusions) in the endpoint data loss prevention settings, OCR will not scan images in those folders.
> - When OCR is turned on for Windows devices, the devices start sending messages to the cloud for scanning. The default bandwidth limit is [1024 MB of data per device per day](dlp-configure-endpoint-settings.md#advanced-classification-scanning-and-protection). OCR stops scanning images once this daily limit is reached. If you want to continue scanning images, you can increase the bandwidth limit.


<br>

## What languages are supported?
OCR scanning supports more than [150 languages](/azure/cognitive-services/language-support).

## Summary
- To use OCR, you must set up Microsoft Syntex pay-as-you-go billing. (You don’t need to set up Microsoft Syntex itself.)
- Configuring OCR occurs at the tenant level, so once OCR is configured, they're available to the entire Microsoft Purview stack.
- You don't need to create separate data classifiers for OCR. Once OCR is configured, existing [sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types), [exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types), [trainable classifiers](classifier-learn-about.md#learn-about-trainable-classifiers), and [fingerprint SITs](document-fingerprinting.md#document-fingerprinting) scan images as well as documents and emails.

## See also

- [Learn about data loss prevention](dlp-learn-about-dlp.md#learn-about-data-loss-prevention)
- [Learn about insider risk management](insider-risk-management.md#learn-about-insider-risk-management)
- [Learn about records management](data-lifecycle-management.md#learn-about-data-lifecycle-management)
