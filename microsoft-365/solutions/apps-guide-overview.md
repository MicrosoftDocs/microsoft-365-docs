---
title: "Purchase and add apps for Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 05/17/2024
description: Purchase and add managed apps for your managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---
 
# Purchase and add apps for Microsoft Intune

To help protect and secure your organization’s data, you can provide the members of your organization with managed apps so they can safely collaborate and be productive. Managed apps are a subset of client apps that you install and manage on the devices of members of your organization. These apps that have been enhanced to support special configuration and protection capabilities. These capabilities are managed and maintained by an endpoint management solution, such as Microsoft Intune. Intune provides a web-based console to manage, protect, and monitor all of your organization's endpoints, whether those endpoints are devices or apps. The capabilities provided by Intune helps to keep your organization's cloud and on-premises devices, apps, and data secure. The Microsoft Intune product family integrates Microsoft Intune, Microsoft Endpoint Configuration Manager, Desktop Analytics, and Windows Autopilot.

> [!NOTE]
> Endpoints include the mobile devices, desktop computers, virtual machines, embedded devices, servers, apps, and shared devices that your organization uses. Examples of shared and specialized devices include retail point of sale devices, ruggedized devices, digital interactive whiteboards, conference room devices, and holographic wearable computers. Additionally, endpoints also include the apps used by your organization.

Depending on the apps your organization needs, you may want to purchase licenses for specific apps. This content helps you understand the different types of apps available to Intune. Additionally, you can add apps to be managed using configuration and protection policies, or apps that you can just deploy to members of your organization. You'll learn about purchasing apps and app licenses. These concepts are all an important part of the process to add apps to Intune.

## What's in this solution

This solution steps you through the process of adding managed apps to Microsoft Intune. Adding managed apps to Intune is the first step you take before you configure, protect, and deploy the apps so that members of your organization can safely use them. By managing apps at your organization, you help to protect and secure your organization’s data.

:::image type="content" source="../media/purchase-add-managed-apps/purchase-add-managed-apps-02.png" alt-text="Steps used to purchase and add apps to Microsoft Intune." border="false" :::

## Deploying Intune

You should understand how to set up and deploy the capabilities of Intune before you start adding and assigning apps. Deploying Intune commonly involves the following steps:

:::image type="content" source="../media/purchase-add-managed-apps/purchase-add-managed-apps-18.png" alt-text="Steps to setup and deploy Intune" border="false" :::

| Step | Action | Description |
|---|---|---|
| 1 | Set up Intune | You can [try Intune for free](/mem/intune/fundamentals/free-trial-sign-up) by following the steps to get started fast. When you're finished with this step, you'll have completed the following:<ul><li>Created a free Intune tenant. A tenant is a dedicated instance of Microsoft Entra ID where your subscription to Intune is hosted.</li><li>Created a user in Intune and assign the user a license.</li><li>Created a group to manage users</li><li>Set up automatic enrollment for Windows 10/11 devices.</li><li>Understand how to enroll a device.</li><li>Understand how to create a password compliance policy for Android Enterprise devices.</li><li>Understand how to send notifications to noncompliant devices.</li><li>Added and assign a app.</li><li>Created and assigned an app protection policy.</li><li>Created and assigned a custom role.</li><li>Created an email device profile for iOS/iPadOS.</li></ul>   |
| 2 | Set up apps | [Add](apps-add-overview.md), [configure](apps-config-overview.md), and [protect](apps-protect-overview.md) the apps your organization uses. When you're finished with this step, you'll have completed the following:<ul><li>Understand how to [add managed apps](apps-guide-overview.md)</li><li>Understand which apps to [add to your tenant first](apps-add-overview.md)</li><li>Understand how to [configure apps in Intune](apps-config-overview.md)</li><li>Understand how to [protect apps using Intune](apps-protect-overview.md)</li><li>Understand the [different levels of app protection](apps-protect-framework.md)</li></ul>  |
| 3 | Create device compliance and conditional access policies | You'll understand how to create device compliance policies and conditional access policies. When you complete this step, you'll understand device compliance and conditional access, as well as understand how to handle noncompliance. Additionally, you'll understand the different levels of device compliance.  |
| 4 | Create device configuration policies | You'll understand how to configure device features and settings to secure devices and access resources. When you complete this step, you'll understand the different levels of device configuration and protection. |
| 5 | Enroll your devices to be managed | When you complete this step, you'll understand the how to configure devices for enrollment and understand enrollment policies and restrictions. You'll also understand how to use enrollment profiles and Windows Autopilot. |

## Mobile Application Management configurations

When apps are used without restrictions, company and personal data can get intermingled. Company data can end up in locations like personal storage or transferred to apps beyond your purview and result in data exposure and data loss. Managing the apps that the members of your organization use on their devices is called Mobile Application Management (MAM). MAM allows you to provide data protection on unenrolled devices. Unenrolled devices are personal devices that are used by members of your organization to access corporate data. It's important to understand that these personal devices aren't managed, but still need protection. One of the primary reasons to use either **MAM without device enrollment** or **MAM with device enrollment** is to help protect your organization's data.

The Microsoft Intune service supports two Mobile Application Management (MAM) configurations:
- **[MAM without device management](#mam-without-device-management)**
- **[MAM with device management](#mam-with-device-management)**

### MAM without device management

MAM in Intune is designed to protect organization data at the application level, including custom apps and store apps. App management can be used on organization-owned devices and personal devices. When it's used with personal devices, only organization-related access and data are managed. This configuration allows your organization's apps to be managed by Intune, but doesn't enroll the devices to be managed by Intune. This configuration is commonly referred to as **MAM without device enrollment**. IT administrators can manage apps using MAM by using Intune configuration and protection policies on devices not enrolled with Intune Mobile Device Management (MDM). In the MAM scenario, the apps are managed based on the signed-in user of the app on the device. MAM is ideal to help protect organization data on devices used by members of your organization for both personal and work tasks. MAM without MDM is popular for organizations that enable members of their organization to work remotely on their own devices (BYOD).

> [!TIP]
>  Many productivity apps, such as the Microsoft Office apps, can be managed by Intune MAM. See the official list of [Microsoft Intune protected apps](/mem/intune/apps/apps-supported-intune-apps) available for public use.

If you choose to use MAM without device enrollment, there are some limitations to be aware of, such as:
- You can't specifically deploy apps directly to the device. The end user (member of your organization) retrieves the apps from the store.
- You can't provision [certificate profiles](/mem/intune/protect/certificates-configure) on these unmanaged devices.
- You can't provision company [Wi-Fi](/mem/intune/configuration/wi-fi-settings-configure) and [VPN](/mem/intune/configuration/vpn-settings-configure) settings on these unmanaged devices.

> [!NOTE]
> The MAM configuration includes managing apps with Intune on devices enrolled with third-party enterprise mobility management (EMM) providers. You can use Intune app configuration and protection policies independent of any MDM solution. This independence helps you protect your company's data with or without enrolling devices in a device management solution. By implementing app-level policies, you can restrict access to company resources and keep data within the purview of your IT department.

### MAM with device management

This configuration allows both your organization's apps and devices to be managed. This configuration is commonly referred to as **MAM + MDM**. IT administrators can manage apps using MAM on devices that are enrolled with Intune MDM.

MDM, in addition to MAM, makes sure that the device is protected. For example, you can require a PIN to access the device, or you can deploy managed apps to the device. 

There are additional benefits to using MDM with app protection policies. For example, a member of your organization could have both a phone issued by the company, as well as their own personal tablet. The company phone could be enrolled in MDM and protected by app protection policies while the personal device is protected by app protection policies only.

On enrolled devices that use an MDM service, app protection policies can add an extra layer of protection. For example, a user signs in to a device with their organization credentials. As that organization data is used, app protection policies control how the data is saved and shared. When users sign in with their personal identity, those same protections (access and restrictions) aren't applied. In this way, IT has control of organization data, while end users maintain control and privacy over their personal data.

The MDM solution adds value by providing the following capabilities:
- Enrolls the device
- Deploys the apps to the device
- Provides ongoing device compliance and management

The App protection policies add value by providing the following capabilities:
- Help protect company data from leaking to consumer apps and services
- Apply restrictions like *save-as*, *clipboard*, or *PIN*, to client apps
- Wipe company data when needed from apps without removing those apps from the device

### Benefits of MAM with Intune

When apps are managed in Intune, administrators can do the following actions:
- **Protect company data at the app level.** You can add and assign mobile apps to user groups and devices. This management allows your company data to be protected at the app level. You can protect company data on both managed and unmanaged devices because mobile app management doesn't require device management. The management is centered on the user identity, which removes the requirement for device management.
- **Configure apps to start or run with specific settings enabled.** In addition, you can update existing apps already on the device.
- **Assign policies to limit access and prevent data from being used outside your organization.** You choose the setting for these policies based on your organization's requirements. For example, you can:
  - Require a PIN to open an app in a work context.
  - Block managed apps from running on jailbroken or rooted devices.
  - Control the sharing of data between apps.
  - Prevent the saving of company app data to a personal storage location by using data relocation policies like  **Save copies of org data**, and **Restrict cut, copy, and paste**..
- **Support apps on a variety of platforms and operating systems.** Each platform is different. Intune provides available settings specifically for each supported platform.
- **See reports about which apps are used, and track their usage.** In addition, Intune provides endpoint analytics to help you assess and resolve problems.
- **Do a selective wipe by removing only organization data from apps.**
- **Ensure personal data is kept separate from managed data.** End-user productivity isn't affected and policies don't apply when using the app in a personal context. The policies are applied only in a work context, which gives you the ability to protect company data without touching personal data.

## Understand app types

The users of apps and devices at your organization might have several app requirements. Before adding apps to Intune and making them available to the members of your organization, you may find it helpful to assess and understand a few app fundamentals. There are various types of apps that are available for Intune. You must determine app requirements that are needed by the users at your organization, such as the platforms and capabilities that the members of your organization needs. You must determine whether to use Intune to manage the devices (including apps) or have Intune manage the apps without managing the devices. Also, you must determine the apps and capabilities that the members of your organization needs, and who needs them. For more information, see [App types for managed environments](apps-type-overview.md) or an overview.

## Purchase apps

Often, before you can distribute an app to the members of your organization, you must either purchase the app, purchase a license to use the app, or acquire a license to use the app. Many apps are free, however you may still need to follow the purchase process in order to distribute those apps to the members of your organization. Of those free apps, most are not designed to be protected and configured with Intune. For more information, see [Purchase apps for Intune](apps-purchase-overview.md) for an overview.

## Add apps to Intune

Before you distribute a managed app to the members of your organization, you first need to add the app to Intune. Once added, you can create both configuration and protection policies to support the app. When you're ready, you can assign the apps to the members of your organization. For more information, see [Add apps to Microsoft Intune Overview](apps-add-overview.md)

<!--
## Additional app resources

Key information from Microsoft:


https://review.learn.microsoft.com/microsoft-365/solutions/ransomware-protection-microsoft-365-information?view=o365-worldwide#additional-ransomware-resources
-->
