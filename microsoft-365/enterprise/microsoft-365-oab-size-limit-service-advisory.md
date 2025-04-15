---
title: "Service advisories for OAB size limits in Exchange Online monitoring"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/09/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- must-keep
ms.custom: 
- admindeeplinkMAC
- admindeeplinkEXCHANGE
f1.keywords:
- NOCSH
description: "Learn about service advisories for OAB size limits in Exchange Online monitoring."
---

# Service advisories for OAB size limits

This advisory informs you when your Offline Address Book has reached the size limit outlined in the [Address Book
Limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#address-book-limits)
within the [Exchange Online limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#address-book-limits).

These advisories are displayed in the Microsoft 365 admin center. To view these advisories, navigate to **Health** \> **Service Health** \> **Exchange Online** and finally, the **Active Issues** tab. This advisory will be listed as "Offline Address Book."

## What Do These Service Advisories Indicate?

This service advisory informs you that the maximum size of a single Offline Address Book within your tenant has exceeded 1 GB. If you receive this advisory, we ask that you review any recent changes made to the Offline Address Book(s) in your environment. Your users may observe missing or incomplete data if the size issue isn't corrected.

## More information

For more information about Offline Address Books, see the following articles:

- [Offline address books in Exchange Online \| Microsoft Docs](/exchange/address-books/offline-address-books/offline-address-books)
- [Exchange Online limits - Address Book Limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#address-book-limits)
