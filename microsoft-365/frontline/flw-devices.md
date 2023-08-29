---
title: Manage devices for frontline workers
author: lana-chin
ms.author: v-chinlana
manager: serdars
ms.reviewer: mabolan
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
ms.localizationpriority: high
search.appverid: MET150
description: Get an overview of managing mobile shared and BYOD devices for frontline workers in your organization. 
ms.collection: 
  - m365-frontline
  - highpri
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 11/28/2022
---

# Manage devices for frontline workers

Across every industry, frontline workers make up a large segment of the workforce. Frontline worker roles include retail associates, factory workers, field and service technicians, healthcare personnel, and many more.

## Overview

Because the workforce is largely mobile and often shift-based, managing the devices that frontline workers use is a key fundamental. Some questions to consider:

- Do workers use company-owned devices or their own personal devices?
- Are company-owned devices shared between workers or assigned to an individual?
- Do workers take devices home or leave them at the workplace?

It’s important to set a secure, compliant baseline to manage devices for your workforce, whether they’re shared devices or workers’ own devices. This article gives you an overview of common frontline worker device scenarios and management capabilities to help empower your workforce while safeguarding company data.

## Device types

Shared, bring-your-own, and kiosk devices are the most common device types used by frontline workers.

|Device type|Description|Why to use|Deployment considerations|
|-----------|-----------|----------|--------------------------|
|Shared devices |Devices are owned and managed by your organization. Employees access devices while at work. |Worker productivity and customer experience are a top priority. <br><br> Workers can't access organization resources while not at work. <br><br> Local laws may prevent personal devices from being used for business purposes. |Sign in/out can add friction to worker experience. <br><br> Potential for inadvertent sharing of sensitive data. |
|Bring-your-own devices (BYOD) |Personal devices are owned by the user and managed by your organization. |Your existing mobile device management (MDM) solution prevents your organization from adopting a shared devices model. <br><br>Shared devices or dedicated devices may be impractical from a cost or business-readiness perspective. |Support complexity may not be feasible in field locations. <br><br> Personal devices vary in OS, storage, and connectivity. <br><br> Some workers may not have reliable access to a personal mobile device. <br><br> You could incur potential liability for wages if workers access resources while not clocked in. <br><br> Personal device use may be against union rules or government regulations. |
|Kiosk devices |Devices are owned and managed by your organization. Users don't need to sign in or out. |Device has a dedicated purpose. <br><br> Use case doesn't require user authentication.|Collaboration, communication, task, and workflow applications need a user identity to function. <br><br> Not possible to audit user activity. <br><br> Unable to use some security capabilities including multifactor authentication. |

Shared devices and BYOD are commonly adopted in frontline deployments. You can use capabilities discussed in subsequent sections of this article may resolve or mitigate your organization’s concerns over user experience, unauthorized worker access to data, and resources and ability to deploy and manage devices at scale.

> [!NOTE]
> Kiosk device deployments aren’t recommended because they don’t allow user auditing and user-based security capabilities like multifactor authentication. [Learn more about kiosk devices](/windows/configuration/kiosk-methods).

### Shared devices

Many frontline workers use shared mobile devices to do work. Shared devices are company-owned devices that are shared between employees across tasks, shifts, or locations.

Here’s an example of a typical scenario. An organization has a pool of devices in charging cradles to be shared across all employees. At the start of a shift, an employee picks up a device from the pool, and signs in to Teams and other business apps essential to their role. At the end of their shift, they sign out and return the device to the pool. Even within the same shift, a worker might return a device when they finish a task or clock out for lunch, and then pick up a different one when they clock back in.

Shared devices present unique security challenges. For example, employees may have access to company or customer data that shouldn’t be available to others on the same device.

### Personal devices (BYOD)

Some organizations use a bring-your-own-device (BYOD) model where frontline workers use their own mobile devices to access Teams and other business apps. Here's an overview of some ways to manage access and compliance on personal devices.

### Device operating system

The deployment model you select will partly determine the device operating systems you support. For example, if you implement a BYOD model, you’ll need to support both Android and iOS devices. If you implement a shared devices model, the device OS you choose will determine the capabilities available. For example, Windows devices natively support the ability to store multiple user profiles for automated sign-on and easy authentication with Windows Hello. With Android and iOS, more steps and pre-requisites apply.

|Device OS|Considerations|
|---------|--------------|
|Windows |Native support for storing multiple user profiles on the device. <br> Supports Windows Hello for passwordless authentication. <br> Simplified deployment and management capabilities when used with Microsoft Intune. |
|Android |[Limited native capabilities](https://source.android.com/docs/devices/admin/multi-user) for storing multiple user profiles on devices. <br> Android devices can be enrolled in shared device mode to automate single sign-on and sign out. <br> Robust management of controls and APIs. <br> Existing ecosystem of devices built for frontline use. |
|iOS and iPadOS |iOS devices can be enrolled in shared device mode to automate single sign-on and sign out. <br> Storing multiple user profiles on iPadOS devices is possible with Shared iPad for Business. Conditional access isn't available with Shared iPad for Business because of the way Apple partitions user profiles. |

In a shared devices deployment, the ability to store multiple user profiles on a device to simplify user sign on and the ability to clear app data from the previous user (single sign out) are practical requirements for frontline deployments. These capabilities are native on Windows devices and iPads using Shared iPad for Business.

## User identity

Microsoft 365 for frontline workers uses Azure AD as the underlying identity service for delivering and securing all applications and resources. Users must have an identity that exists in Azure AD to access Microsoft 365 cloud applications.

If you choose to manage frontline user identities with Active Directory Domain Services (AD DS) or a third-party identity provider, you’ll need to federate these identities to Azure AD. [Learn how to integrate your third-party service with Azure AD](flw-setup-microsoft-365.md#provision-users).

The possible implementation patterns for managing frontline identities include:

- **Azure AD standalone:** Your organization creates and manages user, device, and application identities in Azure AD as a standalone identity solution for your frontline workloads. This implementation pattern is recommended as it simplifies your frontline deployment architecture and maximizes performance during user sign-on.
- **Active Directory Domain Services (AD DS) integration with Azure AD:** Microsoft provides Azure AD Connect to join these two environments. Azure AD Connect replicates AD user accounts to Azure AD, allowing a user to have a single identity capable of accessing both local and cloud-based resources. Although both AD DS and Azure AD can exist as independent directory environments, you can choose to create hybrid directories.
- **Third-party identity solution sync with Azure AD:** Azure AD supports integration with third-party identity providers such as Okta and Ping Identity through federation. [Learn more about using third-party identity providers](flw-setup-microsoft-365.md#provision-users).

### HR-driven user provisioning

Automating user provisioning is a practical need for organizations that want frontline employees to be able to access applications and resources on day one. From a security perspective, it’s also important to automate deprovisioning during employee offboarding to ensure that previous employees don’t retain access to company resources.

Azure AD user provisioning service integrates with cloud-based and on-premises HR applications, such as Workday and SAP SuccessFactors. You can configure the service to automate user provisioning and deprovisioning when an employee is created or disabled in the HR system.

### My Staff

With the [My Staff](/azure/active-directory/roles/my-staff-configure) feature in Azure Active Directory (Azure AD), you can delegate common user management tasks to frontline managers through the My Staff portal. Frontline managers can perform password resets or manage phone numbers for frontline workers directly from the store or factory floor, without having to route the requests to helpdesk, operations, or IT.

My Staff also enables frontline managers to register their team members' phone numbers for SMS sign-in. If [SMS-based authentication](/azure/active-directory/authentication/howto-authentication-sms-signin) is enabled in your organization, frontline workers can sign in to Teams and other apps using only their phone numbers and a one-time passcode sent via SMS. This makes signing in for frontline workers simple, secure, and fast.

## Mobile device management

Mobile device management (MDM) solutions can simplify deployment, management and monitoring of devices. Microsoft Intune natively supports features important for deploying shared devices to frontline workers. These capabilities include:

- **Zero-touch provisioning:** IT admins can enroll and pre-configure mobile devices without physical custody of the devices (for manual configuration). This capability is useful when deploying shared devices at scale to field locations because devices can be shipped directly to the intended frontline location where automated configuration and provisioning steps can be completed remotely.
- **Single sign-out:** Stops background processes and automates user sign out across all applications and resources assigned to the previous user when a new user signs in. Android and iOS devices must be enrolled in shared device mode to use single sign out.
- **Azure AD conditional access:** IT admins can implement automated access control decisions for cloud-based applications and resources through identity-driven signals. For example, it’s possible to prevent access by a shared or BYOD device that doesn’t have the latest security updates installed. [Learn more about how to secure your deployment](flw-setup-microsoft-365.md#step-6-configure-security).

If you’re using a third-party MDM solution for your shared devices deployment, such as VMware’s Workspace ONE or SOTI MobiControl, it’s important to understand the associated capabilities, limitations and available workarounds.

Some third-party MDMs can clear app data when a global sign out occurs on an Android device. However, app data clearing can miss data that is stored in a shared location, delete app settings, or cause first-run experiences to reappear. Android devices enrolled in shared device mode can selectively clear the necessary application data during device check-in or when the new user logs in to the device. [Learn more about authentication in shared device mode](#authentication).

You can manually configure shared device mode in third-party MDM solutions for iOS and Android devices, however, manual configuration steps don’t mark the device compliant in Azure AD, which means conditional access isn’t supported in this scenario. If you choose to manually configure devices in shared device mode, you’ll need to take additional steps to re-enroll Android devices in shared device mode with zero-touch provisioning to get conditional access support when third-party MDM support is available by uninstalling and reinstalling Authenticator from the device.

A device can only be enrolled in one MDM solution, but you can use multiple MDM solutions to manage separate pools of devices. For example, you could use Workspace ONE for shared devices and Intune for BYOD. If you use multiple MDM solutions, keep in mind that some users may not be able to access shared devices because of a mismatch in conditional access policies.

|MDM solution |Single sign out|Zero touch provisioning|Azure AD conditional access|
|-------------|---------------|-----------------------|---------------------------|
|Intune (Microsoft) |Supported for Android and iOS devices enrolled in shared device mode |Supported for Android and iOS devices enrolled in shared device mode |Supported for Android and iOS devices enrolled in shared device mode |
|Workspace ONE (VMware) |Supported with [Clear Android app data](https://docs.vmware.com/en/VMware-Workspace-ONE-UEM/services/iOS_Platform/GUID-SharedDevicesOverview.html) capabilities. Unavailable for iOS |Currently unavailable for Android and iOS. |Currently unavailable for Android and iOS. |
|MobiControl (SOTI) |Supported with [Wipe program data](https://www.soti.net/mc/help/v14.4/en/console/applications/wipe_app_data.html) capabilities. Unavailable for iOS. |Currently unavailable for Android and iOS. |Currently unavailable for Android and iOS. |

Windows devices enrolled in Intune support single sign out, zero touch provisioning, and Azure AD conditional access. You don’t need to configure shared device mode on Windows devices.

Intune is recommended for BYOD scenarios because it provides the best support and functionality out-of-the-box across device types.

### Enroll Android and iOS personal devices

In addition to your company-owned devices, you can [enroll](/mem/intune/enrollment/device-enrollment) users' personally owned devices into management in Intune. For BYOD enrollment, you add device users in the Microsoft Intune admin center, configure their enrollment experience, and set up Intune policies. Users complete enrollment themselves in the Intune Company Portal app that's installed on their device.

In some cases, users may be reluctant to enroll their personal devices into management. If device enrollment isn't an option, you can choose a mobile application management (MAM) approach and use [app protection policies](/mem/intune/apps/app-protection-policies) to manage apps that contain corporate data. For example, you can apply app protection policies to Teams and Office mobile apps to prevent company data from being copied to personal apps on the device.

To learn more, see ["Personal devices vs Organization-owned devices" in the Intune planning guide](/mem/intune/fundamentals/intune-planning-guide#personal-devices-vs-organization-owned-devices) and [Deployment guidance: Enroll devices in Microsoft Intune](/mem/intune/fundamentals/deployment-guide-enrollment).

## Authentication

Authentication features control who or what uses an account to gain access to applications, data, and resources. Organizations deploying shared devices to frontline workers need authentication controls that don’t impede worker productivity while preventing unauthorized or unintended access to applications and data when devices are transferred between authenticated users.

Microsoft’s frontline solution is delivered from the cloud and utilizes Azure AD as the underlying identity service for securing Microsoft 365 applications and resources. These authentication features in Azure AD address the unique considerations for shared devices deployments: automatic single sign-on, single sign out, and other strong authentication methods.

### Shared device mode

[Shared device mode](/azure/active-directory/develop/msal-shared-devices) is a feature of Azure AD that enables you to configure devices to be shared by employees. This feature enables single sign-on (SSO) and device-wide sign out for Microsoft Teams and all other apps that support shared device mode. You can integrate this capability into your line-of-business (LOB) apps using the Microsoft Authentication Library (MSAL). Once a device is in shared device mode, applications that leverage Microsoft Authentication Library (MSAL) can detect that they’re running on a shared device and determine who the current active user is. With this information, applications can accomplish these authentication controls:

- **Automatic single sign-on:** If a user has already signed into another MSAL application, the user will be logged into any application compatible with Shared Device Mode. This is an improvement to the previous single sign-on experience because it further reduces the time it takes to access applications after signing into the first application by removing the need for a user to select a previously signed in account.
- **Single sign-out:** Once a user signs out of an app using MSAL, all other applications integrated with shared device mode can stop background processes and commence sign out data clearing processes to prevent unauthorized or unintended access by the next user.

Here's how shared device mode works, using Teams as an example. When an employee signs in to Teams at the start of their shift, they’re automatically signed in to all other apps that support shared device mode on the device. At the end of their shift, when they sign out of Teams, they're signed out globally from all other apps that support shared device mode. After sign out, the employee's data and company data in Teams (including apps hosted within it) and in all other apps that support shared device mode can no longer be accessed. The device is ready for the next employee and can be safely handed off.

Shared device mode is an improvement to the app data clear functionality for Android because it allows application developers to selectively clear personal user data without impacting app settings or cached data. With shared device mode, the flags that allow an application to remember if a first run experience is shown aren't deleted so users don’t see a first run experience every time they sign-on.

Shared device mode also allows a device to be enrolled into Azure AD once for all users so that you can easily create profiles that secure app and data usage on the shared device. This allows you to support conditional access without having to re-enroll the device every time a new user authenticates into the device.

You use a mobile device management (MDM) solution like Microsoft Intune or Microsoft Configuration Manager to prepare a device to be shared by installing the [Microsoft Authenticator app](https://support.microsoft.com/account-billing/how-to-use-the-microsoft-authenticator-app-9783c865-0308-42fb-a519-8cf666fe0acc) and turning on shared mode. Teams and all other apps that support shared device mode use the shared mode setting to manage users on the device. The MDM solution you use should also perform a device cleanup when sign out occurs.

> [!NOTE]
> Shared device mode isn’t a full data loss prevention solution. Shared device mode should be used in conjunction with Microsoft Application Manager (MAM) policies to ensure that data doesn’t leak to areas of the device that aren’t leveraging shared device mode (e.g., local file storage).

#### Prerequisites and considerations

You’ll need to meet the following prerequisites to use shared device mode.

- The device must first have Microsoft Authenticator installed.
- The device must be enrolled in shared device mode.
- All the applications that need these benefits need to integrate with the shared device mode APIs in MSAL.

MAM policies are required to prevent data from moving from shared device mode enabled applications to non-shared device mode enabled applications.

Currently, zero-touch provisioning of shared device mode is only available with Intune. If you’re using a third-party MDM solution, devices must be enrolled in shared device mode using the [manual configuration steps](/azure/active-directory/develop/tutorial-v2-shared-device-mode#set-up-an-android-device-in-shared-mode).

> [!NOTE]
> Conditional access isn’t fully supported for devices that are configured manually.

Some Microsoft 365 applications don’t currently support shared device mode. The table below summarizes what is available. If the application you need lacks shared device mode integration, it’s recommended that you run a web-based version of your application in either Microsoft Teams or Microsoft Edge to get the benefits of shared device mode.

Shared device mode is currently supported on Android devices. Here's some resources to help you get started.

#### Enroll Android devices into shared device mode

To manage and enroll Android devices into shared device mode using Intune, devices must be running Android OS version 8.0 or later, and have Google Mobile Services (GMS) connectivity. To learn more, see:

- [Set up Intune enrollment for Android Enterprise dedicated devices](/mem/intune/enrollment/android-kiosk-enroll)
- [Enroll Android Enterprise dedicated devices into Azure AD shared device mode](https://techcommunity.microsoft.com/t5/intune-customer-success/enroll-android-enterprise-dedicated-devices-into-azure-ad-shared/ba-p/1820093)

You can also choose to deploy the Microsoft Managed Home Screen app to tailor the experience for users on their Intune-enrolled Android dedicated devices. Managed Home Screen acts as a launcher for other approved apps to run on top of it, and lets you customize devices and restrict what employees can access. For example, you can define how apps appear on the home screen, add your company logo, set custom wallpaper, and allow employees to set a session PIN. You can even configure sign out to happen automatically after a specified period of inactivity.  To learn more, see:

- [Configure the Microsoft Managed Home Screen app for Android Enterprise](/mem/intune/apps/app-configuration-managed-home-screen-app)
- [How to set up Microsoft Managed Home Screen on dedicated devices in multi-app kiosk mode](https://techcommunity.microsoft.com/t5/intune-customer-success/how-to-setup-microsoft-managed-home-screen-on-dedicated-devices/ba-p/1388060)

#### For developers creating apps for shared device mode

If you're a developer, see the following resources for more information about how to integrate your app with shared device mode:

- [Shared device mode for Android devices](/azure/active-directory/develop/msal-android-shared-devices)
- [Shared device mode for iOS devices](/azure/active-directory/develop/msal-ios-shared-devices)

### Multifactor authentication

Azure AD supports several forms of multifactor authentication with the Authenticator app, FIDO2 keys, SMS, voice calls, and more.

Due to higher cost and legal restrictions, the most secure authentication methods may not be practical for many organizations. For example, FIDO2 security keys are typically considered too expensive, biometric tools like Windows Hello may run against existing regulations or union rules, and SMS sign in may not be possible if frontline workers aren’t permitted to bring their personal devices to work.

multifactor authentication provides a high level of security for applications and data but adds ongoing friction to user sign-on. For organizations that choose BYOD deployments, multifactor authentication may or may not be a practical option. It's highly recommended that business and technical teams validate the user experience with multifactor authentication before broad rollout so that the user impact can be properly considered in change management and readiness efforts.

If multifactor authentication isn't feasible for your organization or deployment model, you should plan to leverage robust conditional access policies to reduce security risk.

#### Passwordless authentication

To further simplify access for your frontline workforce, you can leverage passwordless authentication methods so that workers don’t need to remember or type in their passwords. Passwordless authentication methods are also typically more secure, and many can satisfy MFA requirements if necessary.

Before proceeding with a passwordless authentication method, you’ll need to determine if it can work in your existing environment. Considerations like cost, OS support, personal device requirement, and MFA support can impact whether an authentication method would work for your needs. For example, FIDO2 security keys are currently considered too expensive, and SMS and Authenticator sign in may not be possible if frontline workers aren't permitted to bring their personal devices to work.

Refer to the table to assess passwordless authentication methods for your frontline scenario.

|Method|OS support|Requires personal device|Supports multifactor authentication |
|------|----------|------------------------|-------------------------------------|
|SMS sign in |Android and iOS |Yes |No |
|Windows Hello |Windows |No |Yes |
|Microsoft Authenticator |All |Yes |Yes |
|FIDO2 Key |Windows |No |Yes |

If you're deploying with shared devices and the previous passwordless options aren't feasible, you can opt to disable strong password requirements so that users can provide simpler passwords while logging into managed devices. If you choose to disable strong password requirements, you should consider adding these strategies to your implementation plan.

- Only disable strong password requirements for users of shared devices.
- Create a conditional access policy that prevents these users from logging into non-shared devices on non-trusted networks.

## Authorization

Authorization features control what an authenticated user can do or access. In Microsoft 365, this is achieved through a combination of Azure AD conditional access policies and application protection policies.

Implementing robust authorization controls is a critical component of securing a frontline shared devices deployment, particularly if it isn't possible to implement strong authentication methods like multifactor authentication (MFA) for cost or practicality reasons.

### Azure AD conditional access

With conditional access, you can create rules that limit access based on the following signals:

- User or group membership
- IP location information
- Device (only available if the device is enrolled in Azure AD)
- Application
- Real-time and calculated risk detection

Conditional access policies can be used to block access when a user is on a non-compliant device or while they’re on an untrusted network. For example, you may want to use conditional access to prevent users from accessing an inventory application when they aren’t on the work network or are using an unmanaged device, depending on your organization’s analysis of applicable laws.

For BYOD scenarios where it makes sense to access data outside of work, such as HR-related information or non-business-related applications, you may choose to implement more permissive conditional access policies alongside strong authentication methods like multifactor authentication.

Conditional access is supported for:

- Shared Windows devices managed in Intune.
- Shared Android and iOS devices enrolled in shared device mode with zero-touch provisioning.
- BYOD for Windows, Android, and iOS managed with Intune or third-party MDM solutions.

Conditional access **not** supported for:

- Devices manually configured with shared device mode, including Android and iOS devices managed with third-party MDM solutions.
- iPad devices that use Shared iPad for Business.

> [!NOTE]
> Conditional access for Android devices managed with select third-party MDM solutions is coming soon.

For more information on conditional access, see the [Azure AD conditional access documentation](/azure/active-directory/conditional-access/).

### App protection policies

With MAM from Intune, you can use app protection policies (APP) with applications that have integrated with Intune’s [APP SDK](/mem/intune/developer/app-sdk-get-started). This allows you to further protect your organization's data within an application.

With app protection policies you can add access control safeguards, such as:

- Require a PIN to open an app in a work context.
- Control the sharing of data between applications
- Prevent the saving of company app data to a personal storage location
- Ensure the device’s operating system is up to date

You can also use APPs to ensure that data doesn’t leak to applications that don't support shared device mode. To prevent data loss, the following APPs must be enabled on shared devices:

- Disable copy/paste to non-shared device mode enabled applications.
- Disable local file saving.
- Disable data transfer capabilities to non-shared device mode enabled applications.

APPs are helpful in BYOD scenarios because they allow you to protect your data at the app level without having to manage the entire device. This is important in scenarios where employees may have a device managed by another tenant (for example, a university or another employer) and can't be managed by another company.

## Application management

Your deployment plan should include an inventory and assessment of the applications that frontline workers will need to do their jobs. This section covers considerations and necessary steps to ensure that users have access to required applications and that the experience is optimized in the context of your frontline implementation.

For the purposes of this assessment, applications are categorized in three groups:

- **Microsoft applications** are built and supported by Microsoft. Microsoft applications support Azure AD and integrate with Intune’s APP SDK. However, not all Microsoft applications are supported with shared device mode. [See a list of supported applications and availability.](authentication bookmark)
- **Third-party applications** are built and sold commercially by a third-party provider. Some applications don’t support Azure AD, Intune’s APP SDK, or shared device mode. Work with the application provider and your Microsoft account team to confirm what the user experience will be.
- **Custom line-of-business applications** are developed by your organization to address internal business needs. If you build applications using Power Apps, your app will automatically be enabled with Azure AD, Intune, and shared device mode.

The applications that frontline users access meet these requirements (as applicable) for global single-in and single sign out to be enabled.

- **Integrate custom and third-party applications with [MSAL](/azure/active-directory/develop/msal-overview):** Users can authenticate into your applications using Azure AD, enable SSO, and conditional access policies can be applied.
- **Integrate applications with shared device mode (applies only to Android or iOS shared devices):** Applications can use the necessary shared device mode APIs in MSAL to perform automatic single sign-on and single sign out. Appropriately using these APIs allows you to integrate with shared device mode. This isn’t necessary if you’re running your application in Teams, Microsoft Edge, or PowerApps.
- **Integrate with Intune’s APP SDK (applies only to Android or iOS shared devices):** Applications can be managed in Intune to prevent unintended or unauthorized data exposure. This isn’t necessary if your MDM performs app data clears that wipe any sensitive data during device check-in flows (single sign out).

Once you’ve successfully validated your applications, you can deploy them to managed devices using your MDM solution. This allows you to preinstall all the necessary applications during device enrollment so that users have everything they need on day one.

### App launchers for Android devices

On Android devices, the best way of providing a focused experience as soon as an employee opens a device is to provide a customized launch screen. With a customized launch screen, you can show only the relevant applications an employee needs to use and widgets that highlight key information.

Most MDM solutions provide their own app launcher that can be used. For example, Microsoft provides Managed Home Screen. If you want to build your own custom app launcher for shared devices, you’ll need to integrate it with shared device mode so that single sign-on and single sign out works on your devices. The following table highlights some of the most common app launchers available today by Microsoft and third-party developers.

|App launcher |Capabilities|
|-------------|------------|
|Managed Home Screen |Use Managed Home Screen when you want your end users to have access to a specific set of applications on your Intune-enrolled dedicated devices. Because Managed Home Screen can be automatically launched as the default home screen on the device and appears to the end user as the only home screen, it's useful in shared devices scenarios when a locked down experience is required. |
|Microsoft Launcher |Microsoft Launcher lets users personalize their phone, stay organized on the go, and transfer work from their phone to their PC. Microsoft Launcher differs from Managed Home Screen because it allows the end user access to their standard home screen. Microsoft Launcher is therefore useful in BYOD scenarios. |
|VMware Workspace ONE Launcher |For customers using VMware, the Workspace ONE Launcher is he best tool to curate a set of applications that your frontline workforce needs access to. The sign out option from this launcher is also what enables Android App Data Clear for single sign out on VMware devices. VMware Workspace ONE Launcher doesn't currently support shared device mode. |
|Custom app launcher |If you want a fully customized experience, you can build out your own custom app launcher. You can integrate your launcher with shared device mode so that your users only need to sign in and out once. |

## Related articles

- [Frontline worker management](/azure/active-directory/fundamentals/frontline-worker-management)
