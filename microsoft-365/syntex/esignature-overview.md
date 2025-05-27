---
title: Overview of SharePoint eSignature
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: amcdonnell
ms.date: 05/06/2025
audience: enabler
ms.topic: concept-article
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
> Through June 2025, you can try out a [limited amount](promo-syntex.md#monthly-included-capacity) of eSignature by sending up to five requests at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out pay-as-you-go services](promo-syntex.md).

SharePoint eSignature simplifies the process of signing and sharing documents, while providing the security and compliance of Microsoft 365.

With SharePoint eSignature, you can quickly and securely send documents for signature to people both inside and outside of your organization. You also have a digital audit trail, which can be used to verify the authenticity of documents and transactions.

![Diagram showing the eSignature process.](../media/content-understanding/esignature-overview-flow.png)

## Regional availability

SharePoint eSignature is currently available in the US, UK, Canada, the EU, and Australia Pacific. It will be available worldwide later in 2025. The ability to use SharePoint eSignature with other electronic signature providers is available worldwide.

## Before you begin

### Legal considerations

SharePoint eSignature uses simple electronic signatures as defined under applicable law including, but not limited, to the Regulation (EU) No 910/2014 (the eIDAS Regulation). Determine whether this is appropriate for your needs and then read the [SharePoint eSignature terms of service](/legal/microsoft-365/esignature-terms-of-service).

### Licensing

Before you can use SharePoint eSignature, you must first link your Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). SharePoint eSignature is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md). Before you can enable SharePoint eSignature, an admin must [set up SharePoint eSignature](esignature-setup.md) in the Microsoft 365 admin center.

### External sharing

SharePoint eSignature enables binding agreements between parties. External parties are allowed guests access to SharePoint via Microsoft Entra ID in order to electronically sign a document. Certain external sharing settings must be enabled at a tenant and site level to allow this access. For more information, see [Set up SharePoint eSignature for external recipients](esignature-setup.md#external-recipients). Consider whether this meets your compliance and security requirements when enabling eSignature.

### Purview integration

SharePoint eSignature enables logging of eSignature activities in the Purview Audit log. Activities can be viewed by opening the audit log and searching for *eSignature* in the **Activities - operation names** field. The activities logged are:

- Request was created
- Request was sent
- Request was canceled
- Request was declined
- Request has expired
- Request was completed
- Document was viewed by recipient
- Document was signed by the recipient
- Signed document link was sent to the recipient
- Signed document was downloaded by recipient

## Using other signature providers

SharePoint eSignature is now integrated with other electronic signature providers, such as Adobe Acrobat Sign and DocuSign. You can initiate requests using these other providers from PDF documents in SharePoint, while ensuring the secure and automatic storage of signed documents in Microsoft 365. Other electronic signature providers will be added in the future.

The providers facilitate the signing process and send out all relevant notifications. When signing is complete, a copy of the fully signed document is automatically saved in SharePoint for easy access. For more information, see [how to add signature providers](esignature-setup.md#add-signature-providers) and [how to create a signature request using another provider](esignature-send-requests.md#create-a-signature-request-using-another-provider).

## Current release notes

- The feature to use SharePoint eSignature in Word will begin rolling out to users on the Microsoft 365 Beta and Current channels at the end of May. Until then, SharePoint eSignature is available for only PDF documents.

- Tracking of SharePoint eSignature requests through the Approvals app in Microsoft Teams is now available.

- Support for Adobe Acrobat Sign and DocuSign is now available worldwide. In the future, there will be potential integration with other electronic signature providers.

<br>

> [!div class="nextstepaction"]
> [Create a signature request](esignature-send-requests.md)
