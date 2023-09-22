---
title: Microsoft Secure score data storage and privacy
description: Learn about how Microsoft Secure score handles privacy and data that it collects.
keywords: microsoft secure score, secure score,  Microsoft 365 Defender portal, Secure score, data storage and privacy, storage, privacy, licensing, geolocation, data retention, data
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 11/17/2022
---

# Microsoft Secure Score data storage and privacy

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

This section covers frequently asked questions regarding privacy and data handling for Secure Score.

## Data storage location

Secure score operates in the Microsoft Azure datacenters in the European Union, the United Kingdom, or in the United States. Customer data collected by the service may be stored in: (a) the geo-location of the tenant as identified during provisioning or, (b) if Secure Score uses another Microsoft online service to process such data, the geolocation as defined by the data storage rules of that other online service.

Customer data in pseudonymized form may also be stored in the central storage and processing systems in the United States.

Once configured, you can't change the location where your data is stored. This provides a convenient way to minimize compliance risk by actively selecting the geographic locations where your data will reside.

## How long will Microsoft store my data? What is Microsoft's data retention policy?

### At service onboarding

By default, data is retained for 90 days based on your active licenses.

### At contract termination or expiration

Your data is kept and is available to you while the license is under grace period or suspended mode. At the end of this period, data that is associated to expired or terminated license is erased from Microsoft's systems to make it unrecoverable, no later than 90 days from the associated contract termination or expiration.
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
