---
title: Overview for third-party developers of Microsoft 365 Backup Storage
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 02/03/2025
ms.topic: conceptual
ms.service: microsoft-365-backup
ms.custom: backup
search.appverid:
ms.collection:
ms.localizationpriority:  medium
description: Read the overview for third-party developers for Microsoft 365 Backup Storage.
---

# Overview for third-party developers of Microsoft 365 Backup Storage

Third-party developers can create their own applications to manage Microsoft 365 Backup Storage instead of using the out-of-the-box experience provided by Microsoft.

Creating an application means that your third-party application becomes the Microsoft 365 Backup Storage **Controller** in the tenant where your application is deployed.

> [!NOTE]
> If you encounter any unanswered product questions in these documents, please refer to the [general Microsoft 365 Backup documentation](../backup-overview.md) for additional insights on features and FAQs, as that experience utilizes the same underlying APIs.

To create and deploy an application, the third-party developers perform the following tasks:

1. Develop your third-party Microsoft 365 Backup Storage application with the required oAuth permissions scopes and [Microsoft 365 Backup Storage Graph APIs](/graph/api/resources/backuprestoreroot).

2. Create a Billing Policy for your Microsoft 365 Backup Storage application as described in [Set up third-party billing for Microsoft 365 Backup Storage](backup-3p-billing.md).

3. Request the Consuming Tenant Backup Admin to consent your Microsoft 365 Backup Storage application to be able to execute in the Consuming Tenant.

4. Enable your application to be the Microsoft 365 Backup Storage Controller in a Consuming Tenant as per [Onboard a third-party Microsoft 365 Backup Storage application](backup-3p-lifecycle.md#onboard-a-third-party-microsoft-365-backup-storage-application).

> [!NOTE]
> This is the standard app registration workflow that is typically invoked by the Consuming Tenant Admin clicking on the following URL:
> ```
> https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id={applicationId}&response_type=code&scope=https://graph.microsoft.com/.default
> ```
