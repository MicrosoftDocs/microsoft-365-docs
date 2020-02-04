---
title: "Service encryption with Customer Key in Office 365"
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 11/20/2019
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

Office 365 provides baseline, volume-level encryption enabled through BitLocker and Distributed Key Manager (DKM). Office 365 offers an added layer of encryption at the application level for your content. This content includes data from Exchange Online, Skype for Business, SharePoint Online, OneDrive for Business, and Teams files. This added layer of encryption is called service encryption.

## How service encryption, BitLocker, and Customer Key work together

Service encryption ensures that content at rest is encrypted at the application layer. **Your data is always encrypted at rest in the Office 365 service with BitLocker and DKM**. For more information, see the "Security, Privacy, and Compliance Information for Office 365", and [How Exchange Online secures your email secrets](exchange-online-secures-email-secrets.md). Customer Key provides additional protection against viewing of data by unauthorized systems or personnel, and complements BitLocker disk encryption in Microsoft datacenters. Service encryption is not meant to prevent Microsoft personnel from accessing customer data. The primary purpose is to assist customers in meeting regulatory or compliance obligations for controlling root keys. Customers explicitly authorize O365 services to use their encryption keys to provide value added cloud services, such as eDiscovery, anti-malware, anti-spam, search indexing, etc.

Customer Key is built on service encryption and lets you provide and control encryption keys. Office 365 then uses these keys to encrypt your data at rest as described in the [Online Services Terms (OST)](https://www.microsoft.com/licensing/product-licensing/products.aspx). Customer Key helps you meet compliance obligations because you control the encryption keys that Office 365 uses to encrypt and decrypt data.
  
Customer Key enhances the ability of your organization to meet the demands of compliance requirements that specify key arrangements with the cloud service provider. With Customer Key, you provide and control the root encryption keys for your Office 365 data at-rest at the application level. As a result, you exercise control over your organization's keys. If you decide to exit the service, you revoke your organization's root keys. For all Office 365 services, key revocation is the first step on the path towards data deletion. By revoking the keys, the data is unreadable to the service.

## Customer Key encrypts data at rest in Office 365

Using keys you provide, Customer Key for Office 365 encrypts:

- SharePoint Online, OneDrive for Business, and Teams files.
- Files uploaded to OneDrive for Business.
- Exchange Online mailbox content including e-mail body content, calendar entries, and the content within email attachments.
- Text conversations from Skype for Business.

We don't currently offer customer control of the encryption keys for Skype Meeting Broadcast and Skype Meeting content uploads. Instead, this content is encrypted along with all other content in Office 365.

### Customer Key with hybrid deployments

Customer Key only encrypts data at rest in the cloud. Customer Key does not work to protect your on-premises mailboxes and files. You can encrypt your on-premises data using another method, such as BitLocker.

## About the data encryption policy (DEP)

A data encryption policy defines the encryption hierarchy to encrypt data using each of the keys you provide as well as the availability key protected by Microsoft. You create DEPs using PowerShell cmdlets, which are different for each service, and assign those to encrypt application data. For example:

**Exchange Online and Skype for Business** You can create up to 50 DEPs per tenant. You associate DEPs to your Customer Keys in Azure Key Vault and assign DEPs to individual mailboxes. When you assign a DEP to a mailbox, allow 72 hours for the mailbox to become encrypted with the new DEP. If the mailboxes aren't encrypted after waiting 72 hours from the time you assigned the DEP, initiate a mailbox move. To do this, [connect to Exchange Online using remote PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell?redirectedfrom=MSDN&view=exchange-ps) and then use the **New-MoveRequest** cmdlet. Refer to the details in [Set up Customer Key for Office 365](customer-key-set-up.md). Later, you can either refresh the DEP or reassign the mailbox to another DEP as described in [Manage Customer Key for Office 365](customer-key-manage.md). Each mailbox must have appropriate licenses in order to assign a DEP. For more information about licensing, see [Before you set up Customer Key](customer-key-set-up.md#before-you-set-up-customer-key).

**SharePoint Online, OneDrive for Business, and Teams files** If you're using the multi-geo feature, you can create up to one DEP per geo for your organization. You can use different Customer Keys for each geo. If you're not using the multi-geo feature, you can only create one DEP per tenant. When you assign the DEP, encryption begins automatically but can take some time to complete. Refer to the details in [Set up Customer Key for Office 365](customer-key-set-up.md).

## Leaving the service

Customer Key assists you in meeting compliance obligations by allowing you to revoke your keys when you leave the Office 365 service. When you revoke your keys as part of leaving the service, the availability key is deleted resulting in cryptographic deletion of your data. Cryptographic deletion mitigates the risk of data remanence which is important for meeting both security and compliance obligations. For information about the data purge process and key revocation, see [Revoke your keys and start the data purge path process](customer-key-manage.md#revoke-your-keys-and-start-the-data-purge-path-process).

### Encryption ciphers used by Customer Key

Customer Key uses a variety of encryption ciphers to encrypt keys as shown in the following figures.

#### Encryption ciphers used to encrypt keys for Exchange Online and Skype for Business

![Encryption ciphers for Exchange Online Customer Key](media/customerkeyencryptionhierarchiesexchangeskype.png)

#### Encryption ciphers used to encrypt keys for SharePoint Online, OneDrive for Business, and Teams files

![Encryption ciphers for SharePoint Online Customer Key](media/customerkeyencryptionhierarchiessharepointonedriveteamsfiles.png)

## Related articles

- [Set up Customer Key for Office 365](customer-key-set-up.md)

- [Manage Customer Key for Office 365](customer-key-manage.md)

- [Roll or rotate a Customer Key or an availability key](customer-key-availability-key-roll.md)

- [Customer Lockbox in Office 365](customer-lockbox-requests.md)

- [Office 365 Service Encryption](office-365-service-encryption.md)

- [Learn about the availability key](customer-key-availability-key-understand.md)
