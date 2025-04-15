---
title: Configure privacy settings in Microsoft Whiteboard
ms.author: alexfaulkner
author: johnddeweese
manager: alexfaulkner
ms.reviewer: 
ms.date: 07/05/2022
audience: admin
ms.topic: how-to
ms.custom: 
ms.service: whiteboard
search.appverid: MET150
ms.collection: essentials-privacy
ms.localizationpriority: medium
description: Learn about compliance and how to configure privacy settings in Microsoft Whiteboard.
---

# Configure privacy settings in Microsoft Whiteboard

>[!NOTE]
> If you or your users want to learn more about default privacy settings, optional connected experiences, and how diagnostic data is collected, direct them to [Microsoft Whiteboard privacy and compliance](https://support.microsoft.com/office/privacy-and-compliance-ed9f0de9-71be-44c2-837d-e0f448660be1).

If you're the Microsoft Whiteboard administrator for your organization, you can control the following settings:

- What level of diagnostic data is collected and sent to Microsoft about the Whiteboard client software running on the user’s device.

- Whether optional connected experiences in Whiteboard are available to your users.

In order to configure privacy settings, you must first ensure that Whiteboard is enabled for your organization. For more information, see [Manage access to Whiteboard](manage-whiteboard-access-organizations.md).


To configure the level of diagnostic data, sign in to the [Microsoft 365 admin center](/microsoft-365/admin/admin-overview/admin-center-overview) with your administrator account. From the admin center home page, go to **Show all > Settings > Org settings > Whiteboard**.

To configure the availability of optional connected experiences, use the [Office cloud policy service](/deployoffice/admincenter/overview-office-cloud-policy-service) in the [Microsoft 365 Apps admin center](https://config.office.com). Sign in with your administrator account and go to **Customization > Policy Management**. The policy you want to configure is named: **Allow the use of additional optional connected experiences in Office**.

## Diagnostic data setting for your organization

You can choose the level of diagnostic data that is collected and sent to Microsoft about the Whiteboard client software running on devices in your organization. Optional diagnostic data will be sent to Microsoft, unless you change the setting in the Microsoft 365 admin center. If you choose to send optional diagnostic data, required diagnostic data is also included.

In addition to **Required** or **Optional**, there's also a choice of **Neither**. If you choose that option, no diagnostic data about Whiteboard client software running on the user’s device is sent to Microsoft. This option, however, significantly limits Microsoft’s ability to detect, diagnose, and remediate problems that your users may encounter while using Whiteboard.

Your users won’t be able to change the diagnostic data level for their devices if they're signed in to Whiteboard with their organizational credentials (sometimes referred to as a work or school account). But if they're signed in to Whiteboard with a Microsoft account, such as a personal outlook.com email address, then they can change the diagnostic data level on their devices by going to **Settings > Privacy and security**.

## Optional connected experiences setting for your organization

You can choose whether to make optional connected experiences in Whiteboard available to your users. These connected experiences will be available to your users unless you change the setting in the Microsoft 365 admin center. 

These connected experiences are different because they aren't covered by your organization’s commercial agreement with Microsoft. Optional connected experiences are offered by Microsoft directly to your users and are governed by the [Microsoft Services Agreement](https://www.microsoft.com/servicesagreement) instead of the [Online Services Terms](https://www.microsoft.com/licensing/product-licensing/products).

Even if you choose to make these optional connected experiences available to your users, your users can turn them off as a group by going to **Settings > Privacy and security**. Your users only have this choice if they're signed into Whiteboard with their organizational credentials, also known as a work or school account. Users can't change privacy settings if they're signed in with a Microsoft account, such as a personal outlook.com email address.

## Required diagnostic data events collected by Whiteboard

The following are the required diagnostic data events collected by Whiteboard, including a list of data fields in each event.

**Intentional.CanvasObject.Ink.DrawFirstStroke**

Collected the first-time ink is added to a board in Microsoft Whiteboard. This information is critical to catch errors associated with adding ink to a board. Microsoft is using this data to diagnose the issue in order to guarantee Microsoft Whiteboard is running as expected.

- **Action** – type of ink stroke
- **Source** – input method for ink stroke

**Intentional.SurfSide.ActivationProtocol.LoadFromUri**

Collected every time when Microsoft Whiteboard is launched by a call from another application or process. This information is critical to catch if Whiteboard doesn't launch when properly invoked by another application or process. Microsoft is using this data to diagnose the issue in order to guarantee Microsoft Whiteboard is running as expected.

- **ApplicationExecutionState** – execution state of app when activation protocol happens
- **IsSignedIn** – user is authentication status
- **Kind** – application or process that is launching Whiteboard

**Intentional.Whiteboard.Init.DisplayWhiteboard**

Collected the first time Microsoft Whiteboard is displayed on a client per a session. This information is critical to catch launching issues. Microsoft is using this data to diagnose the issue in order to guarantee Microsoft Whiteboard is running as expected.

- **IsPrelaunched** – prelaunch status
- **IsProtocolActivation** – application launch type

**Intentional.Whiteboard.Init.StartApp**

Collected every time when Microsoft Whiteboard launches after the previous state ended without crashing. This information is critical to catch crashing issues. Microsoft is using this data to diagnose the issue in order to guarantee Microsoft Whiteboard is running as expected.

- **First Start** – first time app was launched on client

**Intentional.Whiteboard.KeyCategory.UseCategory**

Collected every time a feature is used for the first time (and the first time only) per user/session/whiteboard in Microsoft Whiteboard. This information is critical to make sure the key categories are used. Microsoft is using this data to diagnose the issue in order to guarantee Microsoft Whiteboard is running as expected.

- **CategoryName** – Name of the key category

**Intentional.Whiteboard.KeyFeature.UseFeature**

Collected every time a feature is used for the first time (and the first time only) per user/session/whiteboard in Microsoft Whiteboard. This information is critical to make sure the features are called and used. Microsoft is using this data to diagnose the issue in order to guarantee Microsoft Whiteboard is running as expected.

- **FeatureName** – Name of the key feature

**Intentional.Whiteboard.SafeBoot.StartApp**

Collected every time when Microsoft Whiteboard launches after the previous state ended in a crash. This information is critical to catch crashing issues. Microsoft is using this data to diagnose the issue in order to guarantee Microsoft Whiteboard is running as expected.

- **First Start** – first time app was launched on client

**Intentional.Whiteboard.Scrub.LoadSettings**

Collected every time when Microsoft Whiteboard launches. This information is critical to catch errors associated with user configured settings. Microsoft is using this data to diagnose the issue in order to guarantee Microsoft Whiteboard is running as expected.

- **ActivePen** – pen mode state
- **CollectFullTelemetryWithoutSignIn** – full telemetry collection without sign-in enablement
- **DefaultWhiteboardBackgroundColor** – default board background color
- **DefaultWhiteboardBackgroundPattern** – default board background pattern
- **FlightStatus** – flight status
- **InkToShape** – ink to shape enablement
- **InkToTable** – ink to table enablement
- **SignInEnabled** – user sign-in enablement
- **SharingWithoutSignInEnabled** – sharing board enablement
- **ToolbarLocation** – default toolbar location on screen
- **TeamSettingsSource** – Teams settings enablement
