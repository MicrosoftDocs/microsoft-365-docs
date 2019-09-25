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

# Understand the availability key for Office 365 Customer Key

You use the availability key to recover from the unanticipated loss of root keys that you manage. If you lose your root keys, contact Microsoft Support and Microsoft will assist you through the process of enabling the availability key. You'll use the availability key to migrate to a new Data Encryption Policy with new keys provisioned by you.

The availability key is a root key provisioned when you create a data encryption policy. Office 365 stores and protects the availability key. The availability key is functionally similar to the two root keys that you supply for use with service encryption with Customer Key. Unlike the keys that you provide and manage in Azure Key Vault, you can't directly access the availability key. Storage and control of the availability key are deliberately different from Azure Key Vault keys for three reasons:

- The availability key provides a high-availability capability in the event that Office 365 services are unable to reach keys hosted in Azure Key Vault.
- The availability key provides a "break glass" capability in the event that both Azure Key Vault keys are lost.
- The separation of logical controls provides defense-in-depth and protects against the loss of all keys from a single attack or point of failure.

Sharing the responsibility to protect the keys, while using a variety of protections and processes for key management, ultimately reduces the risk that all keys (and therefore your data) will be lost or destroyed. Microsoft provides you with sole authority over the destruction of the availability key. By design no one at Microsoft has access to the availability key - it is only accessible by Office 365 service code.

See the [Microsoft Trust Center](https://www.microsoft.com/en-us/trustcenter/Privacy/govt-requests-for-data) for more information about how we secure keys.
  
## Availability key uses

The availability key provides recovery capability for scenarios in which a malefactor steals control of the customer's key vault. It also ensures service availability during transient - intermittent - operational issues related to Customer Key access by the service.

When the service finds both Customer Keys in Azure Key Vault unreachable, it uses the availability key. The service NEVER goes directly to the availability key.

> [!IMPORTANT]
> **@Reviewers!!**  Look into details around availability key scenarios when customer keys are revoked? I address some of these in this document, but this was a specific concern for at least one customer</br>
In Exchange, system calls fall back on the availability key when access is revoked from AKVs. (IP right now, but I think this should be public. I detail the process in this article.)</br>
In SPO all data is locked down once customers revoke SPO access to AKVs. ( I detail the process in this article. But I don't have a definition of "locked down".)

### Customer Key service encryption

Encryption at rest protects application data stored on disks on top of BitLocker disk encryption in Microsoft datacenters. It's not meant to prevent Microsoft from accessing customer data. Customers give the O365 service permissions to use their encryption keys to provide value added services, such as eDiscovery, anti-malware, anti-spam, search, etc. The availability key is created from the customer’s root keys for recovery and service availability. (IP)

### Protect access to the application layer

Logical access controls like Lockbox and Customer Lockbox prevent unauthorized individuals from accessing decrypted data through the service. The application layer is the ONLY method through which keys can be used to decrypt data. Only Office 365 service code has the ability to interpret and traverse the key hierarchy for encryption-decryption activities.

The availability key is not a back door. Microsoft is transparent about the existence and use of the availability key.

## Access to the availability key

Microsoft does not expose direct control of the availability key to customers. For example, you can only rotate (roll) the keys that you own in Azure Key Vault. You can't roll the availability key. For more information about rolling the availability key and other keys stored in Azure Key Vault and used by Customer Key, see [Roll or rotate a customer key or an availability key](customer-key-availability-key-roll.md).

Authorized Office 365 services have access to the keys. The services use the key to perform encryption-decryption procedures. Office 365 rotates the availability key using O365 service code in a touchless, non-manual process. Microsoft administrators may initiate the process, but no one logs into the availability key store and manually rotates the availability key. To be clear, that type of access does not exist. Availability key rotation occurs using Office 365 service code, which also leverages the mechanism to initially generate the key.

Microsoft protects the availability key in an access-controlled, internal secret store similar to the customer-facing Azure Key Vault. We implement access controls to prevent Microsoft administrators from directly accessing the secrets contained within. Secret Store operations, including key rotation, revocation, and retrieval occur through automated commands that don't require Microsoft administrator access to the availability key. Access to adjust these commands is limited to specific engineers and requires privilege escalation through an internal tool, Lockbox. Privilege escalation requires manager approval and justification prior to being granted. Lockbox ensures access is time bound with automatic access revocation upon time expiration or engineer log out.

The application layer is the only method through which keys, including the availability key, can be used to decrypt data. Only Office 365 service code has the ability to interpret and traverse the key hierarchy for encryption-decryption activities. Even if a malicious Microsoft administrator were to (somehow) extract an availability key from the secret store, the key would be unusable to access customer data.

Microsoft employs a defense-in-depth strategy to prevent external attackers from impacting the confidentiality, integrity, or availability of customer data stored in the Microsoft Cloud. For more information about the safeguards in place, see [Administrative Access Controls in Office 365](https://docs.microsoft.com/en-us/Office365/securitycompliance/office-365-administrative-access-controls-overview).

## Availability key audit and logs

> [!IMPORTANT]
> **@Reviewers!!**  Where should they look for these logs? There are about a dozen interfaces now - Compliance, Security, O365 admin, which one should we point them to and how do they access it? Please be specific - I don't usually hang out in the UI. Once I have this information, Logging will go into the "managing" article.

Customer Key’s primary purpose is for compliance. If you need to manage your own keys in the cloud, use Customer Key to satisfy this requirement. Customer Key doesn't prevent Microsoft from accessing customer data. Office 365 services always need access to data to perform critical service functions. You will not observe this service access by examining logs for Azure Key Vault where Customer Keys are stored.

- Our automated systems process all data as it flows through the system to provide our service value, for example, anti-virus, e-discovery, and DLP. Office 365 doesn't log this activity since it's normal system operation.

- If Microsoft employees ever need to access customer content in SharePoint Online or Exchange Online:

   - The employee must have a valid support ticket

   - The employee's privilege elevation must be approved by??

> [!IMPORTANT]
> **@Reviewers!!**  Who approves this elevation?

   - You'll receive a Customer Lockbox request (if you've got Customer Lockbox properly licensed and configured) that allows you to approve or deny the employee access to your data. If you approve the request, the service generates customer-visible logs for the activity. The service generates these logs regardless of whether the service uses the Customer Key or availability key to decrypt the data the service retrieves.

Bottom line: You will see logged events of our (incredibly rare and customer-approved) access to customer content in Exchange and SharePoint logs. Customer Key is not related to preventing Microsoft’s access to customer data.

Our documentation doesn't currently list which services have access to the availability key in Office 365. Instead, use the data access logs to identify activity with Customer Key. If you want to examine or determine activity within your Office 365 organization, use the data access logs within the ***.
Customer Key has no separate audit logging capability. Instead, Customer Key relies on Microsoft 365 and Office 365 logs.

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

## Key Revocation and the Data Purge Path process

You control the revocation of all root keys including the availability key. Customer Key provides control of the exit planning aspect of regulatory requirements for you. The data purge feature is not available with Microsoft-managed keys; only Customer Key offers this ability. If you decide to revoke your keys to purge their data and exit the service, the service deletes the availability key. This process takes Microsoft about 72 hours.

The Office 365 core audits and validates this Data Purge Path. For more information, see the SSAE 18 SOC 2 Report available on the [Service Trust Portal](https://servicetrust.microsoft.com/). In addition, Microsoft recommends the following documents:

- [Risk Assessment and Compliance Guide for Financial Institutions in the Microsoft Cloud](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=edee9b14-3661-4a16-ba83-c35caf672bd7&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_FAQ_and_White_Papers)

- [O365 Exit Planning Considerations](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=77ea7ebf-ce1b-4a5f-9972-d2d81a951d99&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_FAQ_and_White_Papers)

The Data Purge Path process differs slightly between Exchange Online and Skype for Business, and SharePoint Online and OneDrive for Business.

### Revoke the Customer Key and availability key for Exchange Online and Skype for Business

To initiate the Data Purge Path process for Exchange Online and Skype for Business, complete these steps:

1. Delete your Customer Key keys in Azure Key Vault. All key vault admins must agree to delete these keys.

1. Using a work or school account that has administrator privileges in your Office 365 organization.

1. From Windows PowerShell, run set-permanentdatapurgerequest as follows:

   ```powershell
   set-permanentdatapurgerequest TRUE
   ```

1. Contact Microsoft to delete the availability key.

   When you contact Microsoft to delete the availability key, we will send you a legal document. The person in your organization who signed up as an approver in the FastTrack offer during onboarding needs to sign this document. Normally, this is an executive or other designated person in your company who is legally authorized to sign the paperwork on behalf of your organization.

1. Once your representative has signed the legal document, return it to Microsoft (usually through an eDoc signature).

   Once Microsoft receives the legal document, we run cmdlets to trigger the data purge which performs crypto deletion of the availability key. Once the data purge cmdlets complete, the data has been purged.

### Revoke the Customer Key and availability key for SharePoint Online, including Team Sites, and OneDrive for Business

To initiate the Data Purge Path process for Exchange Online and Skype for Business, complete these steps:
> [!IMPORTANT]
> **@Reviewers!!**  Why is it delete for EXO and revoke for SPO?

1. Revoke Azure Key Vault access. All key vault admins must agree to revoke access.

1. Contact Microsoft to delete the availability key.

   When you contact Microsoft to delete the availability key, we will send you a legal document. The person in your organization who signed up as an approver in the FastTrack offer during onboarding needs to sign this document. Normally, this is an executive or other designated person in your company who is legally authorized to sign the paperwork on behalf of your organization.

1. Once your representative signs the legal document, return it to Microsoft (usually through an eDoc signature).

   Once Microsoft receives the legal document, we run cmdlets to trigger the data purge which performs crypto deletion of the tenant key, site key, and all individual per-document keys, irrevocably breaking the key hierarchy. Once the data purge cmdlets complete, your data has been purged.

## Related articles

- [Controlling your data using Customer Key for Office 365](controlling-your-data-using-customer-key.md)

- [Manage Customer Key for Office 365](customer-key-manage.md)

- [Roll or rotate a customer key or an availability key](customer-key-availability-key-roll.md)

- [Service encryption with Customer Key for Office 365 FAQ](service-encryption-with-customer-key-faq.md)
