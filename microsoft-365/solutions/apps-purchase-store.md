---
title: "Purchase store apps in Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Purchase store apps in Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Purchase store apps in Intune

Many of the standard store apps displayed from within Microsoft Intune are freely available for you to add and deploy to members of your organization. In addition, you can purchase store apps for each device platform.

:::image type="content" source="../media/purchase-add-managed-apps/purchase-add-managed-apps-14.png" alt-text="iOS store apps in Microsoft Intune." border="false" :::

The following table provides the different categories available for store apps:

| Store   app category | Description |
|---|---|
| Free store apps | You can freely add these apps to Intune and deploy them to the members of your organization. These apps don't require any additional cost to use. To add a free store app to Intune, see [Add apps to Microsoft Intune Overview](apps-add-overview.md).  |
| Purchased apps | You must purchase licenses for these apps before adding to Intune. The iOS device platform offers a standard method to purchase licenses for apps that you use with Intune. Intune provides methods to manage the app license for each end user. For more information about purchasing apps for each device platform, see [Purchase apps in-volume for Intune](apps-purchase-volume.md). |
| Apps requiring an account, subscription, or license from the app developer | You can freely add and deploy these apps from Intune, however the app may require an account, subscription, or license from the app vendor. For a list of apps that support Intune management functionality, see [Partner productivity apps](/mem/intune/apps/apps-supported-intune-apps#partner-productivity-apps) and [Partner UEM apps](/mem/intune/apps/apps-supported-intune-apps#partner-uem-apps). <b>**NOTE:** For apps that may require an account, subscription, or license, you must contact the app vendor for specific app details.   |
| Apps included with your Intune license | The license you use with Microsoft Intune may include the app licenses your organization requires. For more information, see [Microsoft app licenses included with Intune](apps-license-overview.md#microsoft-app-licenses-included-with-intune).  |

> [!NOTE]
> In addition to purchasing app licenses, you can create Intune policies that allow end users to add personal accounts to their devices to purchase unmanaged apps.

## Add store apps based on platform

You can use Intune to display apps that are either freely available, or available because you have a license for the app.

The following table lists the specific store app types and how you can add them to Intune from the **Select app type** pane:

| **App type** | **General type** | **Device platform** | **App-specific procedures** |
| --- | --- | --- |
| Android store apps  | Store app  | Android | Select **Android store app** as the **App type**, click **Select**, then enter the Google Play store URL for the app. |
| iOS/iPadOS store apps  | Store app  | iOS/iPadOS | Select **iOS store app** as the **app type**, search for the app, and select the app in Intune. |
| Microsoft Store apps  | Store app  | Windows | Select **Microsoft Store app** as the **app type**, and search the Microsoft Store for the app. <br>**NOTE:** For legacy store apps, you must enter a Microsoft Store URL. |
| Managed Google Play apps | Store app  | Android Enterprise | Select **Managed Google Play** as the **app type**, search for the app, and select the app in Intune. Managed Google Play apps must be approved using your Google account. Then, Intune must sync with the Managed Google Play store before you can select these apps in Intune. |
| Android Enterprise apps  | Store app  | Android  | Select **Managed Google Play** as the **app type**, search for the app, and select the app in Intune. |
| Microsoft 365 apps for Windows 10 and later  | Store app (Microsoft 365) | Windows | Select **Windows 10 and later** under **Microsoft 365 Apps** as the **app type**, and then select the Microsoft 365 app that you want to install.  |
| Microsoft 365 apps for macOS | Store app (Microsoft 365) | Windows | Select **macOS** under **Microsoft 365 Apps** as the **app type**, and then select the Microsoft 365 app suite. |
| Microsoft Edge, version 77 and later for Windows 10 and later | Store app | Windows | Select **Windows 10 and later** under **Microsoft Edge, version 77 and later** as the **app type**. |
| Microsoft Edge, version 77 and later for macOS | Store app | Windows | Select **macOS** under **Microsoft Edge, version 77 and later** as the **app type**. |
| Microsoft Defender for Endpoint (macOS) | Store app (Microsoft Defender ATP) | macOS | Select **macOS** under **Microsoft Defender for Endpoint** as the app type and then continue by setting up the app in Intune.  |

You can add an app in from [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) in the **Apps** workload. You can find free apps in the apps store by selecting **Search the App Store**.

:::image type="content" source="../media/purchase-add-managed-apps/purchase-add-managed-apps-15.png" alt-text="Search an app store in Intune." border="false" :::

> [!NOTE]
> The Managed Google Play store only supports free apps. Standard Google apps are added to Intune as a **Android store app**. To add a **Managed Google Play app**, you must find and approve the app from the Managed Google Play store, then sync the app with Intune. For more information, see [Managed Google Play](apps-purchase-volume.md#managed-google-play).

## Removing store limitations

An Android Enterprise fully managed device won't allow employees to install any apps that aren't approved by the organization. Also, employees won't be able to remove any installed apps against policy. If you wish to allow users to access the full Google Play store to install apps rather than only having access to the approved apps in Managed Google Play store, you can set the **Allow access to all apps in Google Play store** to **Allow**. With this setting, the user can access all the apps in the Google Play store using their corporate account, however purchases may be limited. You can remove the limited purchases restriction by allowing users to add new accounts to the device. Doing so enables end users to have the ability to purchase apps from the Google Play store using personal accounts, and conduct in-app purchases. For more information, see [Android Enterprise device settings to allow or restrict features using Intune](/mem/intune/configuration/device-restrictions-android-for-work).
