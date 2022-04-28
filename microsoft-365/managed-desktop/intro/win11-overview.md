---
title: Microsoft Managed Desktop and Windows 11
description:  How and when Windows 11 is available in the service
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.topic: article
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
---

# Microsoft Managed Desktop and Windows 11

Following the announcement of Windows 11, you might have started planning Windows 11 migrations as part of your efforts to keep Windows 10 devices up to date.

This article outlines important considerations and how Microsoft Managed Desktop will support smooth transitions in your environments. For information about Windows 11 itself, see [Windows 11 overview](/windows/whats-new/windows-11).

For specific steps to follow to get Windows 11 installed on your Microsoft Managed Desktop devices, see [Preview and test Windows 11 with Microsoft Managed Desktop](../working-with-managed-desktop/test-win11-mmd.md).

## Timeline for Windows 10 and Windows 11

Windows 11 became generally available on October 4, 2021. It's ready for consumer and enterprise deployment, and it's a fully supported platform.

We'll begin scheduling deployments for all Microsoft Managed Desktop devices starting January 2023. However, we'll provide full support for those that wish to deploy Windows 11 sooner. We'll consult and advise admins to develop and implement migration plans for each tenant based on technical readiness and your business considerations.

Microsoft Managed Desktop continues to support Windows 10 in parallel until it reaches end of enterprise support. See [Windows 10 release information](/windows/release-health/release-information) for life cycle information.

## Assessing pre-release versions of Windows 11

More than 95% of Microsoft Managed Desktop devices are eligible for Windows 11. You might want to try the upgrade on test devices prior to production deployment. For more about Windows 11 system requirements, see [Windows 11 requirements](/windows/whats-new/windows-11-requirements).

For Microsoft Managed Desktop devices, you can [add devices to the Windows 11 test device group](/microsoft-365/managed-desktop/working-with-managed-desktop/test-win11-mmd?view=o365-worldwide#add-devices-to-the-windows-11-test-group). This group receives the Windows 11 general availability build along with a Microsoft Managed Desktop baseline configuration. Once added to the device group, allow one to two days for a device to pick up the new settings and be offered Windows 11.

For devices that aren't managed by Microsoft Managed Desktop, you can read [Endpoint Manager guidance](https://techcommunity.microsoft.com/t5/microsoft-endpoint-manager-blog/endpoint-manager-simplifies-upgrades-to-windows-11/ba-p/2771886) to learn about deploying Windows 11. If you have devices running Windows 11 and later and enroll them in Microsoft Managed Desktop, they won't revert back to Windows 10.

## Support for pre-release Windows 11 devices

For those that opted into Windows 11 testing prior to general availability, devices may have preview builds installed.

Microsoft Managed Desktop devices in this state won't be offered the Windows 11 general availability build. However, the devices will still be supported to resolve encountered issues. Microsoft Managed Desktop monitors all managed devices for security threats, and will respond to any alerts regardless if the device is running a Windows 11 preview build.

Because we're committed to helping you migrate to Windows 11 while remaining productive, we encourage you to report defects you encounter with the platform. We prioritize:

- Defects that block user productivity upon broad deployment of Windows 11.
- Defects that block user productivity on Windows 10 devices.

## Testing application compatibility

Application compatibility is one of the most common concerns in any platform migration because of the potential for productivity disruptions. We're using several proactive and reactive measures to help you feel confident about smooth app transitions to Windows 11.

### Proactive measures

The following are some proactive measures:

| Proactive measures | Description |
| ----- | ----- |
| Common apps | Microsoft extensively tests the most common enterprise applications and suites deployed on Windows 11 builds. We work with external software publishers and internal product teams to resolve any issues discovered during testing. For more information about our proactive compatibility testing effort, see the [Application Compatibility blog](https://blogs.windows.com/windowsexperience/2019/01/15/application-compatibility-in-the-windows-ecosystem/).
| Line-of-business apps | [Test Base](https://www.microsoft.com/en-us/testbase) is a resource that app publishers and IT admins can use to submit apps and test cases for Microsoft to run on a virtual machine running Windows 11 builds in a secure Azure environment.<br><br>Results, test insights, and regression analysis for each test execution are available to you on a private Azure portal. Microsoft Managed Desktop will help you prioritize your line-of-business apps for validation based on app usage and reliability data. For more information about Test Base, see [Test Base for Microsoft 365](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/test-base-for-microsoft-365-microsoft-ignite-2021-updates/ba-p/2185566). |

### Reactive measures

If you encounter app compatibility issues in test or production environments, you can receive no-cost support by opening a [support request](/microsoft-365/managed-desktop/working-with-managed-desktop/test-win11-mmd?view=o365-worldwide#report-issues).

For Windows 11, support includes any functionality with the following apps that run on the latest operating system builds:

- Office
- Microsoft Edge
- Teams
- line-of-business applications

Microsoft App Assure directly engages app publishers to prioritize and resolve app compatibility issues when needed.
