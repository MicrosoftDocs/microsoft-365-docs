---
title: "Manage email app access in Microsoft 365 admin center"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 02/18/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- scotvorg 
- Adm_O365
- Adm_NonTOC
ms.custom: 
- AdminSurgePortfolio
- admindeeplinkEXCHANGE
search.appverid:
- MET150
- MOE150
- MED150
- MBS150
ms.assetid: d00b6b83-1f14-4e9c-a2c5-dbd9a92816f4
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to choose which mobile apps people can use to access email, calendar, and contacts."
---

# Manage email app access in the Microsoft 365 admin center

Use the mobile email access settings to choose which mobile apps people in your organization can use to access their work or school account to access email, calendar and contacts.
  
> [!IMPORTANT]
> Your organization will have access to this setting unless you're using Microsoft Intune or you've configured mobile device management settings in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>.
  
## Manage email app options

> [!IMPORTANT]
> If you don't use this feature, there'll be no changes to your users' experience. They'll be able to use any mobile email app to access their work or school account for email, calendar, and contacts from their mobile device.

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">Services &amp; add-ins</a> page.

2. On the **Mobile email access options** page, select the check box, and then choose how users in your organization use email apps on their devices:
  
Choose the option to set how users in your organization access their work or school account from their mobile devices
  
- **Outlook only** - users in your organization will be required to use the Outlook for Android or Outlook for iOS app on their mobile device.

- **Any email app** - all users in your organization will be prompted to use Outlook, but they can choose to use any email app.

- **Any email app** - new users or devices in your organization will be prompted once to use Outlook, but they can choose to use any email app.

For more details, check out [Options for accessing email from your mobile device](access-email-from-a-mobile-device.md).
  
## New user or device is activated in your organization

As soon as a user in your organization adds their work or school email to a third-party email app or to a new device, they'll receive an email from **Microsoft on behalf of your organization**. The email will let them know about the benefits of using the Outlook mobile app and provide a link to the download location. Your users can then choose whether to continue using the third-party app or choose to use the Outlook mobile app. During the 24 hours after the user first receives this email, their device will be in quarantine, and email, calendar, and contact data won't be updated. If they choose to use the Outlook mobile app, the third-party app will remain quarantined and data will only sync with the Outlook mobile app. If they decide to continue using the third-party app, data will start to sync instantly. If no action is taken during those first 24 hours, the email will be removed from their inbox and data will start to sync from the server automatically.
  
## Previously configured users in your organization

If you decide to recommend Outlook to everyone in your organization, in addition to the experience described above for new users, users who have previously connected their work or school email account to a third-party app will receive an email from **Microsoft on behalf of your organization** within 48 hours of this setting being enabled. The email will let them know about the benefits of using the Outlook mobile app and provide a link to the download location. Your users can then choose whether to continue using the third-party app or choose to use the Outlook mobile app. During the 24 hours after the user first receives this email, their device will be in quarantine, and email, calendar, and contact data won't be updated. If they choose to use the Outlook mobile app, the third-party app will remain quarantined and data will only sync with the Outlook mobile app. If they decide to continue using the third-party app, data will start to sync instantly. If no action is taken during those first 24 hours, the email will be removed from their inbox and data will start to sync from the server automatically.
