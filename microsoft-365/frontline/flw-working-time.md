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

Working time is a feature that allows admins to limit access to Microsoft Teams for shift workers on Android and iOS mobile devices. These controls are designed for bring-your-own-device (BYOD) or 1:1 dedicated device scenarios for frontline workers. [Learn more about frontline device scenarios](flw-devices.md#deployment-models).

Consider enabling working time for your frontline workforce if:

- You’re concerned about frontline workers asking for pay outside of working hours if they access work apps.
- Local laws and regulations require you to restrict access to work apps when employees are off shift.

## How it works

When a frontline worker clocks in to their shift and opens Teams, the app checks whether the worker is on or off shift.

- If the worker is on shift, they can access Teams.
- If the worker is off shift when Teams is open, the worker sees a block or warning screen.
  - If you configured a block screen, the worker can’t access Teams until they clock in to their shift.
  - If you configured a warning screen, the worker can dismiss it and choose whether to continue into the app at their discretion.
- If a worker is using Teams while clocking out, the worker sees a block or warning screen for the app after they clock out.

## Set up working time

To set up working time:

1. [Configure app protection policies for Android and iOS](#configure-app-protection-policies-for-android-and-ios).
1. [Connect your workforce management (WFM) system to the working time API](#connect-your-wfm-system-to-the-working-time-api).

We recommend that you also [create quiet time policies](#set-up-quiet-time-policies) to automatically mute Teams notifications when workers are off shift.

### Configure app protection policies for Android and iOS

Use Microsoft Intune [app protection policies](/mem/intune/apps/app-protection-policies) to configure working time to block or warn access to Teams. For more information about policy settings, see:

- [Android app protection policy settings](/mem/intune/apps/app-protection-policy-settings-android#conditional-launch)
- [iOS app protection policy settings](/mem/intune/apps/app-protection-policy-settings-ios#conditional-launch)

### Connect your WFM system to the working time API

## Set up quiet time policies

This step is optional but recommended.

Configure quiet time policies in Intune to mute Teams notifications for your frontline workers during nonworking hours. Learn more about how to [create quiet time policies](/mem/intune/apps/apps-quiet-time-policies).

## Related articles
