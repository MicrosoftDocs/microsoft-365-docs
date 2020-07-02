---
title: "GDPR for Skype for Business Server"
description: "Learn about how to address GDPR requirements in on-premises Skype for Business Server and Lync Server."
f1.keywords:
- NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
titleSuffix: Microsoft GDPR
---

# GDPR for Skype for Business Server and Lync Server

Most Skype for Business Server and Lync Server data is stored in Exchange Server. This includes:

-   Conversation history

-   Voicemail notifications and transcriptions

-   Meeting invites

Use the procedures outlined for [GDPR for Exchange Server](gdpr-for-exchange-server.md) to find, export, or delete these types of data for GDPR requests.

Contact lists are stored in the SQL Server database. They can be exported in the following ways:

-   End users themselves can export the contacts by right clicking the group header and selecting Copy. This will copy all the contacts in that group into the clipboard, which can then be pasted into any app.

-   You can use the [Export-CsUserData](https://docs.microsoft.com/powershell/module/skype/export-csuserdata) cmdlet to export this data.

Content uploaded into meetings (such as PowerPoint files or handouts) or content generated in a meeting (such as whiteboard, polls, or Q/A) is stored in the filer. This can also be exported if end users log back into any meeting that has not expired and download any uploaded content or take screenshots in the case of generated content.

MeetNow meetings that are not in the Exchange Calendar and Contact List and contact rights (family, co-worker, etc.) are in the User Database. In Lync Server 2013 and later, you can use the [Export-CsUserData](https://docs.microsoft.com/powershell/module/skype/export-csuserdata) cmdlet to export this data.
