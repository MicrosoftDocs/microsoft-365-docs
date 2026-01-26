---
title: SharePoint Cross-tenant SharePoint migration Step 4
ms.author: heidip
author: MicrosoftHeidi
manager: jtremper
ms.date: 10/01/2025
recommendations: true
audience: ITPro
ms.topic: how-to
ms.service: microsoft-365-migration
ms.localizationpriority: high
ms.collection: 
- SPMigration
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "Step 4 of the SharePoint Cross-tenant migration feature"
---

# Step 4: Precreating users and groups

This article is Step 4 in a solution designed to complete a Cross-tenant SharePoint migration. To learn more, see [Cross-tenant SharePoint migration overview](cross-tenant-SharePoint-migration.md).

- Step 1: [Connect to the source and the target tenants](cross-tenant-SharePoint-migration-step1.md)
- Step 2: [Establish trust between the source and the target tenant](cross-tenant-SharePoint-migration-step2.md) 
- Step 3: [Verify trust is established](cross-tenant-SharePoint-migration-step3.md) 
- **Step 4: [Precreate users and groups](cross-tenant-SharePoint-migration-step4.md)**  
- Step 5: [Prepare identity mapping](cross-tenant-SharePoint-migration-step5.md)
- Step 6: [Start a Cross-tenant SharePoint migration](cross-tenant-SharePoint-migration-step6.md)
- Step 7: [Post migration steps](cross-tenant-SharePoint-migration-step7.md)

## Identify users and groups to be migrated

To ensure that SharePoint permissions are retained as part of the migration, a mapping file needs to be created to align users from the source tenant to the target tenant.

1. Identify the full list of SharePoint users and sites to be migrated from the source to the target tenant.
2. Identify the list of Microsoft 365 Groups connected to any Group-connected SharePoint sites migrating as part of your project.
3. Prepare a complete list of users, groups, and Microsoft 365 groups that to be migrated to the target tenant.

## Precreate users, groups, and Microsoft 365 groups on the target tenant

- Precreate users and groups as needed in the target tenant's directory.
- All users who are migrating to the target tenant must have new user identities created for them in the target tenant.

   >[!Note]
   >If these users are also having their OneDrive migrated, make sure that these new users don't attempt to sign-in to their new target OneDrive until their corresponding OneDrive migration is complete.

- Users whose SharePoint accounts are migrating to the target tenant must be assigned the appropriate SharePoint license.
- Users who remain in the source tenant but need access to resources migrating to the target tenant should have new guest identities created for them in the target tenant.
- Precreated users must be added as members of any appropriate security groups or unified groups before the SharePoint migration begins. 
- If the user or group name already exists in the target tenant, create a user or group with a different name and make a note of it for the next step.
- We recommend that SharePoint site creations are restricted in the target tenant to prevent users from creating SharePoint sites.

   >[!Note]
   >To learn more on restricting SharePoint site creation, see [Disable SharePoint creation for some users](/sharepoint/manage-user-profiles#disable-SharePoint-creation-for-some-users).

## Precreate Microsoft 365 groups connect to SharePoint sites

1. Install the beta module of Microsoft Graph.

    ```PowerShell
    Install-Module Microsoft.Graph.Beta -Repository PSGallery -Force
    ```

[Install the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation)

2. Sign in to the Microsoft Graph Management Shell as an Microsoft 365 admin with rights to make changes with graph. Enter the password for target tenant when prompted.

    ```PowerShell
    Connect-MgGraph -Scopes "User.ReadWrite.All"
    ```

[Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started)

3. Create the appropriate Microsoft 365 groups, where AccessType matches the access type of the corresponding Microsoft 365 group on the source tenant.

    ```PowerShell
    New-mgBetaGroup -GroupTypes Unified -MailNickname <Group Alias> -DisplayName "Group Name" -ResourceBehaviorOptions "ProvisionSiteOnDemand" -MailEnabled:$False -SecurityEnabled
    ```

    > [!NOTE] 
    > Microsoft 365 Groups connected to SharePoint sites MUST be precreated using this method. Precreating Microsoft 365 groups using any other methods >will cause SharePoint site migrations to fail. Capture the group ObjectID to add to the mapping file.

    > [!Important]
    > Microsoft 365 Groups connected to SharePoint sites **MUST be precreated using this method**. Precreating Microsoft 365 groups using any other methods will cause SharePoint site migrations to fail.

    > [!WARNING]
    > If the Microsoft 365 Group name contains a period character (.), the migration fails with an **Invalid character** error.

## For tenants with Multi-Geo

When creating Microsoft 365 group objects, we recommend you assign the group to the geo instance the site's to be migrated to at the time of creation. The "MailboxRegion" is used to set the residency of the group object.

```PowerShell
New-mgBetaGroup -GroupTypes Unified -MailNickname <Group Alias> -DisplayName "Group Name" -ResourceBehaviorOptions "ProvisionSiteOnDemand" -MailEnabled:$False -SecurityEnabled -PreferredDataLocation <EUR,GBR,CAN...> 
```

>[!NOTE] 
>The **-PreferredDataLocation** used **only** in multi-geo scenarios to set the PDL for the Microsoft 365 Group to ensure the PDL aligns of the new group aligns with the proper data location.

>[!NOTE]
>If the group site is outside the default instance, the MailboxRegion (PDL) must be set.
>For more information, see [Create a Microsoft 365 Group with a specific preferred data location](/microsoft-365/enterprise/multi-geo-add-group-with-pdl).

## Step 5: [Prepare the identity mapping file](cross-tenant-SharePoint-migration-step5.md)
