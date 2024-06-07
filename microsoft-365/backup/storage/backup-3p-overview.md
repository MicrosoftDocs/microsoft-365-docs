---
title: Third party overview for Microsoft 365 Backup Storage (Preview)
ms.author: waynewin
author: WayneEwington
manager: brgussin
audience: admin
ms.reviewer: sreelakshmi
ms.date: 06/03/2024
ms.topic: conceptual
ms.service: microsoft-365-backup
ms.custom: backup
search.appverid:
ms.collection:
    - essentials-overview
ms.localizationpriority:  medium
description: Third party overview for Microsoft 365 Backup Storage.
---

# Third party overview

Third party developers can create their own applications to manage Microsoft 365 Backup Storage instead of using the out of the box experience as provided by Microsoft.

Creating an application means that your third party application can become the Microsoft 365 Backup Storage **Controller** in the tenant that you application has been deployed into.

To create and deploy an application, the third party developers will perform the following tasks:

1. Develop your third party Microsoft 365 Backup Storage application with the required oAuth permissions scopes and [Backup storage Graph APIs](https://learn.microsoft.com/microsoft-365/backup/backup-overview).
2. Create a Billing Policy for your Microsoft 365 Backup Storage application as per [Set up third party billing for Microsoft 365 Backup Storage](/backup-3p-billing.md).
3. Request the Consuming Tenant Backup Admin to consent your Microsoft 365 Backup Storage application to be able to execute in the Consuming Tenant.

> [!NOTE]
> This is the standard app registration workflow that is typically invoked by the Consuming Tenant Admin clicking on the following URL:
> ```
> https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id={applicationId}&response_type=code&scope=https://graph.microsoft.com/.default
> ```

