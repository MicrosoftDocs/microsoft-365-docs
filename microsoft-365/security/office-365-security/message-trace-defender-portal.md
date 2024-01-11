---
title: Message trace in the Microsoft Defender portal
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.collection: 
  - m365-security
  - tier2
ms.localizationpriority: medium
ms.assetid: 3e64f99d-ac33-4aba-91c5-9cb4ca476803
ms.custom: 
  - seo-marvel-apr2020
description: Admins can use the Message trace link in the Microsoft Defender portal to find out what happened to messages.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 10/9/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Message trace in the Microsoft Defender portal

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, message trace follows email messages as they travel through your Microsoft 365 organization. You can determine if a message was received, rejected, deferred, or delivered by the service. It also shows what actions were taken on the message before it reached its final status.

You can use the information from message trace to efficiently answer user questions about what happened to messages, troubleshoot mail flow issues, and validate policy changes. 

The **Summary report** in the message trace contains the information that helps you answer user questions and troubleshoot mail flow issues. This **Summary report** enables you to view the report in a file that can be opened in Windows Explorer (also known as File Explorer).

You can use the **View in Explorer** option in the **Message trace search results** page in [Exchange admin center](https://admin.exchange.microsoft.com/). However, to use this option, you must fulfill the following prerequisite:

- You must procure the E5/A5 license to access a feature within the Office 365 Threat Intelligence licensing. This feature only enables you to use the **View in Explorer** option.

> [!TIP]
> The **Message trace** page in the Microsoft Defender portal is a really pass through to **Message trace** page in the new Exchange admin center (EAC) at <https://admin.exchange.microsoft.com/#/messagetrace>.

## What do you need to know before you begin?

- The maximum number of messages that are displayed in the results of a message trace depends on the report type you selected (see the [Choose report type](/exchange/monitoring/trace-an-email-message/message-trace-modern-eac#choose-report-type) section for details). The [Get-HistoricalSearch](/powershell/module/exchange/get-historicalsearch) cmdlet in Exchange Online PowerShell or standalone EOP PowerShell returns all messages in the results.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online permissions](/exchange/permissions-exo/permissions-exo): Membership in the **Organization Management**, **Compliance Management** or **Help Desk** role groups.
  - [Microsoft Entra permissions](/microsoft-365/admin/add-users/about-admin-roles): Membership in the **Global Administrator** or **Compliance Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

## Open message trace

In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Exchange message trace**.

At this point, the **Message trace** page in the new EAC opens. To go directly to this page, use <https://admin.exchange.microsoft.com/#/messagetrace>. For more information, see [Message trace in the new Exchange admin center](/exchange/monitoring/trace-an-email-message/message-trace-modern-eac).
