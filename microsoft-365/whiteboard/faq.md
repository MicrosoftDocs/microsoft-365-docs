---
title: Frequently asked questions about Microsoft Whiteboard
ms.author: chucked
author: chuckedmonson
manager: alexfaulkner
ms.reviewer: 
audience: admin
ms.topic: article
ms.custom: 
ms.prod: microsoft-365-enterprise
search.appverid: MET150
ms.collection: 
ms.localizationpriority: medium
description: Read about common questions and answers about Microsoft Whiteboard.

---

# Frequently asked questions about Microsoft Whiteboard

## Is Whiteboard data moving to OneDrive for Business? 

Yes. Microsoft Whiteboard—the collaborative canvas in Microsoft 365—is being rebuilt to integrate seamlessly across the suite, so you can create, share, discover, and manage whiteboards as easily as any Office document. 

An opt-in will be offered in late 2021. Starting in January 2022, new whiteboards will begin being stored in OneDrive for Business. This will provide rich content management capabilities, including: 

- Data will reside with your OneDrive for Business content
- Retention policies 
- Quota and recycle bin
- eDiscovery and search

The behavior is as follows: 

- New whiteboards will be created in the OneDrive for Business of the person who starts the whiteboard. This includes whiteboards created in the stand-alone Whiteboard applications as well as Microsoft Teams meetings, chats and channels.  

- Previously created boards are fully functional and will remain in Azure until we offer migration options.  

- Users without OneDrive for Business will no longer be able to create new whiteboards, though they can still edit their previously created boards. They can collaborate on any whiteboards that are shared with them by others. 

- In the future, we will provide storage for whiteboards in channels. 

## Does Whiteboard support transferring ownership of whiteboards?

For Azure-based content, global tenant administrators and anyone in the SharePoint administrators group can transfer boards. Administrators can use the [PowerShell cmdlets](https://docs.microsoft.com/powershell/whiteboard/?view=whiteboard-ps) to list whiteboards for a user and transfer one or all whiteboards to another user.

This can be used to satisfy data subject requests (DSRs) for General Data Protection Regulation (GDPR) or in the case of accounts being removed. We recommend that during your account removal process, you use the [PowerShell cmdlets](https://docs.microsoft.com/powershell/whiteboard/?view=whiteboard-ps) to transfer a departing user’s boards to their manager or to another user.

For OneDrive for Business content, files can be moved in the same way as other content in OneDrive for Business. However, share links and permissions may not move.

## What auditing, logging or activity is available?

There is no auditing, logging, or other activity such as analytics available at this time, but these capabilities are on the roadmap.
