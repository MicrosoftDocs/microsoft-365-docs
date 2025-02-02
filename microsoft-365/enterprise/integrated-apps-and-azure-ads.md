---
title: "Integrated apps and Microsoft Entra ID for Microsoft 365 administrators"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/06/2024
audience: Admin
ms.topic: conceptual
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
- M365-subscription-management
- must-keep
search.appverid:
- MET150
- MOE150
- BCS160
ms.assetid: cb2250e3-451e-416f-bf4e-363549652c2a
description: Learn how to register and administer Office 365 integrated Apps in Microsoft Entra ID, allowing for app authorizations at the **Microsoft Entra DC admin**, or **Global admin** level.
---

# Integrated apps and Microsoft Entra ID for Microsoft 365 administrators

There's more to managing integrated apps than just [managing user consent to apps](../admin/misc/user-consent.md). With the advent of the Microsoft 365 REST APIs, users can grant apps access to their Microsoft 365 data, such as mail, calendars, contacts, users, groups, files, and folders. By default, users need to individually grant permissions to each app.

But this doesn't scale well if you want to authorize an app once at the **Microsoft Entra DC admin**, or **Global admin** level and roll it out to your whole organization through the app launcher. To do this, you must register the app in Microsoft Entra ID. There are some steps you need to take before you can register an app in Microsoft Entra ID and some background information you should know that can help you manage apps in your Microsoft 365 organization.
  
<a name='azure-ad-resources-for-microsoft-365-admins'></a>

## Microsoft Entra resources for Microsoft 365 admins

You have to do these two tasks before you can manage your Microsoft 365 apps in Microsoft Entra ID.
  
|Prerequisites|Comments|
|:-----|:-----|
|[Use your free Microsoft Entra subscription](../compliance/use-your-free-azure-ad-subscription-in-office-365.md) <br/> |Every paid subscription to Microsoft 365 comes with a free subscription to Microsoft Entra ID. You can use Microsoft Entra ID to manage your apps and to create and manage user and group accounts. To use Microsoft Entra ID, just go to the Azure portal at [https://portal.azure.com](https://portal.azure.com) and sign in using your Microsoft 365 account.  <br/> |
|[Manage user consent to apps](../admin/misc/user-consent.md) <br/> |You must manage user consent to apps to allow third-party apps to access user Microsoft 365 information and for you to register apps in Microsoft Entra ID. For example, when someone uses a third-party app, that app might ask for permission to access their calendar and to edit files that are in a OneDrive folder.  <br/> |

Managing Microsoft 365 apps requires you to have knowledge of apps in Microsoft Entra ID. Use these articles to give you the background you need.
  
|Article|Comments|
|:-----|:-----|
|[Meet the Microsoft 365 app launcher](https://support.microsoft.com/office/meet-the-microsoft-365-app-launcher-79f12104-6fed-442f-96a0-eb089a3f476a) <br/> |If you're new to the app launcher, you might be wondering what it is and how to use it. The app launcher is designed to help you get to your apps from anywhere in Microsoft 365.  <br/> |
|[Office 365 management APIs overview](/office/office-365-management-api/office-365-management-apis-overview) <br/> |The Microsoft 365 management APIs let you provide access to your Microsoft 365 data, including the things they care about most—their mail, calendars, contacts, users and groups, files, and folders. <br/> |
|[Integrating applications in Microsoft Entra ID](/azure/active-directory/develop/quickstart-v1-add-azure-ad-app) <br/> | Learn about applications that are integrated with Microsoft Entra ID, and how to register your application, understand concepts behind a registered application, and learn about branding guidelines for multi-tenant applications.  <br/> |
|[Add custom tiles to the app launcher](/office365/admin/manage/customize-the-app-launcher)  <br/> |The app launcher in Microsoft 365 makes it easier for users to find and access their apps. This article describes the ways you as a developer can get your apps to appear in users' app launchers and also give them a single sign-on (SSO) experience using their Microsoft 365 credentials.  <br/> |
|[Microsoft Entra integration tutorials](/azure/active-directory/saas-apps/tutorial-list) <br/> |The objective of these tutorials is to show you how to configure Microsoft Entra SSO for third-party SaaS applications.  <br/> |
|[Authentication scenarios for Microsoft Entra ID](/azure/active-directory/develop/authentication-vs-authorization) <br/> |Microsoft Entra ID simplifies authentication for developers by providing identity as a service, with support for industry-standard protocols such as OAuth 2.0 and OpenID Connect, as well as open source libraries for different platforms to help you quickly start coding. This document helps you understand the various scenarios Microsoft Entra ID supports and shows you how to get started.  <br/> |
|[Application access](/azure/active-directory/manage-apps/what-is-access-management) <br/> |Microsoft Entra ID enables easy integration to many of today's popular software as a service (SaaS) applications. It provides identity and access management, and it delivers an Access Panel for users where they can discover what application access they have and where they can use SSO to access their applications. This article provides you with links to the related resources that enable you to learn more about the application access enhancements for Microsoft Entra ID and how you can contribute to them.  <br/> |
|[Personalize your Office 365 experience](https://support.microsoft.com/office/personalize-your-office-365-experience-eb34a21b-52fa-4fbf-a8d5-146132242985) <br/> |You can get quick access to the apps you use every day by adding or removing apps in the Microsoft 365 app launcher.  <br/> |
