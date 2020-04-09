---
title: "Turning Integrated Apps on or off"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 7e453a40-66df-44ab-92a1-96786cb7fb34
description: "Learn about Integrated Apps and how to turn them on to allow third-party apps to access users' Office 365 information."
---

# Integrated apps in Microsoft 365

When Integrated Apps is turned on, this setting controls whether users in your organization can grant permissions (or consent) to integrated apps. An integrated app can be created from within your own organization, or it can come from another Office 365 organization or a third-party.

Apps not created by Microsoft must receive consent before they can access your organization's data. If you let users consent to app requests to access your organization's data, apps will explicitly ask users for the permissions they need, and users can choose whether to allow access.

If you choose not to let users consent to these requests, they'll see an error when opening any app that needs to request access to your organization's data. Since this can limit user productivity, consider setting up an admin consent workflow in the Azure portal. In this case, when a user opens an app and sees an error, they can also send a request for admin approval, and admins can then choose whether to consent.

A user can give access only to apps they own that access their Office 365 information. They can't give an app access to any other user's information.

## Turning Integrated apps on or off
<a name="__toc379982114"> </a>

Here's how to turn Integrated Apps on or off.

1. In the admin center, go to the **Settings** \> **Settings** > [Services](https://go.microsoft.com/fwlink/p/?linkid=2053743) page, and then select **Integrated apps**.

2. On the **Integrated Apps** page, select the option to turn Integrated Apps on or off.

## More info on Integrated Apps
<a name="__toc379982114"> </a>

To learn about how to configure your consent settings in Azure active directory, read [Configure the admin consent workflow](https://docs.microsoft.com/en-us/azure/active-directory/manage-apps/configure-admin-consent-workflow).