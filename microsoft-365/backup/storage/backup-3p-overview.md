---
title: Overview for third-party developers of Microsoft 365 Backup Storage (Preview)
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
description: Overview for third-party developers for Microsoft 365 Backup Storage.
---

# Overview for third-party developers of Microsoft 365 Backup Storage (Preview)

> [!NOTE]
> This feature is currently in preview and subject to change.

Third-party developers can create their own applications to manage Microsoft 365 Backup Storage instead of using the out-of-the-box experience provided by Microsoft.

Creating an application means that your third-party application becomes the Microsoft 365 Backup Storage **Controller** in the tenant where your application is deployed.

To create and deploy an application, the third-party developers perform the following tasks:

1. Develop your third-party Microsoft 365 Backup Storage application with the required oAuth permissions scopes and [Backup storage Graph APIs](/graph/api/resources/backuprestoreroot?view=graph-rest-beta).

2. Create a Billing Policy for your Microsoft 365 Backup Storage application as per [Set up third-party billing for Microsoft 365 Backup Storage](backup-3p-billing.md).

3. Request the Consuming Tenant Backup Admin to consent your Microsoft 365 Backup Storage application to be able to execute in the Consuming Tenant.

> [!NOTE]
> This is the standard app registration workflow that is typically invoked by the Consuming Tenant Admin clicking on the following URL:
> ```
> https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id={applicationId}&response_type=code&scope=https://graph.microsoft.com/.default
> ```
