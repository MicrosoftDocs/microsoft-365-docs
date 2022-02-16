---
title: "Manage custodian communications templates in the Communications library in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 
description: "You can add custodian communications templates (such as a template for hold notification) in Advanced eDiscovery so they can be used in any case in your organization."
---

# Add or remove custodian communications templates in Advanced eDiscovery

When you or other users create a hold notification or other types of custodian communications, you had to create the communication document from scratch by using the communications editor on the **Communications** tab in an Advanced eDiscovery case. Now, we've released a new feature that lets you create communications templates that can be used to create communications in any case in your organization. After communication templates are created, they are available to be used in a case. This means that paralegals or other users who create custodian communications don't have to start from scratch to build a notification. Instead, they can select a template to build the notification that is sent to a custodian.

This article explains how to create organization-wide communications templates and select them when creating a new custodian communication for a specific case.

## Before you create templates in the Communications library

- You must be an eDiscovery Administrator in your organization to add or remove templates in the Communications library in Advanced eDiscovery. For more information, see [Assign eDiscovery permissions in the Microsoft 365 compliance center](assign-ediscovery-permissions.md)  

- Your organization can have a maximum of 50 templates in the Communications library.

## Create a communications template

1. In the Microsoft 365 compliance center, go to [Advanced eDiscovery](https://go.microsoft.com/fwlink/p/?linkid=2173764), and then click **Advanced eDiscovery settings**.

   ![Select Advanced eDiscovery settings](..\media\HistoricalVersions1.png)

2. On the **Settings** page, select the **Communications library** tab.

3. On the **Communications library** page, click **Create**.

4. Follow the procedure to create a custodian communication. For step-by-step instructions, see [Create a legal hold notification](create-hold-notification.md).

   > [!NOTE]
   > The steps to create a communications template are the same as the workflow to create a notification from scratch. The only difference is that when you create a template, you don't specify an issuing officer and you don't assign custodians. Specifying an issuing officer and assigning custodians is done when you use a communications template to create a custodian notification.

5. After you create a template, it's displayed on the **Communications library** page.

You or other eDiscovery Administrators can edit a communications template. Any changes that you make to a template don't affect or modify any notifications that were previously created using that template. These changes will only apply to new notifications that created using the updated template.

## Use a communications template to create a custodian notification

