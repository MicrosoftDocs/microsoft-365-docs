---
title: "During and after your data move"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 12/10/2019
audience: ITPro
ms.topic: article
ms.service: o365-administration
ms.collection: SPO_Content
search.appverid:
- MET150
localization_priority: Normal
ms.assetid: f47e3e09-b1dc-4b80-b6ea-fd6e0933407f

f1.keywords:
- NOCSH
description: "Data moves are back-end operations that occur when Microsoft moves services and associated data for your tenant to a new datacenter geo."
ms.custom: seo-marvel-apr2020
---

# During and after your data move

Data moves are a back-end operation with minimal impact to end-users. No action is required while Microsoft moves each service and associated data for your tenant to a new datacenter geo. Data transfer and validation occur in the background in advance with minimal impact to users.
  
> [!NOTE]
> Moves occur at different times for each service. As a result, you'll see the described reduced functionality for each service at a different time. 
  
Watch the Microsoft 365 Message Center for confirmation when moves for each of Exchange Online, SharePoint Online, Teams, and Skype for Business are complete. As shown in the table below, it can take up to 24 months, after the end of the enrollment period, to complete all the requested data moves for all customers in a specific geo. If you see any issues with your tenant after the move, contact [Support](https://go.microsoft.com/fwlink/p/?LinkID=522459) to get assistance. 
  

|**Customers with signup country in**|**All moves completed by**|
|:-----|:-----|
|Australia, New Zealand, Fiji  <br/> |July 1, 2022  <br/> |
|Japan  <br/> |July 1, 2022  <br/> |
|India  <br/> |July 1, 2022  <br/> |
|Canada  <br/> |July 1, 2022  <br/> |
|South Korea  <br/> |July 1, 2022  <br/> |
|United Kingdom  <br/> |July 1, 2022  <br/> |
|France  <br/> |July 1, 2022  <br/> |
|United Arab Emirates  <br/> |July 1, 2022  <br/> |
|South Africa  <br/> |July 1, 2022  <br/> |
|Switzerland, Liechtenstein  <br/> |July 1, 2022  <br/> |
|Germany  <br/> |Planned  <br/> |
|Norway  <br/> |November 1, 2022  <br/> |

## Exchange Online

Because it takes time to move each user to the new datacenter geo for a single tenant, some users will still be in the old datacenter geo during the move, while others will be in the new datacenter geo. This means that some features that involve accessing multiple mailboxes may not fully work during a period of the move process, which can last weeks. These features are described in the following sections.
  
### Open "Shared Folder" in Outlook Web Access

Some users open a shared mail folder from another mailbox (that the user has read or write permissions to) in Outlook Web Access using the "Shared Folder" feature. The following table describes how access to shared folders works during a mailbox move. Please note that users with full permissions to a shared mailbox can open the mailbox by using Outlook Web Access during the move. 
  
|**Configuration**|**Description**|
|:-----|:-----|
|User has mailbox folder permission to another mailbox  <br/> |Potentially limited.  <br/> If User A and Mailbox B aren't in the same geo during the tenant move, User A can't open Mailbox B's folder in Outlook Web Access if User A only has permission to a specific folder in Mailbox B.  <br/> To add a shared folder, right-click the user name in the left navigation panel and select **Add shared folder**.  <br/> |
|User with full mailbox permission to another mailbox  <br/> |Fully supported.  <br/> If User A has "Full Access" permission to Mailbox B, then User A can click the shared folder in the left navigation panel in Outlook Web Access to open a window showing Mailbox B.  A user can open a shared mailbox using Outlook Web Access during the move without any adverse impact. The limitation only applies to folder-level sharing in a mailbox.           |
  
## SharePoint Online

When SharePoint Online is moved, data for the following services is also moved:
  
- One Drive for Business
    
- Project Online
    
- Project for Microsoft 365
    
- Microsoft 365 Video services
    
- Office in s browser
    
- Microsoft 365 Apps for enterprise
    
- Visio Pro for Microsoft 365
    
After we've completed moving your SharePoint Online data, you might see the some of the following effects.
  
### Microsoft 365 Video Services

- The data move for video takes longer than the moves for the rest of your content in SharePoint Online.
    
- After the SharePoint Online content is moved, there will be a time frame when videos aren't able to be played.
    
- We're removing the trans-coded copies from the previous datacenter and transcoding them again in the new datacenter.
    
### Search

In the course of moving your SharePoint Online data, we migrate your search index and search settings to a new location. Until we've **completed** the move of your SharePoint Online data, we continue to serve your users from the index in the original location. In the new location, search automatically starts crawling your content after we've completed moving your SharePoint Online data. From this point and onwards we serve your users from the migrated index. Changes to your content that occurred after the migration aren't included in the migrated index until crawling picks them up. Most customers don't notice that results are less fresh right after we've completed moving their SharePoint Online data, but some customers might experience reduced freshness in the first 24-48 hours 
  
The following search features are affected:
  
- Search results and Search Web Parts: Results don't include changes that occurred after the migration until crawling picks them up. 
    
- Delve: Delve doesn't include changes that occurred after the migration until crawling picks them up.
    
- Popularity and Search Reports for the site: Counts for Excel reports in the new location only include migrated counts and counts from usage reports that have run after we completed moving your SharePoint Online data. Any counts from the interim period are lost and can't be recovered. This period is typically a couple of days. Some customers might experience shorter or longer losses.
    
- Video Portal: View counts and statistics for the Video Portal depend on the statistics for Excel Reports, so view counts and statistics for the Video Portal are lost for the same time period as for the Excel reports.
    
- eDiscovery: Items that changed during the migration aren't shown until crawling picks up the changes.
    
- Data Loss Protection (DLP): Policies aren't enforced on items that change until crawling picks up the changes.

## Microsoft Teams

In addition to Exchange Online, SharePoint Online, and OneDrive for Business, Microsoft will migrate Teams data to the local datacenter.

- Teams chat messages, including private messages and channel messages.
- Teams images used in chats.

Teams files are stored in SharePoint Online and Teams chat files are stored in OneDrive for Business. Voicemail, calendar, chat history, and contacts are stored in Exchange Online. In many cases, Exchange Online, SharePoint Online and OneDrive for Business are already used by the customer in the local datacenter geo and are also part of the Microsoft 365 migration program for eligible customer countries.

## Skype for Business

Skype for Business moves are available for Australia, Japan, India, Canada, United Kingdom, and South Korea.

All users will be signed out from the Skype for Business client software during cut-over. The automatic sign-in will reconnect users within two minutes.
  
|**Features that work during entire move**|**Features that may be limited during a portion of the move**|
|:-----|:-----|
| Instant messaging and voice calls  <br/>  Users can add contacts, add contact groups, add meetings, set their location, and change "What's Happening Today".  <br/>  Audio Conferencing Provider (ACP) settings are copied to the target datacenter geo. If the ACP provider is present in the target datacenter, it will work. Otherwise, it will not.  <br/> | Tenant Admin TRPS (Tenant Remote PowerShell) will not be available for administrators to create sessions.  <br/>  Tenant administrator LAC will not be available for administrators to sign in and change user settings.  <br/> |
   
|**After the move**|
|:-----|
| Meeting data (uploaded presentations, etc.) will not move and will need to be re-uploaded.  <br/>  Older Lync clients, such as the Lync 2010 client and Lync for Mac 2011 client, are known to cache DNS information to the service causing sign-in issues. Clearing the DNS cache may be required if the user is not on the latest Skype for Business Windows client. See [Troubleshooting Skype for Business Online DNS configuration issues in Office 365](https://docs.microsoft.com/skypeforbusiness/troubleshoot/online-configuration/dns-configuration-issue). Lync for Mac client users should follow [these instructions](https://support.microsoft.com/kb/2629861).  <br/> |
   
### Skype for Business moves that involve a third-party Audio Conferencing Provider
Third-party Audio Conferencing Provider add-on services for Skype for Business are not available for users homed in new geo-specific data centers.  Existing customers using a third-party Audio Conferencing Provider service should not request a move to a new geo-specific data center.  New customers deployed into the new geo-specific data centers will need to request a move to a regional data center to use a third-party Audio Conferencing Provider.
  
## Related topics 
 
[How to request your data move](request-your-data-move.md)
    
[Data move general FAQ](data-move-faq.md)
  
[New datacenter geos for Microsoft Dynamics CRM Online](https://go.microsoft.com/fwlink/p/?Linkid=615924)
  
[Azure services by region](https://azure.microsoft.com/regions/)
