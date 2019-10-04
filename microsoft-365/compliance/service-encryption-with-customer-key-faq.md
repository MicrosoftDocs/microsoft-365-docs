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

  
## Switch to new keys - move to roll or delete

 **Exchange Online and Skype for Business:** It can take up to 72 hours to protect a mailbox according to a new Data Encryption Policy (DEP) from the time the new DEP is assigned to the mailbox.
  
 **SharePoint Online and OneDrive for Business:** It can take up to four hours to re-encrypt your entire tenant once a new key has been assigned.
  
## Is my existing data stored without encryption at any time while it is decrypted or encrypted with Customer Key?

Your data is always encrypted at rest in the Office 365 service with BitLocker and DKM. For more information, see the "Security, Privacy, and Compliance Information for Office 365", and [How Exchange Online secures your email secrets](https://support.office.com/article/989BA10C-F73F-4EFB-AD1B-AF3322E5F376).
  
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
