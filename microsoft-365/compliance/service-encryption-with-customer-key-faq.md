---
title: "Service encryption with Customer Key for Office 365 FAQ"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 7/31/2018
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- SPO_Content
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 41ae293a-bd5c-4083-acd8-e1a2b4329da6
description: "In addition to the baseline, volume-level encryption that's enabled through BitLocker and Distributed Key Manager (DKM), Office 365 offers an added layer of encryption at the application level for customer content in Office 365, including data from Exchange Online, Skype for Business, SharePoint Online, and OneDrive for Business. This is called service encryption."
---

# Service encryption with Customer Key for Office 365 FAQ

In addition to the baseline, volume-level encryption that's enabled through BitLocker and Distributed Key Manager (DKM), Office 365 offers an added layer of encryption at the application level for customer content in Office 365, including data from Exchange Online, Skype for Business, SharePoint Online, and OneDrive for Business. This is called service encryption.
  
Customer Key is built on service encryption and enables you to provide and control keys that are used to encrypt your data at rest in Office 365 as described in the [Online Services Terms (OST)](https://www.microsoft.com/Licensing/product-licensing/products.aspx). Customer Key helps you meet compliance obligations because you control the encryption keys that Office 365 uses to decrypt data.
  
To provide feedback on Customer Key, including the documentation, send your ideas, suggestions, and perspectives to customerkeyfeedback@microsoft.com.
  
## What is service encryption with Customer Key?

Customer Key enhances the ability of your organization to meet the demands of compliance requirements that specify key arrangements with the cloud service provider. With Customer Key, you provide and control the encryption keys for your Office 365 data at-rest at the application level. As a result, you may exercise control and revoke your organization's keys, should you decide to exit the service. By revoking the keys, the data is unreadable to the service. Key revocation is the first step on the path towards data deletion.

## What Office 365 data at rest is covered by Customer Key?
<a name="WhatDataIsCoveredbyCustomerKey"> </a>

SharePoint Online site content and the files stored on that site and files uploaded to OneDrive for Business are covered. Exchange Online mailbox content (e-mail body, calendar entries, and content of email attachments) is covered. Text conversations from Skype for Business are covered, but Skype Meeting Broadcast recordings and Skype Meeting content uploads are not covered. Skype Meeting Broadcast and Skype Meeting content uploads are encrypted along with all other content in Office 365, but we currently don't offer customer control of the encryption keys.
  
## What is the difference between Customer Key and Bring Your Own Key (BYOK) with Azure Information Protection for Exchange Online?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

Both options enable you to provide and control your own encryption keys; however, service encryption with Customer Key encrypts your data at rest, residing in Office 365 servers at-rest, while BYOK with Azure Information Protection for Exchange Online encrypts your data-in-transit and provides persistent online and offline protection for email messages and attachments for Office 365. Customer Key and BYOK with Azure Information Protection for Exchange Online are complementary, and whether you choose to use Microsoft's service-managed keys or your own keys, encrypting your data-at-rest and in-transit can provide added protection from malicious attacks.
  
BYOK with Azure Information Protection for Exchange Online is offered in the Office 365 Message Encryption capabilities.
  
## Does Office 365 Message Encryption and Bring Your Own Key with Azure Information Protection change Microsoft's approach to third-party data requests such as subpoenas?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

No. Office 365 Message Encryption and the option to provide and control your own encryption keys with Bring Your Own Key (BYOK) for Azure Information Protection was not designed to respond to law enforcement subpoenas. Office 365 Message Encryption with BYOK for AIP was designed for compliance focused customers that need to meet their internal or external compliance obligations. Microsoft takes third-party requests for customer data very seriously. As a cloud service provider, we always advocate for the privacy of customer data. In the event we get a subpoena, we always attempt to redirect the third party to the customer to obtain the information. (Please read Brad Smith's blog: [Protecting customer data from government snooping](https://blogs.microsoft.com/blog/2013/12/04/protecting-customer-data-from-government-snooping/)). We periodically publish detailed information of the request we receive [here](https://www.microsoft.com/trustcenter/Privacy/govt-requests-for-data).
  
See the [Microsoft Trust Center](https://www.microsoft.com/trustcenter/default.aspx) regarding third-party data requests and "Disclosure of Customer Data" in the [Online Services Terms (OST) ](https://www.microsoft.com/Licensing/product-licensing/products.aspx)for more information.
  
## Does service encryption with Customer Key change Microsoft's approach to third-party data requests such as subpoenas?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

No. Customer Key was not designed to respond to law enforcement subpoenas. It was designed for regulated customers to meet their internal or external compliance obligations. Microsoft takes third-party requests for customer data very seriously. As a cloud service provider, we always advocate for the privacy of customer data. In the event we get a subpoena, we always attempt to redirect the third party to the customer to obtain the information. (Please read Brad Smith's blog: [Protecting customer data from government snooping](https://blogs.microsoft.com/blog/2013/12/04/protecting-customer-data-from-government-snooping/)). We periodically publish detailed information of the request we receive [here](https://www.microsoft.com/en-us/trustcenter/Privacy/govt-requests-for-data).
  
See the [Microsoft Trust Center](https://www.microsoft.com/trustcenter/Privacy/govt-requests-for-data) regarding third-party data requests and "Disclosure of Customer Data" in the [Online Services Terms (OST)](https://www.microsoft.com/Licensing/product-licensing/products.aspx) for more information. 
  
## Is FastTrack support available for implementing Customer Key?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

No. FastTrack is only used to collect tenant and service configuration information that is required to register for Customer Key. The Customer Key Offers are published via FastTrack so that it is convenient for customers and partners to submit this required information using the same method and for ease of archiving the data that customers provide in the Offer.
  
If you need additional support beyond the documentation, contact Microsoft Consulting Services (MCS), Premier Field Engineering (PFE), or a Microsoft partner for assistance.
  
## If my keys are destroyed, how can I recover?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

The availability key provides you with the capability to recover from the unanticipated loss of root keys that you manage. If you lose your root keys, contact Microsoft Support and Microsoft will assist you through the process of enabling the availability key. You'll use the availability key to migrate to a new Data Encryption Policy with new keys provisioned by you. 
  
## What is the availability key?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

The availability key is a root key that is provisioned when you create a data encryption policy. The availability key is stored and protected within Office 365 and is functionally similar to the two root keys that are supplied by you for use with service encryption with Customer Key. Unlike the keys that you provide and manage in Azure Key Vault, you can't directly access the availability key. Storage and control of the availability key are deliberately different from Azure Key Vault keys for three reasons: first, the availability key provides a high-availability capability in the event that Office 365 services are unable to reach keys hosted in Azure Key Vault; second, the availability key provides a "break glass" capability in the event that both Azure Key Vault keys are lost; and third, the separation of logical controls provides defense-in-depth and protects against the loss of all keys from a single attack or point of failure. Sharing the responsibility to protect the keys, while using a variety of protections and processes for key management, ultimately reduces the risk that all keys (and therefore your data) will be lost or destroyed. Microsoft provides you with sole authority over the destruction of the availability key. By design, no one at Microsoft has access to the availability key - it is only accessible by Office 365 service code.
  
## How many data encryption policies (DEPs) can I create?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

 **Exchange Online and Skype for Business:** You can create up to 50 DEPs. 
  
 **SharePoint Online and OneDrive for Business:** A DEP applies to data in one geographic location, also called a geo. If you use the multi-geo feature of Office 365, you can create one DEP per geo. If you are not using multi-geo, you can create one DEP.
  
## Can I assign a data encryption policy before migrating a mailbox to the cloud?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

Yes. You can use the Windows PowerShell cmdlet Set-MailUser to assign a data encryption policy (DEP) to the user prior to migrating the mailbox to Office 365. When you do this, the contents of the mailbox will be encrypted using the assigned DEP as the content is migrated. This can be more efficient than assigning a DEP after the mailbox has already been migrated and then waiting for encryption to take place, which can take hours or possibly days. 
  
## How do I verify that encryption with Customer Key is activated and Office 365 has finished encrypting with Customer Key?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

 **Exchange Online and Skype for Business:** You can [connect to Exchange Online using remote PowerShell](https://technet.microsoft.com/library/jj984289%28v=exchg.160%29.aspx) and then use the **[Get-MailboxStatistics]** cmdlet for each mailbox that you want to check. In the output from the Get-MailboxStatistics cmdlet, the  _IsEncrypted_ property returns a value of **true** if the mailbox is encrypted and a value of **false** if it's not. If the mailbox is encrypted, the value returned for the  _DataEncryptionPolicyID_ property is the GUID of the DEP with which the mailbox is encrypted. For more information on running this cmdlet, see [Get-MailboxStatistics](https://technet.microsoft.com/library/bb124612%28v=exchg.160%29.aspx) and using PowerShell with Exchange Online. 
  
If the mailboxes aren't encrypted after waiting 72 hours from the time you assigned the DEP, initiate a mailbox move. To do this, [connect to Exchange Online using remote PowerShell](https://technet.microsoft.com/library/jj984289%28v=exchg.160%29.aspx) and then use the New-MoveRequest cmdlet and provide the alias of the mailbox as follows: 
  
```powershell
New-MoveRequest <alias>
```

 **SharePoint Online and OneDrive for Business:** You can [connect to SharePoint Online PowerShell](https://technet.microsoft.com/library/fp161372.aspx), and then use the **[Get-SPODataEncryptionPolicy]** cmdlet to check the status of your tenant. The ** _State_** property returns a value of **registered** if Customer Key encryption is enabled and all files in all sites have been encrypted. If encryption is still in progress, this cmdlet provides information on what percentage of sites is complete. 
  
## If I want to switch to a different set of keys, how long does it take for the new set of keys to protect my data?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

 **Exchange Online and Skype for Business:** It can take up to 72 hours to protect a mailbox according to a new Data Encryption Policy (DEP) from the time the new DEP is assigned to the mailbox. 
  
 **SharePoint Online and OneDrive for Business:** It can take up to four hours to re-encrypt your entire tenant once a new key has been assigned. 
  
## Is my existing data stored without encryption at any time while it is decrypted or encrypted with Customer Key?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

No. Your data is always encrypted at rest in the Office 365 service with BitLocker and DKM. For more information, see the "Security, Privacy, and Compliance Information for Office 365", and [How Exchange Online secures your email secrets](https://support.office.com/article/989BA10C-F73F-4EFB-AD1B-AF3322E5F376).
  
## If I no longer want to use customer-managed encryption keys, can I switch to Microsoft-managed keys?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

 **Exchange Online and Skype for Business:** Not yet. This will be supported once service encryption in Office 365 with Microsoft-managed keys is rolled out broadly. We expect to roll this out in the service after we release service encryption with Customer Key. 
  
 **SharePoint Online and OneDrive for Business:** Yes. You can choose to revert to using Microsoft-managed keys separately for each geo (if you use the multi-geo feature) or for all your data if it is in a single geo. 
  
## If I lose my keys, how long does it take to recover service availability using the recovery key?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

 **Exchange Online and Skype for Business:** Once you call in to use the availability key, mailboxes will be accessible within minutes. 
  
 **SharePoint Online and OneDrive for Business:** This operation is proportional to the number of sites you have. Once you call Microsoft to use the availability key, you will be fully online within about four hours. 
  
## How is the availability key used with Exchange Online?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

There are three ways that the availability key is used with Exchange Online:
  
- Service availability - in the event that Azure Key Vault keys are unreachable.
    
- Actions initiated by Office 365 service code - such as search index creation or mailbox moves.
    
- Recover from key loss - such as the loss of both Azure Key Vault keys associated with a single DEP.
    
 **Using the availability key for service availability in the event Azure Key Vault keys are unreachable.**
  
Office 365 uses the availability key both for service availability and recovery from an unhealthy Customer Key state for Exchange Online. There is a hierarchy of keys used by Customer Key. This hierarchy is illustrated in the following figure.
  
![A graphic shows the hierarchy of keys in Customer Key](media/a760156b-737f-469a-80ab-c28b7a8b9160.png)
  
If both Azure Key Vault keys of a single Data Encryption Policy (DEP) are unavailable, Office 365 can use the availability key to change to a new DEP. Office 365 determines whether to use the availability key for service availability differently depending on whether a user-initiated activity, for example, when a user downloads email to the Outlook client, or a system-initiated activity, such as indexing mailbox contents, or for eDiscovery searches, triggered the process.
  
Office 365 follows this process in response to user-initiated actions to determine whether to use the availability key for user mailboxes:
  
1. Office 365 reads the DEP to which the mailbox is assigned in order to determine the location of the two customer keys in Azure Key Vault.
    
2. Office 365 randomly chooses one of the two customer keys from the DEP and sends a request to Azure Key Vault to unwrap the DEP key using the customer key.
    
3. If the request to unwrap the DEP key using the customer key fails and returns an error, Office 365 sends a second request to Azure Key Vault, this time instructing it to use the alternate (second) customer key.
    
4. If the second request to unwrap the DEP key using the customer key fails and returns an error, Office 365 examines the results of both requests:
    
  - If the examination determines that the errors DO NOT reflect an explicit action by a customer identity, then Office 365 uses the availability key to decrypt the DEP key. The DEP key is then used to decrypt the mailbox key and complete the user request.
    
    In this case, Azure Key Vault is either unable to respond or unreachable for whatever reason. Office 365 has no way of determining if the customer has intentionally revoked access to the keys.
    
  - If the examination indicates that deliberate action has been taken to render the customer keys unavailable, then the availability key will not be used, the user request fails, and the user receives an error message, such as login failure.
    
    When this happens, the customer is made aware that service is impacted, and the condition of Customer Key is unhealthy. For example, if a customer is using a single DEP for all mailboxes in the organization, the customer may experience a widespread failure where users can't access their mailboxes. This ensures that when both customer keys are unhealthy, the customer is made aware of the need to correct the situation and restore the service to a healthy state.
    
 **Using the availability key for actions initiated by Office 365 service code.**
  
Office 365 service code always has a valid login token and can't be blocked. Therefore, until the availability key has been deleted, it can be used for actions initiated by, or internal to, Office 365 service code, such as search index creation or moving mailboxes.
  
 **Using the availability key to recover from key loss.**
  
You can use the availability key to recover from the loss of both Azure Key Vault keys that are associated with the same DEP, as described in the answer to the FAQ entry "If my keys are destroyed, how can I recover?".
  
## How is the availability key used with SharePoint Online and OneDrive for Business?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

The SharePoint Online and OneDrive for Business architecture and implementation for Customer Key and availability key are different from Exchange Online and Skype for Business.
  
When a customer moves to customer-managed keys, Office 365 creates a tenant-specific intermediate key (TIK). Office 365 encrypts the TIK twice, once with each of the customer keys, and stores the two encrypted versions of the TIK. Only the encrypted versions of the TIK are stored, and a TIK can only be decrypted with the customer keys. The TIK is then used to encrypt site keys, which are then used to encrypt blob keys. The blobs themselves are encrypted and stored in the Microsoft Azure Blob storage service.
  
Office 365 follows this process to access a blob that has customer file data:
  
1. Decrypt the TIK using the Customer Key.
    
2. Use the decrypted TIK to decrypt a site key.
    
3. Use the decrypted site key to decrypt a blob key.
    
4. Use the decrypted blob key to decrypt the blob.
    
When decrypting a TIK, Office 365 issues two decryption requests to Azure Key Vault with a slight offset. The first one to finish furnishes the result, canceling the other request.
  
In case the customer loses access to their customer keys, Office 365 also encrypts the TIK with an availability key and stores this along with the TIKs encrypted with each customer key. The TIK encrypted with the availability key is used only when the customer calls Microsoft to enlist the recovery path when they have lost access to their keys, maliciously or accidentally.
  
For availability and scale reasons, decrypted TIKs are cached in a time-limited memory cache. Two hours before a TIK cache is set to expire, Office 365 attempts to decrypt each TIK. Decrypting the TIKs extends the lifetime of the cache. If TIK decryption fails for a significant amount of time, Office 365 generates an alert to notify engineering prior to the cache expiration. Only if the customer calls Microsoft will Office 365 initiate the recovery operation, which involves decrypting the TIK with the availability key stored in Microsoft's secret store and onboarding the tenant again using the decrypted TIK and a new set of customer-supplied Azure Key Vault keys.
  
As of today, Customer Key is involved in the encryption and decryption chain of SharePoint Online file data stored in the Azure blob store, but not SharePoint Online list items or metadata stored in the SQL database. Office 365 does not use the availability key for SharePoint Online or OneDrive for Business other than the case described above, which is customer initiated. Human access to customer data is protected by Customer Lockbox.
  
## How is Customer Key licensed?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

Customer Key is offered in the Office 365 Enterprise Suite, "E5", and the Advanced Compliance SKU. Additionally, customers must also purchase the appropriate license for using Azure Key Vault.
  
Each user benefiting from Customer Key needs to be licensed if they want to be covered by Customer Key.
  
For SharePoint Online, the Office 365 Administrator who configures Customer Key also needs to be licensed, to perform the setup steps. Additionally, the users that are benefiting from the feature need to be licensed - this includes the site owner and any users accessing files on one or more sites that are encrypted using Customer Key. External users do not need to be licensed to access files on one or more sites that are encrypted using Customer Key.
  
For Exchange Online, "user" mailboxes and "mail user" mailboxes must be licensed. All others, such as shared mailboxes, are not required to have a license for Customer Key. To check that your Exchange Online mailbox is properly licensed, run the following cmdlet:
  
```powershell
(Get-Mailbox <alias >).PersistedCapabilities
```

If the string BPOS_S_EquivioAnalytics exists, then the mailbox is properly licensed. If not, you must apply the proper license in order to use the Customer Key feature for this mailbox.
  
## Can I enable Customer Key for a trial subscription?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

No. By definition, trial subscriptions have a limited lifetime. Encryption keys that are hosted in trial subscriptions can be lost at the end of the trial lifetime. Because Microsoft cannot and does not prevent customers from putting important customer data in trial subscriptions, the use of Customer Key with trial subscriptions is prohibited.
  
## How much will using Customer Key cost?
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

In addition to the licensing required for Customer Key, customers will incur a cost for Key Vault usage. [Azure Key Vault pricing details](https://azure.microsoft.com/pricing/details/key-vault/) describes the cost model and will assist with estimating. There is no way to predict the exact cost that any customer will incur because usage patterns vary. Experience has shown that the cost is very low and generally falls within the range of $0.002 to $0.005 per user per month plus the cost of HSM-backed keys. The cost will also vary according to the logging configuration chosen by the customer and the amount of Azure storage used for Azure Key Vault logs. 
  
## For more information
<a name="DiffCustomerKeyandBYOKAzureIP"> </a>

To get started with Customer Key, see [Controlling your data in Office 365 using Customer Key](controlling-your-data-using-customer-key.md).
  

