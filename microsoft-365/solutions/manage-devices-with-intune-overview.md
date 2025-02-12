---
title: "Manage devices with Intune"
ms.author: bcarter
author: brendacarter
f1.keywords:
- enroll devices into Intune
- manage device endpoints
- zero trust deployment stack
- device management with zero trust
manager: dougeby
ms.date: 04/17/2024
audience: ITPro
ms.topic: solution-overview
description: Enroll your endpoint devices in Microsoft Intune as part of your Zero Trust security architecture, protecting against ransomware while building in protection for remote workers.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
- M365-security-compliance
- m365solution-managedevices
- m365solution-overview
- zerotrust-solution
ms.custom:
keywords:
---

# Manage devices with Intune Overview

A core component of enterprise-level security includes managing and protecting devices. Whether you’re building a Zero Trust security architecture, hardening your environment against ransomware, or building in protections to support remote workers, managing devices is part of the strategy.
While Microsoft 365 includes several tools and methodologies for managing and protecting devices, this guidance walks through Microsoft’s recommendations using Microsoft Intune. This is the right guidance for you if you:

- Plan to enroll devices into Intune through Microsoft Entra join (including Microsoft Entra hybrid join).
- Plan to manually enroll devices into Intune.
- Allow BYOD devices with plans to implement protection for apps and data and/or enroll these devices to Intune.

On the other hand, if your environment includes plans for co-management including Microsoft Configuration Manager, see [Co-management documentation](/mem/configmgr/comanage/) to develop the best path for your organization. If your environment includes plans for Windows 365 Cloud PC, see [Windows 365 Enterprise documentation](/windows-365/enterprise/) to develop the best path for your organization.

Watch this video for an overview of the deployment process.
<br>
<br>
> [!VIDEO https://learn-video.azurefd.net/vod/player?id=097c2f27-684b-4fef-96d8-55282ea3cad0]

## Why manage endpoints?

The modern enterprise has an incredible diversity of endpoints accessing their data. This setup creates a massive attack surface, and as a result, endpoints can easily become the weakest link in your Zero Trust security strategy.

Mostly driven by necessity as the world shifted to a remote or hybrid work model, users are working from anywhere, from any device, more than anytime in history. Attackers are quickly adjusting their tactics to take advantage of this change. Many organizations face constrained resources as they navigate these new business challenges. Virtually overnight, companies have accelerated digital transformation. Simply stated, the way people work has changed. We no longer expect to access the myriad of corporate resources only from the office and on company-owned devices.

Gaining visibility into the endpoints accessing your corporate resources is the first step in your Zero Trust device strategy. Typically, companies are proactive in protecting PCs from vulnerabilities and attack while mobile devices often go unmonitored and without protections. To ensure you’re not exposing your data to risk, we need to monitor every endpoint for risks and employ granular access controls to deliver the appropriate level of access based on organizational policy. For example, if a personal device is jailbroken, you can block access to ensure that enterprise applications aren't exposed to known vulnerabilities.

This series of articles walks through a recommended process for managing devices that access your resources. If you follow the recommended steps, your organization will achieve very sophisticated protection for your devices and the resources they access.

## Implementing the layers of protection on and for devices

Protecting the data and apps on devices and the devices themselves is a multi-layer process. There are some protections you can gain on unmanaged devices. After enrolling devices into management, you can implement more sophisticated controls. When threat protection is deployed across your endpoints, you gain even more insights and the ability to automatically remediate some attacks. Finally, if your organization has put the work into identifying sensitive data, applying classification and labels, and configuring Microsoft Purview Data Loss Prevention policies, you can obtain even more granular protection for data on your endpoints.

The following diagram illustrates building blocks to achieve a Zero Trust security posture for Microsoft 365 and other SaaS apps that you introduce to this environment. The elements related to devices are numbered 1 through 7. Device admins will coordinate with other administrators to accomplish these layers of protection.

:::image type="content" source="../media/devices/m365-zero-trust-deployment-stack-devices.svg" alt-text="desc." lightbox="../media/devices/m365-zero-trust-deployment-stack-devices.svg":::

In this illustration:

|&nbsp;| Step | Description | Licensing requirements |
|---|---|---|---|
|1|Configure starting-point Zero Trust identity and device access policies|Work with your identity administrator to [**Implement Level 2 App Protection Policies (APP) data protection**](manage-devices-with-intune-app-protection.md). These policies don't require that you manage devices. You configure the APP policies in Intune. Your identity admin configures a Conditional Access policy to require approved apps.|E3, E5, F1, F3, F5|
|2|Enroll devices to Intune|This task requires more planning and time to implement. Microsoft recommends using Intune to enroll devices because this tool provides optimal integration. There are several options for enrolling devices, depending on the platform. For example, Windows devices can be enrolled by using Microsoft Entra join or by using Autopilot. You need to review the options for each platform and decide which enrollment option is best for your environment. See [**Step 2. Enroll devices to Intune**](manage-devices-with-intune-enroll.md) for more information.|E3, E5, F1, F3, F5|
|3|Configure compliance policies|You want to be sure devices that are accessing your apps and data meet minimum requirements, for example devices are password or pin-protected and the operating system is up to date. Compliance policies are the way to define the requirements that devices must meet. [**Step 3. Set up compliance policies**](manage-devices-with-intune-compliance-policies.md) helps you configure these policies.|E3, E5, F3, F5|
|4|Configure Enterprise (recommended) Zero Trust identity and device access policies|Now that your devices are enrolled, you can work with your identity admin to [**tune Conditional Access policies to require healthy and compliant devices**](manage-devices-with-intune-require-compliance.md).|E3, E5, F3, F5|
|5|Deploy configuration profiles|As opposed to device compliance policies that simply mark a device as compliant or not based on criteria you configure, configuration profiles actually change the configuration of settings on a device. You can use configuration policies to harden devices against cyberthreats. See [**Step 5. Deploy configuration profiles**](manage-devices-with-intune-configuration-profiles.md).|E3, E5, F3, F5|
|6|Monitor device risk and compliance with security baselines|In this step, you connect Intune to Microsoft Defender for Endpoint. With this integration, you can then monitor device risk as a condition for access. Devices that are found to be in a risky state are blocked. You can also monitor compliance with security baselines. See [**Step 6. Monitor device risk and compliance to security baselines**](manage-devices-with-intune-monitor-risk.md).|E5, F5|
|7|Implement data loss prevention (DLP) with information protection capabilities|If your organization has put the work into identifying sensitive data and labeling documents, you can work with your information protection admin to [**protect sensitive information and documents on your devices**](manage-devices-with-intune-dlp-mip.md).|E5, F5 compliance add-on|

## Coordinating endpoint management with Zero Trust identity and device access policies

This guidance is tightly coordinated with the recommended [**Zero Trust identity and device access policies**](../security/office-365-security/zero-trust-identity-device-access-policies-overview.md). You'll be working with your identity team to carry through protection that you configure with Intune into Conditional Access policies in Microsoft Entra ID.

Here’s an illustration of the recommended policy set with step callouts for the work you'll do in Intune and the related Conditional Access policies you'll help coordinate in Microsoft Entra ID.

:::image type="content" source="../media/devices/identity-device-overview-steps.svg" alt-text="Zero Trust identity and device access policies." lightbox="../media/devices/identity-device-overview-steps.svg":::

In this illustration:

- In Step 1, [**Implement Level 2 App Protection Policies (APP)**](manage-devices-with-intune-app-protection.md) you configure the recommended level of data protection with APP policies. Then you work with your identity team to configure the related Conditional Access rule to require use of this protection.
- In Steps 2, 3 and 4, you enroll devices into management with Intune, define device compliance policies, and then coordinate with your identity team to configure the related Conditional Access rule to only allow access to compliant devices.

<!---
## Managing change with users
--->

## Enrolling devices vs. onboarding devices

If you follow this guidance, you'll enroll devices into management using Intune and you'll onboard devices for the following Microsoft 365 capabilities:

- Microsoft Defender for Endpoint
- Microsoft Purview (for endpoint data loss prevention (DLP)) 

The following illustration details how this works using Intune.

:::image type="content" source="../media/devices/devices-enroll-onboard-process.svg" alt-text="Process for enrolling and onboarding devices." lightbox="../media/devices/devices-enroll-onboard-process.svg":::

In the illustration:

1. Enroll devices into management with Intune.
2. Use Intune to onboard devices to Defender for Endpoint.
3. Devices that are onboarded to Defender for Endpoint are also onboarded for Microsoft Purview features, including Endpoint DLP.
 
Note that only Intune is managing devices. Onboarding refers to the ability for a device to share information with a specific service. The following table summarizes the differences between enrolling devices into management and onboarding devices for a specific service.


| &nbsp; |Enroll     |Onboard  |
|---------|---------|---------|
|Description     |  Enrollment applies to managing devices. Devices are enrolled for management with Intune or Configuration Manager.        | Onboarding configures a device to work with a specific set of capabilities in Microsoft 365. Currently, onboarding applies to Microsoft Defender for Endpoint and Microsoft compliance capabilities. <br><br> On Windows devices, onboarding involves toggling a setting in Windows Defender that allows Defender to connect to the online service and accept policies that apply to the device.        |
|Scope     | These device management tools manage the entire device, including configuring the device to meet specific objectives, like security.        |Onboarding only affects the services that apply.     |
|Recommended method     | Microsoft Entra join automatically enrolls devices into Intune.        | Intune is the preferred method for onboarding devices to Windows Defender for Endpoint, and consequently Microsoft Purview capabilities. <br><br> Note that devices that are onboarded to Microsoft Purview capabilities using other methods aren't automatically enrolled for Defender for Endpoint.        |
|Other methods     |   Other methods of enrollment depend on the platform of the device and whether it's BYOD or managed by your organization.      | Other methods for onboarding devices include, in recommended order: <br><li> Configuration Manager <li> Other mobile device management tool (if the device is managed by one) <li> Local script <li> VDI configuration package for onboarding non-persistent virtual desktop infrastructure (VDI) devices <li> Group Policy|

## Learning for administrators

The following resources help administrators learn concepts about using Intune.

- [Simplify device management with Microsoft Intune](/training/modules/simplify-device-management-with-microsoft-endpoint-manager/) training module

  Learn about how the business management solutions through Microsoft 365 provide people with a secure, personalized desktop experience and help organizations easily manage updates for all devices with a simplified admin experience.

- [Evaluate Microsoft Intune](/training/modules/set-up-microsoft-intune/)

  Microsoft Intune helps you protect the devices, apps, and data that the people at your organization use to be productive. This article tells you how to set up Microsoft Intune. Setup includes reviewing the supported configurations, signing up for Intune, adding users and groups, assigning licenses to users, granting admin permissions, and setting the Mobile Device Management (MDM) authority.

## Next step

Go to [Step 1. Implement App Protection Policies](manage-devices-with-intune-app-protection.md).
