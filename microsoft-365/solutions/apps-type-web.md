---
title: "Understand web apps for a managed environment"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Understand web apps as they apply to a managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand web apps in a managed environment

Intune supports a variety of app types, including web apps and web links. A web app is commonly recognized as a client-server application. A web link is simply a URL to a web page. 

A web app can be complex when it is designed as a client-service application. The server provides the web app, which includes the UI, content, and functionality. Additionally, modern web-hosting platforms commonly offer security, load balancing, and other benefits. A web app is separately maintained on the web. You use Microsoft Intune to point to this app type. You also assign the groups of users that can access this app.

A web link (or web clip) is a URL that displays a web page within a protected browser on the user's device. Intune creates a shortcut to the web app on the user's device. For iOS/iPadOS devices, a shortcut to the web app is added to the home screen. For Android Device Admin devices, a shortcut to the web app is added to the Intune company portal widget and the widget needs to be pinned manually by the user. For Windows devices, a shortcut to the web app is placed on the Start Menu.

> [!NOTE]
> A browser must be installed on the user's device to launch web apps.

| App type | Description |
|---|---|
| iOS/iPadOS web clip | An iOS/iPadOS web clip is a shortcut that you assign to to iOS users or devices. The shortcut contains a URL that opens a browser. |
| Windows web link | A Windows web link is a shortcut that you assign to to Windows users or devices. The shortcut contains a URL that opens a browser. |
| Web link | A Web link is a shortcut that you assign to users or devices running iOS, Android, or Windows. This link is allows you to reach the same web location from multiple platforms (cross platform web app). |
| 'Managed Google PLay web link' | A 'Managed Google PLay web link' is a shortcut that you assign to users or devices running Android. You create this web link from the Managed Google Play app store by selecting **Managed Google Play app** as the app type within Intune. This link is installable and manageable just like other Android apps. |

