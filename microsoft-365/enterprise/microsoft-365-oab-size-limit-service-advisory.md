---
title: "Service advisories for OAB size limits in Exchange Online monitoring"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
ms.custom: 
- admindeeplinkMAC
- admindeeplinkEXCHANGE
f1.keywords:
- NOCSH
description: "Learn about service advisories for OAB size limits in Exchange Online monitoring."
---

# Service advisories for OAB size limits

This alert informs you when your Offline Address Book has reached the size limit outlined in the [Address Book
Limits](https://learn.microsoft.com/en-us/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#address-book-limits)
within the [Exchange Online limits](https://learn.microsoft.com/en-us/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#address-book-limits).

>These alerts are displayed in the Microsoft 365 admin center. To view these alerts, navigate to **Health** \> **Service Health** \> **Exchange Online** and finally, the **Active Issues** tab. You'll see this as "Offline Address Book"

## What Do These Service Alerts Indicate?

This service alert informs you that the maximum size of a single Offline Address Book within your tenant has exceeded 1GB. If you receive this alert, we ask that you review any recent changes made to the Offline Address Book(s) in your environment. If the size issue isn't corrected, your users may observe missing or incomplete data as a result.

## More information

For more information about Offline Address Books by leveraging the below information:

- [Offline address books in Exchange Online \| Microsoft Docs](/exchange/address-books/offline-address-books/offline-address-books)
- [Exchange Online limits - Address Book Limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#address-book-limits)
