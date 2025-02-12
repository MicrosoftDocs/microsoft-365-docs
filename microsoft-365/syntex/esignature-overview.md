---
title: Overview of SharePoint eSignature
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: amcdonnell
ms.date: 01/16/2025
audience: enabler
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn about SharePoint eSignature and how to send electronic signature requests to people inside and outside of your organization. 
---

# Overview of SharePoint eSignature

> [!NOTE]
> Through June 2025, you can try out a [limited amount](promo-syntex.md#monthly-included-capacity) of eSignature by sending up to five requests at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

SharePoint eSignature simplifies the process of signing and sharing documents, while providing the security and compliance of Microsoft 365.

With SharePoint eSignature, you can quickly and securely send documents for signature to people both inside and outside of your organization. You also have a digital audit trail, which can be used to verify the authenticity of documents and transactions.

![Diagram showing the eSignature process.](../media/content-understanding/esignature-overview-flow.png)

## Regional availability

SharePoint eSignature is currently available in the US, UK, Canada, the EU, and Australia Pacific. It will be available worldwide later in 2025. Furthermore, the use of other eSignature providers as an integration with the SharePoint eSignature platform is available globally.

## Before you begin

### Legal considerations

SharePoint eSignature uses simple electronic signatures as defined under applicable law including, but not limited, to the Regulation (EU) No 910/2014 (the eIDAS Regulation). Determine whether this is appropriate for your needs and then read the [SharePoint eSignature terms of service](/legal/microsoft-365/esignature-terms-of-service).

### Licensing

Before you can use SharePoint eSignature, you must first link your Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). SharePoint eSignature is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md). Before you can enable SharePoint eSignature, an admin must [set up SharePoint eSignature](esignature-setup.md) in the Microsoft 365 admin center.

### External sharing

SharePoint eSignature enables binding agreements between parties. External parties are allowed guests access to SharePoint via Microsoft Entra ID in order to electronically sign a document. Certain external sharing settings must be enabled at a tenant and site level to allow this access. For more information, see [Set up SharePoint eSignature for external recipients](esignature-setup.md#external-recipients). Consider whether this meets your compliance and security requirements when enabling eSignature.

## Using other signature providers

SharePoint eSignature is now integrated with other electronic signature providers, such as Adobe Acrobat Sign and DocuSign. You can initiate requests using these other providers from PDF documents in SharePoint, while ensuring the secure and automatic storage of signed documents in Microsoft 365. Other electronic signature providers will be added in the future.

The providers facilitate the signing process and send out all relevant notifications. When signing is complete, a copy of the fully signed document is automatically saved in SharePoint for easy access. For more information, see [how to add other signature providers](esignature-setup.md#add-other-signature-providers) and [how to create a signature request using another provider](esignature-send-requests.md#create-a-signature-request-using-another-provider).

## Current release notes

- SharePoint eSignature is available for only PDF documents at this time.

- Tracking of SharePoint eSignature requests through the Approvals app in Microsoft Teams is now available.

- Support for Adobe Acrobat Sign and Docusign is now available. In the future, there will be potential integration with other electronic signature providers.

- Support for Adobe Acrobat sign and Docusign is now available globally.

<br>

> [!div class="nextstepaction"]
> [Create a signature request](esignature-send-requests.md)
