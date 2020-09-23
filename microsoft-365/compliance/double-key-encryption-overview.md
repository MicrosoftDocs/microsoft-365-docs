---
# required metadata

title: Double Key Encryption FAQ
description: Frequently asked questions about Double Key Encryption for Microsoft 365.
author: kccross
ms.author: krowley
manager: laurawi
ms.date: 09/22/2020
ms.topic: conceptual
ms.service: information-protection
audience: Admin
ms.reviewer: esaggese
localization_priority: Normal
ms.collection:
- M365-security-compliance

---

Have a question about how Double Key Encryption works? Check for an answer here.

## What is Double Key Encryption for Microsoft 365 (DKE)?

Double Key Encryption for Microsoft 365 enables customers to protect their highly sensitive data to meet specialized requirements. It helps customers maintain full control of their encryption keys. It uses two keys to protect data; one key in the your control and a second key stored securely in Microsoft Azure. Viewing data protected with Double Key Encryption requires access to both keys. Since Microsoft can access only one of these keys, protected data remains inaccessible to Microsoft, ensuring that you have full control over your data privacy and security.  

Double Key Encryption allows you to store your keys and data within the same geographical boundaries, helping you meet compliance requirements.

## Can I use Double Key Encryption with Microsoft Office built-in sensitivity labeling?

Currently documents protected using Double Key Encryption do not support Microsoft Office built-in sensitivity labeling. You'll need to use the Azure Information Protection unified labeling client.  

## How is Double Key Encryption different from the existing hold your own key (HYOK) solution?

Double Key Encryption encrypts your data with two keys. Your encryption key is in your control and the second key is stored in Microsoft Azure, allowing you to move your encrypted data to the cloud. HYOK protects your content with only one key and the key is always on premises.  

## Can Double Key Encrypted documents be shared externally? 

You can share Double Key Encrypted documents with users on a separate tenant as long as those users:

- Have the required permission to access your key in your Double Key Encryption service.

Have the required permission to access your key in Microsoft Azure.

## What happens to documents that are protected with HYOK? 

Deploying Double Key Encryption won't affect your existing HYOK setup. However, we recommend that you start using Double Key Encryption in parallel with HYOK.

## Can I run Double Key Encryption in my non-Microsoft air-gapped environment?

Currently Double Key Encryption does not support this scenario. The Double Key Encryption service requires access to Microsoft Azure.

## Where can I store Double Key Encrypted documents?

Double Key Encrypted documents can be stored on-premises or in the cloud. Customers can move their encrypted content to SharePoint Online and OneDrive for Business. Since Microsoft does not have access to customer’s private key, the encrypted data remains opaque to Microsoft and therefore customers will not be able to view the encrypted documents online.  


When will Double Key Encryption be generally available? 

We anticipate that Double Key Encryption will be generally available in Q3 CY 2020. Please note this timeline is an estimate only and is subject to change.  

 

Will Double Key Encryption be available in Government clouds? 

We anticipate that Double Key Encryption will be available in Government clouds in Q3 CY 2020. Please note this timeline is an estimate only and is subject to change.  

 

Are there additional features coming to this solution? 

Yes, new capabilities will constantly be added to Double Key Encryption post public preview. We will be updating our roadmap here as soon as we can. 

 

What region(s)/language(s) is Double Key Encryption available in? Is Double Key Encryption available world-wide? 

Double Key Encryption labels are localized in the same languages as other labels in Microsoft Information Protection are. Double Key Encryption is available worldwide in public preview. 