---
title: "Secure and protect apps using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Secure and protect apps using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Secure and protect apps using Microsoft Intune

Once you've [set up and deployed the capabilities of Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune), [added the apps you want to manage to Intune](/microsoft-365/solutions/apps-add-overview), and [configured the apps that you manage in Intune](/microsoft-365/solutions/apps-config-overview), you can begin the process of creating app protection policies. App protection policies (APP) are rules that ensure your organization's data remains safe and contained in a managed app. These policies enforce how your end-users access or move "corporate" data and control actions that are prohibited or monitored when the user is using the app. This enforcement and control allow you to control how data is accessed and shared by apps on mobile devices. 

Managed apps are apps that you have assigned to users via a unified endpoint management provider, such as Intune. Managed apps support app protection policies, as well as app configuration policies. These apps use mobile application management (MAM) that is provided by the unified endpoint management provider. MAM enables organizations to manage and protect their data within an application. A managed app in Intune is a [protected app](/mem/intune/apps/apps-supported-intune-apps) that has Intune app protection policies applied to it and is assigned and managed by Intune. A managed app has either integrated the Intune App SDK or has been wrapped using the Intune Wrapping Tool to support App Protection Policies (APP) and/or app configuration policies. You can use MAM policies to configure and protect apps on unmanaged devices, which are your end-user's personal devices that are not enrolled in Intune. 

Using app protection policies provides the benefit of protecting your organization's data at the app level. For end-users, productivity isn't affected and app protection policies don't apply when end-users are using the app in a personal context. There are several situations where you commonly should use app protection policies. For instance, if your end-users is using their personal device, you may want to use an app protection policy to control the access to the app by using a PIN. You may want to enforce data sharing restrictions that that your organization's data isn't shared with non-managed apps. Also, you may want to prevent end-users from saving organization data to personal locations.

Organizations can use app protection policies with and without Mobile Device Management (MDM) at the same time. For example, consider an end-user (employee) that uses both a phone issued by the company, and their own personal tablet. The organization issued phone is enrolled in MDM and protected by app protection policies, while the personal device is protected by app protection policies only.

## Supported platforms

There are three primary platforms that are supported when creating an app protection policy in Intune.

| Platform | Description |
|---|---|
| iOS/iPadOS | You can apply app protection policies to iOS/iPadOS apps that has been   developed to support Intune app protection capabilities. For more   information, see [iOS app protection policy settings in Microsoft   Intune](/mem/intune/apps/app-protection-policy-settings-ios). |
| Android | You can apply app protection policies to Android apps that has   been developed to support Intune app protection capabilities. For more   information, see [Android app protection policy settings   in Microsoft Intune](/mem/intune/apps/app-protection-policy-settings-android). |
| Windows | Currently, you can apply app protection policies to Microsoft Edge for   Windows devices. Using Microsoft Edge, you can control how your   organization's data is access. You can apply app protection to Windows   devices based on data protection and health checks settings. Data protection   settings allow you to control how the movement of data into and out of your   organization (org) context. The org context is defined by documents,   services, and sites accessed by the specified org account. You can use app   protection policy settings to help control external data received into the   org context and org data sent out of the org context. These settings include   receiving and sending org data. Also, you can implement Data Loss Prevention   (DLP) controls, like cut, copy, paste, and save-as restrictions.   Additionally, you can allow or block printing of org data. For more   information, see [App protection policy settings for   Windows](/mem/intune/apps/app-protection-policy-settings-windows). |

For a more information about supported platforms, see [App management capabilities by platform](/mem/intune/apps/app-management#app-management-capabilities-by-platform). 

## Supported apps

For iOS/iPadOS and Android platforms, you can apply app protection policies to any managed app that has been developed to support Intune app protection capabilities. The managed app has either integrated the [Intune App SDK](/mem/intune/developer/app-sdk) or has been wrapped using the [Intune App Wrapping Tool](/mem/intune/developer/apps-prepare-mobile-application-management#intune-app-wrapping-tool). For the Windows platform, you can enable data protection of corporate data on personal Windows devices using [Windows MAM](/mem/intune/apps/protect-mam-windows). Windows MAM is where you apply app protection policies to Microsoft Edge for Windows. Microsoft Edge, as well as most Microsoft applications, have been integrated to support Intune by using the Intune App SDK.

## App protection

App protection can be applied to supported managed apps on supported platform devices that are either enrolled with Microsoft Intune, enrolled in a third-party Mobile device management (MDM) solution, or are not enrolled in any mobile device management solution. When creating an app protection policy, you choose the following details in the following order:

1. The platform
2. The app you want to protect
3. The data protection settings for the app
4. The access requirements for the app
5. The conditional launch settings for the app

In addition to the above list, you can also choose scope tags and app assignments.

### App protection categories by platform

Different app protection settings are available for each supported platform. It is important to recognize that the iOS/iPadOS and Android platform have the same app protection categories. However, Windows is different. The Windows platform protects organization data by managing the flow of data through Microsoft Edge to your organization's storage locations.

| Platform  | App protection categories |
|---|---|
| iOS/iPadOS  | Data protection, Access requirements, Conditional launch |
| Android | Data protection, Access requirements, Conditional launch |
| Windows | Data protection, Health checks |

When you create an app protection policy, you choose the platform, the app to target, as well as the specific settings from the app protection categories.

### Data protection

The **Data Protection** settings determine how users interact with org data and context in policy-managed apps. As the admin, you can control the movement of data into and out of the context of org protection. The org context is defined by documents, services, and sites accessed by the specified org account (Microsoft Entra ID) owned by the end-user. The app protection policy settings help control external data received into the org context and org data sent out of the org context.

> [!NOTE]
> The term *policy-managed apps* refers to apps that are configured with app protection policies.

Data protection is available for policy-managed apps that support the [iOS/iPadOS](/mem/intune/apps/app-protection-policy-settings-ios#data-protection), [Android](/mem/intune/apps/app-protection-policy-settings-android#data-protection), and [Windows](/mem/intune/apps/app-protection-policy-settings-windows#data-protection) platforms. Each platform offers a different set of settings related to data protection.

Data protection has three primary categories:

| Data Protection  | Categories |
|---|---|
| iOS/iPadOS  | Data Transfer, Encryption, Functionality  |
| Android | Data Transfer, Encryption, Functionality |
| Windows | Data Transfer, Functionality |

#### Data Transfer

**iOS/iPadOS app protection policy**:

The **Data Transfer** section of the **Data Protection** settings for a iOS/iPadOS specific app protection policy has settings that are specific to the iOS/iPadOS platform. These settings determine how end-users interact with org data in the apps. You select settings to allow or block iTunes and iCloud backups, determine how apps can send and receive org data, restrict end-user initiated data movement between apps, and prevent third-party keyboards. 

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-02.png" alt-text="Data Transfer UI for iOS/iPadOS" border="false" :::

**Android app protection policy**:

The **Data Transfer** section of the **Data Protection** settings for an Android specific app protection policy has settings that are also specific to the Android platform. In addition to the commonly offered app protection settings, Android app protection provides additional settings, such as allowing screen capture and Google Assistant.

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-03.png" alt-text="Data Transfer UI for Android" border="false" :::

**Windows app protection policy**:

The **Data Transfer** section of the **Data Protection** settings for a Windows specific app protection policy has settings that are specific to the Windows platform. These DLP settings provide three main options for Android apps. These settings involve how data is received, sent, and moved between apps. 

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-04.png" alt-text="Data Transfer UI for Windows" border="false" :::

#### Encryption

Encryption is available for iOS/iPadOS and Android as part of an app protection policy. The **Encryption** section under the **Data Transfer** section, is also part of the **Data Protection** settings.

Choose **Require** to enable encryption of work or school data in an app.

**iOS/iPadOS app protection policy**:

 Intune enforces iOS/iPadOS device encryption to protect app data while the device is locked. Applications may optionally encrypt app data using Intune APP SDK encryption. Intune APP SDK uses iOS/iPadOS cryptography methods to apply 128-bit AES encryption to app data.

When you enable this setting, the user may be required to set up and use a PIN to access their device. If there's no device PIN and encryption is required, the user is prompted to set a PIN with the message "Your organization has required you to first enable a device PIN to access this app."

> [!NOTE]
> Go to the official Apple documentation to see which iOS encryption modules are FIPS 140-2 compliant or pending FIPS 140-2 compliance.

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-05.png" alt-text="Encryption UI for iOS/iPadOS" border="false" :::

**Android app protection policy**:

Intune uses a wolfSSL, 256-bit AES encryption scheme along with the Android Keystore system to securely encrypt app data. Data is encrypted synchronously during file I/O tasks. Content on the device storage is always encrypted. New files will be encrypted with 256-bit keys. Existing 128-bit encrypted files will undergo a migration attempt to 256-bit keys, but the process is not guaranteed. Files encrypted with 128-bit keys will remain readable.

> [!NOTE]
> The encryption method is FIPS 140-2 compliant.

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-06.png" alt-text="Encryption UI for Android" border="false" :::

#### Functionality

The **Functionality** section is the last section in the **Data Protection** settings of an app protection policy. This section provides additional data protection settings. 

**iOS/iPadOS app protection policy**:


:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-07.png" alt-text="Functionality UI for iOS/iPadOS" border="false" :::

**Android app protection policy**:

For Android app protection settings, you can choose to block policy managed apps from saving data to the end-user's device's native apps (like Contacts, Calendar and widgets), or to prevent the use of add-ins within the policy managed apps. If you choose Allow, the policy managed app can save data to the native apps or use add-ins, if those features are supported and enabled within the policy managed app.

Apps may provide additional configuration capability with app configuration policies. For more information, see the app developer's documentation.

Select one of the following options to specify the apps that this app can open web content in:

Microsoft Edge: Allow web content to open only in Microsoft Edge. Learn how Microsoft Edge protects your data.

Unmanaged browser: Allow web content to open only in the unmanaged browser defined by "Unmanaged browser ID" setting

Any app: Allow web links in any app

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-08.png" alt-text="Functionality UI for Android" border="false" :::



Select one of the following options to specify how notifications for org accounts are shown for this app and any connected devices such as wearables:

Block: Do not share notifications.

Block org Data: Do not share org data in notifications. If not supported by the application, notifications are blocked.

Allow: Share all notifications.

Android only: Note: This setting does not apply to all applications. For more information see
https://docs.microsoft.com/en-us/intune/app-protection-policy-settings-android#data-protection
 

iOS only: Note: This setting does not apply to all applications. For more information see
https://docs.microsoft.com/en-us/intune/app-protection-policy-settings-ios#data-protection

In addition, you can select to allow a connection to Microsoft Tunnel VPN when the app is launched.

**Windows app protection policy**:


:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-09.png" alt-text="Functionality UI for Windows" border="false" :::



### Access requirements

**iOS/iPadOS app protection policy**:


:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-10.png" alt-text="Access requirements UI for iOS/iPadOS" border="false" :::

**Android app protection policy**:


:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-11.png" alt-text="Access requirements UI for Android" border="false" :::

### Conditional launch

**iOS/iPadOS app protection policy**:


:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-12.png" alt-text="Conditional launch UI for iOS/iPadOS" border="false" :::

**Android app protection policy**:


:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-13.png" alt-text="Conditional launch UI for Android" border="false" :::


### Health checks

Health checks allow you to configure conditional launch capabilities. To do this, you must set the health check conditions for your app protection policy. Select a **Setting** and enter the **Value** that users must meet to access your org data. Then select the **Action** you want to take if users do not meet your conditionals. In some cases, multiple actions can be configured for a single setting.

**Windows app protection policy**:


:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-14.png" alt-text="Health checks UI for Windows" border="false" :::


## How app protection policies protect app data

Your employees use mobile devices for both personal and work tasks. While making sure your employees can be productive, you want to prevent data loss, intentional and unintentional. You will also want to protect company data that is accessed from devices that are not managed by you. You can use Intune app protection policies independent of any mobile device management (MDM) solution. This independence helps you protect your company's data with or without enrolling devices in a device management solution. By implementing app-level protection policies, you can restrict access to company resources and keep data within the purview of your IT department.

### With enrollment (MDM, devices channel)

### Without enrollment (MAM, app channel)


## Understand app protection framework

Your organization's data protection requirements may differ from other organizations. For this reason, you can tailor the app protection that you deploy from Intune based on your organization's specific needs. You can use the App protection policy (APP) data protection framework to apply app protection across your organization. The APP data protection framework is organized into three distinct configuration levels, with each consecutive level building off the previous level.

| Protection   level | Description |
|---|---|
| Enterprise basic data protection (Level 1) | This is an entry level configuration that provides similar data protection control in Exchange Online mailbox policies and introduces you and your IT admins APP. Microsoft recommends this configuration as the minimum data protection configuration for an enterprise device. |
| Enterprise enhanced data protection (Level 2)  | This protection level, which builds on the previous level, is applicable to most mobile users accessing work or school data. Microsoft recommends this configuration for devices where users access sensitive or confidential information.  |
| Enterprise high data protection (Level 3) | This protection level, which also builds on the previous level, is desirable for users that are accessing high risk data.  Microsoft recommends this configuration for devices run by an organization with a larger or more sophisticated security team, or for specific users or groups who are at uniquely high risk (users who handle highly sensitive data where unauthorized disclosure causes considerable material loss to the organization). An organization likely to be targeted by well-funded and sophisticated adversaries should aspire to this configuration. |

> [!IMPORTANT]
> Because each protection level builds on the previous, you should consider implementing them in order.



<!--
https://learn.microsoft.com/mem/intune/apps/app-protection-policy#app-protection-policy-data-protection-framework
-->