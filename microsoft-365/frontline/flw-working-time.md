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

With this feature, you can block access or show a warning message when frontline workers who are off shift open Teams. Consider enabling working time for your frontline workforce if:

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

### Connect your workforce management (WFM) system to the workingTimeSchedule API

#### Create an application

1. Create an application in Microsoft Entra ID for the [workingTime](/graph/api/resources/workingtimeschedule?view=graph-rest-beta) Graph API.

    Add it as a single tenant so that it can only be used in the tenant of your organization. To learn more about how to register an application, see [Register an application with the Microsoft identity platform](/entra/identity-platform/quickstart-register-app).
1. Add the hidden application permission for calling the Graph API using the required scope, `Schedule-WorkingTime.ReadWrite.All`.
    1. Sign in to your application in the Azure portal.
    1. Go to the **Manifest** tab. You'll see a JSON that contains the complete definition of your application.
    1. At the end of the manifest, add the `requiredResourceAccess` property.

        This property specifies the set of permission scopes and app roles that your application requires access to. In other words, it contains all the APIs that your application can call. If this property is already present in the manifest, your API has some permissions already granted to it.

        Inside the array, add an object to specify permisssions of the Graph application, whose ID is 00000003-0000-0000-0000-c000-0000000000000000.

        > [!NOTE]
        > If you already have an object with this same ID inside your `requiredResourceAccess` array, you only have to add the following inside the `resourceAccess` array:
        > - An object with the ID of the new hidden permission, 0b21c159-dbf4-4dbb-a6f6-490e412c716e.
        > - The type of permission. In this case, `Role`.

#### Preconsent the application

#### Call Graph from the application

## Set up quiet time

This step is optional but recommended.

Configure quiet time policies in Intune to automatically mute Teams notifications for frontline workers during nonworking hours. Learn more about how to [create quiet time policies](/mem/intune/apps/apps-quiet-time-policies).

## Frequently asked questions

**Do I need to use the Shifts app in Teams to take advantage of this feature?**

No, this feature relies on the clock in/out signal from your WFM.

**Can I use working time if I don't have a clock in/out system in place?**

No, a clock in/out signal is required to use this feature.

## Related articles
