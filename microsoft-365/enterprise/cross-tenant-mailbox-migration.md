---
title: Cross-tenant mailbox migration
description: How to move mailboxes between Microsoft 365 or Office 365 tenants.
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.subservice: multi-tenant
ms.topic: article
f1.keywords:
  - NOCSH
ms.date: 02/01/2024
ms.reviewer: georgiah
ms.custom:
  - it-pro
  - admindeeplinkMAC
  - admindeeplinkEXCHANGE
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.localizationpriority: high
ms.collection:
  - scotvorg
  - M365-subscription-management
  - must-keep
---

# Cross-tenant mailbox migration

During mergers or divestitures, you might need the ability to move your users' Exchange Online mailboxes into a new tenant. Cross-tenant mailbox migration allows tenant administrators to use well-known interfaces like Exchange Online PowerShell and MRS to transition users to their new organization.

Administrators can use the **New-MigrationBatch** cmdlet, available through the _Move Mailboxes_ management role, to execute cross-tenant moves.

Users migrating must be present in the target tenant Exchange Online system as a _MailUser_, marked with specific attributes to enable the cross-tenant moves. The system fails to move users that aren't properly set up in the target tenant.

After the moves are complete, the source user mailbox is converted to a `MailUser`, and the `targetAddress` (shown as _ExternalEmailAddress_ in Exchange) is stamped with the routing address to the destination tenant. This process leaves the legacy `MailUser` in the source tenant and allows for coexistence and mail routing. When business processes allow, the source tenant can remove the source MailUser or convert them to a mail contact.

Cross-tenant Exchange mailbox migrations are supported for tenants in hybrid or cloud only, or a combination of the two.

This article describes the process for cross-tenant mailbox moves and provides guidance on how to prepare source and target tenants for the Exchange Online mailbox content moves.

> [!IMPORTANT]
> Mailboxes that are on any type of hold aren't migrated, and the move for those mailboxes is blocked.

When a mailbox is migrated cross-tenant with this feature, only user-visible content in the mailbox (email, contacts, calendar, tasks, and notes) is migrated to the target (destination tenant). After a successful migration, the source mailbox is deleted. This deletion means that after migration, under no circumstances is the source mailbox available, discoverable, or accessible in the source tenant.

## Licensing

> [!IMPORTANT]
Cross-Tenant migrations requires a per user license (one-time fee) and can be assigned either on the source or target user object. This license also covers [OneDrive for Business migration](cross-tenant-onedrive-migration.md). Cross Tenant User Data Migration is available as an add-on to the following Microsoft 365 subscription plans: Microsoft 365 Business Basic, Standard, and Premium; Microsoft 365 F1/F3/E3/E5/; Office 365 F3/E1/E3/E5; Exchange Online; SharePoint Online; OneDrive for Business and EDU.

> [!WARNING]
> You must have purchased, or verified that you can purchase, cross-tenant user data migration licenses prior to the next steps. Migrations fail if this step hasn't been completed. Microsoft doesn't offer exceptions for this licensing requirement.

If you do not have the proper license assigned to the user being migrated, the migration fails, and you receive an error that is similar to the following:

``` code
Error: CrossTenantMigrationWithoutLicensePermanentException: No license was found for the source recipient, '65c3c3ea-2b9a-44d0-a685-9bfe300f8c87', or the target recipient, '65c3c3ea-2b9a-44d0-a685-9bfe300f8c87'. A Cross-tenant User Data Migration license is required to move a mailbox between tenants.
```

## Preparing source and target tenants

### Prerequisites for source and target tenants

Before starting, ensure that you have the necessary permissions to configure the Move Mailbox application in Azure, EXO Migration Endpoint, and the EXO Organization Relationship.

Additionally, at least one mail-enabled security group in the source tenant is required. These groups are used to scope the list of mailboxes that can move from source tenant (or sometimes referred to as resource) to the target tenant. This scoping allows the source tenant administrator to restrict or scope the specific set of mailboxes that need to be moved, preventing unintended users from being migrated.

If you are migrating more than 10,000 users, we recommend creating multiple groups to contain the user list for best performance. While nested groups are supported, they are not recommended.

You also need to communicate with your trusted partner company (with whom you'll be moving mailboxes) to obtain their Microsoft 365 tenant ID. This tenant ID is used in the **Organization Relationship DomainName** field.

To obtain the tenant ID of a subscription, sign in to the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=2024339) and go to https://entra.microsoft.com/#view/Microsoft_AAD_IAM/TenantOverview.ReactView. Select the **copy** icon for the **Tenant ID** property to copy it to the clipboard.

All users in both the source and target organizations must be licensed with the appropriate Exchange Online subscriptions. Also, ensure that you apply Cross Tenant User Data Migration licenses to all users who will be migrated to the target side.

### Configuration steps to enable your tenants for cross-tenant mailbox migrations

> [!NOTE]
> You must configure the target (destination) first. To complete these steps, you aren't required to have or know the tenant administrator credentials for both the source and target tenant. Steps can be performed individually for each tenant by different administrators.

### Prepare the target (destination) tenant by creating the migration application and secret

1. Sign in to your Microsoft Entra admin center (<https://portal.azure.com>) with your target tenant administrator credentials.

   ![Azure Logon](../media/tenant-to-tenant-mailbox-move/74f26681e12df3308c7823ee7d527587.png)

2. Under **Manage Microsoft Entra ID**, select **View**.

   ![Microsoft Entra Button](../media/tenant-to-tenant-mailbox-move/109ac3dfbac2403fb288f085767f393b.png)

3. In the navigation pane, select **App registrations**.

4. Select **New registration**.

   :::image type="content" alt-text="Screenshot of New Application UI." source="../media/tenant-to-tenant-mailbox-move/b36698df128e705eacff4bff7231056a.png":::

5. On the **Register an application** page, under **Supported account types**, select **Accounts in any organizational directory (Any Microsoft Entra directory - Multi-tenant)**. Then, under **Redirect URI (optional)**, select **Web**, and then type `https://office.com`. Then, select **Register**.

   :::image type="content" alt-text="Screenshot of the form 'Register an application'." source="../media/tenant-to-tenant-mailbox-move/edcdf18b9f504c47284fe4afb982c433.png":::

   On the top-right corner of the page, see the notification dialog box that states the app was successfully created.

6. Go back to the Home page, go to **Microsoft Entra ID**, and then select **App registrations**.

7. Under **Owned applications**, find the app you created, and then select it.

8. Under **Essentials**, copy the **Application (client) ID**. You'll need this information later to create a URL for the target tenant.

9. In the navigation pane, select **API permissions** to view permissions assigned to your app.

10. By default, **User.Read** permissions are assigned to the app you created, but these permissions aren't required for mailbox migrations. You can remove those permissions.

    :::image type="content" alt-text="Screenshot of 'Configured permissions'." source="../media/tenant-to-tenant-mailbox-move/6a8c13a36cb3e10964a6920b8138e12b.png" lightbox="../media/tenant-to-tenant-mailbox-move/6a8c13a36cb3e10964a6920b8138e12b.png":::

11. To add permission for mailbox migration, select **Add a permission**.

12. In the **Request API permissions** window, select **APIs my organization uses**, search for `Office 365 Exchange Online`, and then select it.

    :::image type="content" alt-text="Screenshot of 'Select an API' under 'Request API permissions'." source="../media/tenant-to-tenant-mailbox-move/0b4dc1eea3910e9c475724d9473aca58.png":::

13. Select **Application permissions**.

14. Under **Select permissions**, expand **Mailbox** and select **Mailbox.Migration**, and then select **Add permissions** at the bottom on the screen.

    :::image type="content" alt-text="Screenshot of Mailbox.Migration and its checkbox under 'Select permissions'." source="../media/tenant-to-tenant-mailbox-move/0038a4cf74bb13de0feb51800e078803.png":::

15. Now select **Certificates & secrets** in the navigation pane for your application.

16. Under **Client secrets**, select **New client secret**.

    :::image type="content" alt-text="Screenshot of 'Client secrets' and the option to add a new client secret." source="../media/tenant-to-tenant-mailbox-move/273dafd5e6c6455695f9baf35ef9977a.png":::

17. In the **Add a client secret** window, type a description, and then configure your expiration settings.

    > [!NOTE]
    > The password is used when creating your migration endpoint. It's extremely important that you copy this password to your clipboard and/or to a secure/secret password safe location. The secret creation stage is the only time during which you can see this password! If you do somehow lose it or need to reset it, you can sign back into the Azure portal, go to **App registrations**, find your migration app, select **Secrets & certificates**, and then create a new secret for your app.

Now that you've successfully created the migration application and secret, the next step is to consent to the application. 

### Grant consent to the application

1. In the Microsoft Entra ID landing page, select **Enterprise applications** in the navigation pane; then find your migration app you created, select it, and then select **API Permissions**.

2. Select **Grant admin consent for [your tenant]**. A new browser window opens.

3. Select **Accept**.

4. Go back to your portal window and select **Refresh** to confirm your acceptance.

5. Formulate the URL to send to your trusted partner (source tenant administrator) so that they can also accept the application to enable mailbox migration.

   Here's an example of the URL to provide to them:

   `https://login.microsoftonline.com/contoso.onmicrosoft.com/adminconsent?client_id=[application_id_of_the_app_you_just_created]&redirect_uri=https://office.com`

   > [!NOTE]
   > You'll need the application ID of the mailbox migration app you just created.
   > You'll need to replace contoso.onmicrosoft.com in the above example with your source tenant's correct onmicrosoft.com name.
   > You'll also need to replace [application_id_of_the_app_you_just_created] with the application ID of the mailbox migration app you just created.

### Prepare the target tenant by creating the Exchange Online migration endpoint and organization relationship

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) in the target Exchange Online tenant.

2. Create a new migration endpoint for Cross-tenant mailbox moves.

   > [!NOTE]
   > You'll need the application ID of the mailbox migration app you just created and the password (secret) you configured in [Prepare the target (destination) tenant by creating the migration application and secret](#prepare-the-target-destination-tenant-by-creating-the-migration-application-and-secret). Depending on the Microsoft 365 cloud instance you use, your endpoint may be different. See the [Microsoft 365 endpoints](microsoft-365-endpoints.md) page; select the correct instance for your tenant; then review the Exchange Online _Optimize/Required_ address, and replace as appropriate.

   ```PowerShell
   $AppId = "[Guid copied from the migrations app]"
   $name = "[the name of your new migration endpoint]"
   $remote = "<contoso>.onmicrosoft.com"
   $secret = "[this is your secret password you saved in the previous steps]"
   # Enable customization if tenant is dehydrated
   $dehydrated = Get-OrganizationConfig | select isdehydrated
   if ($dehydrated.isdehydrated -eq $true) {Enable-OrganizationCustomization}
   $Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $AppId, (ConvertTo-SecureString -String $secret -AsPlainText -Force)
   New-MigrationEndpoint -RemoteServer outlook.office.com -RemoteTenant $remote -Credentials $Credential -ExchangeRemoteMove:$true -Name $name -ApplicationId $AppId
   ```

> [!NOTE]
> If the above command fails, please check with the source tenant administrator to confirm if the application was granted admin consent. 

3. Create a new organization relationship object or edit your existing organization relationship object to your source tenant.

   ```PowerShell
   $sourceTenantId = "[tenant ID of your trusted partner, where the source mailboxes are]"
   $orgrelname = "[name of your new organization relationship]"
   $orgrels = Get-OrganizationRelationship
   $existingOrgRel = $orgrels | ?{$_.DomainNames -like $sourceTenantId}
   If ($null -ne $existingOrgRel)
   {
       Set-OrganizationRelationship $existingOrgRel.Name -Enabled:$true -MailboxMoveEnabled:$true -MailboxMoveCapability Inbound
   }
   If ($null -eq $existingOrgRel)
   {
       New-OrganizationRelationship $orgrelname -Enabled:$true -MailboxMoveEnabled:$true -MailboxMoveCapability Inbound -DomainNames $sourceTenantId
   }
   ```

### Prepare the source (current mailbox location) tenant by accepting the migration application and configuring the organization relationship

1. Using your browser, go to the URL link provided by your trusted partner to consent to the mailbox migration application. The URL should look like this:

   `https://login.microsoftonline.com/contoso.onmicrosoft.com/adminconsent?client_id=[application_id_of_the_app_you_just_created]&redirect_uri=https://office.com`

   > [!NOTE]
   > You'll need the application ID of the mailbox migration app you just created. You will need to replace `contoso.onmicrosoft.com` in the previous example with your source tenant's `onmicrosoft.com` URL. You'll also need to replace [application_id_of_the_app_you_just_created] with the application ID of the mailbox migration app you just created.

2. Accept the application when the pop-up appears. You can also sign in to your Microsoft Entra admin center and find the application under **Enterprise applications**.

3. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) on the source Exchange Online tenant.

4. Create a new organization relationship object or edit your existing organization relationship object to your target (destination) tenant in Exchange Online PowerShell:

   ```PowerShell
   $targetTenantId = "[tenant ID of your trusted partner, where the mailboxes are being moved to]"
   $appId = "[application ID of the mailbox migration app you consented to]"
   $scope = "[name of the mail enabled security group that contains the list of users who are allowed to migrate]"
   $orgrelname = "[name of your new organization relationship]"
   # Enable customization if tenant is dehydrated
   $dehydrated = Get-OrganizationConfig | select isdehydrated
   if ($dehydrated.isdehydrated -eq $true) {Enable-OrganizationCustomization}
   if (!(New-DistributionGroup -Type Security -Name $scope)) { Write-Host "Group already exists." }
   $orgrels=Get-OrganizationRelationship
   $existingOrgRel = $orgrels | ?{$_.DomainNames -like $targetTenantId}
   If ($null -ne $existingOrgRel)
   {
       Set-OrganizationRelationship $existingOrgRel.Name -Enabled:$true -MailboxMoveEnabled:$true -MailboxMoveCapability RemoteOutbound -OAuthApplicationId $appId -MailboxMovePublishedScopes $scope
   }
   If ($null -eq $existingOrgRel)
   {
       New-OrganizationRelationship $orgrelname -Enabled:$true -MailboxMoveEnabled:$true -MailboxMoveCapability RemoteOutbound -DomainNames $targetTenantId -OAuthApplicationId $appId -MailboxMovePublishedScopes $scope
   }
   ```

   > [!NOTE]
   > The tenant ID that you enter as the \$sourceTenantId and \$targetTenantId is the GUID and not the tenant domain name. For an example of a tenant ID and information about finding your tenant ID, see [Find your Microsoft 365 tenant ID](/onedrive/find-your-office-365-tenant-id).

## Prepare target user objects for migration

Users migrating must be present in the target tenant and Exchange Online system (as a MailUser) marked with specific attributes to enable the Cross-tenant moves. The system will fail to move users that aren't properly set up in the target tenant. The [Prerequisites for target user objects](#prerequisites-for-target-user-objects) section details the MailUser object requirements for the target tenant.

### Prerequisites for target user objects

Ensure the following objects and attributes are set in the target organization:

> [!TIP]
> Microsoft is developing a feature to provide a secure automated method to set many of the attributes (specified below, in this section). This feature, named Cross-Tenant Identity Mapping, is currently looking for customers willing to participate in a small private preview. For more information about this pre-release feature and how it can simplify your Cross-tenant migration processes, see [Cross-Tenant Identity Mapping](cross-tenant-identity-mapping.md).

For any mailbox moving from a source organization, you must provision a MailUser object in the Target organization:

   1. The Target MailUser must have these attributes from the source mailbox or assigned with the new User object:

      1. ExchangeGUID (direct flow from source to target): The mailbox GUID must match. The move process won't proceed if this attribute isn't present on target object.
      2. ArchiveGUID (direct flow from source to target): The archive GUID must match. The move process won't proceed if this attribute isn't present on the target object. (This attribute is only required if the source mailbox is Archive enabled).
      3. LegacyExchangeDN (flow as proxyAddress, "x500:\<LegacyExchangeDN\>"): The LegacyExchangeDN must be present on target MailUser as x500: proxyAddress. **In addition, you also need to copy all x500 addresses from the source mailbox to the target mail user.** The move processes won't proceed if these x500 addresses aren't present on the target object. Also, this step is important for enabling reply ability for emails that are sent before migration. The sender/recipient address in each email item and the auto-complete cache in Microsoft Outlook and in Microsoft Outlook Web App (OWA) use the value of the LegacyExchangeDN attribute. If a user can't be located using the LegacyExchangeDN value, the delivery of email messages may fail with a 5.1.1 NDR.
      4. UserPrincipalName: UPN will align to the user's NEW identity or target company (for example, user@northwindtraders.onmicrosoft.com).
      5. Primary SMTPAddress: Primary SMTP address will align to the user's NEW company (for example, user@northwindtraders.com).
      6. TargetAddress/ExternalEmailAddress: MailUser will reference the user's current mailbox hosted in source tenant (for example user@contoso.onmicrosoft.com). When this value is being assigned, verify that you have/are also assigning PrimarySMTPAddress; else, this value will set the PrimarySMTPAddress, which will cause move failures.
      7. You can't add legacy smtp proxy addresses from source mailbox to target MailUser. For example, you can't maintain contoso.com on the MEU in northwindtraders.onmicrosoft.com tenant objects. Domains are associated with one Microsoft Entra ID or Exchange Online tenant only.

         Example **target** MailUser object:

         | Attribute            | Value                                                                                                                                |
         | -------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
         | Alias                | LaraN                                                                                                                                |
         | RecipientType        | MailUser                                                                                                                             |
         | RecipientTypeDetails | MailUser                                                                                                                             |
         | UserPrincipalName    | LaraN@northwintraders.onmicrosoft.com                                                                                                |
         | PrimarySmtpAddress   | Lara.Newton@northwindtraders.com                                                                                                     |
         | ExternalEmailAddress | SMTP:LaraN@contoso.onmicrosoft.com                                                                                                   |
         | ExchangeGUID         | 1ec059c7-8396-4d0b-af4e-d6bd4c12a8d8                                                                                                 |
         | LegacyExchangeDN     | /o=First Organization/ou=Exchange Administrative Group (FYDIBOHF23SPDLT)/cn=Recipients/cn=74e5385fce4b46d19006876949855035-Lara      |
         | EmailAddresses       | x500:/o=First Organization/ou=Exchange Administrative Group (FYDIBOHF23SPDLT)/cn=Recipients/cn=d11ec1a2cacd4f81858c81907273f1f9-Lara |
         |                      | smtp:LaraN@northwindtraders.onmicrosoft.com                                                                                          |
         |                      | SMTP:Lara.Newton@northwindtraders.com                                                                                                |
         |                      | X500:/o=ExchangeLabs/ou=Exchange Administrative Group (FYDIBOHF23SPDLT)/cn=Recipients/cn=f161af74128f460fba5c0c23984b3d6c-Lara       |

         Example **source** Mailbox object:

         | Attribute            | Value                                                                                                                          |
         | -------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
         | Alias                | LaraN                                                                                                                          |
         | RecipientType        | UserMailbox                                                                                                                    |
         | RecipientTypeDetails | UserMailbox                                                                                                                    |
         | UserPrincipalName    | LaraN@contoso.onmicrosoft.com                                                                                                  |
         | PrimarySmtpAddress   | Lara.Newton@contoso.com                                                                                                        |
         | ExchangeGUID         | 1ec059c7-8396-4d0b-af4e-d6bd4c12a8d8                                                                                           |
         | LegacyExchangeDN     | /o=First Organization/ou=Exchange Administrative Group (FYDIBOHF23SPDLT)/cn=Recipients/cn=d11ec1a2cacd4f81858c81907273f1f9-Lara|
         | EmailAddresses       | smtp:LaraN@contoso.onmicrosoft.com                                                                                             |
         |                      | SMTP:Lara.Newton@contoso.com                                                                                                   |
         |                      | X500:/o=ExchangeLabs/ou=Exchange Administrative Group (FYDIBOHF23SPDLT)/cn=Recipients/cn=f161af74128f460fba5c0c23984b3d6c-Lara |

7. Other attributes may be included in Exchange hybrid write-back already. If not, they should be included.

   1. `msExchBlockedSendersHash` – Writes back online blocked sender data from clients to on-premises Active Directory.
   2. `msExchSafeRecipientsHash` – Writes back online safe recipients data from clients to on-premises Active Directory.
   3. `msExchSafeSendersHash` – Writes back online safe sender data from clients to on-premises Active Directory.

   Users in the target organization must be licensed with appropriate Exchange Online subscriptions applicable for the organization. You may apply a license in advance of a mailbox move but ONLY once the target MailUser is properly set up with ExchangeGUID and proxy addresses. Applying a license before the ExchangeGUID is applied will result in a new mailbox provisioned in target organization. You must also apply a Cross Tenant User Data Migration license; else, you may see a transient error reading **needs approval**, which will report a warning in the move report that a license hasn't been applied to the target user.

   > [!NOTE]
   > When you apply a license on a Mailbox or MailUser object, all SMTP type proxyAddresses are scrubbed to ensure only verified domains are included in the Exchange EmailAddresses array.

8. You must ensure that the target MailUser has no previous ExchangeGUID that doesn't match the Source ExchangeGUID. This mismatch might occur if the target MEU was previously licensed for Exchange Online and provisioned a mailbox. If the target MailUser was previously licensed for or had an ExchangeGUID that doesn't match the Source ExchangeGUID, you need to perform a cleanup of the cloud MEU. For these cloud MEUs, you can run `Set-User <identity> -PermanentlyClearPreviousMailboxInfo`.

> [!CAUTION]
> This process is irreversible. If the object has a softDeleted mailbox, it can't be restored after this point. Once cleared, however, you can synchronize the correct ExchangeGUID to the target object, and MRS will connect the source mailbox to the newly created target mailbox. (Reference EHLO blog on the new parameter.)

Find objects that were previously mailboxes using the following command:

```PowerShell
Get-User <identity> | select Name, *recipient* | Format-Table -AutoSize
```

Here's an example:

```PowerShell
Get-User John@northwindtraders.com |select name, *recipient*| Format-Table -AutoSize

Name       PreviousRecipientTypeDetails     RecipientType RecipientTypeDetails
----       ---------------------------- ------------- --------------------
John       UserMailbox                  MailUser      MailUser
```

Clear the soft-deleted mailbox using the following command:

```PowerShell
Set-User <identity> -PermanentlyClearPreviousMailboxInfo
```

Here's an example:

```PowerShell
Set-User John@northwindtraders.com -PermanentlyClearPreviousMailboxInfo -Confirm

Are you sure you want to perform this action?
Delete all existing information about user "John@northwindtraders.com"?. This operation will clear existing values from Previous home MDB and Previous Mailbox GUID of the user. After deletion, reconnecting to the previous mailbox that existed in the cloud will not be possible and any content it had will be unrecoverable PERMANENTLY.
Do you want to continue?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [?] Help (default is "Y"): Y
```

### How do I know this worked?

You can verify Cross-tenant mailbox migration configuration by running the [Test-MigrationServerAvailability](/powershell/module/exchange/Test-MigrationServerAvailability) cmdlet against the Cross-tenant migration endpoint that you created on your target tenant. Run the following cmdlet from target tenant:

```PowerShell
Test-MigrationServerAvailability -EndPoint "[the name of your migration endpoint]" -TestMailbox "[Primary SMTP of MailUser object in target tenant]"
```

> [!NOTE]
> Additionally, you may want to take advantage of the [Cross-tenant mailbox migration validation script](https://aka.ms/crosstenantmailboxmigrationvalidationscript), which will allow you to validate the organizations being correctly setup between them, and the objects you are planning to migrate from one tenant to another. The script will help identify any discrepancies that may be present on all objects at once, and as a result, it will reduce the time spent on the initial phase.

### Move mailboxes back to the original source

If a mailbox is required to move back to the original source tenant, the same set of steps and scripts must be run in both new source and new target tenants, with some variance.

Do not run the sample scripts provided to create the OrganizationRelationship.

Update the following values in the existing OrganizationRelationship created in each tenant:

- MailboxMovesCapability should have Inbound, RemoteOutbound as the capabilities in both source and target tenants.
- In the new source tenant, update the OAuthApplicationId value with the value from the newly created application in the new source tenant.
- In the new source tenant, update the MailboxMovePublishedScopes value with the newly created security group in the new source tenant.

### Perform mailbox migrations

Cross-tenant Exchange mailbox migrations are initiated from the target tenant as migration batches. This process is similar to the way on-boarding migration batches work when migrating from Exchange on-premises to Microsoft 365.

### Create Migration batches

Here's an example command for initiating a batch migration:

```PowerShell
New-MigrationBatch -Name T2Tbatch -SourceEndpoint target_source_7977 -CSVData ([System.IO.File]::ReadAllBytes('users.csv')) -Autostart -TargetDeliveryDomain northwindtraders.onmicrosoft.com

Identity                   Status  Type               TotalCount
--------                   ------  ----               ----------
T2Tbatch                   Syncing ExchangeRemoteMove 1
```

> [!NOTE]
> The email address in the CSV file must be the one specified in the target tenant (for example, userA@northwindtraders.onmicrosoft.com), not the one in the source tenant.
> [For more information on the cmdlet click here](/powershell/module/exchange/new-migrationbatch)
> [For some example CSV file info click here](/exchange/csv-files-for-mailbox-migration-exchange-2013-help)

A minimal example of a CSV file is:

```CSV
EmailAddress
userA@northwindtraders.onmicrosoft.com
userB@northwindtraders.onmicrosoft.com
userC@northwindtraders.onmicrosoft.com
```

Migration batch submission is also supported from the new [Exchange admin center](https://go.microsoft.com/fwlink/p/?linkid=2059104) when selecting the cross-tenant option.

### Update on-premises MailUsers

Once the mailbox moves from source to target, you should ensure that the on-premises mail users, in both the source and target, are updated with the new targetAddress. In the examples, the targetDeliveryDomain used in the move is **northwindtraders.onmicrosoft.com**. Update the mail users with this targetAddress.

### Remove endpoints and organization relationships after migration

Use the [Remove-MigrationEndpoint](/PowerShell/module/exchange/remove-migrationendpoint) cmdlet to remove existing migration endpoints for source or destination servers after the migration is complete.

Use the [Remove-OrganizationRelationship](/exchange/sharing/organization-relationships/remove-an-organization-relationship\#use-exchange-online-PowerShell-to-remove-an-organization-relationship) cmdlet to remove existing organization relationships for source or destination servers after the migration is complete.

## Frequently asked questions

### Do I need to update RemoteMailboxes in the source on-premises tenant after the move?

#### Source Exchange Organization

You should update the targetAddress (RemoteRoutingAddress/ExternalEmailAddress) of each source on-premises user when the source tenant mailbox moves to the target tenant. While mail routing can follow the referrals across multiple mail users with different targetAddresses, Free/Busy lookups for mail users **must** target the location of the mailbox user.

#### Target Exchange Organization

After migration is complete in a hybrid organization, run the following PowerShell command if you want your users to have remote mailboxes on-premises: 

```PowerShell
Get-MailUser -Identity <Migrate Mail User> | Enable-RemoteMailbox
```

### Do Teams meetings migrate cross-tenant?

While Teams meetings are moved, the meeting URL isn't updated when items migrate cross-tenant. Since the URL will be invalid in the target tenant, you must remove and recreate Teams meetings.

### What content is migrated cross-tenant?

When a mailbox is migrated cross-tenant with this feature, only user-visible content in the mailbox, also known as Top of Information Store (email, contacts, calendar, tasks, and notes), and the Recoverable Items folders Deletions, Versions, and Purges are migrated.

### Do items in the Outbox get migrated cross-tenant?

Items in the Outbox aren't migrated cross-tenant as this folder is a client-based folder specific to the Outlook client. Items in the Outbox are stored locally, and not synced to the cloud.

### Does the Teams chat folder content migrate cross-tenant?

No, the Teams chat folder content doesn't migrate cross-tenant. However, once the mailbox has been migrated cross-tenant, the Teams chat folder content will be available for source tenant administrator to search and export, using a content search.

### How can I see just moves that are cross-tenant moves, not my onboarding and off-boarding moves?

Use the _Flags_ parameter:

```PowerShell
Get-MoveRequest -Flags "CrossTenant"
```

### Can you provide example scripts for copying attributes used in testing?

> [!NOTE]
> SAMPLE – AS IS, NO WARRANTY This script assumes a connection to both source mailbox (to get source values) and the target on-premises Active Directory Domain Services (to stamp the ADUser object).

```PowerShell
# This will export users from the source tenant with the CustomAttribute1 = "Cross-Tenant-Project"
# These are the 'target' users to be moved to the northwindtraders tenant
$outFileUsers = "$home\desktop\UsersToMigrate.txt"
$outFileUsersXML = "$home\desktop\UsersToMigrate.xml"
Get-Mailbox -Filter "CustomAttribute1 -like 'Cross-Tenant-Project'" -ResultSize Unlimited | Select-Object -ExpandProperty  Alias | Out-File $outFileUsers
$mailboxes = Get-Content $outFileUsers
$mailboxes | ForEach-Object {Get-Mailbox $_} | Select-Object PrimarySMTPAddress,Alias,SamAccountName,FirstName,LastName,DisplayName,Name,ExchangeGuid,ArchiveGuid,LegacyExchangeDn,EmailAddresses | Export-Clixml $outFileUsersXML
```

```PowerShell
# Copy the file $outfile to the desktop of the target on-premises then run the below to create MEU in Target
$symbols = '!@#$%^&*'.ToCharArray()
$characterList = @([char[]]([char]'a'..[char]'z'), [char[]]([char]'A'..[char]'Z'), [char[]]([char]'0'..[char]'9') + $symbols)

function GeneratePassword {
    param(
        [ValidateRange(12, 256)]
        [int]
        $length = 16
    )

    do {
        $password = -join (0..$length | ForEach-Object { $characterList | Get-Random })
        [int]$hasLowerChar = $password -cmatch '[a-z]'
        [int]$hasUpperChar = $password -cmatch '[A-Z]'
        [int]$hasDigit = $password -match '[0-9]'
        [int]$hasSymbol = $password.IndexOfAny($symbols) -ne -1

    }
    until (($hasLowerChar + $hasUpperChar + $hasDigit + $hasSymbol) -ge 3)

    $password | ConvertTo-SecureString -AsPlainText
}

$mailboxes = Import-Clixml $home\desktop\UsersToMigrate.xml
foreach ($m in $mailboxes) {
    $organization = "@contoso.onmicrosoft.com"
    $mosi = $m.Alias + $organization
    $Password = GeneratePassword
    $x500 = "x500:" + $m.LegacyExchangeDn
    $tmpUser = New-MailUser -MicrosoftOnlineServicesID $mosi -PrimarySmtpAddress $mosi -ExternalEmailAddress $m.PrimarySmtpAddress -FirstName $m.FirstName -LastName $m.LastName -Name $m.Name -DisplayName $m.DisplayName -Alias $m.Alias -Password $Password
    $tmpUser | Set-MailUser -EmailAddresses @{add = $x500 } -ExchangeGuid $m.ExchangeGuid -ArchiveGuid $m.ArchiveGuid -CustomAttribute1 "Cross-Tenant-Project"
    $tmpx500 = $m.EmailAddresses | Where-Object { $_ -match "x500" }
    $tmpx500 | ForEach-Object { Set-MailUser $m.Alias -EmailAddresses @{add = "$_" } }
}

# Now synchronize the changes from On-Premises to Azure and Exchange Online in the target tenant
# This action should create the target mail enabled users (MEUs) in the Target tenant
Start-ADSyncSyncCycle
```

### How do we access Outlook on Day 1 after the user mailbox is moved?

Since only one tenant can own a domain, the former primary SMTPAddress won't be associated to the user in the target tenant when the mailbox move completes; only those domains associated with the new tenant. Outlook uses the user's new UPN to authenticate to the service, and the Outlook profile expects to find the legacy primary SMTPAddress to match the mailbox in the target system. Since the legacy address isn't in the target system, the outlook profile won't connect to find the newly moved mailbox.

For this initial deployment, users will need to rebuild their profile with their new UPN, primary SMTP address and resync OST content.

> [!NOTE]
> Plan accordingly as you batch your users for completion. You need to account for network utilization and capacity when Outlook client profiles are created and subsequent OST and OAB files are downloaded to clients.

### What Exchange RBAC roles do I need to be member of to set up or complete a cross-tenant move?

There's a matrix of roles based on assumption of delegated duties when executing a mailbox move. Currently, two roles are required:

- The first role is for a one-time setup task that establishes the authorization of moving content into or out of your tenant/organizational boundary. As moving data out of your organizational control is a critical concern for all companies, we opted for the highest assigned role of **Organization Administrator**. This role must alter or set up a new OrganizationRelationship that defines the `-MailboxMoveCapability` setting with the remote organization. Only the organization administrator can alter the `-MailboxMoveCapability` setting, while other attributes on the OrganizationRelationship can be managed by the Federated Sharing administrator.
- The role of executing the actual move commands can be delegated to a lower-level function. The role of **Move Mailboxes** is assigned to the capability of moving mailboxes in or out of the organization.

### How do we target which SMTP address is selected for targetAddress (TargetDeliveryDomain) on the converted mailbox (to MailUser conversion)?

Exchange mailbox moves using MRS craft the targetAddress on the original source mailbox when converting to a MailUser by matching an email address (proxyAddress) on the target object. The process takes the `-TargetDeliveryDomain` value passed into the command, then checks for a matching proxy for that domain on the target side. When we find a match, the matching proxyAddress is used to set the ExternalEmailAddress (targetAddress) on the converted mailbox (now MailUser) object.

### How does mail flow work after migration?

Cross-Tenant mail flow after migration works similar to Exchange Hybrid mail flow. Each migrated mailbox needs the source MailUser with the correct target address to forward incoming mail from source tenant to mailboxes in target tenant. Transport rules, security, and compliance features will run as configured in each tenant that the mail flows through. So, for inbound mail, features like anti-spam, anti-malware, quarantine, transport rules and journaling rules will run in the source tenant first, then in the target tenant.

### How do mailbox permissions transition?

Mailbox permissions include Send on Behalf of and Mailbox Access:

- Send On Behalf Of (AD:publicDelegates) stores the DN of recipients with access to a user's mailbox as a delegate. This value is stored in the Active Directory and currently doesn't move as part of the mailbox transition. If the source mailbox has publicDelegates set, you'll need to restamp the publicDelegates on the target Mailbox once the MEU to Mailbox conversion completes in the target environment by running `Set-Mailbox <principle> -GrantSendOnBehalfTo <delegate>`.
- Mailbox Permissions that are stored in the mailbox will move with the mailbox when both the principal and the delegate are moved to the target system. For example, the user TestUser*7 is granted FullAccess to the mailbox TestUser_8 in the tenant SourceCompany.onmicrosoft.com. After the mailbox moves complete to TargetCompany.onmicrosoft.com, the same permissions are set up in the target directory. Examples using \_Get-MailboxPermission* for TestUser_7 in both source and target tenants are shown below. Exchange cmdlets are prefixed with source and target accordingly.

Here's an example of the output of the mailbox permission before a move from the source side:

```PowerShell
Get-MailboxPermission TestUser_7 | Format-Table -AutoSize User, AccessRights, is Inherited, Deny

User                                             AccessRights                         IsInherited Deny
----                                             ------------                         ----------- ----
NT AUTHORITY\SELF                                {FullAccess, ReadPermission}         False       False
TestUser_8@contoso.onmicrosoft.com               {FullAccess}                         False       False
```

Here's an example of the output of the mailbox permission after the move from the target side:

```PowerShell
Get-MailboxPermission TestUser_7 | Format-Table -AutoSize User, AccessRights, IsInherited, Deny

User                                             AccessRights                         IsInherited Deny
----                                             ------------                         ----------- ----
NT AUTHORITY\SELF                                {FullAccess, ReadPermission}         False       False
TestUser_8@northwindtraders.onmicrosoft.com      {FullAccess}                         False       False
```

> [!NOTE]
> Cross-tenant mailbox and calendar permissions aren't supported. You must organize principals and delegates into consolidated move batches so that these connected mailboxes are transitioned at the same time from the source tenant.

### What X500 proxy should be added to the target MailUser proxy addresses to enable migration?

The cross-tenant mailbox migration requires that the LegacyExchangeDN value of the source mailbox object be stamped as an x500 email address on the target MailUser object.

Example:

```PowerShell
LegacyExchangeDN value on source mailbox is:
/o=First Organization/ou=Exchange Administrative Group(FYDIBOHF23SPDLT)/cn=Recipients/cn=d11ec1a2cacd4f81858c81907273f1f9Lara

so, the x500 email address to be added to target MailUser object would be:
x500:/o=First Organization/ou=Exchange Administrative Group (FYDIBOHF23SPDLT)/cn=Recipients/cn=d11ec1a2cacd4f81858c81907273f1f9-Lara
```

> [!NOTE]
> In addition to this X500 proxy, you will need to copy all X500 proxies from the mailbox in the source to the mailbox in the target.
> While rare, you could also run across an X400 proxy address on a mailbox, while not a requirement for the move to complete, it is recommended that you also stamp this address on the target mail user object.

### Can the source and target tenants utilize the same domain name?

No, the source tenant and target tenant domain names must be unique, for example, a source domain of contoso.com and the target domain of northwindtraders.com.

### Will shared mailboxes move and still work?

Yes. However, we only keep the store permissions as described in this article:

- [Manage permissions for recipients in Exchange Online](/exchange/recipients-in-exchange-online/manage-permissions-for-recipients)

### Do you have any recommendations for batches?

Don't exceed 2,000 mailboxes per batch. We strongly recommend submitting batches two weeks prior to the cut-over date as there's no impact on the end users during synchronization. If you need guidance for mailboxes quantities over 50,000, you can reach out to your CSAM or open a support request.

### What if I use Service encryption with Microsoft Purview Customer Key?

The mailbox is decrypted prior to moving. Ensure Customer Key is configured in the target tenant if it's still required. For more information, see [here](/purview/customer-key-overview).

### What is the estimated migration time?

To help you plan your migration, the table present [here](/exchange/mailbox-migration/office-365-migration-best-practices#estimated-migration-times) shows the guidelines about when to expect bulk mailbox migrations or individual migrations to complete. These estimates are based on a data analysis of previous customer migrations. As every environment is unique, your exact migration velocity can vary.

### Protecting documents in the source tenant consumable by users in the destination tenant.\*\*

Cross-tenant migration only migrates mailbox data and nothing else. There are multiple other options, which are documented in the following blog post that may help: 

<https://techcommunity.microsoft.com/t5/security-compliance-and-identity/mergers-and-spinoffs/ba-p/910455>

### Can I have the same labels in the destination tenant as you had in the source tenant, either as the only set of labels or an additional set of labels for the migrated users depending on alignment between the organizations.\*\*

Because cross-tenant migrations don't export labels and there's no way to share labels between tenants, you can only achieve this objective by recreating the labels in the destination tenant.

### Do you support moving Microsoft 365 Groups?

Currently the cross-tenant mailbox migrations feature doesn't support the migration of Microsoft 365 Groups.

### Can a source tenant admin perform an eDiscovery search against a mailbox after the mailbox has been migrated to the new/target tenant?

No, after a cross-tenant mailbox migration, eDiscovery against the migrated user's mailbox in the source doesn't work. This eDiscovery failure is because there's no longer a mailbox in the source to search for as the mailbox has been migrated to the target tenant and now belongs to the target tenant. eDiscovery after mailbox migration can only be done in the target tenant (where the mailbox now exists). If a copy of the source mailbox needs to persist in the source tenant after migration, the administrator in the source tenant can copy the contents to an alternate mailbox pre-migration for future eDiscovery operations against the data.

### At which point will the destination MailUser be converted to a destination mailbox and the source mailbox converted to a source MailUser?

These conversions happen automatically during the migration process. No manual steps are necessary.

### At which step should I assign the Exchange Online license to destination MailUsers?

This license assignation can be done before the migration is complete, but you shouldn't assign a license prior to stamping the _ExchangeGUID_ attribute; else, the conversion of MailUser object to mailbox will fail and a new mailbox will be created instead. To mitigate this risk, it's best to wait until the migration is complete and assign licenses during the 30-day grace period.

<a name='can-i-use-azure-ad-connect-to-sync-users-to-the-new-tenant-if-im-keeping-the-on-premises-active-directory'></a>

### Can I use Microsoft Entra Connect to sync users to the new tenant if I'm keeping the on-premises Active Directory?

Yes. It's possible to have two instances of Microsoft Entra Connect synchronize to different tenants. However, there are some things you need to be aware of:

- Preprovisioning the user's accounts with the script provided in this article shouldn't be done. Instead, a selective OU sync of the users in scope for the migration can be performed to populate the target tenant. You'll receive a warning about the UPN not matching during Microsoft Entra Connect configuration.
- Depending on your current state of hybrid Exchange, you need to verify that the on-premises directory objects have the required attributes (such as msExchMailboxGUID and proxyAddresses) populated correctly before attempting to sync to another tenant; else you'll run into issues with double mailboxes and migration failures.
- You must take some extra steps to manage UPN transitioning, changing it on-premises once the migration has been completed for a user unless you're also moving the custom domain during a cut-over migration.

### How should I handle mailboxes that are close to, or over quota.

Mailboxes nearing their quota prior to migration may end up over quota either before or during the actual migration. If this happens, these mailboxes will fail migration and will need to be remediated and restarted. To mitigate this, it is recommend the source tenant admin identify mailboxes at or near quota prior to migration and take the necessary steps to either reduce the mailbox size, provision a primary archive or in some cases enable auto expanding archives for the user's mailboxes.

> [!NOTE]
> Once enabling an archive or auto expanding archive for a user, ensure the correct archiving policies are applied to the user and the process is run to move the mailbox data to it's new location and free up space.

### Do auto-expanded archive mailboxes move?

**Issue: Auto Expanded archives cannot be migrated.** Yes, if the user in source has auto-expanding archives enabled and has additional auxiliary archives, cross-tenant mailbox migration will work. We support moving users that have no more than 12 auxiliary archive mailboxes. Additionally, users with large primary, large main archive, and large auxiliary archive mailboxes will require extra time to synchronize and should be submitted well in advance of the cut-over date. If the source mailbox is expanded during the mailbox migration process, the migration will fail as a new auxiliary archive will be created in the source, but not in the target. In this case, you'll need to remove the user from the batch and resubmit them.

### Can I perform a cross cloud tenant to tenant migration?

Cross cloud tenant to tenant migration is not supported. An example scenario would be moving from Office 365 Worldwide to Office 365 Government Cloud.

### Are voicemails migrated cross tenant?

Yes, voicemails are migrated cross tenant.

- Received voicemails in email as attachments are available in the target mailbox.
- Received voicemails are available in Teams if you call voicemail and listen to saved messages. (VMs received in source are available as saved messages)
- Received voicemails are not available in Teams client UI in target post migration.
- The voicemail greeting is also migrated to the target.

### Are mailbox signatures migrated cross tenant?

Mailbox signatures are not migrated cross tenant and must be recreated.

## Known issues

- Post-migration Teams functionality in the source tenant will be limited. After the mailbox is migrated to the target tenant, Teams in the source tenant no longer has access to the user's mailbox. If a user signs in to Teams with the source tenant credential, there's a loss of functionality such as the inability to update their profile picture, no calendar application, and an inability to search and join public teams.

- Cloud MailUsers with non-owned smtp proxyAddress block MRS moves. When creating target tenant MailUser objects, you must ensure that all SMTP proxy addresses belong to the target tenant organization. If an SMTP proxyAddress exists on the target mail user that doesn't belong to the local tenant, the conversion of the MailUser to a mailbox is prevented. This prevention is due to our assurance that mailbox objects can only send mail from domains for which the tenant is authoritative (domains claimed by the tenant).

- If you synchronize users from on-premises using Microsoft Entra Connect in the target tenant, then you can provision on-premises MailUser objects with ExternalEmailAddress pointing to the source tenant where the mailbox exists (LaraN@contoso.onmicrosoft.com), and you stamp the PrimarySMTPAddress as a domain that resides in the target tenant (Lara.Newton@northwindtraders.com). These values synchronize down to the tenant and an appropriate mail user is provisioned and is ready for migration. An example object is shown here.

  ```PowerShell
  Get-MailUser LaraN | select ExternalEmailAddress, EmailAddresses

  ExternalEmailAddress               EmailAddresses
  --------------------               --------------
  SMTP:LaraN@contoso.onmicrosoft.com {SMTP:lara.newton@northwindtraders.com}
  ```

  > [!NOTE]
  > The _contoso.onmicrosoft.com_ address is _not_ present in the EmailAddresses/proxyAddresses array.

- MailUser objects with "external" primary SMTP addresses are modified/reset to "internal" company-claimed domains.

  MailUser objects are pointers to non-local mailboxes. In the case for cross-tenant mailbox migrations, we use MailUser objects to represent either the source mailbox (from the target organization's perspective) or target mailbox (from the source organization's perspective). The MailUsers will have an ExternalEmailAddress (targetAddress) that points to the smtp address of the actual mailbox (ProxyTest@northwindtraders.onmicrosoft.com) and primarySMTP address that represents the displayed SMTP address of the mailbox user in the directory. Some organizations choose to display the primary SMTP address as an external SMTP address, not as an address owned/verified by the local tenant (for example, as northwindtraders.com rather than as contoso.com). However, once an Exchange service plan object is applied to the MailUser via licensing operations, the primary SMTP address is modified to show as a domain verified by the local organization (contoso.com). There are two potential reasons:

- When any Exchange service plan is applied to a MailUser, the Microsoft Entra ID process starts to enforce proxy scrubbing to ensure that the local organization isn't able to send out mail, spoof, or mail from another tenant. Any SMTP address on a recipient object with these service plans will be removed if the address isn't verified by the local organization. As is the case in the example, the northwindtraders.com domain isn't verified by the contoso.onmicrosoft.com tenant; therefore, the scrubbing removes that northwindtraders.com domain. If you wish to persist these external domains on MailUser, either before or after the migration, you need to alter your migration processes to strip licenses after the move completes or before the move to ensure that the users have the expected external branding applied. You'll need to ensure that the mailbox object is properly licensed to not affect mail service. An example script to remove the service plans on a MailUser in the contoso.onmicrosoft.com tenant is shown here.

> [!NOTE]
> The following script uses Microsoft Graph Powershell. For more information, see [Microsoft Graph PowerShell overview](/powershell/microsoftgraph/overview).
>
> For information about how to use different methods to authenticate ```Connect-Graph``` in an unattended script, see the article [Authentication module cmdlets in Microsoft Graph PowerShell](/powershell/microsoftgraph/authentication-commands).

```powershell
# Connect to Microsoft Graph
Connect-Graph -Scopes User.ReadWrite.All, Organization.Read.All

# Get licensing plans and include disabled plans
$EmsSku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'ENTERPRISEPREMIUM'
$User = Get-MgUser -UserId LaraN@contoso.onmicrosoft.com
$userLicense = Get-MgUserLicenseDetail -UserId $User.Id

$userDisabledPlans = $userLicense.ServicePlans |
  Where ProvisioningStatus -eq "Disabled" |
  Select -ExpandProperty ServicePlanId

$newDisabledPlans = $EmsSku.ServicePlans |
  Where ServicePlanName -in ("LOCKBOX_ENTERPRISE","EXCHANGE_S_ENTERPRISE","INFORMATION_BARRIERS","MIP_S_CLP2","MIP_S_CLP1","MYANALYTICS_P2","EXCHANGE_ANALYTICS","EQUIVIO_ANALYTICS","THREAT_INTELLIGENCE","PAM_ENTERPRISE","PREMIUM_ENCRYPTION") |
  Select -ExpandProperty ServicePlanId

$disabledPlans = $userDisabledPlans + $newDisabledPlans | Select -Unique

$addLicenses = @(
  @{SkuId = $EmsSku.SkuId
  DisabledPlans = $disabledPlans
  }
  )

Set-MgUserLicense -UserId '38955658-c844-4f59-9430-6519430ac89b' -AddLicenses $addLicenses -RemoveLicenses @()

Id                                   DisplayName   Mail UserPrincipalName                     UserType
--                                   -----------   ---- -----------------                     --------
38955658-c844-4f59-9430-6519430ac89b Bianca Pisani      BiancaP@contoso.onmicrosoft.com       Member
```

  Results in the set of ServicePlans assigned are shown here:

  ```PowerShell
  $order = @(
    @{ Expression = 'ProvisioningStatus'; Ascending = $true }
  )
  Get-MgUserLicenseDetail -UserId '38955658-c844-4f59-9430-6519430ac89b' | Select-Object -ExpandProperty ServicePlans | sort ProvisioningStatus $order

  AppliesTo ProvisioningStatus  ServicePlanId                        ServicePlanName
--------- ------------------  -------------                        ---------------
User      Success             2e2ddb96-6af9-4b1d-a3f0-d6ecfd22edb2 ADALLOM_S_STANDALONE
User      Success             6c6042f5-6f01-4d67-b8c1-eb99d36eed3e STREAM_O365_E5
User      Success             e212cbc7-0961-4c40-9825-01117710dcb1 FORMS_PLAN_E5
User      Success             07699545-9485-468e-95b6-2fca3738be01 FLOW_O365_P3
User      Success             9c0dab89-a30c-4117-86e7-97bda240acd2 POWERAPPS_O365_P3
User      Success             871d91ec-ec1a-452b-a83f-bd76c7d770ef WINDEFATP
User      Success             21b439ba-a0ca-424f-a6cc-52f954a5b111 WIN10_PRO_ENT_SUB
User      Success             57ff2da0-773e-42df-b2af-ffb7a2317929 TEAMS1
User      Success             8c7d2df8-86f0-4902-b2ed-a0458298f3b3 Deskless
User      Success             8e0c0a52-6a6c-4d40-8370-dd62790dcd70 THREAT_INTELLIGENCE
User      Success             4a51bca5-1eff-43f5-878c-177680f191af WHITEBOARD_PLAN3
User      Success             efb0351d-3b08-4503-993d-383af8de41e3 MIP_S_CLP2
User      Success             617b097b-4b93-4ede-83de-5f075bb5fb2f PREMIUM_ENCRYPTION
User      Success             8c098270-9dd4-4350-9b30-ba4703f3b36b ADALLOM_S_O365
Company   Success             94065c59-bc8e-4e8b-89e5-5138d471eaff MICROSOFT_SEARCH
User      Success             14ab5db5-e6c4-4b20-b4bc-13e36fd2227f ATA
User      Success             3fb82609-8c27-4f7b-bd51-30634711ee67 BPOS_S_TODO_3
User      Success             b1188c4c-1b36-4018-b48b-ee07604f6feb PAM_ENTERPRISE
User      Success             5136a095-5cf0-4aff-bec3-e84448b38ea5 MIP_S_CLP1
User      Success             33c4f319-9bdd-48d6-9c4d-410b750a4a5a MYANALYTICS_P2
User      Success             5689bec4-755d-4753-8b61-40975025187c RMS_S_PREMIUM2
User      Success             4828c8ec-dc2e-4779-b502-87ac9ce28ab7 MCOEV
User      Success             9f431833-0334-42de-a7dc-70aa40db46db LOCKBOX_ENTERPRISE
User      Success             3e26ee1f-8a5f-4d52-aee2-b81ce45c8f40 MCOMEETADV
User      Success             43de0ff5-c92c-492b-9116-175376d08c38 OFFICESUBSCRIPTION
User      Success             0feaeb32-d00e-4d66-bd5a-43b5b83db82c MCOSTANDARD
User      Success             70d33638-9c74-4d01-bfd3-562de28bd4ba BI_AZURE_P2
Company   Success             f20fedf3-f3c3-43c3-8267-2bfdd51c0939 ATP_ENTERPRISE
User      Success             4de31727-a228-4ec3-a5bf-8e45b5ca48cc EQUIVIO_ANALYTICS
User      Success             efb87545-963c-4e0d-99df-69c6916d9eb0 EXCHANGE_S_ENTERPRISE
User      Success             34c0d7a0-a70f-4668-9238-47f9fc208882 EXCHANGE_ANALYTICS
User      Success             8a256a2b-b617-496d-b51b-e76466e88db0 MFA_PREMIUM
User      Success             41781fb2-bc02-4b7c-bd55-b576c07bb09d AAD_PREMIUM
User      Success             bea4c11e-220a-4e6d-8eb8-8ea15d019f90 RMS_S_ENTERPRISE
User      Success             eec0eb4f-6444-4f95-aba0-50c24d67f998 AAD_PREMIUM_P2
User      Success             6c57d4b6-3b23-47a5-9bc9-69f17b4947b3 RMS_S_PREMIUM
User      Success             5dbe027f-2339-4123-9542-606e4d348a72 SHAREPOINTENTERPRISE
User      Success             b737dad2-2f6c-4c65-90e3-ca563267e8b9 PROJECTWORKMANAGEMENT
User      Success             e95bec33-7c88-4a70-8e19-b10bd9d0c014 SHAREPOINTWAC
User      Success             7547a3fe-08ee-4ccb-b430-5077c5041653 YAMMER_ENTERPRISE
User      Success             a23b959c-7ce8-4e57-9140-b90eb88a9e97 SWAY
User      Success             c4801e8a-cb58-4c35-aca6-f2dcc106f287 INFORMATION_BARRIERS
User      Success             b76fb638-6ba6-402a-b9f9-83d28acb3d86 VIVA_LEARNING_SEEDED
Company   Success             db4d623d-b514-490b-b7ef-8885eee514de Nucleus
Company   Success             6f23d6a9-adbf-481c-8538-b4c095654487 M365_LIGHTHOUSE_CUSTOMER_PLAN1
User      Success             a82fbf69-b4d7-49f4-83a6-915b2cf354f4 VIVAENGAGE_CORE
User      Success             9a6eeb79-0b4b-4bf0-9808-39d99a2cd5a3 Windows_Autopatch
User      Success             cd31b152-6326-4d1b-ae1b-997b625182e6 MIP_S_Exchange
User      Success             a413a9ff-720c-4822-98ef-2f37c2a21f4c MICROSOFT_COMMUNICATION_COMPLIANCE
User      Success             795f6fe0-cc4d-4773-b050-5dde4dc704c9 UNIVERSAL_PRINT_01
Company   Success             2b815d45-56e4-4e3a-b65c-66cb9175b560 ContentExplorer_Standard
User      Success             7bf960f6-2cd9-443a-8046-5dbff9558365 WINDOWSUPDATEFORBUSINESS_DEPLOYMENTSERVICE
User      Success             3ec18638-bd4c-4d3b-8905-479ed636b83e CustomerLockboxA_Enterprise
User      Success             3efbd4ed-8958-4824-8389-1321f8730af8 MESH_AVATARS_ADDITIONAL_FOR_TEAMS
User      Success             99cd49a9-0e54-4e07-aea1-d8d9f5f704f5 Defender_for_Iot_Enterprise
User      Success             0898bdbb-73b0-471a-81e5-20f1fe4dd66e KAIZALA_STANDALONE
User      Success             c948ea65-2053-4a5a-8a62-9eaaaf11b522 PURVIEW_DISCOVERY
User      Success             a1ace008-72f3-4ea0-8dac-33b3a23a2472 CLIPCHAMP
User      Success             f6de4823-28fa-440b-b886-4783fa86ddba M365_AUDIT_PLATFORM
User      Success             0d0c0d31-fae7-41f2-b909-eaf4d7f26dba Bing_Chat_Enterprise
User      Success             dcf9d2f4-772e-4434-b757-77a453cfbc02 MESH_AVATARS_FOR_TEAMS
User      Success             c4b8c31a-fb44-4c65-9837-a21f55fcabda MICROSOFT_LOOP
User      Success             a6520331-d7d4-4276-95f5-15c0933bc757 GRAPH_CONNECTORS_SEARCH_INDEX
User      Success             e26c2fcc-ab91-4a61-b35c-03cdc8dddf66 INFO_GOVERNANCE
User      Success             46129a58-a698-46f0-aa5b-17f6586297d9 DATA_INVESTIGATIONS
User      Success             9d0c4ee5-e4a1-4625-ab39-d82b619b1a34 INSIDER_RISK_MANAGEMENT
User      Success             65cc641f-cccd-4643-97e0-a17e3045e541 RECORDS_MANAGEMENT
User      Success             d2d51368-76c9-4317-ada2-a12c004c432f ML_CLASSIFICATION
User      Success             bf6f5520-59e3-4f82-974b-7dbbc4fd27c7 SAFEDOCS
User      Success             2f442157-a11c-46b9-ae5b-6e39ff4e5849 M365_ADVANCED_AUDITING
User      Success             41fcdd7d-4733-4863-9cf4-c65b83ce2df4 COMMUNICATIONS_COMPLIANCE
User      Success             6db1f1db-2b46-403f-be40-e39395f08dbb CUSTOMER_KEY
User      Success             6dc145d6-95dd-4191-b9c3-185575ee6f6b COMMUNICATIONS_DLP
User      Success             199a5c09-e0ca-4e37-8f7c-b05d533e1ea2 MICROSOFTBOOKINGS
User      Success             ded3d325-1bdc-453e-8432-5bac26d7a014 POWER_VIRTUAL_AGENTS_O365_P3
Company   Success             d9fa6af4-e046-4c89-9226-729a0786685d Content_Explorer
User      Success             afa73018-811e-46e9-988f-f75d2b1b8430 CDS_O365_P3
User      Success             b21a6b06-1988-436e-a07b-51ec6d9f52ad PROJECT_O365_P3
User      Success             64bfac92-2b17-4482-b5e5-a0304429de3e MICROSOFTENDPOINTDLP
User      Success             bf28f719-7844-4079-9c78-c1307898e192 MTP
User      Success             28b0fa46-c39a-4188-89e2-58e979a6b014 DYN365_CDS_O365_P3
User      Success             d587c7a3-bda9-4f99-8776-9bcf59c84f75 INSIDER_RISK
User      Success             531ee2f8-b1cb-453b-9c21-d2180d014ca5 EXCEL_PREMIUM
User      PendingProvisioning f0ff6ac6-297d-49cd-be34-6dfef97f0c28 MESH_IMMERSIVE_FOR_TEAMS
User      PendingInput        c1ec4a95-1f05-45b3-a911-aa3fa01094f5 INTUNE_A
Company   PendingActivation   882e1d05-acd1-4ccb-8708-6ee03664b117 INTUNE_O365
  ```

  The user's PrimarySMTPAddress is no longer scrubbed. The northwindtraders.com domain isn't owned by the contoso.onmicrosoft.com tenant and will persist as the primary SMTP address shown in the directory.

  Here's an example:

  ```PowerShell
  Get-Recipient ProxyTest | Format-Table -AutoSize UserPrincipalName, PrimarySmtpAddress, ExternalEmailAddress, ExternalDirectoryObjectId
  UserPrincipalName               PrimarySmtpAddress              ExternalEmailAddress                 ExternalDirectoryObjectId
  -----------------               ------------------              --------------------                 -------------------------
  ProxyTest@contoso.com          ProxyTest@contoso.com          SMTP:ProxyTest@contoso.com          e2513482-1d5b-4066-936a-cbc7f8f6f817
  ```

  When `msExchRemoteRecipientType` is set to 8 (DeprovisionMailbox), for on-premises MailUsers that are migrated to the target tenant, the proxy scrubbing logic in Azure removes non-owned domains and reset the primarySMTP to an owned domain. With the msExchRemoteRecipientType in the on-premises MailUser being cleared, the proxy scrub logic no longer applies.

  Below is the full set of current service plans that include Exchange Online:

  | Name                                             |
  | ------------------------------------------------ |
  | eDiscovery (Premium) Storage (500 GB)            |
  | Customer Lockbox                                 |
  | Data Loss Prevention                             |
  | Exchange Enterprise CAL Services (EOP, DLP)      |
  | Exchange Essentials                              |
  | Exchange Foundation                              |
  | Exchange Online (P1)                             |
  | Exchange Online (Plan 1)                         |
  | Exchange Online (Plan 2)                         |
  | Exchange Online Archiving for Exchange Online    |
  | Exchange Online Archiving for Exchange Server    |
  | Exchange Online Inactive User Add-on             |
  | Exchange Online Kiosk                            |
  | Exchange Online Multi-Geo                        |
  | Exchange Online Plan 1                           |
  | Exchange Online POP                              |
  | Exchange Online Protection                       |
  | Graph Connectors Search with Index               |
  | Information Barriers                             |
  | Information Protection for Office 365 - Premium  |
  | Information Protection for Office 365 - Standard |
  | Insights by MyAnalytics                          |
  | Microsoft Information Governance                 |
  | Microsoft Purview Audit (Premium)                |
  | Microsoft Bookings                               |
  | Microsoft Business Center                        |
  | Microsoft Data Investigations                    |
  | Microsoft MyAnalytics (Full)                     |
  | Microsoft Communications Compliance              |
  | Microsoft Communications DLP                     |
  | Microsoft Customer Key                           |
  | Microsoft 365 Advanced Auditing                  |
  | Microsoft Records Management                     |
  | Office 365 eDiscovery (Premium)                  |
  | Office 365 Advanced eDiscovery                   |
  | Microsoft Defender for Office 365 (Plan 1)       |
  | Microsoft Defender for Office 365 (Plan 2)       |
  | Office 365 Privileged Access Management          |
  | Premium Encryption in Office 365                 |

## Migration Failures

- MailboxNotInCrossTenantMigrationScopeException

  Ensure the migration scope is set up correctly on the source tenant and that MailboxMovesPublishedScopes is set in the organization relationship with the target tenant.  
  Verify that the mailbox to be migrated has been added to the security group in the source tenant.  
  After adding user to correct security group, resume the migration batch.  

- AuxArchiveNotFoundInTargetRecipientException

  This failure is because the user was not in the migration scope when batch was started and the user has AuxArchive on the source.  
  Add user to the correct security group on source target.  
  Remove the migration user from the batch.  
  Remove users with the following command:

  ```powershell
  Get-MigrationUser -Identity LaraN@contoso.onmicrosoft.com -IncludeAssociatedUsers | Remove-MigrationUser  
  ```
  
  Add user to new batch.  

- MailboxIsNotInExpectedDBException

  This failure is due to internal Microsoft maintenance.  
  Remove the migration user from the batch.  
  Remove users with the following command:

   ```powershell
  Get-MigrationUser -Identity LaraN@contoso.onmicrosoft.com -IncludeAssociatedUsers | Remove-MigrationUser
   ```
  
  Add user to new batch.  

- NotAcceptedDomainException

  There is an invalid proxy address stamped on the target user. An example would be where a user in contoso.onmicrosoft.com had a proxy address of  fabrikam.onmicrosoft.com, which is the source tenant.  
  Remove the invalid proxy address using the following command:

  ```powershell
  Set-MailUser LaraN@contoso.onmicrosoft.com -EmailAddress @{remove="smtp:LaraN@northwindtraders.onmicrosoft.com"}
  ```

  Resume the migration batch.  

- SourceAuxArchiveIsProvisionedDuringCrossTenantMovePermanentException

  A new AuxArchive was provisioned during migration.  
  Remove the migration user from the batch.  
  Remove users with the following command:

  ```powershell
  Get-MigrationUser -Identity LaraN@contoso.onmicrosoft.com -IncludeAssociatedUsers | Remove-MigrationUser 
   ```

  Add user to new batch.  

- UserDuplicateInOtherBatchException

  User exists in another batch already.  
  Remove the migration user from the batch.  
  Remove users with the following command:

  ```powershell
  Get-MigrationUser -Identity LaraN@contoso.onmicrosoft.com -IncludeAssociatedUsers | Remove-MigrationUser
  ```

  Add user to new batch.  

- MissingExchangeGuidException

  The target mailuser object is missing the correct ExchangeGuid value.  
  Update the ExchangeGuid with the following command:

  ```powershell
  Set-MailUser LaraN@contoso.onmicrosoft.com -ExchangeGuid 4e3188c6-39f5-4387-adc7-b355b6b852c8  
  ```

  Resume migration batch.  

- SourceMailboxAlreadyBeingMovedPermanentException

  The source mailbox already has an existing move request. Investigate and remove the existing move. It is possible that this is an internal Microsoft  move and you will need to wait for the move to complete.  
  Remove the migration user from the batch.  
  Remove users with the following command:

  ```powershell
  Get-MigrationUser -Identity LaraN@contoso.onmicrosoft.com -IncludeAssociatedUsers | Remove-MigrationUser  
  ```

  Add user to new batch after the original move has been removed or completed.  

- UserAlreadyHasDemotedArchiveException

  The user had an archive mailbox previously that was disabled. Choose one of the two following options to resolve this issue.  
  Permanently delete the disabled archive mailbox, this is unreversable. Set-Mailbox -RemoveDisabledArchive LaraN@contoso.onmicrosoft.com  
  Re-enable the disabled archive mailbox with the following command:

  ```powershell
  Enable-Mailbox -Archive mailbox@contoso.onmicrosoft.com.
  ```

  If you re-enable the disabled archive mailbox, you will need to update the archive guid on the target mailuser object.  
  Resume migration batch.  

## See also

- [Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
- [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started)
- [https://techcommunity.microsoft.com/t5/exchange-team-blog/troubleshooting-cross-tenant-mailbox-migrations/ba-p/4178404]
