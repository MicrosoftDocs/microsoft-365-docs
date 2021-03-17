---
title: "Encryption in Azure"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: None
search.appverid:
- MET150
ms.collection:
- Strat_O365_Enterprise
- M365-security-compliance
- Strat_O365_Enterprise
description: Learn about encryption available in Azure, such as Azure Disk Encryption
ms.custom: seo-marvel-apr2020
---

# Encryption in Azure

Technological safeguards in Azure, such as encrypted communications and operational processes, help keep your data secure. You also have the flexibility to implement additional encryption features and manage your own cryptographic keys. Regardless of customer configuration, Microsoft applies encryption to protect customer data in Azure. Microsoft also enables you to control your data hosted in Azure through a range of advanced technologies to encrypt, control, and manage cryptographic keys, and control and audit access to data. In addition, Azure Storage provides a comprehensive set of security capabilities which together enable developers to build secure applications.

Azure offers many mechanisms for protecting data as it moves from one location to another. Microsoft uses TLS to protect data when it's traveling between the cloud services and customers. Microsoft's data centers negotiate a TLS connection with client systems that connect to Azure services. Perfect Forward Secrecy (PFS) protects connections between customers' client systems and Microsoft's cloud services by unique keys. Connections also use RSA-based 2,048-bit encryption key lengths. This combination makes it difficult for someone to intercept and access data that is in-transit.

Data can be secured in transit between an application and Azure by using [client-side encryption](/azure/storage/storage-client-side-encryption), HTTPS, or SMB 3.0. You can enable encryption for traffic between your own virtual machines (VMs) and your users. With [Azure Virtual Networks](https://azure.microsoft.com/services/virtual-network/), you can use the industry-standard IPsec protocol to encrypt traffic between your corporate VPN gateway and Azure as well as between the VMs located on your Virtual Network.

For data at rest, Azure offers many encryption options, such as support for AES-256, giving you the flexibility to choose the data storage scenario that best meets your needs. Data can be automatically encrypted when written to Azure Storage using [Storage Service Encryption](/azure/storage/storage-service-encryption), and operating system and data disks used by VMs can be encrypted. For more information, see [Security recommendations for Windows virtual machines in Azure](/azure/security/azure-security-disk-encryption). In addition, delegated access to data objects in Azure Storage can be granted using [Shared Access Signatures](/azure/storage/storage-dotnet-shared-access-signature-part-1). Azure also provides encryption for data at rest using [Transparent Data Encryption for Azure SQL Database and Data Warehouse](/sql/relational-databases/security/encryption/transparent-data-encryption-azure-sql).

For more information about encryption in Azure, see [Azure encryption overview](/azure/security/security-azure-encryption-overview) and [Azure Data Encryption-at-Rest](/azure/security/azure-security-encryption-atrest).

## Azure Disk Encryption

Azure Disk Encryption enables you to encrypt your Windows and Linux Infrastructure as a Service (IaaS) VM disks. Azure Disk Encryption leverages the BitLocker feature of Windows and the DM-Crypt feature of Linux to provide volume-level encryption for the operating system and the data disks. It also ensures that all data on the VM disks are encrypted at rest in your Azure storage. Azure Disk Encryption is integrated with Azure Key Vault to help you control, manage, and audit the use of the encryption keys and secrets.

For more information, see [Security recommendations for Windows virtual machines in Azure](/azure/virtual-machines/windows/security-recommendations).

## Azure Storage Service Encryption

With [Azure Storage Service Encryption](/azure/storage/storage-service-encryption), Azure Storage automatically encrypts data prior to persisting it to storage and decrypts data prior to retrieval. The encryption, decryption, and key management processes are totally transparent to users. Azure Storage Service Encryption can be used for [Azure Blob Storage](https://azure.microsoft.com/services/storage/blobs/) and [Azure Files](https://azure.microsoft.com/services/storage/files/). You can also use Microsoft-managed encryption keys with Azure Storage Service Encryption, or you can use your own encryption keys. (For information on using your own keys, see [Storage Service Encryption using customer managed keys in Azure Key Vault](/azure/storage/common/storage-service-encryption-customer-managed-keys). For information about using Microsoft-managed keys, see [Storage Service Encryption for Data at Rest](/azure/storage/storage-service-encryption).) In addition, you can automate the use of encryption. For example, you can programmatically enable or disable Storage Service Encryption on a storage account using the [Azure Storage Resource Provider REST API](/rest/api/storagerp/), the [Storage Resource Provider Client Library for .NET](/dotnet/api/overview/azure/storage), [Azure PowerShell](/powershell/azureps-cmdlets-docs), or the [Azure CLI](/azure/storage/storage-azure-cli).

Some Microsoft 365 services use Azure for storing data. For example, SharePoint Online and OneDrive for Business store data in Azure Blob storage, and Microsoft Teams stores data for its chat service in tables, blobs, and queues. In addition, the Compliance Manager feature in the Microsoft 365 compliance center stores customer-entered data which is stored in encrypted form in [Azure Cosmos DB](/azure/cosmos-db/database-encryption-at-rest), a Platform as a Service (PaaS), globally-distributed, multi-model database. Azure Storage Service Encryption encrypts data stored in Azure Blob storage and in tables, and Azure Disk Encryption encrypts data in queues, as well as Windows and IaaS virtual machine disks to provide volume encryption for the operating system and the data disk. The solution ensures that all data on the virtual machine disks are encrypted at rest in your Azure storage. [Encryption at rest in Azure Cosmos DB](/azure/cosmos-db/database-encryption-at-rest) is implemented by using several security technologies, including secure key storage systems, encrypted networks, and cryptographic APIs.

## Azure Key Vault

Secure key management is not just core to encryption best practices; it's also essential for protecting data in the cloud. [Azure Key Vault](/azure/key-vault/key-vault-whatis) enables you to encrypt keys and small secrets like passwords that use keys stored in hardware security modules (HSMs). Azure Key Vault is Microsoft's recommended solution for managing and controlling access to encryption keys used by cloud services. Permissions to access keys can be assigned to services or to users with Azure Active Directory accounts. Azure Key Vault relieves organizations of the need to configure, patch, and maintain HSMs and key management software. With Azure Key Vault, Microsoft never sees your keys and applications don't have direct access to them; you maintain control. You can also import or generate keys in HSMs. Organizations that have a subscription that includes Azure Information Protection can configure their Azure Information Protection tenant to use a customer-managed key [Bring Your Own Key](/information-protection/plan-design/byok-price-restrictions) (BYOK)) and [log its usage](/information-protection/deploy-use/log-analyze-usage).