---
title: Data Residency for SharePoint and OneDrive
description: Data Residency for SharePoint and OneDrive
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.subservice: advanced-data-residency
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 02/29/2024
ms.reviewer: deanw, anfra, robnichols
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- must-keep
---

# Data Residency for SharePoint and OneDrive

## **Data Residency Commitments Available**

### Product Terms

Required Conditions:

- _Tenant_ has a sign-up country/region included in _Local Region Geography_, the European Union or the United States.

**Commitment:**

_For current language, refer to the [Privacy and Security Product Terms](https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all) and view the section titled "Location of Customer Data at Rest for Core Online Services."_

### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign-up country/region included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_.
1. The SharePoint subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

**Commitment:**

Refer to the [ADR Commitment page](m365-dr-commitments.md#sharepointonedrive) for the specific customer data at rest commitment for SharePoint and OneDrive.

### Multi-Geo add-on

Required Conditions:

1. _Tenants_ have a valid Multi-Geo subscription that covers all users assigned to a _Satellite Geography_.
1. Customer must have an active Enterprise Agreement.
1. Total purchased Multi-Geo units must be greater than 5% of the total eligible licenses in the _Tenant_.

**Commitment:**

Customers can assign users of SharePoint/OneDrive to any _Satellite Geography_ supported by Multi-Geo (see Section 4.1.3). The following customer data will be stored in the relevant _Satellite Geography_:

- SharePoint site content and the files stored within that site, and files uploaded to OneDrive. 

## Migration with Advanced Data Residency

When SharePoint is moved, data for the following services is also moved:
 
- OneDrive
- Microsoft 365 Video services
- Office in a browser
- Microsoft 365 Apps for enterprise
- Visio Pro for Microsoft 365

After we've completed moving your SharePoint data, you might see some of the following effects.
 
### Microsoft 365 Video Services

- The data move for video takes longer than the moves for the rest of your content in SharePoint.
- After the SharePoint content is moved, there will be a time frame when videos aren't able to be played.
- We're removing the trans-coded copies from the previous datacenter and transcoding them again in the new datacenter.

### Search

In the course of moving your SharePoint data, we migrate your search index and search settings to a new location. Until we've **completed** the move of your SharePoint data, we continue to serve your users from the index in the original location. In the new location, search automatically starts crawling your content after we've completed moving your SharePoint data. From this point and onwards, we serve your users from the migrated index. Changes to your content that occurred after the migration aren't included in the migrated index until crawling picks them up. Most customers don't notice that results are less fresh right after we've completed moving their SharePoint data, but some customers might experience reduced freshness in the first 24-48 hours.
 
The following search features are affected:
 
- Search results and Search Web Parts: Results don't include changes that occurred after the migration until crawling picks them up.
- Delve: Delve doesn't include changes that occurred after the migration until crawling picks them up.
- Popularity and Search Reports for the site: Counts for Excel reports in the new location only include migrated counts and counts from usage reports that have run after we completed moving your SharePoint data. Any counts from the interim period are lost and can't be recovered. This period is typically a couple of days. Some customers might experience shorter or longer losses.
- Video Portal: View counts and statistics for the Video Portal depend on the statistics for Excel Reports, so view counts and statistics for the Video Portal are lost for the same time period as for the Excel reports.
- eDiscovery: Items that changed during the migration aren't shown until crawling picks up the changes.
- Data Loss Protection (DLP): Policies aren't enforced on items that change until crawling picks up the changes.

As part of the migration, the _Primary Provisioned Geography_ changes and all new content will be stored at rest in the new _Primary Provisioned Geography_. Existing content will move in the background with no impact to you for up to 90 days after the first change to the SharePoint data location in the admin center.

### SharePoint 2013 workflow

As part of our ongoing efforts to modernize SharePoint workflow capabilities, we have previously announced the [retirement plan of SharePoint 2013 workflow service](https://support.microsoft.com/office/sharepoint-2013-workflow-retirement-4613d9cf-69aa-40f7-b6bf-6e7831c9691e#:~:text=SharePoint%202013%20workflow%20will%20be%20turned%20off%20for,environments%20including%20Government%20Clouds%20and%20Department%20of%20Defense.). In alignment with this plan, SharePoint 2013 workflow will not be available in the new local regions of Mexico and Spain, or in any future local regions that we may launch. This means that if you migrate your SharePoint data to a new region, you will not be able to use SharePoint 2013 workflow for your business processes and scenarios.

Refer to the link above for more information about the retirement plan and the alternatives for SharePoint workflow. If you have any questions or concerns, please contact Microsoft support.

## **Multi-Geo Capabilities in SharePoint / OneDrive**

> [!IMPORTANT]
> There is currently a known issue caused by the retirement of BCS that is affecting site moves. The fix is currently being worked on. Currently, if you are facing issues, please try using the PowerShell cmdlet while using the -SuppressBcsCheck parameter.

Multi-Geo capabilities in OneDrive and SharePoint enable control of shared resources like SharePoint team sites and Microsoft 365 group mailboxes stored at rest in a specified _Macro Region Geography_ or _Local Region Geography_.

Each user, Group mailbox, and SharePoint site have a Preferred Data Location (PDL) which denotes the _Macro Region Geography_ or _Local Region Geography_ (location where related data is to be stored). Users' personal data (Exchange mailbox and OneDrive) along with any Microsoft 365 Groups or SharePoint sites that they create can be stored in the specified _Macro Region Geography_ or _Local Region Geographies_ location to meet data residency requirements. You can specify different administrators for each _Macro Region Geography_ or _Local Region Geographies_ location.

Users get a seamless experience when using Microsoft 365 services, including Office applications, OneDrive, and Search. See User experience in a Multi-Geo environment for details.

>[!NOTE]
>Once your tenant has enabled the Multi-Geo add-on, changing the default location for the tenant is not supported. This applies even for the [Data Residency Legacy Move Program](/microsoft-365/enterprise/m365-dr-legacy-move-program) and the Advanced Data Residency add-on.

### **OneDrive**

Each user's OneDrive can be provisioned in or moved by an administrator to a _Satellite Geography_ location in accordance with the user's PDL. Personal files are then kept in that _Satellite Geography_ location, though they can be shared with users in other _Macro Region Geography_ or _Local Region Geography_ locations.

### **SharePoint Sites and Groups**

Management of the Multi-Geo feature is available through the SharePoint admin center.

When a user creates a SharePoint group-connected site in a multi-geo environment, their PDL is used to determine the _Macro Region Geography_ or _Local Region Geography_ location where the site and its associated Group mailbox are created. (If the user's PDL value isn't set, or is set to _Macro Region Geography_ or _Local Region Geography_ location that isn't configured as a _Satellite Geography_ location, then the site and mailbox are created in the _Primary Provisioned Geography_.)

Microsoft 365 services other than Exchange, OneDrive, SharePoint, and Teams aren't available with Multi-Geo. However, Microsoft 365 Groups that are created by these services are configured with the PDL of the creator and their Exchange Group mailbox, SharePoint site are provisioned in the corresponding _Macro Region Geography_ or _Local Region Geography_.

### **Managing the Multi-Geo environment**

Setting up and managing your Multi-Geo environment is done through the SharePoint admin center.

#### **SharePoint storage quotas in multi-geo environments**

By default, all _Geography_ locations of a multi-geo environment share the available _Tenant_ storage quota.

With the SharePoint geo storage quota setting, you can manage the storage quota for each _Geography_ location. When you allocate a storage quota for a _Geography_ location, it becomes the maximum amount of storage available for that _Geography_ location, and is deducted from the available _Tenant_ storage quota. The remaining available _Tenant_ storage quota is then shared across the configured _Geography_ locations for which a specific storage quota hasn't been allocated.

The SharePoint storage quota for any _Geography_ location can be allocated by the SharePoint administrator by connecting to the _Primary Provisioned Geography_. _Geography_ administrators for _Satellite Geography_ locations can view the storage quota but can't allocate it.

#### **Configure a storage quota for a _Geography_ location**

Use the [Microsoft SharePoint Management Shell](https://www.microsoft.com/download/details.aspx?id=35588) and connect to the _Primary Provisioned Geography_ location to allocate the storage quota for a _Geography_ location.

To allocate Storage Quota for a location, run cmdlet:

```powershell
Set-SPOGeoStorageQuota -GeoLocation <geolocationcode> -StorageQuotaMB <value>
```

To view Storage Quota for the current _Geography_ location, run:

```powershell
Get-SPOGeoStorageQuota
```

To view Storage Quota for all _Geography_ locations, run:

```powershell
Get-SPOGeoStorageQuota -AllLocations
```

To remove the allocated storage quota for a _Geography_ location, set `StorageQuota value = 0`:

```powershell
Set-SPOGeoStorageQuota -GeoLocation <geolocationcode> -StorageQuotaMB 0
```

### Move a OneDrive site

#### Move a OneDrive site to a different _Geography_ location

With OneDrive _Geography_ move, you can move a user's OneDrive to a different _Geography_ location. OneDrive _Geography_ move is performed by the SharePoint administrator. Before you start a OneDrive _Geography_ move, be sure to notify the user whose OneDrive is being moved and recommend they close all files for the duration of the move. (If the user has a document open using the Office client during the move, then upon move completion the document will need to be saved to the new location.) The move can be scheduled for a future time, if desired.

The OneDrive service uses Azure Blob Storage to store content. The Storage blob associated with the user's OneDrive is moved from the source to destination _Geography_ location within 40 days of destination OneDrive being available to the user. The access to the user's OneDrive is restored as soon as the destination OneDrive is available.

During OneDrive _Geography_ move window (about 2-6 hours) the user's OneDrive is set to read-only. The user can still access their files via the OneDrive sync app or their OneDrive site in SharePoint. After OneDrive _Geography_ move is complete, the user will be automatically connected to their OneDrive at the destination _Geography_ location when they navigate to OneDrive in the Microsoft 365 app launcher. The sync app will automatically begin syncing from the new location.

The procedures in this article require the [Microsoft SharePoint PowerShell Module](https://www.microsoft.com/download/details.aspx?id=35588).

#### Communicating to your users

When moving OneDrive sites between _Geography_ locations, it's important to communicate to your users what to expect. This can help reduce user confusion and calls to your help desk. Email your users before the move and let them know the following information:

- When the move is expected to start and how long it's expected to take
- What _Geography_ location their OneDrive is moving to, and the URL to access the new location
- They should close their files and not make edits during the move.
- File permissions and sharing won't change as a result of the move.
- What to expect from the user experience in a multi-geo environment

Be sure to send your users an email when the move completes, informing them that they can resume working in OneDrive.

#### Scheduling OneDrive site moves

You can schedule OneDrive site moves in advance (described later in this article). We recommend that you start with a small number of users to validate your workflows and communication strategies. Once you're comfortable with the process, you can schedule moves as follows:

- You can schedule up to 4,000 moves at a time.
- As the moves begin, you can schedule more, with a maximum of 4,000 pending moves in the queue and any given time.
- The maximum size of a OneDrive that can be moved is 5 terabytes (5 TB).
- The count of list items for the site is < 1 million.

#### **Moving a OneDrive site**

To perform a OneDrive _Geography_ move, the _Tenant_ administrator must first set the user's Preferred Data Location (PDL) to the appropriate _Geography_ location. Once the PDL is set, wait for at least 24 hours for the PDL update to sync across the _Geography_ locations before starting the OneDrive _Geography_ move.

When using the _Geography_ move cmdlets, connect to SPO Service at the user's current OneDrive _Geography_ location, using the following syntax:

```powershell
Connect-SPOService -url https://<tenantName>-admin.sharepoint.com
```

For example: To move OneDrive of user 'Matt@contosoenergy.onmicrosoft.com', connect to EUR SharePoint Admin center as the user's OneDrive is in EUR _Geography_ location:

```powershell
Connect-SPOService -url https://contosoenergyeur-admin.sharepoint.com
```

#### **Validating the environment**
 
Before you start a OneDrive _Geography_ move, we recommend that you validate the environment.

To ensure that all _Geography_ locations are compatible, run:

```powershell
Get-SPOGeoMoveCrossCompatibilityStatus
```

You'll see a list of your _Geography_ locations and whether content can be moved between will be denoted as "Compatible". If the command returns "Incompatible" please retry validating the status at a later date.

If a OneDrive contains a subsite, for example, it can't be moved. You can use the `Start-SPOUserAndContentMove` cmdlet with the `-ValidationOnly` parameter to validate if the OneDrive is able to be moved:

```powershell
Start-SPOUserAndContentMove -UserPrincipalName <UPN> -DestinationDataLocation <DestinationDataLocation> -ValidationOnly
```

This will return Success if the OneDrive is ready to be moved or Fail if there's any reason that would prevent the move. Once you have validated that the OneDrive is ready to move, you can start the move.

If the OneDrive has a legal hold on it, the move would proceed and the Preservation Hold Library would continue to exist in the site. Once the move completes, apply a hold on the new URL and later remove the existing hold on the earlier URL.

#### **Start a OneDrive geo move**

To start the move, run:

```powershell
Start-SPOUserAndContentMove -UserPrincipalName <UserPrincipalName> -DestinationDataLocation <DestinationDataLocation>
```

Using these parameters:

- _UserPrincipalName_ – UPN of the user whose OneDrive is being moved.
- _DestinationDataLocation_ – Geo-Location where the OneDrive needs to be moved. This should be same as the user's preferred data location.

For example, to move the OneDrive of matt@contosoenergy.onmicrosoft.com from EUR to AUS, run:

```powershell
Start-SPOUserAndContentMove -UserPrincipalName matt@contosoenergy.onmicrosoft.com -DestinationDataLocation AUS
```

To schedule a _Geography_ move for a later time, use one of the following parameters:

- _PreferredMoveBeginDate_ – The move will likely begin at this specified time. Time must be specified in Coordinated Universal Time (UTC).
- _PreferredMoveEndDate_ – The move will likely be completed by this specified time, on a best effort basis. Time must be specified in Coordinated Universal Time (UTC).

#### **Cancel a OneDrive _Geography_ move**
 
You can stop the _Geography_ move of a user's OneDrive, provided the move isn't in progress or completed by using the cmdlet:

```powershell
Stop-SPOUserAndContentMove –UserPrincipalName <UserPrincipalName>
```

Where _UserPrincipalName_ is the UPN of the user whose OneDrive move you want to stop.

#### **Determining current status**

You can check the status of a OneDrive _Geography_ move in or out of the _Geography_ that you're connected to by using the Get-SPOUserAndContentMoveState cmdlet.

The move statuses are described in the following table.

|Status|Description|
|---|---|
|NotStarted|The move hasn't started|
|InProgress (_n_/4)|The move is in progress in one of the following states: <ul><li>Validation (1/4)</li><li>Backup (2/4)</li><li>Restore (3/4)</li><li>Cleanup (4/4)</li></ul>|
|Success|The move completed successfully.|
|Failed|The move failed.|

To find the status of a specific user's move, use the _UserPrincipalName_ parameter:

```powershell
Get-SPOUserAndContentMoveState -UserPrincipalName <UPN>
```

To find the status of all of the moves in or out of the _Geography_ location that you're connected to, use the _MoveState_ parameter with one of the following values: **NotStarted**, **InProgress**, **Success**, **Failed**, **All**.

```powershell
Get-SPOUserAndContentMoveState -MoveState <value>
```

You can also add the _Verbose_ parameter for more verbose descriptions of the move state.

#### **User Experience**

Users of OneDrive should notice minimal disruption if their OneDrive is moved to a different _Geography_ location. Aside from a brief read-only state during the move, existing links and permissions continue to work as expected once the move is completed.

#### **User's OneDrive**

While the move is in progress, the user's OneDrive is set to read-only. Once the move is completed, the user is directed to their OneDrive in the new _Geography_ location when they navigate to OneDrive the Microsoft 365 app launcher or a web browser.

#### **Permissions on OneDrive content**

Users with permissions to OneDrive content continue to have access to the content during the move and after it's complete.

#### **OneDrive sync app**

The OneDrive sync app automatically detects and seamlessly transfers syncing to the new OneDrive location once the OneDrive _Geography_ move is complete. The user doesn't need to sign-in again or take any other action. (Version 17.3.6943.0625 or later of the sync app required.) If a user updates a file while the OneDrive _Geography_ move is in progress, the sync app notifies them that file uploads are pending while the move is underway.

#### **Sharing links**

Upon OneDrive _Geography_ move completion, the existing shared links for the files that were moved automatically redirect to the new _Geography_ location.

#### **OneNote Experience**

OneNote Win32 client and UWP (Universal) App automatically detects and seamlessly syncs notebooks to the new OneDrive location once OneDrive _Geography_ move is complete. The user doesn't need to sign-in again or take any other action. The only visible indicator to the user is notebook sync would fail when OneDrive _Geography_ move is in progress. This experience is available on the following OneNote client versions:

- OneNote Win32 – Version 16.0.8326.2096 (and later)
- OneNote UWP – Version 16.0.8431.1006 (and later)
- OneNote Mobile App – Version 16.0.8431.1011 (and later)

#### **Teams app**

Upon OneDrive _Geography_ move completion, users have access to their OneDrive files on the Teams app. Additionally, files shared via Teams chat from their OneDrive before the _Geography_ move continue to work after move is complete.

#### **OneDrive Mobile App (iOS)**

Upon OneDrive _Geography_ move completion, the user would need to sign out and sign in again on the iOS Mobile App to sync to the new OneDrive location.

#### **Existing followed groups and sites**

Followed sites and groups show up in the user's OneDrive regardless of their _Geography_ location. Sites and groups hosted in another _Geography_ location will open in a separate tab.

#### **Delve Geo URL updates**

Users are sent to the Delve _Geography_ corresponding to their PDL only after their OneDrive has been moved to the new _Geography_.

### **Move a SharePoint site or SharePoint Embedded container site**

#### **Move a SharePoint site or SharePoint Embedded container site to a different _Geography_ location**

With SharePoint site _Geography_ move, you can move SharePoint sites and SharePoint Embedded container sites to other _Geography_ locations within your Multi-Geo environment.
The following types of site can be moved between _Geography_ locations:

- Microsoft 365 group-connected sites, including those sites associated with Microsoft Teams
- Modern sites without a Microsoft 365 group association
- Classic SharePoint sites
- Communication sites
- SharePoint Embedded container sites (excluding those where the owner is a group)

> [!NOTE]
> You must be a SharePoint Administrator to move a site between _Geography_ locations.

There's a read-only window during the SharePoint site _Geography_ move of approximately 4-6 hours, depending on site contents.

#### **Best practices**

- Try a SharePoint site move on a test site to get familiar with the procedure.
- Validate whether the site can be moved before scheduling or performing the move.
- When possible schedule cross-geo sites moves for outside business hours to reduce user impact.
- Communicate with impacted users before the sites move.

#### **Communicating to your users**

When moving SharePoint sites between _Geography_ locations, it's important to communicate to the sites' users (generally anyone with the ability to edit the site) what to expect. This can help reduce user confusion and calls to your help desk. Email your sites' users before the move and let them know the following information:

- When the move is expected to start and how long it is expected to take.
- What _Geography_ location their site is moving to, and the URL to access the new location.
- They should close their files and not make edits during the move.
- File permissions and sharing won't change because of the move.
- What to expect from the user experience in a multi-geo environment.

Be sure to send your sites' users an email when the move completes, informing them that they can resume working on their sites.

#### **Scheduling SharePoint site moves**

You can schedule SharePoint site moves in advance (described later in this article). You can schedule moves as follows:

- You can schedule up to 4,000 moves at a time.
- As the moves begin, you can schedule more, with a maximum of 4,000 pending moves in the queue and any given time.
- The maximum size of a SharePoint site that can be moved is 5 terabytes (5 TB).
- The count of list items for the site is < 1 million.

To schedule a SharePoint site _Geography_ move for a later time, include one of the following parameters when you start the move:

- PreferredMoveBeginDate – The move will likely begin at this specified time.
- PreferredMoveEndDate – The move will likely be completed by this specified time, on a best effort basis.

Time must be specified in Coordinated Universal Time (UTC) for both parameters.

#### **Moving the site**

SharePoint site _Geography_ move requires that you connect and perform the move from the SharePoint Admin URL in the _Geography_ location where the site is.

For example, if the site URL is `https://contosohealthcare.sharepoint.com/sites/Turbines`, connect to the SharePoint Admin URL at `https://contosohealthcare-admin.sharepoint.com`:

```powershell
Connect-SPOService -Url https://contosohealthcare-admin.sharepoint.com
```

#### **Validating the environment**

We recommend that before scheduling any site move, you perform a validation to ensure that the site can be moved.

We don't support moving sites with:

- Business Connectivity Services
- InfoPath forms
- Information Rights Management (IRM) templates applied

> [!NOTE]
> Sites archived with Microsoft 365 Archive need to be reactivated before being moved. Archiving sites while a move is in progress is not supported.

To ensure all _Geography_ locations are compatible, run `Get-SPOGeoMoveCrossCompatibilityStatus`. This will display all your _Geography_ locations and whether the environment is compatible with the destination _Geography_ location.

To perform a validation-only check on your site, use `Start-SPOSiteContentMove` with the `-ValidationOnly` parameter to validate if the site is able to be moved. For example:

```PowerShell
Start-SPOSiteContentMove -SourceSiteUrl <SourceSiteUrl> -ValidationOnly -DestinationDataLocation <DestinationLocation>
```

This returns _Success_ if the site is ready to be moved or _Fail_ if any of blocked conditions are present.

#### **Start a SharePoint site _Geography_ move for a site with no associated Microsoft 365 group or a SharePoint Embedded container site**
 
By default, initial URL for the site will change to the URL of the destination _Geography_ location. For example:

`https://Contoso.sharepoint.com/sites/projectx` to `https://ContosoEUR.sharepoint.com/sites/projectx`

For sites with no Microsoft 365 group association, you can also rename the site by using the `-DestinationUrl` parameter. For example:

`https://Contoso.sharepoint.com/sites/projectx` to `https://ContosoEUR.sharepoint.com/sites/projecty`

This capability to rename the site as part of the move is not applicable for SharePoint Embedded container sites.

To start the site move without renaming the site, run:

```powershell
Start-SPOSiteContentMove -SourceSiteUrl <siteURL> -DestinationDataLocation <DestinationDataLocation>
```
To get the SourceSiteUrl for a SharePoint Embedded container site, you must use the SharePoint Embedded admin cmdlets. You can use the `Get-SPOContainer` PowerShell cmdlet and pass the container ID as the `-Identity` parameter to determine the site URL of a specific container.

If the SharePoint Embedded container site is owned by an individual user, the container site can only be moved to the geography matching the Preferred Data Location (PDL) of the user. 

And to start the site move while also renaming the site (excluding SharePoint Embedded container sites), run:

```powershell
Start-SPOSiteContentMove -SourceSiteUrl <siteURL> -DestinationUrl <DestinationSiteURL>
```
You cannot use the `-DestinationDataLocation` and `-DestinationUrl` parameters in the same command.

#### **Start a SharePoint site _Geography_ move for a Microsoft 365 group-connected site**

 To move a Microsoft 365 group-connected site, the SharePoint Administrator must first change the Preferred Data Location (PDL) attribute for the Microsoft 365 group.

To set the PDL for a Microsoft 365 group:

```PowerShell
Set-SPOUnifiedGroup -PreferredDataLocation <PDL> -GroupAlias <GroupAlias>
Get-SPOUnifiedGroup -GroupAlias <GroupAlias>
```

Once you update the PDL, you can start the site move:

```PowerShell
Start-SPOUnifiedGroupMove -GroupAlias <GroupAlias> -DestinationDataLocation <DestinationDataLocation>
```

#### **Cancel a SharePoint site _Geography_ move**

You can stop a SharePoint site _Geography_ move, provided the move isn't in progress or completed by using the `Stop-SPOSiteContentMove` cmdlet.

#### **Determining the status of a SharePoint site _Geography_ move**

You can determine the status of a site move in our out of the _Geography_ that you're connected to by using the following cmdlets:

- [Get-SPOSiteContentMoveState](/powershell/module/sharepoint-online/get-spositecontentmovestate) (non-Group-connected sites and SharePoint Embedded container sites)
- [Get-SPOUnifiedGroupMoveState](/powershell/module/sharepoint-online/get-spounifiedgroupmovestate) (Group-connected sites)

Use the `-SourceSiteUrl` parameter to specify the site for which you want to see move status.

The move statuses are described in the following table.

****

|Status|Description|
|---|---|
|Ready to Trigger|The move hasn't started. You must run the relevant PowerShell cmdlet to start the move.|
|Scheduled|The move is in queue but hasn't yet started.|
|InProgress (n/4)|The move is in progress in one of the following states: Validation (1/4), Back up (2/4), Restore (3/4), Cleanup (4/4).|
|Success|The move completed successfully.|
|Failed|The move failed.|
|Stopped|The move was canceled by an admin while it was still queued.|
|NotSupported|The move could not be processed because the PDL was invalid.|
|Rescheduled|The move did not succeed and is being scheduled again for another attempt.|

You can also apply the `-Verbose` option to see additional information about the move.

#### **User experience**

Site users should notice minimal disruption when their site is moved to a different _Geography_ location. Aside from a brief read-only state during the move, existing links and permissions continue to work as expected once the move is completed.

#### **Site**

While the move is in progress, the site is set to read-only. Once the move is completed, the user is directed to the new site in the new _Geography_ location when they click on bookmarks or other links to the site.

#### **Permissions**

Users with permissions to site continue to have access to the site during the move and after it's complete.

#### **Sync app**

The sync app automatically detects and seamlessly transfers syncing to the new site location once the site move is complete. The user doesn't need to sign in again or take any other action. (Version 17.3.6943.0625 or later of the sync app required.)
If a user updates a file while the move is in progress, the sync app notifies them that file uploads are pending while the move is underway.

#### **Sharing links**

When the SharePoint site _Geography_ move completes, the existing shared links for the files that were moved automatically redirect to the new _Geography_ location.

#### **Most Recently Used files in Office (MRU)**

The MRU service is updated with the site url and its content URLs once the move completes. This applies to Word, Excel, and PowerPoint.

#### **OneNote experience**

OneNote Win32 client and UWP (Universal) App automatically detects and seamlessly syncs notebooks to the new site location once site move is complete. The user doesn't need to sign in again or take any other action. The only visible indicator to the user is notebook sync would fail when site move is in progress. This experience is available on the following OneNote client versions:

- OneNote Win32 – Version 16.0.8326.2096 (and later)
- OneNote UWP – Version 16.0.8431.1006 (and later)
- OneNote Mobile App – Version 16.0.8431.1011 (and later)

#### **Teams (applicable to Microsoft 365 group connected sites)**

When the SharePoint site _Geography_ move completes, users will have access to their Microsoft 365 group site files on the Teams app. Additionally, files shared via Teams chat from their site prior to _Geography_ move will continue to work after move is complete.
SharePoint site _Geography_ move doesn't support moving sites backing Private and Shared Channels from one _Geography_ to another, when using the `Start-SPOUnifiedGroupMove` command. Sites backing Private and Shared Channels remain in the original _Geography_. To move those sites individually, admins can initiate direct moves using the `Start-SPOSiteContentMove` command.

#### **SharePoint Mobile App (iOS/Android)**

The SharePoint Mobile App is cross _Geography_ compatible and able to detect the site's new _Geography_ location.

#### **SharePoint workflows**

SharePoint 2013 workflows have to be republished after the site move. SharePoint 2010 workflows should continue to function normally.

#### **Apps**

If you're moving a site with apps, you must reinstantiate the app in the site's new _Geography_ location as the app and its connections may not be available in the destination _Geography_ location.

#### **Power Automate**

In most cases, Power Automate Flows continue to work after a SharePoint site _Geography_ move. We recommend that you test them once the move completes.

#### **Power Apps**

Power Apps need to be recreated in the destination location.

#### **Data movement between geo locations**

SharePoint uses Azure Blob Storage for its content, while the metadata associated with sites and its files is stored within SharePoint. After the site is moved from its source _Geography_ location to its destination _Geography_ location, the service will also move its associated Blob Storage. Blob Storage moves complete in approximately 40 days. This won't have any impact to users interaction with the data.

****

### **Enabling SharePoint Multi-Geo in your _Satellite Geography_ location**

This article is for Global or SharePoint administrators who have created a Multi-Geo _Satellite Geography_ location **before** SharePoint Multi-Geo capabilities became generally available on March 27, 2019, and who haven't enabled SharePoint Multi-Geo in their _Satellite Geography_ location(s).

> [!NOTE]
> If you have added a new _Geography_ location **after March 27th, 2019**, you don't need to perform these instructions, as your new _Geography_ location will already be enabled for OneDrive and SharePoint Multi-Geo.

These instructions allow you to enable SharePoint in your _Satellite Geography_ location, so your Multi-Geo satellite users can take advantage of both OneDrive and SharePoint Multi-Geo capabilities in Microsoft 365.

> [!IMPORTANT]
> Please note that this is a one way enablement. Once you set SPO mode, you will not be able to revert your _Tenant_ to OneDrive only Multi-Geo mode without an escalation with support.

#### **To set a _Geography_ location into SPO Mode**

To set a _Geography_ location into SPO mode, connect to the _Geography_ location you want to set in SPO Mode:

1. Open your SharePoint Management Shell and then run and confirm the following code:

```powershell
Connect-SPOService -URL "https://$tenantGeo-admin.sharepoint.com" -Credential $credential
Set-SPOMultiGeoExperience
```

![Set-SPOMultiGeoExperience.](../media/Set-SPO-MultiGeo.jpg)

This operation usually takes about an hour while we perform various publish backs in the service and restamp your _Tenant_. After at least 1 hour, please perform a Get-SPOMultiGeoExperience. This shows you whether this _Geography_ location is in SPO mode.

![Image of Set-SPOMultiGeoExperience.](../media/Get-SPO-MultiGeo.jpg)

> [!NOTE]
> Certain caches in the service update every 24 hours, so it is possible that for a period of up to 24 hours, your _Satellite Geography_ may intermittently behave as if it was still in ODB mode. This doesn't cause any technical issues.

## How can I determine customer data location?

You can find the actual data location in Microsoft 365 admin center. As a _Tenant_ administrator you can find the actual data location, for committed data, by navigating to **Admin->Settings->Org Settings->Organization Profile->Data Location**. If you don't have a _Tenant_ created, you can have a _Tenant_ created when signing up for a Microsoft 365 trial.
