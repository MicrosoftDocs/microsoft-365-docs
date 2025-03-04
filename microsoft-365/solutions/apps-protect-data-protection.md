---
title: "Understand app data protection using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: concept-article
ms.date: 07/10/2024
description: Understand app data protection using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand app data protection

The **Data Protection** settings in Intune determine how users interact with org data and context in policy-managed apps. As the admin, you can control the movement of data into and out of the context of org protection. The org context is defined by documents, services, and sites accessed by the specified org account (Microsoft Entra ID) owned by the end-user. The app protection policy settings help control external data received into the org context and org data sent out of the org context.

> [!NOTE]
> The term *policy-managed apps* refers to apps that are configured with app protection policies.

Data protection is available for policy-managed apps that support the [iOS/iPadOS](/mem/intune/apps/app-protection-policy-settings-ios#data-protection), [Android](/mem/intune/apps/app-protection-policy-settings-android#data-protection), and [Windows](/mem/intune/apps/app-protection-policy-settings-windows#data-protection) platforms. Each platform offers a different set of settings related to data protection.

The **Data Protection** settings within app protection policies provides the following categories for each platform:

| Data Protection  | Categories |
|---|---|
| iOS/iPadOS  | [Data Transfer](#data-transfer-for-iosipados-app-protection-policy), [Encryption](#encryption-for-iosipados-app-protection-policy), [Functionality](#functionality-for-iosipados-and-android-app-protection-policy)  |
| Android | [Data Transfer](#data-transfer-for-android-app-protection-policy), [Encryption](#encryption-for-android-app-protection-policy), [Functionality](#functionality-for-iosipados-and-android-app-protection-policy) |
| Windows | [Data Transfer](#data-transfer-for-windows-app-protection-policy), [Functionality](#functionality-for-windows-app-protection-policy) |

## Data Transfer

### Data Transfer for iOS/iPadOS app protection policy

The **Data Transfer** section of the **Data Protection** settings for a iOS/iPadOS specific app protection policy has settings that are specific to the iOS/iPadOS platform. These settings determine how end-users interact with org data in the iOS/iPadOS apps on a device. You select settings to allow or block iTunes and iCloud backups, determine how apps can send and receive org data, restrict end-user initiated data movement between apps, and prevent third-party keyboards. 

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-02.png" alt-text="Data Transfer UI for iOS/iPadOS." border="false" :::

### Data Transfer for Android app protection policy

The **Data Transfer** section of the **Data Protection** settings for an Android specific app protection policy has settings that are also specific to the Android platform. In addition to the commonly offered app protection settings, Android app protection provides additional settings, such as allowing screen capture and Google Assistant.

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-03.png" alt-text="Data Transfer UI for Android." border="false" :::

### Data Transfer for Windows app protection policy

The **Data Transfer** section of the **Data Protection** settings for a Windows specific app protection policy has settings that are specific to the Windows platform. These DLP settings provide three main options for Android apps. These settings involve how data is received, sent, and moved between apps. 

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-04.png" alt-text="Data Transfer UI for Windows." border="false" :::

## Encryption

Encryption is available for iOS/iPadOS and Android as part of an app protection policy. The **Encryption** section under the **Data Transfer** section, is also part of the **Data Protection** settings.

> [!IMPORTANT]
> You must choose **Require** to enable encryption of work or school data in an app.

### Encryption for iOS/iPadOS app protection policy

 Intune enforces iOS/iPadOS device encryption to protect app data while the device is locked. Applications may optionally encrypt app data using Intune APP SDK encryption. Intune APP SDK uses iOS/iPadOS cryptography methods to apply 256-bit AES encryption to app data.

When you enable this setting, the user may be required to set up and use a PIN to access their device. If there's no device PIN and encryption is required, the user is prompted to set a PIN with the message "Your organization has required you to first enable a device PIN to access this app."

> [!NOTE]
> Go to the official Apple documentation to see which iOS encryption modules are FIPS 140-2 compliant or pending FIPS 140-2 compliance.

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-05.png" alt-text="Encryption UI for iOS/iPadOS." border="false" :::

### Encryption for Android app protection policy

Intune uses a wolfSSL, 256-bit AES encryption scheme along with the Android Keystore system to securely encrypt app data. Data is encrypted synchronously during file I/O tasks. Content on the device storage is always encrypted. New files will be encrypted with 256-bit keys. Existing 128-bit encrypted files will undergo a migration attempt to 256-bit keys, but the process is not guaranteed. Files encrypted with 128-bit keys will remain readable.

> [!NOTE]
> The encryption method is FIPS 140-2 compliant.

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-06.png" alt-text="Encryption UI for Android." border="false" :::

## Functionality

The **Functionality** section is the last section in the **Data Protection** settings of an app protection policy. This section provides additional data protection settings. 

> [!TIP]
> Apps may provide additional configuration capability with app configuration policies. For more information, see the app developer's documentation.

### Functionality for iOS/iPadOS and Android app protection policy

For iOS/iPadOS and Android app protection policies, you can choose to block policy managed apps from saving data to the device's native apps (like Contacts, Calendar and widgets), or to prevent the use of add-ins within the policy managed apps. If you choose **Allow**, the policy managed app can save data to the native apps or use add-ins, if those features are supported and enabled within the policy managed app.

Additionally, you can allow or block printing org data, restrict web content transfer with other apps, and determine how org data notifications are handled. When you restrict transferring web content, consider allowing web content to open only in Microsoft Edge. 

> [!NOTE]
> Android and iOS/iPadOS offer sightly different options when restricting transferring web content using app protection policies. For iOS/iPadOS, you can enter a specific protocol for a single unmanaged browser. For Android, You can enter an unmanaged browser ID, or an unmanaged browser name.

You'll see that iOS/iPadOS offer slightly different app protection functionality:

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-07.png" alt-text="Functionality UI for iOS/iPadOS." border="false" :::

Android offers similar functionality to iOS/iPadOS functionality:

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-08.png" alt-text="Functionality UI for Android." border="false" :::

Additionally, Android allows you to select a connection to Microsoft Tunnel VPN when the app specified by your app protection policy is launched.

### Functionality for Windows app protection policy

For Windows app protection policies, you can choose to allow or block printing org data.

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-09.png" alt-text="Functionality UI for Windows." border="false" :::

> [!IMPORTANT]
> Windows app protection policies allow only Microsoft Edge as the managed app specified in the policy.
