---
title: Use Content Search in Microsoft Teams
description: Learn about using Content search in the Microsoft Purview compliance portal to search for Microsoft Teams content that's stored in Exchange Online, SharePoint Online, OneDrive for Business, and OneNote.
author: robmazz
ms.author: robmazz
manager: laurawi
ms.topic: article
audience: admin
ms.service: msteams
ms.collection:
- tier1
- purview-compliance
- M365-collaboration
- content-search
ms.reviewer: anwara
ms.date: 08/10/2017
search.appverid: MET150
f1.keywords: 
  - NOCSH
ms.custom: seo-marvel-mar2020
appliesto: 
  - Microsoft Teams
---

# Use Content search in Microsoft Teams

> [!NOTE]
> Content search of messages and files in [private channels](/microsoftteams/private-channels) work differently than in standard channels. To learn more, see [Content search of private channels](#content-search-of-private-channels).

[Content search](ediscovery-content-search.md) provides a way to query Microsoft Teams information spanning Exchange, SharePoint Online, and OneDrive for Business. For example, using **Content search** against your *Manufacturing Specs* mailbox and *Manufacturing Specs* SharePoint site, you can search against Teams standard channel conversations from Exchange, file uploads and modifications from SharePoint Online, and OneNote changes.

You can also add query criteria to the **Content Search** to narrow the results returned. In the above example, you can look for content where the keywords "**New Factory Specs"** were used.

> [!TIP]
> After adding search conditions, you can export a report or the actual content to your computer for analysis.

## Content search of private channels

Records for messages sent in a private channel are delivered to the mailbox of all private channel members, rather than to a group mailbox. The titles of the records are formatted to indicate which private channel they were sent from.

Because each private channel has its own SharePoint site collection that's separate from the parent team site, files in a private channel are managed independently of the parent team.

Teams doesn't support content search of a single channel, so the whole team must be searched. To perform a content search of a private channel, search across the team, the site collection associated with the private channel (to include files), and mailboxes of private channel members (to include messages).

Use the following steps to identify files and messages in a private channel to include in  your content search.

### Include private channel files in a content search

Before you perform these steps, install the [SharePoint Online Management Shell and connect to  SharePoint Online](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps).

1. Run the following to get a list of all SharePoint site collections associated with private channels in the team.

    ```PowerShell
    Get-SPOSite
    ```
2. Run the following PowerShell script to get a list of all SharePoint site collection URLs associated with private channels in the team and the parent team group ID.

    ```PowerShell
    $sites = get-sposite -template "teamchannel#0"
    foreach ($site in $sites) {$x= get-sposite -identity $site.url -detail; $x.relatedgroupID; $x.url} 
    ```
3. For each team or group ID, run the following PowerShell script to identify all relevant private channel sites.

    ```PowerShell
    $sites = get-sposite -template "teamchannel#0"
    $groupID = "e8195240-4a70-4830-9106-80193cf717cb"
    foreach ($site in $sites) {$x= Get-SpoSite -Identity $site.url -Detail; if ($x.RelatedGroupId -eq $groupID) {$x.RelatedGroupId;$x.url}}
    ```

### Include private channel messages in a content search

Before you perform these steps, make sure you have the [latest version of the Teams PowerShell module](/microsoftteams/teams-powershell-overview) installed.

1. Run the following to get a list of private channels in the team.

    ```PowerShell
    Get-TeamChannel -GroupId <GroupID> -MembershipType Private
    ```
2. Run the following to get a list of private channel members.

    ```PowerShell
    Get-TeamChannelUser -GroupId <GroupID> -DisplayName "Engineering" -Role Member
    ```
3. Include the mailboxes of all members from each private channel in the team as part of your content search query.

## Related articles

- [eDiscovery cases in the Microsoft Purview compliance portal](/microsoft-365/compliance/ediscovery-cases)
