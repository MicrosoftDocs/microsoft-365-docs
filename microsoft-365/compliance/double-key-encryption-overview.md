---
# required metadata

title: Double Key Encryption overview and FAQ
description: Frequently asked questions about Double Key Encryption for Microsoft 365.
author: kccross
ms.author: krowley
manager: laurawi
ms.date: 12/11/2020
ms.topic: conceptual
ms.service: information-protection
audience: Admin
ms.reviewer: esaggese
localization_priority: Normal
ms.collection:
- M365-security-compliance

---

# Double Key Encryption frequently asked questions

Have a question about how Double Key Encryption works? Check for an answer here.

## What is Double Key Encryption for Microsoft 365 (DKE)?

Double Key Encryption for Microsoft 365 enables customers to protect their highly sensitive data to meet specialized requirements. It helps customers maintain full control of their encryption keys. It uses two keys to protect data; one key in your control and a second key stored securely in Microsoft Azure. Viewing data protected with Double Key Encryption requires access to both keys. Since Microsoft can access only one of these keys, protected data remains inaccessible to Microsoft, ensuring that you have full control over your data privacy and security.  

You can host the Double Key Encryption service used to request your key, in a location of your choice (on-premises key management server or in the cloud). You maintain the service as you would any other application. Double Key Encryption enables you to control access to the Double Key Encryption service. You can store your highly sensitive data on-premises or move it to the cloud. You can be confident about preventing third-party access because you maintain full control of your key. Double Key Encryption allows you to store your data and key in the same location.

DKE helps you meet regulatory requirements across several regulations and standards such as the General Data Protection Regulation (GDPR), the Health Insurance Portability and Accountability Act (HIPAA), the Gramm-Leach-Bliley Act (GLBA), Russia’s data localization law – Federal Law No. 242-FZ, Australia’s Federal Privacy Act 1988, and New Zealand’s Privacy Act 1993.

## Can I use Double Key Encryption with Microsoft Office built-in sensitivity labeling?

You'll need to use the Azure Information Protection unified labeling client to protect documents with Double Key Encryption. Currently, you can't use Microsoft Office built-in sensitivity labeling.

## What Microsoft 365 Apps can I use with DKE?

You can use DKE labels to protect documents using the desktop versions of Word, Excel, and PowerPoint on Windows. Ensure that you're using *.12711 or later (Desktop versions of Word, PowerPoint, and Excel) on Windows.

## How is Double Key Encryption different from the existing hold your own key (HYOK) solution?

Double Key Encryption encrypts your data with two keys. Your encryption key is in your control and the second key is stored in Microsoft Azure, allowing you to move your encrypted data to the cloud. HYOK protects your content with only one key and the key is always on premises.  

## Can Double Key Encrypted documents be shared externally?

You can share Double Key Encrypted documents with users on a separate tenant as long as those users:

- Have the required permission to access your key in your Double Key Encryption service.

- Have the required permission to access your key in Microsoft Azure.

## What happens to documents that are protected with HYOK?

Deploying Double Key Encryption won't affect your existing HYOK setup. However, we recommend that you start using Double Key Encryption in parallel with HYOK.

## Can I run Double Key Encryption in my non-Microsoft air-gapped environment?

DKE doesn't support these environments because the service requires access to Microsoft Azure.

## Where can I store Double Key Encrypted documents?

You can store Double Key Encrypted documents on-premises or in the cloud. In the cloud, you can move encrypted content to SharePoint Online and OneDrive for Business. Since Microsoft doesn't have access to your private key, the encrypted data remains opaque to Microsoft. This also means that you can't view the encrypted documents online in Office Web Apps.

## What regions and languages is Double Key Encryption available in? Is Double Key Encryption available worldwide?

DKE labels are localized to the same languages as other sensitivity labels in Microsoft Information Protection. Double Key Encryption is available worldwide.

## Can I convert a non-DKE label to a DKE label?

No. You can’t add DKE to a label after you create it. Instead, you must choose **Use Double Key Encryption** and provide the URL of your Double Key Encryption service when you create the label.

## How do I roll my DKE keys?

For instructions on rolling (also called rotating or rekeying) the key you store in Azure, see [Operations for your Azure Information Protection tenant key](/azure/information-protection/operations-customer-managed-tenant-key).

See [Tenant and key settings](double-key-encryption.md#tenant-and-key-settings) for information on creating a new key for the DKE service.

When you create a key, you set up a name and a GUID. Then, if you rotate a key, you keep the old record with the name and GUID but add a new record with the same name but different GUID. The new key gets set as active so that the public key API starts returning it for new encryption. Both keys are available for decryption so that new content and old content can be decrypted.