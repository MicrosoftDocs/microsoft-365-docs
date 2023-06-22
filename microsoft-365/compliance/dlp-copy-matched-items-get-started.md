---
title: "Get started with collecting files that match data loss prevention policies from devices (preview)"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/22/2023
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MET150
description: "Learn how to configure data loss prevention to collect items that match policies from devices to an Azure storage account."
---
# Get started with collecting files that match data loss prevention policies from devices (preview)

This article walks you through the prerequisites and configuration steps for evidence collection for file activities on devices and introduces how to view the items that are copied out and saved.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

Here are the high level steps for configuring and using evidence collection for file activities on devices.

1. [Onboard devices](#onboard-devices)
1. [Setup Azure Storage](#setup-azure-storage)
1. [Set permissions on the Azure blob storage](#set-permissions-on-the-azure-blob-storage)
1. [Endpoint DLP settings configuration](#endpoint-dlp-settings-configuration)
1. [Policy configuration](#policy-configuration)
1. [View saved files](#view-saved-files)


## Before you begin

Before you start these procedures, you should review [Learn about evidence collection for file activities on devices (preview)](dlp-copy-matched-items-learn.md).

## Licensing and Subscriptions

See the [licensing requirements for Information Protection](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection) for details on the subscriptions that support DLP. You don't need any additional licenses over what is needed for endpoint DLP.

## Permissions

Standard Microsoft Purview Data Loss Prevention (DLP) permissions are required. For more information, see [Permissions](dlp-create-deploy-policy.md#permissions).

### Onboard devices

Before you can use copy matched items you have to onboard Windows 10/11 devices into Purview, see [Onboard Windows 10 and Windows 11 devices into Microsoft 365 overview](device-onboarding-overview.md#onboard-windows-10-and-windows-11-devices-into-microsoft-365-overview)

### Setup Azure storage

> [!IMPORTANT]
> Containers inherit the permissions of the storage account that they are in. You can't set different permissions per container. If you need to configure different permission for different regions, you must create multiple storage accounts, not multiple containers. 

You should have answers to these question before setting up your Azure storage and scoping the feature to users.

#### Do you need to compartmentalize items and access along role or departmental lines?

For example, if your organization wants to have one set of administrators or DLP event investigators who can view saved items from your senior leadership and another set of administrators or DLP event investigators for saved items from human resources, you should create one Azure storage account for senior leadership and another for human resources. This ensures that the Azure storage admins or DLP event investigators can only see the items that matched DLP policies from their respective groups.  

#### Do you want to use containers to organize saved items? 

You can create multiple different evidence containers within same storage account to sort saved items into. For example, one for items saved off from the HR department and one for IT department. 

#### What is your strategy for protecting against saved item deletion or modification?

In the Azure Storage, data protection refers to strategies for protecting the storage account and data within it from being deleted or modified, or for restoring data after it has been deleted or modified. Azure Storage also offers options for disaster recovery, including multiple levels of redundancy to protect your data from service outages due to hardware problems or natural disasters, and customer-managed failover if the data center in the primary region becomes unavailable. For more information, see [Data protection overview](/azure/storage/blobs/data-protection-overview.md).

You can also configure immutability policies for your blob data that protects against the saved items being overwritten or deleted. For more information, see [Store business-critical blob data with immutable storage](/azure/storage/blobs/immutable-storage-overview.md)

#### Create an Azure storage account

The procedures for setting up your Azure storage account, container and blobs are documented in the Azure document set. Here are links to relevant articles you can refer to help you get started:
1. [Introduction to Azure Blob Storage](/azure/storage/blobs/storage-blobs-introduction)
1. [Create a storage account](/azure/storage/common/storage-account-create)
1. [Manage blob containers using the Azure portal](/azure/storage/blobs/blob-containers-portal)
1. [Manage block blobs with PowerShell](/azure/storage/blobs/blob-powershell)

Be sure to save the name and URL of the Azure blob container. To view the URL, open the Azure storage portal \> **Home \> **Storage Accounts** \> **Container** \> **Properties**

### Set permissions on the Azure blob storage

You have to configure two sets of permissions on the blobs, one for the administrators and investigators so they can view and manage evidence and another for users whose devices need to upload items to Azure. You should [create custom role groups in Microsoft Purview compliance](../security/office-365-security/scc-permissions.md) to enforce least privileges and assign accounts to them.

#### Permissions on Azure blob for administrators and investigators

Once you've created the role group that DLP incident investigators will use, it must have these permissions on the Azure blob. For more information on configuring blob access, see [how to authorize access to blob data in the Azure portal](/azure/storage/blobs/authorize-data-operations-portal) and [Assign share-level permissions](/azure/storage/files/storage-files-identity-ad-ds-assign-permissions?tabs=azure-portal.md).

##### Investigator actions

Configure these permissions for these actions for investigators:


|Object  |Permissions  |
|---------|---------|
|Microsoft.Storage/storageAccounts/blobServices     |Read: List Blob Services  |
|Microsoft.Storage/storageAcccounts/blobServices    |Read: Get blob service properties or statistics         |
|Microsoft.Storage/storageAccounts/blobServices/containers  |Read: Get blob container         |
|Microsoft.Storage/storageAccounts/blobServices/containers     |Read: List of blob containers         |
|Microsoft.Storage/storageAccounts/blobServices/containers/blobs     |Read: Read blob         |


##### Investigator data actions

|Object  |Permissions|
|---------|---------|
|Microsoft.Storage/storageAccounts/blobServices/containers/blobs|Read: Read Blob|

The JSON for the investigator role group should look like this:

```json
"permissions": [
     {
         "actions": [
             "Microsoft.Storage/storageAccounts/blobServices/containers/read",
             "Microsoft.Storage/storageAccounts/blobServices/read"
       ],
       "notActions": [],
       "dataActions": [
         "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read"
       ],
       "notDataActions": []
     }
 ]
```

#### Permissions on Azure blob for users

Assign these permissions to the Azure blob for the users role:

##### User actions

|Object  |Permissions|
|---------|---------|
|Microsoft.Storage/storageAccounts/blobServices |Read: List Blob Services|
|Microsoft.Storage/storageAccounts/blobServices/containers|Read: Get blob container|
|Microsoft.Storage/storageAccounts/blobServices/containers|Write: Put blob container|

##### User data actions

|Object|Permissions|
|---------|---------|
|Microsoft.Storage/storageAccounts/blobServices/containers/blobs|Write: Write Blob|
|Microsoft.Storage/storageAccounts/blobServices/containers/blobs|Other: Add blob content|

The JSON for user role group should look like this:

```json
"permissions": [
  {
     "actions": [
       "Microsoft.Storage/storageAccounts/blobServices/containers/read",
       "Microsoft.Storage/storageAccounts/blobServices/containers/write",
       "Microsoft.Storage/storageAccounts/blobServices/read"
     ],
     "notActions": [],
     "dataActions": [
         "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read",
         "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/add/action",
         "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/write"
     ],
     "notDataActions": []
    }
 ]

```

### Endpoint DLP settings configuration

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>.
1. In the Microsoft Purview compliance portal \> left navigation \> **Solutions** \> **Data loss prevention** \> **Endpoint DLP settings** \> **Setup evidence collection for file activities on devices**.

1. Set the toggle to **On**. 

1. Set how long you want items to be cached on devices if they can't access the Azure storage account. You can choose, **7**, **30**, or **60** days.

1. Select **+ Add storage** and provide the Name and URL of the Azure storage account.

### Policy configuration 

Create a DLP policy as you normally would. Refer to [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) for policy configuration examples.

Configure your policy using these settings:

- Make sure that **Devices** is the only location selected.
- In **Incident reports**, toggle **Send an alert to admins when a rule match occurs** to **On**.
- In **Incident reports**, select **Collect original file as evidence for all selected file activities on Endpoint**.
- Select the storage account you want.
- Select the activities (**Copy to a removable USB device**, **Copy to a network share**, **Print**, **Copy or move using unallowed Bluetooth app**, **Copy or move using RDP**) you want to copy matched items to Azure storage for.

### View saved files

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>.

2. Make sure that you have already [configured evidence collection](#endpoint-dlp-settings-configuration) for file activities on devices.
 
3. Navigate to **Data classification** \> **Activity explorer**.

4.Select a **DLP rule matched** event that was generated by an activity that you're monitoring.  <!-- (6/22/23) Need to update this, in the df tenant, I have to select a File Print activity --> 

5. In the flyout pane, select the file name link under **Evidence file**. The file with the matched content displays.