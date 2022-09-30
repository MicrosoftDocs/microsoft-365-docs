---
title: "Manage custodian communications templates in the Communications library in eDiscovery (Premium)"
description: "You can add custodian communications templates (such as a template for hold notification) in eDiscovery (Premium) so they can be used in any case in your organization."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery 
search.appverid: 
- MOE150
- MET150
---

# Manage custodian communications templates in eDiscovery (Premium)

When you or other users create a hold notification or other types of custodian communications, you had to create the communication document from scratch by using the communications editor on the **Communications** tab in an eDiscovery (Premium) case. Now, we've released a new feature that lets you create communications templates that can be used to create communications in any case in your organization. After communication templates are created, they're available to be used in a case. This means that paralegals or other users who create custodian communications don't have to start from scratch to build a notification. Instead, they can select a template to build the notification that is sent to a custodian.

This article explains how to create organization-wide communications templates and select them when creating a new custodian notification for a specific eDiscovery (Premium) case.

## Before you create templates in the Communications library

- You must be an eDiscovery Administrator in your organization to add or remove templates in the Communications library in eDiscovery (Premium). For more information, see [Assign eDiscovery permissions in the Microsoft Purview compliance portal](assign-ediscovery-permissions.md)  

- Your organization can have a maximum of 50 templates in the Communications library.

## Create a communications template

1. In the compliance portal, go to [eDiscovery (Premium)](https://go.microsoft.com/fwlink/p/?linkid=2173764), and then click **eDiscovery (Premium) settings**.

   ![Select eDiscovery (Premium) settings](..\media\HistoricalVersions1.png)

2. On the **Settings** page, select the **Communications library** tab.

3. On the **Communications library** page, click **Create**.

4. Follow the procedure to create a custodian communication. For step-by-step instructions, see [Create a legal hold notification](create-hold-notification.md).

   > [!NOTE]
   > The steps to create a communications template are the same as the workflow to create a notification within a case. The only difference is that when you create a template, you don't specify an issuing officer and you don't assign custodians. Specifying an issuing officer and assigning custodians is done when you use a communications template to create a custodian notification for a case.

5. After you create a template, it's displayed on the **Communications library** page.

   ![Templates displayed in Communications library](..\media\AeDCommunicationsLibrary1.png)

You or other eDiscovery Administrators can edit a communications template. Any changes that you make to a template don't affect or modify any notifications that were previously created using that template. These changes will only apply to new notifications that created using the updated template.

## Use a communications template to create a custodian notification

After one or more communications templates are created in the Communications library, these templates can be selected to create a custodian notification in a case.

To select a template:

1. In the compliance portal, go to **eDiscovery > Advanced** to display the list of cases in your organization.

2. Select a case, click the **Communications** tab, and then click **New communication**.

3. On the **Name communication** page, use the **Select communication template** drop-down list to select a communications template to use to create the custodian notification.

   The list of templates in your organization's Communication library is displayed in the drop-down list.

   ![Templates from Communications library displayed in the drop-down list.](..\media\AeDCommunicationsTemplates1.png)
