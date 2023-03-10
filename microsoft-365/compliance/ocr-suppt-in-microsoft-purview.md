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

Microsoft Purview can scan for sensitive content in documents to help protect those documents from inappropriate exposure. Historically, scanning for sensitive information has been limited to text in various types of documents. In this preview, we've added support for optical character recognition (OCR) scanning to detect sensitive content in stand-alone images. With OCR scans enabled, you can apply policies to protect the information in those images.

Once the OCR settings are configured, your existing data loss protection (DLP), autolabeling, and insider risk policies are applied to both images and documents. For example, say that you've configured the DLP condition *content contains sensitive information* and included a data classifier such as the "Credit Card" sensitive information type (SIT). In this case, Microsoft Purview not only scans for credit card numbers in text at those locations, it also scans images at those locations for credit card numbers.

OCR scans are supported in the following areas:

| Preview supports OCR in: | Preview doesn't* support OCR in: |
|-------------------------------|--------------------|
| Autolabeling | Communications compliance |
| Data loss prevention          |Just-in-time protection|
| Digital lifecycle management  | eDiscovery <!-- True? --> |
| Insider risk management|  |

## Where is OCR scanning supported?

OCR scanning is available in the following workflows:

- Endpoint devices (Windows)
- Exchange Online
- OneDrive for Business
- SharePoint Online
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

OCR scanning is an optional feature in Microsoft Purview. When you enable optical character recognition (OCR) data classifiers, such as sensitive information types and trainable classifiers, can detect characters that are in images.

OCR is first enabled at the tenant level, and then you select which services you want to enable it for. For this preview, image scanning is available for stand-alone images in Exchange Online, SharePoint Online, OneDrive for business, Teams, and Windows endpoint devices.

During the preview, this feature is available for free. When the preview is over, to continue to use OCR scans, your organization must have a pay-as-you-go Microsoft Azure subscription. For information about how to create an Azure subscription, see [Create your initial Azure subscriptions](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions))

### Set up OCR Billing in Azure 
<!-- this is largely the same as /syntex/syntex-azure-billing#set-up-microsoft-syntex-billing-in-azure, just with tweaks to change "Microsoft Syntex" to "OCR". -->
 Once you set up OCR billing in Azure, events are sent to the Azure meter in your account, and you'll be able to view the images scanned.

- You must have Global Administrator or SharePoint Administrator permissions to be able to access the Microsoft 365 admin center and set up OCR in the Microsoft Syntex section of the Admin center.
- You must have owner or contributor rights to the Azure subscription that you want to use for OCR billing.

To configure OCR billing:

1. In the Microsoft 365 admin center, select [Setup](https://go.microsoft.com/fwlink/p/?linkid=2171997), and then view the **Files and content** section.

2. In the **Files and content** section, select *Use content AI with Microsoft Syntex.

3. On the **OCR** page, select **Configure billing** to walk through the setup process.

4. On the **Enter your Azure subscription** panel, choose an Azure subscription from the **Azure subscription** dropdown.

5. Choose a resource group and region. (The region determines where your tenant ID and where usage information, such as site names, will be stored.)

6. Select **Save**.

<!-- Do we have instructions for how to monitor OCR usage? Or will that come later? -->

## Limits

- Images that are embedded in Office documents aren't supported.
- Image file sizes must be less than 20 MB
- Images must be at least 50 x 50 pixels and not larger than 16000 x 16,000 px.
- The preview only supports images with machine-typed text
- Only images uploaded after OCR has been enabled are scanned.

## Configure OCR scanning

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


## See also

- [Apply a sensitivity label to content automatically](/compliance/apply-sensitivity-label-automatically)
- [Learn about data loss prevention](/compliance/dlp-learn-about-dlp)
- [Plan for data loss prevention](/compliance/dlp-overview-plan-for-dlp)
- [Design a data loss prevention policy](/compliance/dlp-policy-design)
- [Learn about insider risk management](/compliance/insider-risk-management)
- [Learn about data lifecycle management](/compliance/data-lifecycle-management)
- [Plan for insider risk management](/compliance/insider-risk-management-plan)
- [Create and manage insider risk policies](/compliance/insider-risk-management-policies)
