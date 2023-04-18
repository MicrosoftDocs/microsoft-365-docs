---
title: "Get started with collecting files that match data loss prevention policies from devices (preview)"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 04/18/2023
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

See the [licensing requirements for Information Protection](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection) for details on the subscriptions that support DLP. You do not need any additional licenses over what is needed for endpoint DLP.

## Permissions

Standard DLP permissions are required. For more informations, see [Permissions](dlp-create-deploy-policy.md#permissions).

### Onboard devices

Before you can use copy matched items you have to onboard Windows 10/11 devices into Purview, see [Onboard Windows 10 and Windows 11 devices into Microsoft 365 overview](device-onboarding-overview.md#onboard-windows-10-and-windows-11-devices-into-microsoft-365-overview)

### Setup Azure storage

You should have answers to these question setting up your Azure storage and scoping the feature to users.
#### Do you need to compartmentalize items and access along role or departmental lines?

For example, if your organization wants to have one set of administrators or DLP event investigators who can view saved items from your senior leadership and another set of adminstrators or DLP event investigators for saved items from human resources, you should create one Azure storage account for senior leadership and another for human resources. This ensures that the Azure storage admins or DLP event investigators can only see the items that matched DLP policies from their respective groups.  

#### Do you want to use containers to organize saved items? 

You can create multiple different evidence container within same storage account to sort saved items into. For example, one for items saved off from the HR department and one for IT department. 
> [!IMPORTANT]
> Don't use containers to separate items from multiple regions that have different legal and regulatory requirements. Containers inherit the permissions of the storage account that they are in. You can't set different permissions per container. If you need to configure different permission for different regions, you must create multiple storage accounts, not multiple containers. 

#### Create an Azure storage account

The procedures for setting up your Azure storage account, container and blobs are documented in the Azure document set. Here are links to relevant articles you can refer to to help you get started:
1. [Introduction to Azure Blob Storage](/azure/storage/blobs/storage-blobs-introduction)
1. [Create a storage account](/azure/storage/common/storage-account-create)
1. [Manage blob containers using the Azure portal](/azure/storage/blobs/blob-containers-portal)
1. [Manage block blobs with PowerShell](/azure/storage/blobs/blob-powershell)


### Set permissions on the Azure blob storage

You have to configure two sets of permissions on the blobs, one for the administrators and investigators so they can view and manage evidence and another for users whose devices need to upload items to Azure. You should [create custom role groups in Microsoft Purview compliance](../security/office-365-security/scc-permissions.md) to enforce least privileges and assign accounts to them.

#### Permissions on Azure blob for administrators and investigators

Once you've created the role group that DLP incident investigators will use it must have these permissions on the Azure blob. For more information on configuring blob access, see [how to authorize access to blob data in the Azure portal](/azure/storage/blobs/authorize-data-operations-portal) and [Assign share-level permissions](/azure/storage/files/storage-files-identity-ad-ds-assign-permissions?tabs=azure-portal.md)

##### Investiagor actions

Configure these permission for these actions for investigators


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

Assign these permissions to the Azure blob for the users role.

##### User actions

|Object  |Permissions|
|---------|---------|
|Microsoft.Storage/storageAccounts/blobServices |Read : List Blob Services|
|Microsoft.Storage/storageAccounts/blobServices/containers|Read : Get blob container|
|Microsoft.Storage/storageAccounts/blobServices/containers|Write : Put blob container|

##### User data actions

|Object|Permissions|
|Microsoft.Storage/storageAccounts/blobServices/containers/blobs|Read : Read Blob|
|Microsoft.Storage/storageAccounts/blobServices/containers/blobs|Write : Write Blob|
|Microsoft.Storage/storageAccounts/blobServices/containers/blobs|Other : Add blob content|

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
How to configure DLP to copy matched items to Azure storage

### Policy configuration 

### View saved files
How to access the content in the Azure blog/Where does it show up in Purview


get links to Azure content on Storage Browser

Cover how they DLP incident investigators can access the blob storage and view what is in there.

How to access and manage the content directly in the Azure blob

Considering GDPR and California Consumer Privacy Act, how do admins handle files in the Storage Account when they receive a Data Subject Request to delete or remove those files?
<AK> Since the governance of the customer owned storage is with them, we cannot be prescriptive. Nonetheless all files have a timestamp, admins can correlate the timestamp with alert (related to DSR). Going forward when we have in-product evidence preview. It will be smooth for them to track the evidence and respond to DSRs like this.



COPIED OVER FROM SOURCE DOCS



2. Prerequisites


## Before you begin

If you're new to Microsoft Purview DLP, here's a list of the core articles you'll need as you implement DLP:

1. [Administrative units (preview)](microsoft-365-compliance-center-permissions.md#administrative-units-preview)
1. [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md) - the article you're reading now introduces you to the data loss prevention discipline and Microsoft's implementation of DLP
1. [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp) - by working through this article you will:
    1. [Identify stakeholders](dlp-overview-plan-for-dlp.md#identify-stakeholders)
    1. [Describe the categories of sensitive information to protect](dlp-overview-plan-for-dlp.md#describe-the-categories-of-sensitive-information-to-protect)
    1. [Set goals and strategy](dlp-overview-plan-for-dlp.md#set-goals-and-strategy)
1. [Data Loss Prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference) - this article introduces all the components of a DLP policy and how each one influences the behavior of a policy
1. [Design a DLP policy](dlp-policy-design.md) - this article walks you through creating a policy intent statement and mapping it to a specific policy configuration. 
1. [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) - This article presents some common policy intent scenarios that you'll map to configuration options, then it walks you through configuring those options.


## Licensing and Subscriptions

See the [licensing requirements for Information Protection](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection) for details on the subscriptions that support DLP.

## Licensing and Subscriptions

See the [licensing requirements for Information Protection](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection) for details on the subscriptions that support DLP.



To learn more about Microsoft Purview DLP, see:

- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Learn about the default data loss prevention policy in Microsoft Teams (preview)](dlp-teams-default-policy.md)
- [Learn about data loss prevention on-premises scanner](dlp-on-premises-scanner-learn.md)
- [Learn about the Microsoft Compliance Extension](dlp-chrome-learn-about.md)
- [Learn about the data loss prevention Alerts dashboard](dlp-alerts-dashboard-learn.md)

To learn how to use data loss prevention to comply with data privacy regulations, see [Deploy information protection for data privacy regulations with Microsoft Purview](../solutions/information-protection-deploy.md)  (aka.ms/m365dataprivacy).
