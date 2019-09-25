---
title: "Understand the availability key for Office 365 Customer Key"
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
description: "Learn about the availability key used to recover lost Office 365 Customer Keys."
---

# Understand how to use the availability key for Office 365 Customer Key

You use the availability key to recover from the unanticipated loss of root keys that you manage. If you lose your root keys, contact Microsoft Support and Microsoft will assist you through the process of enabling the availability key. You'll use the availability key to migrate to a new Data Encryption Policy with new keys provisioned by you.

See the [Microsoft Trust Center](https://www.microsoft.com/en-us/trustcenter/Privacy/govt-requests-for-data) for more information about how we secure keys.
  
## About the availability key

The availability key is a root key provisioned when you create a data encryption policy. Office 365 stores and protects the availability key. The availability key is functionally similar to the two root keys that you supply for use with service encryption with Customer Key. Unlike the keys that you provide and manage in Azure Key Vault, you can't directly access the availability key. Storage and control of the availability key are deliberately different from Azure Key Vault keys for three reasons:

- The availability key provides a high-availability capability in the event that Office 365 services are unable to reach keys hosted in Azure Key Vault.
- The availability key provides a "break glass" capability in the event that both Azure Key Vault keys are lost.
- The separation of logical controls provides defense-in-depth and protects against the loss of all keys from a single attack or point of failure.

Sharing the responsibility to protect the keys, while using a variety of protections and processes for key management, ultimately reduces the risk that all keys (and therefore your data) will be lost or destroyed. Microsoft provides you with sole authority over the destruction of the availability key. By design, no one at Microsoft has access to the availability key - it is only accessible by Office 365 service code.
  
## Use the availability key to recover from key loss

If you lose your keys contact Microsoft to enable the use of the availability key. More information about the process follows in this article.

### Exchange Online and Skype for Business

Once you call in to use the availability key, you can access your mailboxes within minutes.
  
### SharePoint Online, including Team Sites, and OneDrive for Business

This operation is proportional to the number of sites you have. Once you call Microsoft to use the availability key, you should be fully online within about four hours.
  
## How Exchange Online uses the availability key

There are three ways that the Office 365 uses the availability key used with Exchange Online:
  
- Service availability in the event that Azure Key Vault keys are unreachable.

- Actions initiated by Office 365 service code - such as search index creation or mailbox moves.

- Recover from key loss, such as the loss of both Azure Key Vault keys associated with a single DEP.

### Use the availability key for service availability in the event Azure Key Vault keys are unreachable
  
Office 365 uses the availability key both for service availability and recovery from an unhealthy Customer Key state for Exchange Online. There is a hierarchy of keys used by Customer Key. This hierarchy is illustrated in the following figure.
  
![Drawing shows hierarchy of keys used by Customer Key](media/a760156b-737f-469a-80ab-c28b7a8b9160.png)
  
If both Azure Key Vault keys of a single Data Encryption Policy (DEP) are unavailable, Office 365 can use the availability key to change to a new DEP. Office 365 determines whether to use the availability key for service availability. Office 365 makes this determination differently depending on what triggered the process. Two types of activities trigger the process:

- User-initiated activity, for example, when a user downloads email to an Outlook client.

- System-initiated activity, such as indexing mailbox contents and eDiscovery searches.
  
### Process Office 365 follows when a user initiates the trigger

Office 365 follows this process in response to user-initiated actions to determine whether to use the availability key for user mailboxes:
  
1. Office 365 reads the DEP to which the mailbox is assigned in order to determine the location of the two customer keys in Azure Key Vault.

2. Office 365 randomly chooses one of the two customer keys from the DEP and sends a request to Azure Key Vault to unwrap the DEP key using the customer key.

3. If the request to unwrap the DEP key using the customer key fails and returns an error, Office 365 sends a second request to Azure Key Vault, this time instructing it to use the alternate (second) customer key.

4. If the second request to unwrap the DEP key using the customer key fails and returns an error, Office 365 examines the results of both requests:

    - If the examination determines that the errors DO NOT reflect an explicit action by a customer identity, then Office 365 uses the availability key to decrypt the DEP key. Office 365 then uses the DEP key to decrypt the mailbox key and complete the user request.

      In this case, Azure Key Vault is either unable to respond or unreachable for whatever reason. Office 365 has no way of determining if the customer has intentionally revoked access to the keys.

    - If the examination indicates that deliberate action has been taken to render the customer keys unavailable, then the availability key will not be used, the user request fails, and the user receives an error message, such as login failure.

      When this happens, the customer is made aware that service is impacted, and the condition of Customer Key is unhealthy. For example, if a customer is using a single DEP for all mailboxes in the organization, the customer may experience a widespread failure where users can't access their mailboxes. This ensures that when both customer keys are unhealthy, the customer is made aware of the need to correct the situation and restore the service to a healthy state.

### Process Office 365 follows when the service initiates the trigger
  
Office 365 service code always has a valid login token and can't be blocked. Therefore, until the availability key has been deleted, it can be used for actions initiated by, or internal to, Office 365 service code, such as search index creation or moving mailboxes. If the service determines that the AKV keys of a single Data Encryption Policy (DEP) are unavailable, Office 365 uses the availability key to change to a new DEP.
  
You use the availability key to recover from the loss of both Azure Key Vault keys that are associated with the same DEP.
  
## How SharePoint Online and OneDrive for Business use the availability key

The SharePoint Online and OneDrive for Business architecture and implementation for Customer Key and availability key are different from Exchange Online and Skype for Business.
  
When a customer moves to customer-managed keys, Office 365 creates a tenant-specific intermediate key (TIK). Office 365 encrypts the TIK twice, once with each of the customer keys, and stores the two encrypted versions of the TIK. Only the encrypted versions of the TIK are stored, and a TIK can only be decrypted with the customer keys. The TIK is then used to encrypt site keys, which are then used to encrypt blob keys. The blobs themselves are encrypted and stored in the Microsoft Azure Blob storage service.
  
Office 365 follows this process to access a blob that has customer file data:
  
1. Decrypt the TIK using the Customer Key.

2. Use the decrypted TIK to decrypt a site key.

3. Use the decrypted site key to decrypt a blob key.

4. Use the decrypted blob key to decrypt the blob.

Office 365 decrypts a TIK and issues two decryption requests to Azure Key Vault with a slight offset. The first one to finish furnishes the result, canceling the other request.
  
In case the customer loses access to their customer keys, Office 365 also encrypts the TIK with an availability key and stores this along with the TIKs encrypted with each customer key. The TIK encrypted with the availability key is used only when the customer calls Microsoft to enlist the recovery path when they have lost access to their keys, maliciously or accidentally.
  
For availability and scale reasons, decrypted TIKs are cached in a time-limited memory cache. Two hours before a TIK cache is set to expire, Office 365 attempts to decrypt each TIK. Decrypting the TIKs extends the lifetime of the cache. If TIK decryption fails for a significant amount of time, Office 365 generates an alert to notify engineering prior to the cache expiration. Only if the customer calls Microsoft will Office 365 initiate the recovery operation, which involves decrypting the TIK with the availability key stored in Microsoft's secret store and onboarding the tenant again using the decrypted TIK and a new set of customer-supplied Azure Key Vault keys.
  
As of today, Customer Key is involved in the encryption and decryption chain of SharePoint Online file data stored in the Azure blob store, but not SharePoint Online list items or metadata stored in the SQL database. Office 365 does not use the availability key for SharePoint Online or OneDrive for Business other than the case described above, which is customer-initiated. Human access to customer data is protected by Customer Lockbox.

## Related articles

- [Controlling your data using Customer Key for Office 365](controlling-your-data-using-customer-key.md)

- [Manage Customer Key for Office 365](customer-key-manage.md)

- [Roll or rotate a customer key or an availability key](customer-key-availability-key-roll.md)

- [Service encryption with Customer Key for Office 365 FAQ](service-encryption-with-customer-key-faq.md)
