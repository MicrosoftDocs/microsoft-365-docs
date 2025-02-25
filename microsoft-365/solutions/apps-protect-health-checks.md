---
title: "Understand app protection health checks using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: concept-article
ms.date: 03/29/2024
description: Understand app protection health checks using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand app protection health checks

Much like **Conditional Launch** settings for iOS/iPadOS and Android app protection policies, **Health checks** for Windows app protection policies allow you to also configure conditional launch capabilities. To do this, you must set the health check conditions for your app protection policy. Select a **Setting** and enter the **Value** that users must meet to access your org data. Then select the **Action** you want to take if users do not meet your conditionals. In some cases, multiple actions can be configured for a single setting.

## Health checks for Windows app protection policy

Windows app condition settings allow similar settings configuration to the other supported platforms, however you cannot set a **Max PIN attempts**. 

| App   condition setting | Windows | iOS/iPadOS | Android |
|:---:|:---:|:---:|:---:|
| Max PIN attempts | ✖  | ✔ | ✔ |
| Office grace period | ✔ | ✔ | ✔ |
| Min app version | ✔ | ✔ | ✔ |
| Max SDK version | ✔ | ✔ | ✖ |
| Disabled account | ✔ | ✔ | ✔ |

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-14.png" alt-text="Health checks for Windows - App conditions." border="false" :::

Windows device condition settings are also available for Windows app protection settings.

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-16.png" alt-text="Health checks for Windows - Device conditions." border="false" :::
