---
title: "Deprecating Message Encryption Viewer App"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 6/29/2018
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 6336cabb-b06e-402f-9e85-8bb9eb4ce68f
ms.collection:
- M365-security-compliance
ms.custom:
- seo-marvel-apr2020
description: The Office 365 Message Encryption (OME) Viewer app was removed from Android and Apple stores in 2018.
---

# Deprecating Message Encryption Viewer App

On August 15, 2018, we removed the Office 365 Message Encryption (OME) Viewer mobile app from Android and Apple stores. The Office 365 Message Encryption Viewer mobile app was required to read email messages and attachments that were encrypted with the previous version of OME on Apple and Android phones. Apart from removing the OME Viewer app, we are not making any other changes to the previous version of OME.
  
## Changes from August 2018

As announced September 2017, we have released a new version of [Office 365 Message Encryption](https://aka.ms/ome2017) so that users can send encrypted and protected messages to anyone inside or outside the organization without the requirement of the mobile app. Since then, we've added additional capabilities:
  
- [Encrypt-only template](https://aka.ms/encryptonly)

- [Control to decrypt attachments](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Admin-control-for-attachments-now-available-in-Office-365/ba-p/204007)

With this change, users will no longer be able to download the Office 365 Message Encryption Viewer mobile app beginning August 1. As a result, mail recipients may not be able to read messages encrypted with the previous version of OME on some Android and Apple mobile devices. However, they will still be able to read these messages on personal computers (via desktop browsers). Users who have already downloaded the app will continue to be able to use it.
  
## Why this change was made

The new version of OME no longer requires a mobile app to read protected email messages and attachments. Customers using the new OME capabilities can view the protected message in Outlook mobile and non-customers can view protected messages in a browser.
  
Requiring users to download a mobile app is another hurdle for customers to view protected messages. The new Office 365 Message Encryption capabilities provide a better mobile experience.
  
## Can I still use the previous version of Office 365 Message Encryption

The previous version of Office 365 Message Encryption will not be deprecated at this time, however, we have made significant enhancements to the new version of Office 365 Message Encryption, which make it easier to encrypt and rights protect sensitive data to anyone and on any device - including the ability for users to read protected messages directly in Outlook (desktop, mobile, and web). 
  
## What do I need to do to prepare for this change

If your organization currently sends encrypted attachments to recipients that require the OME Viewer app, you should update your documentation and training resources.
  
We recommend updating existing Exchange mail flow rules to use the current version of OME so that your organization can take advantage of the new and improved capabilities. Once you have set up the new OME capabilities, recipients won't need the OME Viewer app to read encrypted messages on mobile devices.
  
Microsoft recommends that you make a plan to move to the new OME capabilities as soon as it is reasonable for your organization. For instructions, see [Set up new Office 365 Message Encryption capabilities](set-up-new-message-encryption-capabilities.md). If you want to find out more about how the new capabilities work first, see [Office 365 Message Encryption](ome.md).
  

