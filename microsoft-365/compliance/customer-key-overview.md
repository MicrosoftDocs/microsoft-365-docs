---
title: "Service encryption with Customer Key in Office 365"
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 10/4/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
description: "With Customer Key, you control your organization's encryption keys and then configure Office 365 to use them to encrypt your data at rest in Microsoft's datacenters."
---

# Service encryption with Customer Key in Office 365

Office 365 provides baseline, volume-level encryption enabled through BitLocker and Distributed Key Manager (DKM). Office 365 offers an added layer of encryption at the application level for your content. This content includes data from Exchange Online, Skype for Business, SharePoint Online, including Team Sites, and OneDrive for Business. This added layer of encryption is called service encryption.

> [!IMPORTANT]
> REVIEWERS - This topic is made up of the OVERVIEW/CONCEPTUAL content from the FAQ. This needs review for content, readability, and especially REDUNDANCY (the faq had lots of that). **AYLA: My goal is to get rid of the FAQ**. This topic will introduce Service encryption (as it relates to customer key), lockbox and customer lockbox (as they relate to Customer Key), Customer Key itself (what it is and isn't), and BYOK (as it relates to Customer Key). This article then introduces the rest of the customer key articles in logical order.

Customer Key is built on service encryption and lets you provide and control encryption keys. Office 365 then uses these keys to encrypt your data at rest as described in the [Online Services Terms (OST)](https://www.microsoft.com/en-us/Licensing/product-licensing/products.aspx). Customer Key helps you meet compliance obligations because you control the encryption keys that Office 365 uses to encrypt and decrypt data.
  
Customer Key enhances the ability of your organization to meet the demands of compliance requirements that specify key arrangements with the cloud service provider. With Customer Key, you provide and control the encryption keys for your Office 365 data at-rest at the application level. As a result, you may exercise control and revoke your organization's keys, should you decide to exit the service. By revoking the keys, the data is unreadable to the service. Key revocation is the first step on the path towards data deletion.

> [!IMPORTANT]
> REVIEWERS - For more information about this process, see ***Data Purge Path???*** in Manage Customer Key??? I believe this should go either in its own topic (exiting the service) or in managing. I think right now it's in availability key. Find out and move it.

With Customer Key, you control your organization's encryption keys and then configure Office 365 to use them to encrypt your data at rest in Microsoft's data centers. In other words, Customer Key allows customers to add a layer of encryption that belongs to them, with their keys. Data at rest includes data from Exchange Online and Skype for Business stored in mailboxes and files stored in SharePoint Online and OneDrive for Business.

## Office 365 Service encryption

Service encryption ensures that content at rest is encrypted at the application layer. This provides additional protection against viewing of data by unauthorized systems or personnel, and complements BitLocker disk encryption in Microsoft datacenters. Service encryption is not meant to prevent Microsoft personnel from accessing customer data. The primary purpose is to assist customers in meeting regulatory or compliance obligations for controlling root keys. Customers explicitly authorize O365 services to use their encryption keys to provide value added cloud services, such as eDiscovery, anti-malware, anti-spam, search indexing, etc.

## Customer Key encrypts data at rest in Office 365

Using keys you provide, Customer Key for Office 365 encrypts:

- SharePoint Online site content and files stored on that site, including Team Sites.
- Files uploaded to OneDrive for Business.
- Exchange Online mailbox content including e-mail body content, calendar entries, and the content of email attachments.
- Text conversations from Skype for Business.

We don't currently offer customer control of the encryption keys for Skype Meeting Broadcast and Skype Meeting content uploads. Instead, this content is encrypted along with all other content in Office 365.
  
## Use Customer Key and Bring Your Own Key (BYOK) with Azure Information Protection for Exchange Online

Both options enable you to provide and control your own encryption keys; however, service encryption with Customer Key for Office 365 encrypts your data at rest, residing in Office 365 servers. BYOK with Azure Information Protection for Exchange Online encrypts your data-in-transit and provides persistent online and offline protection for email messages and attachments for Office 365. Customer Key and BYOK with Azure Information Protection for Exchange Online are complementary, and whether you choose to use Microsoft's service-managed keys or your own keys, encrypting your data-at-rest and in-transit can provide added protection from malicious attacks.
  
BYOK with Azure Information Protection for Exchange Online is offered with the new Office 365 Message Encryption capabilities. 

> [!WARNING]
> REVIEWERS - For more information, see *** Azure or OME content?

## We welcome your feedback

To provide feedback on Customer Key, including the documentation, send your ideas, suggestions, and perspectives to customerkeyfeedback@microsoft.com.
  
## Related articles

- [Set up Customer Key for Office 365](customer-key-set-up.md)

- [Manage Customer Key for Office 365](customer-key-manage.md)

- [Roll or rotate a customer key or an availability key](customer-key-availability-key-roll.md)

- [Understand the availability key](customer-key-availability-key-understand.md)

- [Service encryption with Customer Key for Office 365 FAQ](service-encryption-with-customer-key-faq.md)

- [Office 365 Service Encryption](office-365-service-encryption.md)
  