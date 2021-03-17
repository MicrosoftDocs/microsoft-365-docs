---
title: "Use PowerShell to perform a staged migration to Microsoft 365"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 07/17/2020
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection: Ent_O365
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.assetid: a20f9dbd-6102-4ffa-b72c-ff813e700930

description: Learn how to use PowerShell to move content from a source email system over time using a staged migration to Microsoft 365.
---

# Use PowerShell to perform a staged migration to Microsoft 365

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can migrate the contents of user mailboxes from a source email system to Microsoft 365 over time using a staged migration.
  
This article walks you through the tasks involved with for a staged email migration using Exchange Online PowerShell. The topic, [What you need to know about a staged email migration](/Exchange/mailbox-migration/what-to-know-about-a-staged-migration), gives you an overview of the migration process. When you're comfortable with the contents of that article, use this one to begin migrating mailboxes from one email system to another.
  
> [!NOTE]
> You can also use the Exchange admin center to perform staged migration. See [Perform a staged migration of email to Microsoft 365](/Exchange/mailbox-migration/perform-a-staged-migration/perform-a-staged-migration). 
  
## What do you need to know before you begin?

Estimated time to complete this task: 2-5 minutes to create a migration batch. After the migration batch is started, the duration of the migration will vary based on the number of mailboxes in the batch, the size of each mailbox, and your available network capacity. For information about other factors that affect how long it takes to migrate mailboxes to Microsoft 365, see [Migration Performance](/Exchange/mailbox-migration/office-365-migration-best-practices).
  
You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the "Migration" entry in the [Recipients Permissions](/exchange/recipients-permissions-exchange-2013-help) topic.
  
To use the Exchange Online PowerShell cmdlets, you need to sign in and import the cmdlets into your local Windows PowerShell session. See [Connect to Exchange Online using remote PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) for instructions.
  
For a full list of migration commands, see [Move and migration cmdlets](/powershell/exchange/).
  
## Migration steps

### Step 1: Prepare for a staged migration

Before you migrate mailboxes to Microsoft 365 by using a staged migration, there are a few changes you must make to your Exchange environment.
  
 **Configure Outlook Anywhere on your on-premises Exchange Server** The email migration service uses Outlook Anywhere (also known as RPC over HTTP), to connect to your on-premises Exchange Server. For information about how to set up Outlook Anywhere for Exchange Server 2007, and Exchange 2003, see the following:
  
- [Exchange 2007: How to Enable Outlook Anywhere](/previous-versions/office/exchange-server-2007/bb123889(v=exchg.80))
    
- [How to configure Outlook Anywhere with Exchange 2003](/previous-versions/office/exchange-server-2007/aa996922(v=exchg.80))
    
> [!IMPORTANT]
> You must use a certificate issued by a trusted certification authority (CA) with your Outlook Anywhere configuration. Outlook Anywhere can't be configured with a self-signed certificate. For more information, see [How to configure SSL for Outlook Anywhere](/previous-versions/office/exchange-server-2007/aa995982(v=exchg.80)). 
  
 **Optional: Verify that you can connect to your Exchange organization using Outlook Anywhere** Try one of the following methods to test your connection settings.
  
- Use Outlook from outside your corporate network to connect to your on-premises Exchange mailbox.
    
- Use the [Microsoft Remote Connectivity Analyzer](https://https://testconnectivity.microsoft.com/) to test your connection settings. Use the Outlook Anywhere (RPC over HTTP) or Outlook Autodiscover tests.
    
- Run the following commands in Exchange Online PowerShell:
    
  ```powershell
  $Credentials = Get-Credential
  ```

  ```powershell
  Test-MigrationServerAvailability -ExchangeOutlookAnywhere -Autodiscover -EmailAddress <email address for on-premises administrator> -Credentials $credentials
  ```

 **Set permissions** The on-premises user account that you use to connect to your on-premises Exchange organization (also called the migration administrator) must have the necessary permissions to access the on-premises mailboxes that you want to migrate to Microsoft 365. This user account is used when you connect to your email system by creating a migration endpoint later in this procedure ([Step 3: Create a migration endpoint](use-powershell-to-perform-a-staged-migration-to-microsoft-365.md#BK_Endpoint) ).
  
To migrate the mailboxes, the admin must have one of the following permission sets:
  
- Be a member of the **Domain Admins** group in Active Directory in the on-premises organization.
    
    or
    
- Be assigned the **FullAccess** permission for each on-premises mailbox and the **WriteProperty** permission to modify the **TargetAddress** property on the on-premises user accounts.
    
    or
    
- Be assigned the **Receive As** permission on the on-premises mailbox database that stores user mailboxes and the **WriteProperty** permission to modify the **TargetAddress** property on the on-premises user accounts.
    
For instructions about how to set these permissions, see [Assign permissions to migrate mailboxes to Microsoft 365](/Exchange/mailbox-migration/assign-permissions-for-migration).
  
 **Disable Unified Messaging (UM)** If UM is turned on for the on-premises mailboxes you're migrating, turn off UM before migration. Turn on UM for the mailboxes after migration is complete. For how-to steps, see[disable unified messaging](/previous-versions/office/exchange-server-2007/bb124691(v=exchg.80)).
  
 **Use directory synchronization to create new users in Microsoft 365.** You use directory synchronization to create all the on-premises users in your Microsoft 365 organization.
  
You need to license the users after they're created. You have 30 days to add licenses after the users are created. For steps to add licenses, see [Step 8: Complete post-migration tasks](use-powershell-to-perform-a-staged-migration-to-microsoft-365.md#BK_Postmigration).
  
 You can use either the Microsoft Azure Active Directory (Azure AD) Synchronization Tool or the Microsoft Azure AD Sync Services  to synchronize and create your on-premises users in Microsoft 365. After mailboxes are migrated to Microsoft 365, you manage user accounts in your on-premises organization, and they're synchronized with your Microsoft 365 organization. For more information, see[Directory Integration](/previous-versions/azure/azure-services/jj573653(v=azure.100)) .
  
### Step 2: Create a CSV file for a staged migration batch

After you identify the users whose on-premises mailboxes you want to migrate to Microsoft 365, you use a comma separated value (CSV ) file to create a migration batch. Each row in the CSV file—used by Microsoft 365 to run the migration—contains information about an on-premises mailbox. 
  
> [!NOTE]
> There isn't a limit for the number of mailboxes that you can migrate to Microsoft 365 using a staged migration. The CSV file for a migration batch can contain a maximum of 2,000 rows. To migrate more than 2,000 mailboxes, create additional CSV files and use each file to create a new migration batch. 
  
 **Supported attributes**
  
The CSV file for a staged migration supports the following three attributes. Each row in the CSV file corresponds to a mailbox and must contain a value for each of these attributes.
  
|**Attribute**|**Description**|**Required?**|
|:-----|:-----|:-----|
|EmailAddress  <br/> |Specifies the primary SMTP email address, for example, pilarp@contoso.com, for on-premises mailboxes.  <br/> Use the primary SMTP address for on-premises mailboxes and not user IDs from the Microsoft 365. For example, if the on-premises domain is named contoso.com but the Microsoft 365 email domain is named service.contoso.com, you would use the contoso.com domain name for email addresses in the CSV file.  <br/> |Required  <br/> |
|Password  <br/> |The password to be set for the new Microsoft 365 mailbox. Any password restrictions that are applied to your Microsoft 365 organization also apply to the passwords included in the CSV file.  <br/> |Optional  <br/> |
|ForceChangePassword  <br/> |Specifies whether a user must change the password the first time they sign in to their new Microsoft 365 mailbox. Use **True** or **False** for the value of this parameter. <br/> > [!NOTE]> If you've implemented a single sign-on (SSO) solution by deploying Active Directory Federation Services (AD FS) or greater in your on-premises organization, you must use **False** for the value of the **ForceChangePassword** attribute.          |Optional  <br/> |
   
 **CSV file format**
  
Here's an example of the format for the CSV file. In this example, three on-premises mailboxes are migrated to Microsoft 365.
  
The first row, or header row, of the CSV file lists the names of the attributes, or fields, specified in the rows that follow. Each attribute name is separated by a comma.
  
```powershell
EmailAddress,Password,ForceChangePassword 
pilarp@contoso.com,Pa$$w0rd,False 
tobyn@contoso.com,Pa$$w0rd,False 
briant@contoso.com,Pa$$w0rd,False 
```

Each row under the header row represents one user and supplies the information that will be used to migrate the user's mailbox. The attribute values in each row must be in the same order as the attribute names in the header row. 
  
Use any text editor, or an application like Excel , to create the CSV file. Save the file as a .csv or .txt file.
  
> [!NOTE]
> If the CSV file contains non-ASCII or special characters, save the CSV file with UTF-8 or other Unicode encoding. Depending on the application, saving the CSV file with UTF-8 or other Unicode encoding can be easier when the system locale of the computer matches the language used in the CSV file. 
  
### Step 3: Create a migration endpoint
<a name="BK_Endpoint"> </a>

To migrate email successfully, Microsoft 365 needs to connect and communicate with the source email system. To do this, Microsoft 365 uses a migration endpoint. To create an Outlook Anywhere migration endpoint by using PowerShell, for staged migration, first [connect to Exchange Online](/powershell/exchange/connect-to-exchange-online-powershell). 
  
For a full list of migration commands, see [Move and migration cmdlets](/powershell/exchange/).
  
To create an Outlook Anywhere migration endpoint called "StagedEndpoint" in Exchange Online PowerShell, run the following commands:
  
```powershell
$Credentials = Get-Credential
```

```powershell
New-MigrationEndpoint -ExchangeOutlookAnywhere -Name StagedEndpoint -Autodiscover -EmailAddress administrator@contoso.com -Credentials $Credentials
```

For more information about the **New-MigrationEndpoint** cmdlet, see[New-MigrationEndpoint](/powershell/module/exchange/new-migrationendpoint).
  
> [!NOTE]
> The **New-MigrationEndpoint** cmdlet can be used to specify a database for the service to use by using the **-TargetDatabase** option. Otherwise a database is randomly assigned from the Active Directory Federation Services (AD FS) 2.0 site where the management mailbox is located.
  
#### Verify it worked

In Exchange Online PowerShell, run the following command to display information about the "StagedEndpoint" migration endpoint:
  
```powershell
Get-MigrationEndpoint StagedEndpoint | Format-List EndpointType,ExchangeServer,UseAutoDiscover,Max*
```

### Step 4: Create and start a stage migration batch
<a name="BK_Endpoint"> </a>

You can use the **New-MigrationBatch** cmdlet in Exchange Online PowerShell to create a migration batch for a cutover migration. You can create a migration batch and start it automatically by including the _AutoStart_ parameter. Alternatively, you can create the migration batch and then manually start it afterwards by using the **Start-MigrationBatch** cmdlet. This example creates a migration batch called "StagedBatch1" and uses the migration endpoint that was created in the previous step.
  
```powershell
New-MigrationBatch -Name StagedBatch1 -SourceEndpoint StagedEndpoint -AutoStart
```

This example also creates a migration batch called "StagedBatch1" and uses the migration endpoint that was created in the previous step. Because the  _AutoStart_ parameter isn't included, the migration batch has to be manually started on the migration dashboard or by using **Start-MigrationBatch** cmdlet. As previously stated, only one cutover migration batch can exist at a time.
  
```powershell
New-MigrationBatch -Name StagedBatch1 -SourceEndpoint StagedEndpoint
```

#### Verify it worked

Run the following command in Exchange Online PowerShell to display information about the "StagedBatch1":
  
```powershell
Get-MigrationBatch -Identity StagedBatch1 | Format-List
```

You can also verify that the batch has started by running the following command:
  
```powershell
Get-MigrationBatch -Identity StagedBatch1 | Format-List Status
```

For more information about the **Get-MigrationBatch** cmdlet, see[Get-MigrationBatch](/powershell/module/exchange/get-migrationbatch).
  
### Step 5: Convert on-premises mailboxes to mail-enabled users
<a name="BK_Endpoint"> </a>

After you have successfully migrated a batch of mailboxes, you need some way to let users get to their mail. A user whose mailbox has been migrated now has both a mailbox on-premises and one in Microsoft 365. Users who have a mailbox in Microsoft 365 will stop receiving new mail in their on-premises mailbox. 
  
Because you are not done with your migrations, you are not yet ready to direct all users to Microsoft 365 for their email. So what do you do for those people who have both? What you can do is change the on-premises mailboxes that you've already migrated to mail-enabled users. When you change from a mailbox to a mail-enabled user, you can direct the user to Microsoft 365 for their email instead of going to their on-premises mailbox. 
  
Another important reason to convert on-premises mailboxes to mail-enabled users is to retain proxy addresses from the Microsoft 365 mailboxes by copying proxy addresses to the mail-enabled users. This lets you manage cloud-based users from your on-premises organization by using Active Directory. Also, if you decide to decommission your on-premises Exchange Server organization after all mailboxes are migrated to Microsoft 365, the proxy addresses you've copied to the mail-enabled users will remain in your on-premises Active Directory.
    
### Step 6: Delete a staged migration batch
<a name="BK_Endpoint"> </a>

 After all mailboxes in a migration batch have been successfully migrated, and you've converted the on-premises mailboxes in the batch to mail-enabled users, you're ready to delete a staged migration batch. Be sure to verify that mail is being forwarded to the Microsoft 365 mailboxes in the migration batch. When you delete a staged migration batch, the migration service cleans up any records related to the migration batch and deletes the migration batch.
  
To delete the "StagedBatch1" migration batch in Exchange Online PowerShell, run the following command.
  
```powershell
Remove-MigrationBatch -Identity StagedBatch1
```

For more information about the **Remove-MigrationBatch** cmdlet, see[Remove-MigrationBatch](/powershell/module/exchange/remove-migrationbatch).
  
#### Verify it worked

Run the following command in Exchange Online PowerShell to display information about the "IMAPBatch1":
  
```powershell
Get-MigrationBatch StagedBatch1
```

The command will return either the migration batch with a status of **Removing**, or it will return an error stating that migration batch couldn't be found, verifying that the batch was deleted.
  
For more information about the **Get-MigrationBatch** cmdlet, see[Get-MigrationBatch](/powershell/module/exchange/get-migrationbatch).
  
### Step7: Assign licenses to Microsoft 365 users
<a name="BK_Endpoint"> </a>

Activate Microsoft 365 user accounts for the migrated accounts by assigning licenses. If you don't assign a license, the mailbox is disabled when the grace period (30 days) ends. To assign a license in the Microsoft 365 admin center, see [Assign or unassign licenses](../admin/manage/assign-licenses-to-users.md).
  
### Step 8: Complete post-migration tasks
<a name="BK_Postmigration"> </a>

- **Create an Autodiscover DNS record so users can easily get to their mailboxes.** After all on-premises mailboxes are migrated to Microsoft 365, you can configure an Autodiscover DNS record for your Microsoft 365 organization to enable users to easily connect to their new Microsoft 365 mailboxes with Outlook and mobile clients. This new Autodiscover DNS record has to use the same namespace that you're using for your Microsoft 365 organization. For example, if your cloud-based namespace is cloud.contoso.com, the Autodiscover DNS record you need to create is autodiscover.cloud.contoso.com.
    
    Microsoft 365 uses a CNAME record to implement the Autodiscover service for Outlook and mobile clients. The Autodiscover CNAME record must contain the following information:
    
  - **Alias:** autodiscover
    
  - **Target:** autodiscover.outlook.com
    
    For more information, see [Add DNS records to connect your domain](../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md).
    
- **Decommission on-premises Exchange servers.** After you've verified that all email is being routed directly to the Microsoft 365 mailboxes, and you no longer need to maintain your on-premises email organization or don't plan on implementing an SSO solution, you can uninstall Exchange from your servers and remove your on-premises Exchange organization.
    
    For more information, see the following:
    
  - [Modify or Remove Exchange 2010](/previous-versions/office/exchange-server-2010/ee332361(v=exchg.141))
    
  - [How to Remove an Exchange 2007 Organization](/previous-versions/office/exchange-server-2007/aa998313(v=exchg.80))
    
  - [How to Uninstall Exchange Server 2003](/previous-versions/tn-archive/bb125110(v=exchg.65))
