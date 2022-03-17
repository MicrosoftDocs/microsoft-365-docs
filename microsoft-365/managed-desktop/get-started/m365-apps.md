---
title: Microsoft 365 Apps for enterprise
description: How to deploy Microsoft 365 Apps, how they're updated, and how settings are managed
keywords: change history
ms.service: m365-md
ms.sitesec: library
author: tiaraquan
f1.keywords:
- NOCSH
ms.author: tiaraquan
manager: dougeby
ms.topic: article
ms.localizationpriority: medium
---

# Microsoft 365 Apps for enterprise

## Initial deployment

Microsoft Managed Desktop ensures that Microsoft 365 Apps for enterprise (64-bit) are installed as a part of the image on all [program devices](../service-description/device-list.md). All of the following applications should be present on the device when it's delivered:

- Word
- Excel
- PowerPoint
- Outlook
- Publisher
- Access
- Skype for Business
- OneNote

This approach minimizes network impact and ensures that users can be productive as soon as they receive their device. We then deploy more policies to managed devices to set up the applications for use.

> [!NOTE]
> Microsoft Teams is deployed separately from Microsoft 365 Apps for enterprise and is not included in the base image.

### Available deployment to users

If a user doesn't have Microsoft 365 Apps on their device for any reason, you can use a package to return the device to its expected state. Add the user to the **Modern Workplace-Office-Office365_Install** group and the apps will become available to them in the Company Portal.

### Microsoft 365 Apps for enterprise (32-bit)

Microsoft Managed Desktop doesn't support the deployment of the 32-bit version of Microsoft 365 Apps for enterprise.

## Updates to Microsoft 365 Apps

Microsoft 365 Apps are set to update on the [Monthly Enterprise Channel](/deployoffice/overview-update-channels#monthly-enterprise-channel-overview). This practice provides your users with new Office features each month, but they'll receive just one update per month on a predictable release schedule. Updates are released on the second Tuesday of the month; these updates can include feature, security, and quality updates. These updates occur automatically and are pulled directly from the Office CDN for that specific channel.

Microsoft Managed Desktop staggers each release to identify any potential issues in your environment. We complete the rollout from the Microsoft 365 App product group. Microsoft Managed Desktop schedules update releases to different groups to allow time for validation and testing as follows:

- Test: zero days
- First: zero days
- Fast: three days
- Broad: seven days

Microsoft Managed Desktop sets a seven-day [update deadline](/deployoffice/configure-update-settings-microsoft-365-apps) for devices. Once the update is available, it must be installed within seven days. Users are [notified](/deployoffice/end-user-update-notifications-microsoft-365-apps#notifications-your-users-see-when-you-set-an-update-deadline-for-microsoft-365-apps) that updates are required in several locations: the application, in the system tray 12 hours prior to the deadline, and they receive a 15-minute warning prior to the deadline. All Microsoft 365 Apps must be closed for the update to complete.

### Pausing or rolling back an update

If you need to pause or roll back Microsoft 365 App update for any reason, file an [admin support request](../working-with-managed-desktop/admin-support.md) through the Microsoft Managed Desktop portal.

During a release, Microsoft Managed Desktop monitors the error rates of all Microsoft 365 Apps. If we see a significant difference in quality between the new release and the previous release, we might contact you through the Microsoft Managed Desktop Admin portal.

Depending on the severity, we'll either:

- Ask if you want to pause the release, or
- Inform you we've taken action to mitigate an issue.

### Delivery optimization

Delivery Optimization is a peer-to-peer distribution technology available in Windows 10. It allows devices to share content, such as updates, that the devices downloaded from Microsoft over the internet. Us Delivery Optimization can help reduce network bandwidth, because a device can get portions of the update from another device on its local network instead downloading the update completely from Microsoft.

[Delivery Optimization](/deployoffice/delivery-optimization) is enabled by default on devices running the Windows 10 Enterprise or Windows 10 Education editions.

## Settings managed by Microsoft Managed Desktop

Microsoft manages some settings as a part of the service. Microsoft Managed Desktop doesn't manage an Office Security baseline. However, you can set one yourself by following the guidance in the [Settings you manage](#settings-you-manage) section.

### Update settings

Microsoft Managed Desktop maintains all [update settings](/deployoffice/configure-update-settings-microsoft-365-apps) for managed devices and you should modify these settings.

| Setting | Default value | Description |
| ------ | ------ | ------ |
| Set updates to occur automatically | Enabled | This policy is configured in order to ensure that all Office devices can be kept up to date from the cloud. |
| Set a deadline when updates must be applied | Seven days | The **UpdateDeadline** policy is used to configure the grace period which users have before an update is enforced on the device. This deadline policy also triggers [notifications](/deployoffice/end-user-update-notifications-microsoft-365-apps#notifications-your-users-see-when-you-set-an-update-deadline-for-microsoft-365-apps) to the user to inform them of the changes required on their device. |
| Defer updates on a device for a period | See description | This policy is configured differently for each update management device group. It's required for Microsoft Managed Desktop to meet its update targets: <ul> <li> Test: zero days </li> <li>First: zero days</li><li>Fast seven days</li><li>Broad: 21 days</li></ul> |
| Update notification settings | False | The "hide update notifications" setting is set to **False** on Microsoft Managed Desktop devices to provide the best update experience for users by [notifying](/deployoffice/end-user-update-notifications-microsoft-365-apps#notifications-your-users-see-when-you-set-an-update-deadline-for-microsoft-365-apps) them when updates are required.|
| Specify a location to look for updates | Monthly Enterprise Channel | A combination of the **UpdatePath** and **UpdateChannel** policies is used as needed to achieve the update schedule. These policies are set to ensure that all Office devices receive updates directly from the CDN for the Monthly Enterprise Channel.|
| Specify the Target Version of Microsoft 365 Apps | See description | The Target Version policy is sometimes used by Microsoft Managed Desktop in order to roll back or pin a specific version of Office.|
| Hide the option to enable or disable Office automatic updates | Enabled | This setting is required for Microsoft Managed Desktop to meet its update targets for Microsoft 365 Applications. |
| First run settings | See description | There are several settings that affect the behavior the first time Office is run. |
| Accept the license terms on behalf of the end user | Disabled | The first time a user opens a Microsoft 365 App, they're prompted to accept the license terms. If you want to accept the license terms on behalf of your users, file a support request with the Microsoft Managed Desktop Operations team, and ask for this setting to be enabled. |
| Suppress Outlook mobile checkbox | Disabled | The first time a user opens Outlook, they're prompted to install Outlook Mobile. If you don't want your users to see that checkbox, file a support request with the Microsoft Managed Desktop Operations team, and ask for this setting to be enabled for your devices. |

## Other settings

There are other Microsoft 365 App settings which Microsoft Managed Desktop can optionally configure on your behalf.

| Setting | Default value | Description |
| ------ | ------ | ------ |
| Disable personal OneDrive | Disabled | Some organizations are concerned about users having access to both corporate and personal files on their devices. You can file a support request with the Microsoft Managed Desktop Operations team and ask for this setting to be enabled. |

## Settings you manage

There are many other policies which Microsoft Managed Desktop doesn't yet set as a part of our service. You can configure these policies by using Microsoft Intune, which uses the [Office Cloud Policy](/DeployOffice/overview-office-cloud-policy-service#how-the-policy-configuration-is-applied) service. To set these policies, follow these steps:

1. Sign in to the Microsoft Endpoint Manager admin center.
1. Select **Apps**.
1. Select **Policies for Office apps** then select **Create**.
1. In the **Create policy** configuration page, do the following:
    - Enter a name.
    - Provide an optional description.
    - Under **assignments**, choose whether this policy applies to all users of Microsoft 365 Apps for enterprise, or just to users who anonymously access documents using Office for the web.
    - Select the **AAD-based security group** that is assigned to the policy configuration. Each policy configuration can only be assigned to one group. Each group can only be assigned one policy configuration.
    - Configure the policy settings to be included in the policy configuration. You can search on the policy setting name to find the policy setting that you want to configure. You can also filter if the policy is a recommended security baseline, and if the policy has been configured. The platform column indicates whether the policy is applied to Microsoft 365 Apps for enterprise for Windows devices, Office for the web, or all.
1. After you have made your selections, select **Create**.

> [!NOTE]
> Office Configuration Policies only support user-based deployment
