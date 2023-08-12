---
title: "Managing user consent to apps in Microsoft 365"
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
- Tier3
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 7e453a40-66df-44ab-92a1-96786cb7fb34
description: "Learn about user consent to apps, and how to turn them on to allow third-party apps to access users' Microsoft 365 information."
---

# Managing user consent to apps in Microsoft 365

This setting controls whether users can give that consent to apps that use OpenID Connect and OAuth 2.0 for sign-in and requests to access data. An app can be created from within your own organization, or it can come from another Microsoft 365 organization or a third-party.

If you turn this setting on, those apps will ask users for permission to access your organization’s data, and users can choose whether to allow it. If you turn this setting off, then admins must consent to those apps before users may use them. In this case, consider setting up an admin consent workflow in the Azure portal so users can send a request for admin approval to use any blocked app.

A user can give access only to apps they own that access their Microsoft 365 information. They can't give an app access to any other user's information.

## Turning user consent on or off

Here's how to turn User consent to apps on or off.

1. In the  [Microsoft 365 admin center](https://admin.microsoft.com), go to the **Settings** > **Org settings** > [Services](https://go.microsoft.com/fwlink/p/?linkid=2053743) page, and then select **User consent to apps**.

2. On the **User consent to apps** page, select the option to turn user consent on or off.

## Related content 

[Configure the admin consent workflow](/azure/active-directory/manage-apps/configure-admin-consent-workflow) (article)\
[Managing consent to applications and evaluating consent requests](/azure/active-directory/manage-apps/manage-consent-requests) (article)
