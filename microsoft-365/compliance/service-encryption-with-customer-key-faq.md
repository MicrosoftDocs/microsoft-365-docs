---
title: "Service encryption with Customer Key for Office 365 FAQ"
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 9/23/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 41ae293a-bd5c-4083-acd8-e1a2b4329da6
description: "In addition to the baseline, volume-level encryption that's enabled through BitLocker and Distributed Key Manager (DKM), Office 365 offers an added layer of encryption at the application level for customer content in Office 365, including data from Exchange Online, Skype for Business, SharePoint Online, and OneDrive for Business. This is called service encryption."
---

# Service encryption with Customer Key for Office 365 FAQ

## Does service encryption with Customer Key change Microsoft's approach to third-party data requests such as subpoenas?

No. Customer Key was not designed to respond to law enforcement subpoenas. It was designed for regulated customers to meet their internal or external compliance obligations. Microsoft takes third-party requests for customer data very seriously. As a cloud service provider, we always advocate for the privacy of customer data. In the event we get a subpoena, we always attempt to redirect the third party to the customer to obtain the information. (Please read Brad Smith's blog: [Protecting customer data from government snooping](http://blogs.microsoft.com/blog/2013/12/04/protecting-customer-data-from-government-snooping/)). We periodically publish detailed information of the request we receive [here](https://www.microsoft.com/en-us/trustcenter/Privacy/govt-requests-for-data).
  
See the [Microsoft Trust Center](https://www.microsoft.com/en-us/trustcenter/Privacy/govt-requests-for-data) regarding third-party data requests and "Disclosure of Customer Data" in the [Online Services Terms (OST)](https://www.microsoft.com/en-us/Licensing/product-licensing/products.aspx) for more information. 
  
## Is FastTrack support available for implementing Customer Key?

No. FastTrack is only used to collect tenant and service configuration information that is required to register for Customer Key. The Customer Key Offers are published via FastTrack so that it is convenient for customers and partners to submit this required information using the same method and for ease of archiving the data that customers provide in the Offer.
  
If you need additional support beyond the documentation, contact Microsoft Consulting Services (MCS), Premier Field Engineering (PFE), or a Microsoft partner for assistance.
  
## If my keys are destroyed, how can I recover? What is the availability key?

The availability key provides you with the capability to recover from the unanticipated loss of root keys that you manage. For more information about the availability key, see [Understand the availability key for Office 365 Customer Key](customer-key-availability-key-understand.md).
  
 
## Verify that encryption with Customer Key activation and Office 365 has finished encrypting with Customer Key?

> [!WARNING]
> I think this is a duplicate after setup or in manage already. if it's a duplicate, ensure the other version has all this information (in the proper format, which this is not), then delete one of them.

 **Exchange Online and Skype for Business:** You can [connect to Exchange Online using remote PowerShell](https://technet.microsoft.com/en-us/library/jj984289%28v=exchg.160%29.aspx) and then use the **[Get-MailboxStatistics]** cmdlet for each mailbox that you want to check. In the output from the Get-MailboxStatistics cmdlet, the  _IsEncrypted_ property returns a value of **true** if the mailbox is encrypted and a value of **false** if it's not. If the mailbox is encrypted, the value returned for the  _DataEncryptionPolicyID_ property is the GUID of the DEP with which the mailbox is encrypted. For more information on running this cmdlet, see [Get-MailboxStatistics](https://technet.microsoft.com/en-us/library/bb124612%28v=exchg.160%29.aspx) and using PowerShell with Exchange Online.
  
If the mailboxes aren't encrypted after waiting 72 hours from the time you assigned the DEP, initiate a mailbox move. To do this, [connect to Exchange Online using remote PowerShell](https://technet.microsoft.com/en-us/library/jj984289%28v=exchg.160%29.aspx) and then use the New-MoveRequest cmdlet and provide the alias of the mailbox as follows:
  
```powershell
New-MoveRequest <alias>
```

 **SharePoint Online and OneDrive for Business:** You can [connect to SharePoint Online PowerShell](https://technet.microsoft.com/en-us/library/fp161372.aspx), and then use the **[Get-SPODataEncryptionPolicy]** cmdlet to check the status of your tenant. The ** _State_** property returns a value of **registered** if Customer Key encryption is enabled and all files in all sites have been encrypted. If encryption is still in progress, this cmdlet provides information on what percentage of sites is complete. 
  
## If I want to switch to a different set of keys, how long does it take for the new set of keys to protect my data?


 **Exchange Online and Skype for Business:** It can take up to 72 hours to protect a mailbox according to a new Data Encryption Policy (DEP) from the time the new DEP is assigned to the mailbox. 
  
 **SharePoint Online and OneDrive for Business:** It can take up to four hours to re-encrypt your entire tenant once a new key has been assigned. 
  
## Is my existing data stored without encryption at any time while it is decrypted or encrypted with Customer Key?

No. Your data is always encrypted at rest in the Office 365 service with BitLocker and DKM. For more information, see the "Security, Privacy, and Compliance Information for Office 365", and [How Exchange Online secures your email secrets](https://support.office.com/article/989BA10C-F73F-4EFB-AD1B-AF3322E5F376).
  
## If I no longer want to use customer-managed encryption keys, can I switch to Microsoft-managed keys?

 **Exchange Online and Skype for Business:** Not yet. This will be supported once service encryption in Office 365 with Microsoft-managed keys is rolled out broadly. We expect to roll this out in the service after we release service encryption with Customer Key. 
  
 **SharePoint Online and OneDrive for Business:** Yes. You can choose to revert to using Microsoft-managed keys separately for each geo (if you use the multi-geo feature) or for all your data if it is in a single geo.
  
## How is Customer Key licensed?

Customer Key is offered in the Office 365 Enterprise Suite, "E5", and the Advanced Compliance SKU. Additionally, customers must also purchase the appropriate license for using Azure Key Vault.
  
Each user benefiting from Customer Key needs to be licensed if they want to be covered by Customer Key.
  
For SharePoint Online, the Office 365 Administrator who configures Customer Key also needs to be licensed, to perform the setup steps. Additionally, the users that are benefiting from the feature need to be licensed - this includes the site owner and any users accessing files on one or more sites that are encrypted using Customer Key. External users do not need to be licensed to access files on one or more sites that are encrypted using Customer Key.
  
For Exchange Online, "user" mailboxes and "mail user" mailboxes must be licensed. All others, such as shared mailboxes, are not required to have a license for Customer Key. To check that your Exchange Online mailbox is properly licensed, run the following cmdlet:
  
```powershell
(Get-Mailbox <alias >).PersistedCapabilities
```

If the string BPOS_S_EquivioAnalytics exists, then the mailbox is properly licensed. If not, you must apply the proper license in order to use the Customer Key feature for this mailbox.
  
## Can I enable Customer Key for a trial subscription?

No. By definition, trial subscriptions have a limited lifetime. Encryption keys that are hosted in trial subscriptions can be lost at the end of the trial lifetime. Because Microsoft cannot and does not prevent customers from putting important customer data in trial subscriptions, the use of Customer Key with trial subscriptions is prohibited.
  
## How much will using Customer Key cost?

In addition to the licensing required for Customer Key, customers will incur a cost for Key Vault usage. [Azure Key Vault pricing details](https://azure.microsoft.com/en-us/pricing/details/key-vault/) describes the cost model and will assist with estimating. There is no way to predict the exact cost that any customer will incur because usage patterns vary. Experience has shown that the cost is very low and generally falls within the range of $0.002 to $0.005 per user per month plus the cost of HSM-backed keys. The cost will also vary according to the logging configuration chosen by the customer and the amount of Azure storage used for Azure Key Vault logs. 
  
## Related Articles

- [Controlling your data using Customer Key for Office 365](controlling-your-data-using-customer-key.md)

- [Manage Customer Key for Office 365](customer-key-manage.md)

- [Roll or rotate a customer key or an availability key](customer-key-availability-key-roll.md)

- [Understand the availability key](customer-key-availability-key-understand.md)
