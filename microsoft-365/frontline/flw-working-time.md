---
title: Limit access to Microsoft Teams when frontline workers are off shift
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: aaglick
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to set up the working time feature to limit access to Teams when frontline workers are off shift.  
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date:

---

# Limit access to Microsoft Teams when frontline workers are off shift

## Overview

Working time is a feature that allows admins to limit access to Microsoft Teams for shift workers on Android and iOS mobile devices. These controls are designed for bring-your-own-device (BYOD) or company-owned dedicated device scenarios for frontline workers. [Learn more about frontline device scenarios](flw-devices.md#deployment-models).

With this feature, you can block access to or show a warning message when frontline workers who are off shift open Teams. Consider enabling working time for your frontline workforce if:

- You’re concerned about frontline workers asking for pay outside of working hours if they access work apps.
- Local laws and regulations require you to restrict access to work apps when employees are off shift.

## How it works

When a frontline worker clocks in to their shift and opens Teams, the app checks whether the worker is on or off shift.

- If the worker is on shift, they can access Teams.
- If the worker is off shift when Teams is open, the worker sees a block or warning screen.
  - If you configured a block screen, the worker can’t access Teams until they clock in to their shift.
  - If you configured a warning screen, the worker can dismiss it and choose whether to use Teams at their discretion.
- If a worker is using Teams while clocking out, the worker sees a block or warning screen for the app after they clock out.

:::image type="content" source="media/working-time.png" alt-text="Screenshot of the block access screen and the warning screen.":::

Along with working time, we recommend that you also set up quiet time to automatically mute Teams notifications when workers are off shift.

## Set up working time

Follow these steps to enable working time for your frontline.

### Configure app protection policies for Android and iOS

Use Microsoft Intune [app protection policies](/mem/intune/apps/app-protection-policies) to configure working time to block or warn access to Teams on Android and iOS devices. For more information about policy settings, see:

- [Android app protection policy settings - Conditional launch](/mem/intune/apps/app-protection-policy-settings-android#conditional-launch)
- [iOS app protection policy settings - Conditional launch](/mem/intune/apps/app-protection-policy-settings-ios#conditional-launch)

### Connect your workforce management system to the working time API

## Set up quiet time

This step is optional but recommended.

Configure quiet time policies in Intune to automatically mute Teams notifications that frontline workers received when they're off shift. Learn more about how to [create quiet time policies](/mem/intune/apps/apps-quiet-time-policies).

## Frequently asked questions

**Do I need to use the Shifts app in Teams to take advantage of this feature?**

No, this feature relies on the clock in/out signal from your WFM.

**Can I use working time if I don't have a clock in/out system in place?**

No, a clock in/out signal is required to use this feature.

## Related articles
