---
title: "Office 365 ATP Safe Links for Teams, safelinks, safe links, block malicious links, office 365 atp, Teams safe links, stop users from clicking bad links, malicious links"
ms.author: tracyp
author: MSFTTracyP
manager: laurawi
audience: Admin
ms.date: 02/28/2020
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection:
- M365-security-compliance
description: "Teams will now have access to safe links at the time of your click. Whether you’re using chats 1-on-1 Chats, between Groups, or in Channels, and Tabs, if you have a subscription to Office 365 ATP, you will have the ability to enable and use this safety feature."
---
<!--06/21/2019-->

# Office 365 Safe Links in Teams

> [!IMPORTANT]
> This feature is in **Public Preview** for customers in the Microsoft Teams Technology Adoption Program (TAP) as of Feb 28, 2020. This note will be removed from the article when Safe Links for Teams is more widely available.

Microsoft Teams, an Office 365 Cloud-based application for managing your work, already uses safe attachments (for Office 365), but it will now have access to safe links at the time of your click. Whether you’re using chats 1-on-1 Chats, between Groups, or in Channels, and Tabs, if you have a subscription to Office 365 ATP, you will have the ability to enable and use this safety measure.

Here’s how it works: 

1. When you start the Teams application, Office 365 will check to make sure the user belongs to an organization that has Office 365 ATP, and that the user is part of an active safe links policy with its protection enabled for Microsoft Teams.

2. If the above are true, then URLs will be validated at the time of click in Chats, Group Chats, Channels, and in Tabs for that user.
 
## What will users experience? 

All protected users will have this experience with hazardous URLs: 

- If the link was clicked from a Teams conversation, group chat, or from channels, a page will render in the default browser. If the link was clicked from a pinned tab, the page will appear in the Teams GUI within that tab, and the option to open in browser will be disabled for security purposes.

- This user will be blocked from proceeding to the URL’s site.

If the user who sent the link isn’t protected by Office 365 ATP, he or she is free to click the URL on his or her machine and resolve the problem site. This makes it doubly important for Office 365 Administrators to be aware of who their protected users are and should be.

![A Safe Links for Teams page reporting a malicious link and blocking transit to the page.](../media/TP_SafelinksForTeams_Malicious.png)

Clicking the *Go Back* button on this page in Teams will close it out (or may result in a blank page users  can close out). However, clicking on the link again will result in reassessment of the reputation of the site so that this page reappears.

> [!NOTE]
>Some Office 365 Admins will enable the **Continue Anyway** message on the blocking page. However, if safe links measures the reputation of a site and finds it lacking, no further click-through should be undertaken. It is not recommended that users bypass safety measures. Please weigh this into your considerations before enabling Continue Anyway. 

