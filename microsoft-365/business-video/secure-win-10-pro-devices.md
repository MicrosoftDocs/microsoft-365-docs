---
title: "Manage Windows 10 Pro device policies with Microsoft 365 Business Premium"
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
description: "Learn how to Manage Windows 10 Pro device policies with Microsoft 365 Business Premium."
---

# Manage Windows 10 Pro device policies

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1FYSL?autoplay=false]

You can use Microsoft 365 Business to ensure that Windows Defender Antivirus is activated on Windows 10 devices and Microsoft updates are automatically downloaded to users' devices.

## Try it!

1. Sign in to the Microsoft 365 admin center.
1. Under **Policies**, choose Add policy.
1. In the **Add policy** pane, enter a name under **Policy name**, and then select **Windows 10 Device Configuration** under **Policy type**.
1. Choose **Secure Windows 10 devices** to see the sub-settings.
1. Make sure that **Help protect PCs from viruses and other threats using Windows Defender Antivirus** and **Keep Windows 10 devices up to date automatically** are turned on.
1. Under **Who will get these settings?**, all users are selected by default, but you can choose **Change** to select any security groups you've created.
1. To finish creating the policy, choose **Add**.
1. On the **Add policy** page, choose **Close**.
1. On the admin center home page, confirm that your new policy was added by choosing **Policies** and reviewing your policy on the **Policies** page.
1. To verify that the policy has taken effect, on a user's Windows 10 device, go to Windows Update, choose **Advanced options**, and confirm that settings are grayed out.

    Then, click **Choose how updates are delivered**, and confirm that settings are grayed out and the following message appears: **Some settings are hidden or managed by your organization**.

