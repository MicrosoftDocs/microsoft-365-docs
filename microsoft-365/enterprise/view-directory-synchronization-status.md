---
title: "View directory synchronization status in Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 09/24/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
ms.collection:
- scotvorg
- Ent_O365
- M365-identity-device-management
- must-keep
search.appverid:
- MET150
- MOE150
- MED150
ms.assetid: 18be3b98-34ae-47be-9337-ab6c3fb372ac
description: In this article, learn how you can check the status of your directory synchronization in Office 365.
---

# View directory synchronization status in Microsoft 365

If you have integrated your on-premises Active Directory Domain Services (AD DS) with Microsoft Entra ID by synchronizing your on-premises environment with Microsoft 365, you can also check the status of your synchronization.
  
## View directory synchronization status

- Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) and choose **DirSync Status** on the home page.
- Alternately, you can go to **Users** \> **Active users**, and on the **Active users** page, select the **Ellipse** \> **Directory synchronization**. On the **Directory Synchronization** pane, choose **Go to DirSync management**.

> [!NOTE]
> If you haven't already set up directory synchronization for your tenant, you will be redirected to the **Add or sync users to Microsoft Entra ID** advanced deployment guide. Follow the steps in the guide to add cloud users, set up one-time or continuous sync, or find troubleshooting information.

## Information on the Manage directory synchronization page

The following table lists the features you can get information about on the page.
  
If there's a problem with your directory synchronization, the errors are listed on this page as well. For more information about different errors you might encounter, see [Identify directory synchronization errors in Microsoft 365](identify-directory-synchronization-errors.md).
  
|Item|What it's for|
|:-----|:-----|
|**Domains verified** | Number of domains in your Microsoft 365 tenant that you have verified you own. |
|**Domains not verified** | Domains you have added, but not verified. |
|**Directory sync enabled** |True or False. Specifies whether you have enabled directory sync. |
|**Latest directory sync** | Last time directory sync ran. Will display a warning and a link to a troubleshooting tool if the last sync was more than three days ago. |
|**Password sync enabled** | True or False. Specifies whether you have password hash sync between our on-premises and your Microsoft 365 tenant. |
|**Last Password Sync** | Last time password hash sync ran. Will display a warning and a link to a troubleshooting tool if the last sync was more than three days ago. |
|**Directory sync client version** | Contains a download link if a new version of Microsoft Entra Connect has been released. |
|**Directory sync service account** | Displays the name of your Microsoft 365 directory sync service account. |
|||

## Monitor synchronization health

In this section, you'll install a Microsoft Entra Connect Health agent on each of your on-premises AD DS domain controllers to monitor your identity infrastructure and the synchronization services provided by Microsoft Entra Connect. The monitoring information is made available in a Microsoft Entra Connect Health portal, where you can view alerts, performance monitoring, usage analytics, and other information.

The key design decision of how to use Microsoft Entra Connect Health is based on how you're using Microsoft Entra Connect:

- If you’re using the **managed authentication** option, start with [Using Microsoft Entra Connect Health with sync](/azure/active-directory/connect-health/active-directory-aadconnect-health-sync) to understand and configure Microsoft Entra Connect Health.
- If you're synchronizing just the names of the accounts and groups using **federated authentication** with Active Directory Federation Services (AD FS), start with [Using Microsoft Entra Connect Health with AD FS](/azure/active-directory/connect-health/active-directory-aadconnect-health-adfs) to understand and configure Microsoft Entra Connect Health.

When complete, you’ll have:

- The Microsoft Entra Connect Health agent installed on your on-premises identity provider servers.
- The Microsoft Entra Connect Health portal displaying the current state of your on-premises infrastructure and synchronization activities with the Microsoft Entra tenant for your Microsoft 365 subscription.
