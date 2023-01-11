---
title: "Purchase and add apps in your managed environment"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Purchase and add managed apps as part of your managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Purchase and add apps in your managed environment

To help protect and secure your organization’s data, you can provide the members of your organization with managed apps so they can safely collaborate and be productive. Managed apps are those apps that have been enhanced to support special configuration and protection capabilities. These capabilities are managed and maintained by a endpoint management solution, such as Microsoft Intune. Intune provides a web-based console to manage, protect, and monitor all of your organization's endpoints, whether those endpoints are devices or apps. The capabilities provided by Intune helps to keep your organization's cloud and on-premises devices, apps, and data secure. The Microsoft Intune product family integrates Microsoft Intune, Microsoft Endpoint Configuration Manager, Desktop Analytics, and Windows Autopilot.

> [!NOTE]
> Endpoints include the mobile devices, desktop computers, virtual machines, embedded devices, servers, and shared devices that your organization uses. Examples of shared and specialized devices include retail point of sale devices, ruggedized devices, digital interactive whiteboards, conference room devices, and holographic wearable computers. Additionally, endpoints also include the apps used by your organization.

## MAM configurations

When apps are used without restrictions, company and personal data can get intermingled. Company data can end up in locations like personal storage or transferred to apps beyond your purview and result in data exposure and data loss. One of the primary reasons to use either **MAM without device enrollment** or **MAM with device enrollment** is to help protect your organization's data.

Microsoft Endpoint Manager supports two MAM configurations:
- **[MAM without device management](#mam-without-device-management)**
- **[MAM with device management](#mam-with-device-management)**

### MAM without device management

Managing the apps that the members of your organization uses on their devices is called mobile application management (MAM). MAM in Intune is designed to protect organization data at the application level, including custom apps and store apps. App management can be used on organization-owned devices and personal devices. When it is used with personal devices, only organization-related access and data is managed. This configuration allows your organization's apps to be managed by Intune, but doesn't enroll the devices to be managed by Intune. This configuration is commonly referred to as **MAM without device enrollment**, or **MAM-WE**. IT administrators can manage apps using MAM by using Intune configuration and protection policies on devices not enrolled with Intune Mobile Device Management (MDM). In the MAM scenario, the apps are managed based on the signed-in user of the app on the device. MAM is ideal to help protect organization data on devices used by members of your organization for both personal and work tasks.

> [!TIP]
>  Many productivity apps, such as the Microsoft Office apps, can be managed by Intune MAM. See the official list of [Microsoft Intune protected apps](/mem/intune/apps/apps-supported-intune-apps) available for public use.

If you choose to use MAM without device enrollment, there are some limitations to be aware of, such as:
- You can't specifically deploy apps directly to the device. The end user has to get the apps from the store.
- You can't provision certificate profiles on these unmanaged devices.
- You can't provision company Wi-Fi and VPN settings on these unmanged devices.

> [!NOTE]
> The MAM configuration includes managing apps with Intune on devices enrolled with third-party enterprise mobility management (EMM) providers. You can use Intune app configuration and protection policies independent of any MDM solution. This independence helps you protect your company's data with or without enrolling devices in a device management solution. By implementing app-level policies, you can restrict access to company resources and keep data within the purview of your IT department.

### MAM with device management

This configuration allows both your organization's apps and devices to be managed. This configuration is commonly referred to as **MAM + MDM**. IT administrators can manage apps using MAM on devices that are enrolled with Intune MDM.

MDM, in addition to MAM, makes sure that the device is protected. For example, you can require a PIN to access the device, or you can deploy managed apps to the device. 

There are additional benefits to using MDM with app protection policies. For example, a member of your organization could have both a phone issued by the company, as well as their own personal tablet. The company phone could be enrolled in MDM and protected by app protection policies while the personal device is protected by app protection policies only.

On enrolled devices that use an MDM service, app protection policies can add an extra layer of protection. For example, a user signs in to a device with their organization credentials. Their organization identity allows access to data that's tied to their personal identity. As that organization data is used, app protection policies control how the data is saved and shared. When users sign in with their personal identity, those same protections (access and restrictions) aren't applied. In this way, IT has control of organization data, while end users maintain control and privacy over their personal data.

The MDM solution adds value by providing the following:
- Enrolls the device
- Deploys the apps to the device
- Provides ongoing device compliance and management

The App protection policies add value by providing the following:
- Help protect company data from leaking to consumer apps and services
- Apply restrictions like *save-as*, *clipboard*, or *PIN*, to client apps
- Wipe company data when needed from apps without removing those apps from the device

### Benefits of MAM with Intune

When apps are managed in Intune, administrators can do the following:
- **Protect company data at the app level.** You can add and assign mobile apps to user groups and devices. This allows your company data to be protected at the app level. You can protect company data on both managed and unmanaged devices because mobile app management doesn't require device management. The management is centered on the user identity, which removes the requirement for device management.
- **Configure apps to start or run with specific settings enabled.** In addition, you can update existing apps already on the device.
- **Assign policies to limit access and prevent data from being used outside your organization.** You choose the setting for these policies based on your organization's requirements. For example, you can:
  - Require a PIN to open an app in a work context.
  - Block managed apps from running on jailbroken or rooted devices
  - Control the sharing of data between apps.
  - Prevent the saving of company app data to a personal storage location by using data relocation policies like  **Save copies of org data**, and **Restrict cut, copy, and paste**..
- **Support apps on a variety of platforms and operating systems.** Each platform is different. Intune provides available settings specifically for each supported platform.
- **See reports about which apps are used, and track their usage.** In addition, Intune provides endpoint analytics to help you assess and resolve problems.
- **Do a selective wipe by removing only organization data from apps.**
- **Ensure personal data is kept separate from managed data.** End-user productivity isn't affected and policies don't apply when using the app in a personal context. The policies are applied only in a work context, which gives you the ability to protect company data without touching personal data.

## Understand app types

The users of apps and devices at your company (your company's workforce) might have several app requirements. Before adding apps to Intune and making them available to your workforce, you may find it helpful to assess and understand a few app fundamentals. There are various types of apps that are available for Intune. You must determine app requirements that are needed by the users at your company, such as the platforms and capabilities that your workforce needs. You must determine whether to use Intune to manage the devices (including apps) or have Intune manage the apps without managing the devices. Also, you must determine the apps and capabilities that your workforce needs, and who needs them. For more information, see [App types for managed environments](apps-type-overview.md) or an overview.

## Purchase apps

Often times, before you can distribute an app to your workforce, you must either purchase the app, purchase a license to use the app, or acquire a license to use the app. Some apps are free, however you may still need to follow the purchase process in order to distribute those apps to your workforce. For more information, see [Purchase apps for Intune](apps-purchase-overview.md) for an overview.

## Add apps to Intune

Before you distribute a managed app to your workforce, you first need to add the app to Intune. Once added, you can create both configuration and protection policies to support the app. When you're ready, you can assign the apps to the members of your organization. For more information, see [Add apps to Microsoft Intune Overview](apps-add-overview.md)

## What's in this solution

This solution steps you through the process of adding managed apps to Microsoft Intune. Adding managed apps to Intune is the first step you take before you configuring, protecting, and deploying the apps to members of your organization. By managing apps at your organization, you help to protect and secure your organization’s data.

:::image type="content" border="true" source="../media/purchase-add-managed-apps/purchase-add-managed-apps-02.png" alt-text="Steps used to purchase and add apps to Microsoft Intune.":::

<!--
## Additional app resources

Key information from Microsoft:


https://review.learn.microsoft.com/microsoft-365/solutions/ransomware-protection-microsoft-365-information?view=o365-worldwide#additional-ransomware-resources
-->