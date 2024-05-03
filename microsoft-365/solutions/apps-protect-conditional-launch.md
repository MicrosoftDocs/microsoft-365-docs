---
title: "Understand app protection conditional launch using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 03/29/2024
description: Understand app protection conditional launch using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand app protection conditional launch

The **Conditional launch** settings allow you to select the sign-in security requirements for your access protection policy. App protection policies offer both app and device conditions.

You must select a setting and enter the value that users must meet to sign in to your company app. Then select the Action you want to take if users don't meet your requirements. In some cases, multiple actions can be configured for a single setting. Learn more about conditional launch actions.

Conditional launch settings offer similarities between iOS/iPadOS and Android. 

## Conditional launch for iOS/iPadOS and Android app protection policy

iOS/iPadOS app conditional settings allow the similar settings configuration as Android, however you can also set a **Min SDK version** for iOS/iPadOS. 

| App   condition setting | iOS/iPadOS | Android |
|:---:|:---:|:---:|
| Max PIN attempts | ✔ | ✔ |
| Office grace period | ✔ | ✔ |
| Min app version | ✔ | ✔ |
| Max SDK version | ✔ | ✖ |
| Disabled account | ✔ | ✔ |

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-12.png" alt-text="Conditional launch UI for iOS/iPadOS." border="false" :::

In addition, Android device condition settings offer several more setting configuration options compared to iOS/iPadOS.

| Device   condition setting | iOS/iPadOS | Android |
|:---:|:---:|:---:|
| Jailbroken/rooted devices | ✔ | ✔ |
| Min OS version | ✔ | ✔ |
| Max OS version | ✔ | ✔ |
| Min patch version | ✔ | ✔ |
| Device model(s) | ✔ | ✖ |
| Device manufacturer(s) | ✖ | ✔ |
| SafetyNet device attestation | ✖ | ✔ |
| Require threat scan on apps | ✖ | ✔ |
| Required SafetyNet evaluation   type | ✖ | ✔ |
| Require device lock | ✖ | ✔ |
| Min Company Portal version | ✖ | ✔ |
| Max Company Portal version age   (days) | ✖ | ✔ |
| Samsung Knox device   attestation | ✖ | ✔ |
| Max allowed device threat   level | ✔ | ✔ |
| Primary MTD service | ✔ | ✔ |

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-13.png" alt-text="Conditional launch UI for Android." border="false" :::

