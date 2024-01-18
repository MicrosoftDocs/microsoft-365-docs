---
title: "Pin apps to your users' app launcher"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 11/28/2023
audience: Admin
ms.topic: article
ms.collection:
- Tier3
- scotvorg 
- Adm_O365
- M365-subscription-management
- Adm_TOC
ms.service: microsoft-365-business
ms.custom: admindeeplinkMAC
ms.localizationpriority: medium
description: "As a global admin you can pin up to three apps to your users' app launcher."
---

# Pin apps to your users' app launcher

You can use controls in the Microsoft Entra admin center to pin up to three apps to Microsoft365.com and the app launcher for all the users in your organization. You can also organize groups of applications. Any app you add can later be unpinned by the user at any time. To pin an app for your users, you must be a Cloud application administrator, or Application administrator in Microsoft Entra ID, or a Global administrator in Microsoft 365. For more information about admin roles, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference) and [admin roles in Microsoft 365](../add-users/about-admin-roles.md). 

For more information about the app launcher and Microsoft365.com, see [meet the app launcher](https://support.microsoft.com/office/79f12104-6fed-442f-96a0-eb089a3f476a) and [updates to office.com and the-Office 365 app launcher](https://techcommunity.microsoft.com/t5/office-365-blog/updates-to-office-com-and-the-office-365-app-launcher/ba-p/1150503) blog article.

<a name='use-the-azure-active-directory-portal-to-pin-apps'></a>

## Use the Microsoft Entra admin center to pin apps

> [!NOTE]
> Microsoft 365 apps are excluded from this list since they’re already displayed in the App launcher.

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.
2. In the left nav, choose **Show all**, and under **Admin centers**, choose **Microsoft Entra**.
3. In Microsoft Entra admin center, under **Microsoft Entra ID (Azure AD)**, choose **Go to Microsoft Entra ID**.
4. In the left nav, select **Applications** and then **Enterprise applications**.
5. Choose **App launchers**, then **Settings**.
6. In the **Microsoft 365 settings** section, choose **Add application**.
7. Choose the applications you want to pin to the users' app launcher, and then choose **Add**.

### Pin a custom app

> [!NOTE]
> The user interface will indicate if you need need to purchase additional Microsoft Entra ID licenses to use this feature. For more information see [Microsoft Entra pricing](https://azure.microsoft.com/pricing/details/active-directory/).

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.
2. In the left nav, choose **Show all**, and under **Admin centers**, choose **Microsoft Entra**.
3. In Microsoft Entra admin center, under **Microsoft Entra ID (Azure AD)**, choose **Go to Microsoft Entra ID**.
4. In the left nav, select **Applications** and then **Enterprise applications**.
5. On the **All applications** page, select an existing application or choose **New application**.
6. If you choose an existing application, follow the steps to add users and groups, provision users and secure access.
7. If you choose an existing application, follow the steps to create the new application and then follow the steps to add users and groups, provision users and secure access.

## Create application collections

You can also create application collections for the users in your organization. For instructions, see [create collections on the My Apps portal in the Azure portal](/azure/active-directory/manage-apps/access-panel-collections).
