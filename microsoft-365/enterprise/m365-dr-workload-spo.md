---
title: Data Residency for SharePoint Online and OneDrive for Business
description: 
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 09/20/2022
ms.reviewer: 
ms.custom:
- it-pro
ms.collection:
- M365-subscription-management
---

# Data Residency for SharePoint Online and OneDrive for Business

## **Data Residency commitments available**

**Option 1: Privacy and Security Product Terms**

*For current language please refer to the Privacy and Security Product Terms <a href="https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all" target="_blank">**webpage**</a> and view the section titled “Location of Customer Data at Rest for Core Online Services”.*

**Commitment:** 
>[!NOTE]
>Office 365 Services. If Customer provisions its tenant in Australia, Brazil, Canada, the European Union, France, Germany, India, Japan, Norway, Qatar, South Africa, South Korea, Sweden, Switzerland, the United Kingdom, the United Arab Emirates, or the United States, Microsoft will store the following Customer Data at rest only within that Geo (2) SharePoint Online site content and the files stored within that site, and (3) files uploaded to OneDrive for Business.

**Option 2: Multi-Geo add-on**

Required Conditions:
1.	Tenants have a valid Multi-Geo subscription that covers all users assigned to a Satellite Geography
2.	Customer must have an active Enterprise Agreement.
3.	Total purchased Multi-Geo units must be greater than 5% of the total eligible seats in the tenant.

**Commitment:**
Customers can assign users of SharePoint Online/OneDrive for Business to any Satellite Geography supported by Multi-Geo (see Section 4.1.3). The following customer data will be stored in the relevant Satellite Geography:
SharePoint Online site content and the files stored within that site, and files uploaded to OneDrive for Business.  ***TODO INSERT FINAL TEXT FROM ROB HERE***

**Option 3: Advanced Data Residency add-on**

Required Conditions:
1.	Tenant has a sign up country included in Local Geography or Expanded Local Geography.
2.	Tenant has a valid Advanced Data Residency subscription for all users in the tenant
3.	The SharePoint Online subscription customer data is provisioned in Local Geography or Expanded Local Geography
4.	
**Commitment:**
The following customer data will be stored in the related Geography:
SharePoint Online site content and the files stored within that site, and files uploaded to OneDrive for Business.***TODO- ADD TEXT FROM ROB WHEN DONE***


## **Multi-Geo Capabilities in SharePoint Online / OneDrive for Business**

Multi-Geo capabilities in OneDrive and SharePoint Online enable control of shared resources like SharePoint team sites and Microsoft 365 Group mailboxes stored at rest in a specified *Regional* or *Local Geographies*.

Each user, Group mailbox, and SharePoint site have a Preferred Data Location (PDL) which denotes the *Regional* or *Local Geography*( location where related data is to be stored. Users' personal data (Exchange mailbox and OneDrive) along with any Microsoft 365 Groups or SharePoint sites that they create can be stored in the specified *Regional* or *Local Geography* location to meet data residency requirements. You can specify different administrators for each *Regional* or *Local Geography* location.

Users get a seamless experience when using Microsoft 365 services, including Office applications, OneDrive, and Search. See User experience in a multi-geo environment for details.

### **OneDrive**
Each user's OneDrive can be provisioned in or moved by an administrator to a *Satellite Geography* location in accordance with the user's PDL. Personal files are then kept in that *Satellite Geography* location, though they can be shared with users in other *Regional* or *Local Geography* locations.

### **SharePoint Sites and Groups**
Management of the Multi-Geo feature is available through the SharePoint admin center. Detailed information can be found in the corresponding blog post.***TODO: @Brian, which blog post***

When a user creates a SharePoint group-connected site in a multi-geo environment, their PDL is used to determine the *Regional* or *Local Geography* location where the site and its associated Group mailbox are created. (If the user's PDL value hasn't been set, or has been set to *Regional* or *Local Geography* location that hasn't been configured as a *Satellite Geography* location, then the site and mailbox are created in the *Primary Provisioned Geography*.)

Microsoft 365 services other than Exchange, OneDrive, SharePoint, and Teams are not available with Multi-Geo. However, Microsoft 365 Groups that are created by these services will be configured with the PDL of the creator and their Exchange Group mailbox, SharePoint site are provisioned in the corresponding *Regional* or *Local Geography*.

### **Managing the multi-geo environment**

Setting up and managing your multi-geo environment is done through the SharePoint admin center.

***TODO:insert picture***
(Some actions, such as moving a SharePoint site or a OneDrive site require Microsoft PowerShell.)

#### **SharePoint storage quotas in multi-geo environments**

By default, all *Geography* locations of a multi-geo environment share the available tenant storage quota.

With the SharePoint geo storage quota setting, you can manage the storage quota for each *Geography* location. When you allocate a storage quota for a *Geography* location, it becomes the maximum amount of storage available for that *Geography* location, and is deducted from the available tenant storage quota. The remaining available tenant storage quota is then shared across the configured *Geography* locations for which a specific storage quota has not been allocated.

The SharePoint storage quota for any *Geography* location can be allocated by the SharePoint Online administrator by connecting to the *Primary Provisioned Geography*. *Geography* administrators for *Satellite Geography* locations can view the storage quota but cannot allocate it.

#### **Configure a storage quota for a *Geography* location**

Use the [Microsoft SharePoint Online Management Shell](https://www.microsoft.com/download/details.aspx?id=35588) and connect to the *Primary Provisioned Geography* location to allocate the storage quota for a *Geography* location.

To allocate Storage Quota for a location, run cmdlet:

```powershell
Set-SPOGeoStorageQuota -GeoLocation <geolocationcode> -StorageQuotaMB <value>
```

To view Storage Quota for the current *Geography* location, run:

```powershell
Get-SPOGeoStorageQuota
```

***TODO:, ADD image "![Screenshot of PowerShell window showing Get-SPOGeoStorageQuota cmdlet.](../media/multi-geo-storage-quota.png)"***

To view Storage Quota for all *Geography* locations, run:

```powershell
Get-SPOGeoStorageQuota -AllLocations
```

To remove the allocated storage quota for a *Geography* location, set `StorageQuota value = 0`:

```powershell
Set-SPOGeoStorageQuota -GeoLocation <geolocationcode> -StorageQuotaMB 0
```



### **	Move a OneDrive site**

#### **Move a OneDrive site to a different Geography location**

With OneDrive *Geography* move, you can move a user's OneDrive to a different *Geography* location. OneDrive *Geography* move is performed by the SharePoint Online administrator or the Microsoft 365 global administrator. Before you start a OneDrive *Geography* move, be sure to notify the user whose OneDrive is being moved and recommend they close all files for the duration of the move. (If the user has a document open using the Office client during the move, then upon move completion the document will need to be saved to the new location.) The move can be scheduled for a future time, if desired.

The OneDrive service uses Azure Blob Storage to store content. The Storage blob associated with the user's OneDrive will be moved from the source to destination *Geography* location within 40 days of destination OneDrive being available to the user. The access to the user's OneDrive will be restored as soon as the destination OneDrive is available.

During OneDrive *Geography* move window (about 2-6 hours) the user's OneDrive is set to read-only. The user can still access their files via the OneDrive sync app or their OneDrive site in SharePoint Online. After OneDrive Geography move is complete, the user will be automatically connected to their OneDrive at the destination *Geography* location when they navigate to OneDrive in the Microsoft 365 app launcher. The sync app will automatically begin syncing from the new location.

The procedures in this article require the [Microsoft SharePoint Online PowerShell Module](https://www.microsoft.com/download/details.aspx?id=35588).


#### **Communicating to your users**

When moving OneDrive sites between *Geography* locations, it's important to communicate to your users what to expect. This can help reduce user confusion and calls to your help desk. Email your users before the move and let them know the following information:
-When the move is expected to start and how long it is expected to take
-What *Geography* location their OneDrive is moving to, and the URL to access the new location
-They should close their files and not make edits during the move.
-File permissions and sharing will not change as a result of the move.
-What to expect from the user experience in a multi-geo environment

Be sure to send your users an email when the move has successfully completed informing them that they can resume working in OneDrive.

#### **Scheduling OneDrive site moves**

You can schedule OneDrive site moves in advance (described later in this article). We recommend that you start with a small number of users to validate your workflows and communication strategies. Once you are comfortable with the process, you can schedule moves as follows:
-You can schedule up to 4,000 moves at a time.
-As the moves begin, you can schedule more, with a maximum of 4,000 pending moves in the queue and any given time.
-The maximum size of a OneDrive that can be moved is 1 terabyte (1 TB).

#### **Moving a OneDrive site**
To perform a OneDrive *Geography* move, the tenant administrator must first set the user's Preferred Data Location (PDL) to the appropriate *Geography* location. Once the PDL is set, wait for at least 24 hours for the PDL update to sync across the *Geography* locations before starting the OneDrive *Geography* move.

When using the *Geography* move cmdlets, connect to SPO Service at the user's current OneDrive *Geography* location, using the following syntax:

```powershell
Connect-SPOService -url https://<tenantName>-admin.sharepoint.com
```

For example: To move OneDrive of user 'Matt@contosoenergy.onmicrosoft.com', connect to EUR SharePoint Admin center as the user's OneDrive is in EUR "Geography* location:

```powershell
Connect-SPOService -url https://contosoenergyeur-admin.sharepoint.com
```

***TODO: need image "![Screenshot of PowerShell window showing connect-sposervice cmdlet.](../media/move-onedrive-between-geo-locations-image1.png)"
 
#### **Validating the environment**
  
Before you start a OneDrive *Geography* move, we recommend that you validate the environment.

To ensure that all *Geography* locations are compatible, run:

```powershell
Get-SPOGeoMoveCrossCompatibilityStatus
```

You will see a list of your *Geography* locations and whether content can be moved between will be denoted as "Compatible". If the command returns "Incompatible" please retry validating the status at a later date.

If a OneDrive contains a subsite, for example, it cannot be moved. You can use the Start-SPOUserAndContentMove cmdlet with the -ValidationOnly parameter to validate if the OneDrive is able to be moved:

```powershell
Start-SPOUserAndContentMove -UserPrincipalName <UPN> -DestinationDataLocation <DestinationDataLocation> -ValidationOnly
```

  This will return Success if the OneDrive is ready to be moved or Fail if there is a legal hold or subsite that would prevent the move. Once you have validated that the OneDrive is ready to move, you can start the move.

  
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

***TODO: IMAGE "![Screenshot of PowerShell window showing Start-SPOUserAndContentMove cmdlet.](../media/move-onedrive-between-geo-locations-image2.png)"

To schedule a *Geography* move for a later time, use one of the following parameters:

- _PreferredMoveBeginDate_ – The move will likely begin at this specified time. Time must be specified in Coordinated Universal Time (UTC).
- _PreferredMoveEndDate_ – The move will likely be completed by this specified time, on a best effort basis. Time must be specified in Coordinated Universal Time (UTC).

  #### **Cancel a OneDrive *Geography* move**
  
You can stop the *Geography* move of a user's OneDrive, provided the move is not in progress or completed by using the cmdlet:

```powershell
Stop-SPOUserAndContentMove – UserPrincipalName <UserPrincipalName>
```

Where _UserPrincipalName_ is the UPN of the user whose OneDrive move you want to stop.

  
#### **Determining current status**

You can check the status of a OneDrive *Geography* move in or out of the *Geography* that you're connected to by using the Get-SPOUserAndContentMoveState cmdlet.

The move statuses are described in the following table.

|Status|Description|
|---|---|
|NotStarted|The move has not started|
|InProgress (*n*/4)|The move is in progress in one of the following states: <ul><li>Validation (1/4)</li><li>Backup (2/4)</li><li>Restore (3/4)</li><li>Cleanup (4/4)</li></ul>|
|Success|The move has completed successfully.|
|Failed|The move failed.|

To find the status of a specific user's move, use the *UserPrincipalName* parameter:

```powershell
Get-SPOUserAndContentMoveState -UserPrincipalName <UPN>
```

To find the status of all of the moves in or out of the *Geography* location that you're connected to, use the *MoveState* parameter with one of the following values: NotStarted, InProgress, Success, Failed, All.

```powershell
Get-SPOUserAndContentMoveState -MoveState <value>
```

You can also add the *Verbose* parameter for more verbose descriptions of the move state.

#### **User Experience**

Users of OneDrive should notice minimal disruption if their OneDrive is moved to a different *Geography* location. Aside from a brief read-only state during the move, existing links and permissions will continue to work as expected once the move is completed.

#### **User's OneDrive**

While the move is in progress the user's OneDrive is set to read-only. Once the move is completed, the user is directed to their OneDrive in the new *Geography*  location when they navigate to OneDrive the Microsoft 365 app launcher or a web browser.

#### **Permissions on OneDrive content**

Users with permissions to OneDrive content will continue to have access to the content during the move and after it's complete.

#### **OneDrive sync app**

The OneDrive sync app will automatically detect and seamlessly transfer syncing to the new OneDrive location once the OneDrive *Geography* move is complete. The user does not need to sign-in again or take any other action. (Version 17.3.6943.0625 or later of the sync app required.)
If a user updates a file while the OneDrive *Geography* move is in progress, the sync app will notify them that file uploads are pending while the move is underway.

#### **Sharing links**

Upon OneDrive *Geography* move completion, the existing shared links for the files that were moved will automatically redirect to the new *Geography* location.

#### **OneNote Experience**

OneNote win32 client and UWP (Universal) App will automatically detect and seamlessly sync notebooks to the new OneDrive location once OneDrive Geography move is complete. The user does not need to sign-in again or take any other action. The only visible indicator to the user is notebook sync would fail when OneDrive Geography move is in progress. This experience is available on the following OneNote client versions:
•	OneNote win32 – Version 16.0.8326.2096 (and later)
•	OneNote UWP – Version 16.0.8431.1006 (and later)
•	OneNote Mobile App – Version 16.0.8431.1011 (and later)

#### **Teams app**

Upon OneDrive Geography move completion, users will have access to their OneDrive files on the Teams app. Additionally, files shared via Teams chat from their OneDrive prior to Geography move will continue to work after move is complete.

####**OneDrive Mobile App (iOS)**

Upon OneDrive Geography move completion, the user would need to sign out and sign in again on the iOS Mobile App to sync to the new OneDrive location.

#### **Existing followed groups and sites**

Followed sites and groups will show up in the user's OneDrive regardless of their *Geography* location. Sites and groups hosted in another *Geography* location will open in a separate tab.

#### **Delve Geo URL updates**

Users will be sent to the Delve *Geography* corresponding to their PDL only after their OneDrive has been moved to the new *Geography*.

### **Move a SharePoint site**
#### **Move a SharePoint site to a different *Geography* location**

With SharePoint site *Geography* move, you can move SharePoint sites to other *Geography* locations within your Multi-Geo environment.
The following types of site can be moved between *Geography* locations:
-	Microsoft 365 group-connected sites, including those sites associated with Microsoft Teams
-	Modern sites without a Microsoft 365 group association
-	Classic SharePoint sites
-	Communication sites

You must be a Global Administrator or SharePoint Administrator to move a site between *Geography* locations.
There is a read-only window during the SharePoint site *Geography* move of approximately 4-6 hours, depending on site-contents


#### **Best practices**

-	Try a SharePoint site move on a test site to get familiar with the procedure.
-	Validate whether the site can be moved prior to scheduling or performing the move.
-	When possible schedule cross-geo sites moves for outside business hours to reduce user impact.
-	Communicate with impacted users prior to the sites move.

#### **Communicating to your users**

When moving SharePoint sites between *Geography* locations, it's important to communicate to the sites' users (generally anyone with the ability to edit the site) what to expect. This can help reduce user confusion and calls to your help desk. Email your sites' users before the move and let them know the following information:

-	When the move is expected to start and how long it is expected to take
-	What *Geography* location their site is moving to, and the URL to access the new location
-	They should close their files and not make edits during the move.
-	File permissions and sharing will not change because of the move.
-	What to expect from the user experience in a multi-geo environment
-	
Be sure to send your sites' users an email when the move has successfully completed informing them that they can resume working on their sites.

#### **Scheduling SharePoint site moves**

You can schedule SharePoint site moves in advance (described later in this article). You can schedule moves as follows:
-	You can schedule up to 4,000 moves at a time.
-	As the moves begin, you can schedule more, with a maximum of 4,000 pending moves in the queue and any given time.
-	The maximum size of a SharePoint site that can be moved is 1 terabyte (1 TB).

To schedule a SharePoint site *Geography* move for a later time, include one of the following parameters when you start the move:
-	PreferredMoveBeginDate – The move will likely begin at this specified time.
-	PreferredMoveEndDate – The move will likely be completed by this specified time, on a best effort basis.
Time must be specified in Coordinated Universal Time (UTC) for both parameters.

#### **Moving the site**

SharePoint site *Geography* move requires that you connect and perform the move from the SharePoint Admin URL in the *Geography* location where the site is.

For example, if the site URL is `https://contosohealthcare.sharepoint.com/sites/Turbines`, connect to the SharePoint Admin URL at `https://contosohealthcare-admin.sharepoint.com`:

```powershell
Connect-SPOService -Url https://contosohealthcare-admin.sharepoint.com
```
 
#### **Validating the environment**

We recommend that before scheduling any site move, you perform a validation to ensure that the site can be moved.

We do not support moving sites with:

- Business Connectivity Services
- InfoPath forms
- Information Rights Management (IRM) templates applied

To ensure all *Geography* locations are compatible, run `Get-SPOGeoMoveCrossCompatibilityStatus`. This will display all your *Geography* locations and whether the environment is compatible with the destination *Geography* location.

To perform a validation-only check on your site, use `Start-SPOSiteContentMove` with the `-ValidationOnly` parameter to validate if the site is able to be moved. For example:

```PowerShell
Start-SPOSiteContentMove -SourceSiteUrl <SourceSiteUrl> -ValidationOnly -DestinationDataLocation <DestinationLocation>
```

This will return *Success* if the site is ready to be moved or *Fail* if any of blocked conditions are present.


  
  #### **Start a SharePoint site *Geography* move for a site with no associated Microsoft 365 group**
  
By default, initial URL for the site will change to the URL of the destination *Geography* location. For example:

`https://Contoso.sharepoint.com/sites/projectx` to `https://ContosoEUR.sharepoint.com/sites/projectx`

For sites with no Microsoft 365 group association, you can also rename the site by using the `-DestinationUrl` parameter. For example:

<https://Contoso.sharepoint.com/sites/projectx> to `https://ContosoEUR.sharepoint.com/sites/projecty`

To start the site move, run:

```powershell
Start-SPOSiteContentMove -SourceSiteUrl <siteURL> -DestinationDataLocation <DestinationDataLocation> -DestinationUrl <DestinationSiteURL>
```
 
#### **Start a SharePoint site *Geography* move for a Microsoft 365 group-connected site**

  To move a Microsoft 365 group-connected site, the Global Administrator or SharePoint Administrator must first change the Preferred Data Location (PDL) attribute for the Microsoft 365 group.

To set the PDL for a Microsoft 365 group:

```PowerShell
Set-SPOUnifiedGroup -PreferredDataLocation <PDL> -GroupAlias <GroupAlias>
Get-SPOUnifiedGroup -GroupAlias <GroupAlias>
```

Once you have updated the PDL, you can start the site move:

```PowerShell
Start-SPOUnifiedGroupMove -GroupAlias <GroupAlias> -DestinationDataLocation <DestinationDataLocation>
```

#### **Cancel a SharePoint site *Geography* move**

You can stop a SharePoint site Geography move, provided the move is not in progress or completed by using the Stop-SPOSiteContentMove cmdlet.

#### **Determining the status of a SharePoint site *Geography* move**

You can determine the status of a site move in our out of the *Geography* that you are connected to by using the following cmdlets:

- [Get-SPOSiteContentMoveState](/powershell/module/sharepoint-online/get-spositecontentmovestate) (non-Group-connected sites)
- [Get-SPOUnifiedGroupMoveState](/powershell/module/sharepoint-online/get-spounifiedgroupmovestate) (Group-connected sites)

Use the `-SourceSiteUrl` parameter to specify the site for which you want to see move status.

The move statuses are described in the following table.

****

|Status|Description|
|---|---|
|Ready to Trigger|The move has not started.|
|Scheduled|The move is in queue but has not yet started.|
|InProgress (n/4)|The move is in progress in one of the following states: Validation (1/4), Back up (2/4), Restore (3/4), Cleanup (4/4).|
|Success|The move has completed successfully.|
|Failed|The move failed.|
|

You can also apply the `-Verbose` option to see additional information about the move.

#### **User experience**

Site users should notice minimal disruption when their site is moved to a different *Geography* location. Aside from a brief read-only state during the move, existing links and permissions will continue to work as expected once the move is completed.

#### **Site**

While the move is in progress, the site is set to read-only. Once the move is completed, the user is directed to the new site in the new *Geography* location when they click on bookmarks or other links to the site.

#### **Permissions**

Users with permissions to site will continue to have access to the site during the move and after it's complete.

#### **Sync app**

The sync app will automatically detect and seamlessly transfer syncing to the new site location once the site move is complete. The user does not need to sign in again or take any other action. (Version 17.3.6943.0625 or later of the sync app required.)
If a user updates a file while the move is in progress, the sync app will notify them that file uploads are pending while the move is underway.

#### **Sharing links**
When the SharePoint site *Geography* move completes, the existing shared links for the files that were moved will automatically redirect to the new *Geography* location.

#### **Most Recently Used files in Office (MRU)**

The MRU service is updated with the site url and its content URLs once the move completes. This applies to Word, Excel, and PowerPoint.

#### **OneNote experience**

OneNote win32 client and UWP (Universal) App will automatically detect and seamlessly sync notebooks to the new site location once site move is complete. The user does not need to sign in again or take any other action. The only visible indicator to the user is notebook sync would fail when site move is in progress. This experience is available on the following OneNote client versions:
-OneNote win32 – Version 16.0.8326.2096 (and later)
-OneNote UWP – Version 16.0.8431.1006 (and later)
-OneNote Mobile App – Version 16.0.8431.1011 (and later)

#### **Teams (applicable to Microsoft 365 group connected sites)**

When the SharePoint site *Geography* move completes, users will have access to their Microsoft 365 group site files on the Teams app. Additionally, files shared via Teams chat from their site prior to *Geography* move will continue to work after move is complete.
SharePoint site *Geography* move does not support moving Private Channels from one *Geography* to another. Private channels remain in the original *Geography*.

#### **SharePoint Mobile App (iOS/Android)**
The SharePoint Mobile App is cross *Geography* compatible and able to detect the site's new *Geography* location.

#### **SharePoint workflows**
SharePoint 2013 workflows have to be republished after the site move. SharePoint 2010 workflows should continue to function normally.

#### **Apps**
If you are moving a site with apps, you must reinstantiate the app in the site's new *Geography* location as the app and its connections may not be available in the destination *Geography* location.

#### **Power Automate**
In most cases, Power Automate Flows will continue to work after a SharePoint site *Geography* move. We recommend that you test them once the move has completed.

#### **Power Apps**

Power Apps need to be recreated in the destination location.

#### **Data movement between geo locations**

SharePoint uses Azure Blob Storage for its content, while the metadata associated with sites and its files is stored within SharePoint. After the site is moved from its source *Geography* location to its destination *Geography* location, the service will also move its associated Blob Storage. Blob Storage moves complete in approximately 40 days. This will not have any impact to users interaction with the data.

You can check the Blob Storage move status using the [Get-SPOCrossGeoMoveReport](/powershell/module/sharepoint-online/get-spocrossgeomovereport) cmdlet. 
________________________________________

### **Enabling SharePoint Multi-Geo in your Satellite Geography location**

This article is for Global or SharePoint administrators who have created a Multi-Geo *Satellite Geography* location **before** SharePoint Multi-Geo capabilities became generally available on March 27, 2019, and who have not enabled SharePoint Multi-Geo in their *Satellite Geography* location(s). 

>[!Note]
>If you have added a new *Geography* location **after March 27th, 2019**, you do not need to perform these instructions, as your new *Geography* location will already be enabled for OneDrive and SharePoint Multi-Geo.

These instructions will allow you to enable SharePoint in your *Satellite Geography* location, so your Multi-Geo satellite users can take advantage of both OneDrive and SharePoint Multi-Geo capabilities in O365. 

>[!IMPORTANT]
>Please note that this is a one way enablement. Once you set SPO mode, you will not be able to revert your tenant to OneDrive only Multi-Geo mode without an escalation with support. 

#### **To set a *Geography* location into SPO Mode**

To set a *Geography* location into SPO mode, connect to the *Geography* location you want to set in SPO Mode:

1.    Open your SharePoint Online Management Shell 
2.    Connect-SPOService -URL "https://$tenantGeo-admin.sharepoint.com" -Credential $credential
3.    Set-SPOMultiGeoExperience</br></br>
![Set-SPOMultiGeoExperience.](../media/Set-SPO-MultiGeo.jpg)
4.    This operation usually takes about an hour while we perform various publish backs in the service and re-stamp your tenant. After at least 1 hour, please perform a Get-SPOMultiGeoExperience.  This will show you whether this *Geography* location is in SPO mode.</br></br>
![Image of Set-SPOMultiGeoExperience.](../media/Get-SPO-MultiGeo.jpg)

  
>[!Note]
>Certain caches in the service update every 24 hours, so it is possible that for a period of up to 24 hours, your *Satellite Geography* may intermittently behave as if it was still in ODB mode. This does not cause any technical issues. 
 
##**Migration**

When SharePoint Online is moved, data for the following services is also moved:
  
- OneDrive for Business

- Microsoft 365 Video services

- Office in a browser

- Microsoft 365 Apps for enterprise

- Visio Pro for Microsoft 365

After we've completed moving your SharePoint Online data, you might see some of the following effects.
  
### Microsoft 365 Video Services

- The data move for video takes longer than the moves for the rest of your content in SharePoint Online.

- After the SharePoint Online content is moved, there will be a time frame when videos aren't able to be played.

- We're removing the trans-coded copies from the previous datacenter and transcoding them again in the new datacenter.

### Search

In the course of moving your SharePoint Online data, we migrate your search index and search settings to a new location. Until we've **completed** the move of your SharePoint Online data, we continue to serve your users from the index in the original location. In the new location, search automatically starts crawling your content after we've completed moving your SharePoint Online data. From this point and onwards we serve your users from the migrated index. Changes to your content that occurred after the migration aren't included in the migrated index until crawling picks them up. Most customers don't notice that results are less fresh right after we've completed moving their SharePoint Online data, but some customers might experience reduced freshness in the first 24-48 hours.
  
The following search features are affected:
  
- Search results and Search Web Parts: Results don't include changes that occurred after the migration until crawling picks them up. 

- Delve: Delve doesn't include changes that occurred after the migration until crawling picks them up.

- Popularity and Search Reports for the site: Counts for Excel reports in the new location only include migrated counts and counts from usage reports that have run after we completed moving your SharePoint Online data. Any counts from the interim period are lost and can't be recovered. This period is typically a couple of days. Some customers might experience shorter or longer losses.

- Video Portal: View counts and statistics for the Video Portal depend on the statistics for Excel Reports, so view counts and statistics for the Video Portal are lost for the same time period as for the Excel reports.

- eDiscovery: Items that changed during the migration aren't shown until crawling picks up the changes.

- Data Loss Protection (DLP): Policies aren't enforced on items that change until crawling picks up the changes.

As part of the migration, the *Primary Provisioned Geography*  will change and all new content will be stored at rest in the new *Primary Provisioned Geography*. Existing content will move in the background with no impact to you for up to 90 days after the first change to the SharePoint Online data location in the admin center.


