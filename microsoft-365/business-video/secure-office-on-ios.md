---
title: "Secure Office apps on iOS"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
ms.custom: 
- AdminSurgePortfolio
- adminvideo
monikerRange: 'o365-worldwide'
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to secure Office apps on iOS with Microsoft 365 Business Premium."
---

# Secure Office apps on iOS

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1FLvZ?autoplay=false]

You can set up a user access policy that requires mobile users to enter a PIN or fingerprint to sign in, and also encrypts work files stored on their devices.

## Try it!

1. Sign in to the Microsoft 365 admin center.
1. Under **Policies**, choose **Add policy**.
1. In the **Add policy** pane, enter a name under **Policy name**, and choose the policy type that you want under **Policy type**.
1. Turn on **Manage how users access Office files on mobile devices**, and then make sure the following three settings are turned on:
    - **Require a PIN or fingerprint to access Office apps**
    - **Protect work files when devices are lost or stolen**
    - **Encrypt work files**

1. Under **Files in these apps will be protected**, select the Office apps you want to protect on mobile devices.
1. Under **Who will get these settings?**, all users are selected by default, but you can choose **Change** to select any security groups you've created.
1. To finish creating the policy, choose **Add**.
1. On the **Add policy** page, choose **Close**.
1. On the admin center home page, confirm that your new policy was added by choosing **Policies** and reviewing your policy on the **Policies** page.