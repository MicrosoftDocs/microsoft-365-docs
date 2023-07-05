---
title: "Pin apps to your users' app launcher"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 08/28/2020
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

You can use controls in the Azure Active Directory portal to pin up to three apps to Microsoft365.com and the app launcher for all the users in your organization. You can also organize groups of applications. Any app you add can later be unpinned by the user at any time. To pin an app for your users, you must be a Cloud application administrator, or Application administrator in Azure Active Directory, or a Global administrator in Microsoft 365. For more information about admin roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference) and [admin roles in Microsoft 365](../add-users/about-admin-roles.md). 

For more information about the app launcher and Microsoft365.com, see [meet the app launcher](https://support.microsoft.com/office/79f12104-6fed-442f-96a0-eb089a3f476a) and [updates to office.com and the-Office 365 app launcher](https://techcommunity.microsoft.com/t5/office-365-blog/updates-to-office-com-and-the-office-365-app-launcher/ba-p/1150503) blog article.

## Use the Azure Active Directory portal to pin apps

> [!NOTE]
> Microsoft 365 apps are excluded from this list since they’re already displayed in the App launcher.

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.
2. In the left nav, choose **Show all**, and under **Admin centers**, choose **Azure Active Directory**.
3. In **Azure Active Directory**, choose **Enterprise applications** > **App launchers** > **Settings**.
4. In the **Microsoft 365 settings** section, choose **Add application**.
5. Choose the applications you want to pin to the users' app launcher, and then choose **Add**.

### Pin a custom app

> [!NOTE]
> The user interface will indicate if you need need to purchase additional Azure AD licenses to use this feature. For more information see [Azure Active Directory pricing](https://azure.microsoft.com/pricing/details/active-directory/).

1. In **Azure Active Directory**, choose **Enterprise applications** > **New application** on the top of the **All applications** page.
2. On the **Add an application** page, choose **Non-gallery application** or **Create your own application** if you are in the preview version of Azure Active Directory. 
3. Type a name for the application and then assign user in the **Users and groups** tab.
4. Use the **Properties** tab to upload an icon for the app.
5. To assign a URL to the app, in the **Single sign-on** tab, choose **Linked** and then enter a URL.
6. Choose **Save**.

## Create application collections

You can also create application collections for the users in your organization. For instructions, see [create collections on the My Apps portal in the Azure portal](/azure/active-directory/manage-apps/access-panel-collections).
