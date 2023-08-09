---
title: Message trace in the Microsoft 365 Defender portal
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
description: Admins can use the message trace link in the Microsoft 365 Defender portal to find out what happened to messages.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 6/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Message trace in the Microsoft 365 Defender portal

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Message trace follows email messages as they travel through your Exchange Online organization. You can determine if a message was received, rejected, deferred, or delivered by the service. It also shows what actions were taken on the message before it reached its final status.

You can use the information from message trace to efficiently answer user questions about what happened to messages, troubleshoot mail flow issues, and validate policy changes.

> [!NOTE]
> Message trace in the Microsoft 365 Defender portal is just a pass through to Message trace in the Exchange admin center. For more information, see [Message trace in the modern Exchange admin center](/exchange/monitoring/trace-an-email-message/message-trace-modern-eac).

## What do you need to know before you begin?

- The maximum number of messages that are displayed in the results of a message trace depends on the report type you selected (see the [Choose report type](/exchange/monitoring/trace-an-email-message/message-trace-modern-eac#choose-report-type) section for details). The [Get-HistoricalSearch](/powershell/module/exchange/get-historicalsearch) cmdlet in Exchange Online PowerShell or standalone EOP PowerShell returns all messages in the results.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo): Membership in the **Organization Management**, **Compliance Management** or **Help Desk** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator** or **Compliance Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

## Open message trace

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Exchange message trace**. Or, to go directly to the message trace page, use <https://admin.exchange.microsoft.com/#/messagetrace>.

At this point, message trace in the EAC opens. For more information, see [Message trace in the modern Exchange admin center](/exchange/monitoring/trace-an-email-message/message-trace-modern-eac).
