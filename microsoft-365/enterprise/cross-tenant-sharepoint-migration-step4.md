---
title: SharePoint Cross-tenant SharePoint migration Step 4 (preview)
ms.author: heidip
author: MicrosoftHeidi
manager: jtremper
ms.date: 10/28/2024
recommendations: true
audience: ITPro
ms.topic: article
ms.service: microsoft-365-migration
ms.localizationpriority: high
ms.collection: 
- SPMigration
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "Step 4 of the SharePoint Cross-tenant migration feature"
---

# Step 4: Pre-creating users and groups (preview)

>[!Note]
>Cross-Tenant SharePoint migration is currently in a private preview stage of development. As an unfinished project, any information or availability is subject to change at any time. Support for private-preview customers will be handled via email. Cross-Tenant SharePoint migration is covered by the preview terms of the [Microsoft Universal License Terms for Online Services](https://www.microsoft.com/licensing/terms/product/ForOnlineServices/all).

This is Step 4 in a solution designed to complete a Cross-tenant SharePoint migration. To learn more, see [Cross-tenant SharePoint migration overview](cross-tenant-SharePoint-migration.md).

- Step 1: [Connect to the source and the target tenants](cross-tenant-SharePoint-migration-step1.md)
- Step 2: [Establish trust between the source and the target tenant](cross-tenant-SharePoint-migration-step2.md) 
- Step 3: [Verify trust has been established](cross-tenant-SharePoint-migration-step3.md) 
- **Step 4: [Pre-create users and groups](cross-tenant-SharePoint-migration-step4.md)**  
- Step 5: [Prepare identity mapping](cross-tenant-SharePoint-migration-step5.md)
- Step 6: [Start a Cross-tenant SharePoint migration](cross-tenant-SharePoint-migration-step6.md)
- Step 7: [Post migration steps](cross-tenant-SharePoint-migration-step7.md)


## Identify users and groups to be migrated

To ensure that SharePoint permissions are retained as part of the migration, a mapping file needs to be created to align users from the source tenant to the target tenant.

1. Identify the full list of SharePoint users and sites that will be migrated from the source to the target tenant.
2. Identify the list of Microsoft 365 Groups that are connected to any Group-connected SharePoint sites that will be migrating as part of your project.
3. Prepare a complete list of users, groups, and Microsoft 365 groups that will be migrated to the target tenant.

## Pre-create users, groups, and Microsoft 365 groups on the target tenant

- Pre-create users and groups as needed in the target tenant’s directory.
- All users who are migrating to the target tenant must have new user identities created for them in the target tenant.

>[!Note]
>Note: If these users are also having their OneDrive migrated, make sure that these new users don't attempt to sign-in to their new target OneDrive until their corresponding OneDrive migration is complete.

- All users whose SharePoint accounts are migrating to the target tenant must be assigned the appropriate SharePoint license.
- Any users who remain in the source tenant but need access to resources migrating to the target tenant should have new guest identities created for them in the target tenant.
- Pre-created users must be added as members of any appropriate security groups or unified groups before the SharePoint migration begins. 
- If the user or group name already exists in the target tenant, create a user or group with a different name and make a note of it for the next step.
- We recommend that SharePoint site creations are restricted in the target tenant to prevent users from creating SharePoint sites.

>[!Note]
>To learn more on restricting SharePoint site creation, see [Disable SharePoint creation for some users](/sharepoint/manage-user-profiles#disable-SharePoint-creation-for-some-users)

## Pre-create Microsoft 365 groups connect to SharePoint sites

Microsoft 365 groups connected to SharePoint sites must be pre-created using the [Exchange Online management shell](/powershell/exchange/connect-to-exchange-online-powershell)

These commands send a request to the tenant with whom you want to establish trust.

1. Sign in to the Exchange Online Management Shell as an Exchange Online Admin or Microsoft 365 Global admin. Enter the password for target tenant when prompted.

```powershell
Connect-ExchangeOnline –UserPrincipalName <UserPrincipalName>
```

2. Create the appropriate Microsoft 365 groups, where *AccessType* matches the access type of the corresponding Microsoft 365 group on the source tenant.

```powershell
New-UnifiedGroup -DisplayName <TargetGroupDisplayName> -Alias <TargetGroupAlias> -AccessType <Private|Public> 

   ```
>[!Important]
>Microsoft 365 Groups connected to SharePoint sites **MUST be pre-created using this method**. Pre-creating Microsoft 365 groups using any other methods will cause SharePoint site migrations to fail.

> [!WARNING]
> If the Microsoft 365 Group name contains a period character (.), the migration fails with an **Invalid character** error.

## Step 5: [Prepare the identity mapping file](cross-tenant-SharePoint-migration-step5.md)
