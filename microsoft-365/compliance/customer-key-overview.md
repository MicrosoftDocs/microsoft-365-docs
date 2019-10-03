---
title: "Control your data in Office 365 using Customer Key"
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 10/3/2019
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

# Control your data in Office 365 using Customer Key

Office 365 provides baseline, volume-level encryption enabled through BitLocker and Distributed Key Manager (DKM). Office 365 offers an added layer of encryption at the application level for your content. This content includes data from Exchange Online, Skype for Business, SharePoint Online, including Team Sites, and OneDrive for Business. This added layer of encryption is called service encryption.

Customer Key is built on service encryption and lets you provide and control encryption keys. Office 365 then uses these keys to encrypt your data at rest as described in the [Online Services Terms (OST)](https://www.microsoft.com/en-us/Licensing/product-licensing/products.aspx). Customer Key helps you meet compliance obligations because you control the encryption keys that Office 365 uses to encrypt and decrypt data.
  
Customer Key enhances the ability of your organization to meet the demands of compliance requirements that specify key arrangements with the cloud service provider. With Customer Key, you provide and control the encryption keys for your Office 365 data at-rest at the application level. As a result, you may exercise control and revoke your organization's keys, should you decide to exit the service. By revoking the keys, the data is unreadable to the service. Key revocation is the first step on the path towards data deletion. 
> [!IMPORTANT]
> REVIEWERS - For more information about this process, see ***Data Purge Path???*** in Manage Customer Key??? I believe this should go either in its own topic (exiting the service) or in managing. I think right now it's in availability key. Find out and move it.

With Customer Key, you control your organization's encryption keys and then configure Office 365 to use them to encrypt your data at rest in Microsoft's data centers. In other words, Customer Key allows customers to add a layer of encryption that belongs to them, with their keys. Data at rest includes data from Exchange Online and Skype for Business stored in mailboxes and files stored in SharePoint Online and OneDrive for Business.

## Customer Key service encryption

Service encryption ensures content at rest is encrypted at the application layer providing additional protection against viewing of data by unauthorized systems or personnel, complementary to BitLocker disk encryption in Microsoft datacenters. Service encryption is not meant to prevent Microsoft personnel from accessing customer data. The primary purpose is to assist customers in meeting regulatory or compliance obligations for controlling root keys. Customers explicitly authorize O365 services to use their encryption keys to provide value added cloud services, such as eDiscovery, anti-malware, anti-spam, search indexing, etc.-->

## We welcome your feedback

To provide feedback on Customer Key, including the documentation, send your ideas, suggestions, and perspectives to customerkeyfeedback@microsoft.com.
  
## Related articles

- [Manage Customer Key for Office 365](customer-key-manage.md)

- [Roll or rotate a customer key or an availability key](customer-key-availability-key-roll.md)

- [Understand the availability key](customer-key-availability-key-understand.md)

- [Service encryption with Customer Key for Office 365 FAQ](service-encryption-with-customer-key-faq.md)

- [Office 365 Service Encryption](office-365-service-encryption.md)
  