---
title: Overview of device management for frontline workers
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: aaglick
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
ms.localizationpriority: high
search.appverid: MET150
description: Get an overview of managing mobile shared and BYOD devices for frontline workers in your organization. Use the information and considerations in this article to help plan your frontline device deployment. 
ms.collection: 
  - m365-frontline
  - highpri
  - essentials-manage
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 09/16/2024
---

# Overview of device management for frontline workers

## Overview

Across every industry, frontline workers make up a large segment of the workforce. Frontline worker roles include retail associates, factory workers, field and service technicians, healthcare personnel, and many more.

Because the workforce is largely mobile and often shift-based, managing the devices that frontline workers use is a key fundamental. Some questions to consider:

- Do workers use company-owned devices or their own personal devices?
- Are company-owned devices shared between workers or assigned to an individual?
- Do workers take devices home or leave them at the workplace?

It's important to set a secure, compliant baseline to manage devices for your workforce, whether they're shared devices or workers' own devices.

This article gives you an overview of common frontline worker device scenarios and management capabilities to help empower your workforce while safeguarding company data. Use the information and considerations to help plan your frontline device deployment.

## Device deployment

A key step in planning is to determine how you'll deploy mobile devices to your frontline and the operating systems to support. Make these decisions up front so that you can evaluate the feasibility of your implementation plan and IT infrastructure with these factors in mind.

### Deployment models

Shared devices and bring-your-own-device (BYOD) are the most commonly adopted device types used in frontline organizations. The following table lists these deployment models, along with others, and related considerations.

|Device type|Description|Why use|Deployment considerations|
|-----------|-----------|----------|--------------------------|
|Shared devices |Devices owned and managed by your organization.<br><br>Employees access devices while at work. |Worker productivity and customer experience are a top priority. <br><br> Workers can't access organizational resources when not at work. <br><br>Local laws might prevent personal devices from being used for business purposes.|Define how your frontline sign in and out of the device.<br><br>Consider using Microsoft Entra Conditional Access policies to secure shared devices when multifactor authentication (MFA) isn't an option.|
|Bring-your-own device (BYOD) |Personal devices owned by the user and managed by your organization. |You want to give employees a convenient way to check shift schedules, chat with colleagues about shift swaps, or access HR resources like their paystub. <br><br>Shared devices or dedicated devices might be impractical from a cost or business-readiness perspective. |Personal devices vary in operating system, storage, and connectivity.<br><br>Personal device use might be against union rules or government regulations.<br><br>Some workers might not have reliable access to a personal mobile device. |
|Dedicated devices<sup>1</sup>|Devices owned and managed by your organization and issued to a single user.|Worker requires a dedicated phone number to receive calls and texts.<br><br>Organization requires full control over the device and how employees use it.|Cost of dedicated hardware.<br><br>Added effort for rollout and support complexity might not be feasible in field locations. |
|Kiosk devices<sup>2</sup> |Devices owned and managed by your organization. Users don't need to sign in or out. |Device has a dedicated purpose. <br><br> Use case doesn't require user authentication.|Collaboration, communication, task, and workflow apps need a user identity to function. <br><br>Not possible to audit user activity. <br><br>Unable to use some security capabilities including MFA. |

<sup>1</sup>Dedicated devices are uncommon in frontline deployments primarily due to high cost and effort to manage in the context of high staff turnover.<br>
<sup>2</sup>Kiosk device deployments aren't recommended because they don't allow user auditing and user-based security capabilities like multifactor authentication. [Learn more about kiosk devices](/windows/configuration/assigned-access).

In this article, we focus on shared devices and BYOD, as these are the deployment models that fit the practical needs of most frontline deployments. Read on for an overview of planning considerations and management capabilities.

### Device operating system

The deployment model you choose partly determines the device operating systems you support. For example:

- If you implement a shared devices model, the device operating system you choose determines the capabilities available. For example, Windows devices natively support the ability to store multiple user profiles for automated sign in and easy authentication with Windows Hello. With Android and iOS, more steps and prerequisites apply.
- If you implement a BYOD model, you'll need to support both Android and iOS devices.

|Device OS|Considerations|
|---------|--------------|
|Android |[Limited native capabilities](https://source.android.com/docs/devices/admin/multi-user) for storing multiple user profiles on devices. <br> Android devices can be enrolled in shared device mode to automate single sign-on and sign out, and targeting Conditional Access policies. <br>Robust management of controls and APIs. <br>Existing ecosystem of devices built for frontline use. |
|iOS and iPadOS |iOS devices can be enrolled in shared device mode to automate single sign-on and sign out. <br> Storing multiple user profiles on iPadOS devices is possible with Shared iPad for Business.|
|Windows |Native support for storing multiple user profiles on the device. <br>Supports Windows Hello for passwordless authentication.<br> Simplified deployment and management capabilities when used with Microsoft Intune. |

## Device landscape

When you're planning your device deployment, there are considerations across multiple surface areas. This section describes the landscape and terms to be familiar with.

### Mobile device management

Mobile device management (MDM) solutions, such as Microsoft Intune, simplify deployment, management, and monitoring of devices.

A device can only be enrolled in one MDM solution, but you can use multiple MDM solutions to manage separate pools of devices. For example, you could use Omnissa Workspace ONE or SOTI MobiControl for shared devices and Intune for BYOD. If you use multiple MDM solutions, keep in mind that some users might not be able to access shared devices because of a mismatch in 
Conditional Access policies or mobile application management (MAM) policies.

If you're using a third-party MDM solution, you can integrate with [Intune partner compliance](/mem/intune/protect/device-compliance-partners) to take advantage of Conditional Access for devices managed by third-party MDM solutions.

### App launchers for Android devices

An app launcher is an app that lets you provide a focused experience for your frontline with a customized launch screen, such as apps, wallpaper, and icon positions. You can show only the relevant apps that your frontline workers need to use and widgets that highlight key information.

Most MDM solutions provide their own app launcher. For example, Microsoft Intune provides the Microsoft Managed Home Screen app. You can also build your own custom launcher.

The following table lists some of the most common app launchers available today for Android devices by Microsoft and third-party developers.

|App launcher |Capabilities|
|-------------|------------|
|Microsoft Managed Home Screen |Use Managed Home Screen when you want your users to have access to a specific set of apps on your Intune-enrolled dedicated devices. Because Managed Home Screen can be automatically launched as the default home screen on the device and appears to the user as the only home screen, it's useful in shared devices scenarios when a locked-down experience is required. [Learn more](/mem/intune/apps/app-configuration-managed-home-screen-app).|
|Omnissa Workspace ONE Launcher |If you're using Omnissa, the Workspace ONE Launcher is a tool to curate a set of apps that your frontline needs to access. Omnissa Workspace ONE Launcher doesn't currently support shared device mode. [Learn more](https://docs.omnissa.com/bundle/workspaceonelauncherV2306/page/AWLAUNCHERINTRO.html).|
|SOTI|If you're using SOTI, the SOTI app launcher is the best tool to curate a set of apps that your frontline needs to access. The SOTI app launcher supports shared device mode today.|
|BlueFletch|[BlueFletch Launcher](https://docs.bluefletch.com/bluefletch-enterprise/product-guides/bluefletch-launcher) can be used on devices, regardless of your MDM solution. BlueFletch supports shared device mode today. [Learn more](https://soti.net/mc/help/v2024.0/en/console/system/microsoft_365_integration/change_device_reg_to_shared_mode_in_azure.html). |
|Custom app launcher |If you want a fully customized experience, you can build out your own custom app launcher. You can integrate your launcher with shared device mode so that your users only need to sign in and out once. |

### Identity management

Microsoft 365 for frontline workers uses Microsoft Entra ID as the underlying identity service for delivering and securing all apps and resources. Users must have an identity that exists in Microsoft Entra ID to access Microsoft 365 apps.

If you choose to manage frontline user identities with Active Directory Domain Services (AD DS) or a third-party identity provider, you'll need to federate these identities to Microsoft Entra ID. [Learn how to integrate your third-party service with Microsoft Entra ID](flw-setup-microsoft-365.md#provision-users).

The possible implementation patterns for managing frontline identities include:

- **Microsoft Entra standalone:** Your organization creates and manages user, device, and app identities in Microsoft Entra ID as a standalone identity solution for your frontline workloads. This implementation pattern is recommended as it simplifies your frontline deployment architecture and maximizes performance during user sign in.
- **Active Directory Domain Services (AD DS) integration with Microsoft Entra ID:** Microsoft provides Microsoft Entra Connect to join these two environments. Microsoft Entra Connect replicates Active Directory user accounts to Microsoft Entra ID, allowing a user to have a single identity capable of accessing both local and cloud-based resources. Although both AD DS and Microsoft Entra ID can exist as independent directory environments, you can choose to create hybrid directories.
- **Third-party identity solution sync with Microsoft Entra ID:** Microsoft Entra ID supports integration with third-party identity providers such as Okta and Ping Identity through federation. [Learn more about using third-party identity providers](flw-setup-microsoft-365.md#provision-users).

#### HR-driven user provisioning

Automating user provisioning is a practical need for organizations that want frontline employees to be able to access apps and resources on day one. From a security perspective, it's also important to automate deprovisioning during employee offboarding to ensure that previous employees don't retain access to company resources.

Microsoft Entra user provisioning service integrates with cloud-based and on-premises HR apps, such as Workday and SAP SuccessFactors. You can configure the service to automate user provisioning and deprovisioning when an employee is created or disabled in the HR system.

To learn more, see:

- [What is HR-driven provisioning with Microsoft Entra ID?](/entra/identity/app-provisioning/what-is-hr-driven-provisioning)
- [Plan an automatic user provisioning deployment for Microsoft Entra ID](/entra/identity/app-provisioning/plan-auto-user-provisioning)

#### Delegate user management with My Staff

With the [My Staff](/entra/identity/role-based-access-control/my-staff-configure) feature in Microsoft Entra ID, you can delegate common user management tasks to frontline managers through the My Staff portal. Frontline managers can perform password resets or manage phone numbers for frontline workers directly from the store or factory floor, without having to route the requests to helpdesk, operations, or IT.

My Staff also enables frontline managers to register their team members' phone numbers for SMS sign-in. If [SMS-based authentication](/entra/identity/authentication/howto-authentication-sms-signin) is enabled in your organization, frontline workers can sign in to Teams and other apps using only their phone numbers and a one-time passcode sent via SMS. This makes signing in for frontline workers simple and fast.

### Shared device mode

With the [shared device mode](/entra/identity-platform/msal-shared-devices) feature of Microsoft Entra ID, you can configure devices to be shared by employees. This feature enables single sign-on (SSO) and device-wide sign out for Teams and all other apps that support shared device mode.

Here's how shared device mode works, using Teams as an example. When an employee signs in to Teams at the start of their shift, they're automatically signed in to all other apps that support shared device mode on the device. When they sign out of Teams at the end of their shift, they're signed out from all other apps that support shared device mode. After sign out, the employee's data and company data in Teams and in all other apps that support shared device mode can no longer be accessed. The device is ready for the next employee to use.

You can integrate this capability into your line-of-business (LOB) apps using the [Microsoft Authentication Library (MSAL)](/entra/identity-platform/msal-overview).

### Authentication

Authentication features control who or what uses an account to gain access to applications, data, and resources.

As previously mentioned, Microsoft 365 for frontline workers uses Microsoft Entra ID as the underlying identity service for securing Microsoft 365 apps and resources. To learn more about authentication in Microsoft Entra ID, see [What is Microsoft Entra authentication?](/entra/identity/authentication/overview-authentication) and [What authentication and verification methods are available in Microsoft Entra ID?](/entra/identity/authentication/concept-authentication-methods).

#### Multifactor authentication

[Microsoft Entra multifactor authentication (MFA)](/entra/identity/authentication/concept-mfa-howitworks) works by requiring two or more of the following authentication methods at sign in:

- Something the user knows, typically a password.
- Something the user has, such as a trusted device that's not easily duplicated, like a phone or hardware key.
- Something the user is - biometrics like a fingerprint or face scan.

MFA supports several forms of verification methods, including the Microsoft Authenticator app, FIDO2 keys, SMS, and voice calls.

MFA provides a high level of security for apps and data but adds friction to user sign in. For organizations that choose BYOD deployments, MFA might or might not be a practical option. It's highly recommended that business and technical teams validate the user experience with MFA before a broad rollout so that the user impact can be properly considered in change management and readiness efforts.

If MFA isn't feasible for your organization or deployment model, you should plan to use robust Conditional Access policies to reduce security risk.

#### Passwordless authentication

To further simplify access for your frontline workforce, you can use passwordless authentication methods so that workers don't need to remember or enter their passwords. Passwordless authentication methods remove the use of a password at sign-in and replaces it with:

- Something the user has, like a phone or security key.
- Something the user is or knows, like biometrics or a PIN.

Passwordless authentication methods are also typically more secure, and many can satisfy MFA requirements if necessary.

Before proceeding with a passwordless authentication method, determine whether it can work in your existing environment. Considerations like cost, OS support, personal device requirement, and MFA support, can affect whether an authentication method would work for your needs.

See the following table to assess passwordless authentication methods for your frontline scenario.

|Method|OS support|Requires personal device|Supports MFA|
|------|----------|----------|----------|
|Microsoft Authenticator |All |Yes |Yes |
|SMS sign in |Android and iOS |Yes |No |
|Windows Hello |Windows |No |Yes |
|FIDO2 key |Windows |No |Yes |

To learn more, see [Passwordless authentication options for Microsoft Entra ID](/entra/identity/authentication/concept-authentication-passwordless) and [Configure and enable users for SMS-based authentication using Microsoft Entra ID](/entra/identity/authentication/howto-authentication-sms-signin).

### Authorization

Authorization features control what an authenticated user can do or access. In Microsoft 365, this is achieved through a combination of Microsoft Entra Conditional Access policies and app protection policies.

Implementing robust authorization controls is a critical component of securing a frontline shared devices deployment, particularly if it isn't possible to implement strong authentication methods like MFA for cost or practicality reasons.

#### Microsoft Entra Conditional Access

With Conditional Access, you can create rules that limit access based on the following signals:

- User or group membership
- IP location information
- Device (only available if the device is enrolled in Microsoft Entra ID)
- App
- Real-time and calculated risk detection

Conditional Access policies can be used to block access when a user is on a noncompliant device or while they're on an untrusted network. For example, you might want to use Conditional Access to prevent users from accessing an inventory app when they aren't on the work network or are using an unmanaged device, depending on your organization's analysis of applicable laws.

For BYOD scenarios where it makes sense to access data outside of work, such as HR-related information, shift management, chat about swapping shifts, or non-business-related apps, you might choose to implement more permissive Conditional Access policies alongside strong authentication methods like MFA.

To learn more, see the [Microsoft Entra Conditional Access documentation](/entra/identity/conditional-access).

#### App protection policies

With mobile application management (MAM) from Intune, you can use [app protection policies](/mem/intune/apps/app-protection-policy) with apps that are integrated with the [Intune App SDK](/mem/intune/developer/app-sdk-get-started). This allows you to further protect your organization's data within an app.

With app protection policies, you can add access control safeguards, such as:

- Control the sharing of data between apps.
- Prevent the saving of company app data to a personal storage location.
- Ensure the device's operating system is up to date.

In a shared devices deployment, you can use app protection policies to ensure that data doesn't leak to apps that don't support shared device mode. In BYOD scenarios, app protection policies are helpful because they allow you to protect your data at the app level without having to manage the entire device.

#### Limit access to Teams when frontline workers are off shift

With the working time feature, you can use app protection policies to limit access to Teams for shift workers on BYOD or company-owned dedicated devices. This feature lets you can block access or show a warning message when frontline workers access Teams during nonworking time.

To learn more, see [Limit access to Teams when frontline workers are off shift](flw-working-time.md).

## Related articles

- [Manage shared devices for your frontline](flw-shared-devices.md)
- [Frontline worker management](/entra/fundamentals/frontline-worker-management)
- [Frontline worker device management overview in Microsoft Intune](/mem/solutions/frontline-worker/frontline-worker-overview)
