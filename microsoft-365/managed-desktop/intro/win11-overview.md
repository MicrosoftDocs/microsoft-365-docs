---
title: Microsoft Managed Desktop and Windows 11
description:  How and when Windows 11 is available in the service
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
manager: laurawi
ms.topic: article
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Microsoft Managed Desktop and Windows 11

Following the announcement of Windows 11, you might have started planning Windows 11 migrations as part of your efforts to keep Windows 10 devices up to date. This article outlines important considerations and how Microsoft Managed Desktop will support smooth transitions in your environments. For information about Windows 11 itself, see [Windows 11 overview](/windows/whats-new/windows-11).

## Timeline for Windows 11

Windows 11 preview builds are available starting June 28, 2021 through the Windows Insider Program [Windows Insider Program](https://docs.microsoft.com/windows-insider/). We expect release builds to be generally available by the end of calendar year 2021.

You are welcome to install preview builds on devices whether they are managed by Microsoft Managed Desktop or not. Once Windows 11 is generally available, we'll support both Windows 10 and Windows 11 devices in parallel until Windows 10 reaches end of support.

When Windows 11 is generally available, we'll do more validation testing. We expect that January 2022 will be the soonest that Windows 11 will be offered to Microsoft Managed Desktop production devices through our standard deployment groups.

We'll consult and advise admins to develop and implement migration plans for each tenant based on technical readiness and your business considerations.

## Assessing pre-release versions of Windows 11

More than 95% of Microsoft Managed Desktop devices are eligible for Windows 11, so you might want to preview the upgrade on test devices prior to production deployment. For more about Windows 11 system requirements, see [Windows 11 requirements](/windows/whats-new/windows-11-requirements). You can request details about the eligibility status of your devices from Microsoft Managed Desktop.

For Microsoft Managed Desktop devices, you can request to add test devices to the **\[Modern Workplace\] Windows 11 Pre-Release Test Devices device group**. This group receives Windows 11 preview builds along with a Microsoft Managed Desktop baseline configuration. Microsoft Managed Desktop doesn't manage the release cadence of Windows 11 preview builds, so members of this device group might receive updates more frequently than Windows 10 device groups.

For your devices that aren't managed by Microsoft Managed Desktop, you can join the [Windows Insider Program](https://docs.microsoft.com/windows-insider/) to download preview builds and get guidance on deploying Windows 11 yourself. If you have devices running Windows 11 pre-release builds and later enroll them in Microsoft Managed Desktop, they won't revert back to Windows 10.

## Support for pre-release Windows 11 devices

Pre-release builds of any platform are expected to contain defects and application compatibility issues that can be identified and resolved prior to general availability. As a result, we consider devices running pre-release builds of Windows 11 to be test devices, but we do monitor them along with the rest of the environment for security threats and they are subject to the same security alert response as other Microsoft Managed Desktop devices.

Because we are committed to helping you migrate to Windows 11 while remaining productive, we encourage you to report defects you encounter with pre-release builds. We prioritize defects that will block user productivity upon broad deployment of Windows 11, and defects that block user productivity on Windows 10 devices.

## Testing application compatibility

Application compatibility is one of the most common concerns in any platform migration due to the potential for productivity disruptions. We're using several proactive and reactive measures to help you feel confident about smooth app transitions to Windows 11.

### Proactive measures

**Common apps:** Microsoft is extensively testing the most common enterprise applications and suites deployed on builds of Windows 11. We work with external software publishers and internal product teams to resolve any issues discovered during testing. For more information about our proactive compatibility testing effort, see the [Application Compatibility blog](https://blogs.windows.com/windowsexperience/2019/01/15/application-compatibility-in-the-windows-ecosystem/).

**Line-of-business apps:** [Test Base](https://www.microsoft.com/testbase) is a resource that app publishers and IT admins can use to submit apps and test cases for Microsoft to run on a virtual machine running Windows 11 builds in a secure Azure environment. Results, test insights, and regression analysis for each test execution are available to you on a private Azure portal. Microsoft Managed Desktop will help you prioritize your line-of-business apps for validation based on app usage and reliability data. For more information about Test Base, see [Test Base for Microsoft 365](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/test-base-for-microsoft-365-microsoft-ignite-2021-updates/ba-p/2185566).

### Reactive measures

If you encounter app compatibility issues in test or production environments, you can get support by engaging [App Assure](https://docs.microsoft.com/fasttrack/products-and-capabilities#app-assure) or FastTrack, as appropriate. For Windows 11, this includes any functionality with Office, Microsoft Edge, and Teams applications running on the latest operating system builds. App Assure directly engages app publishers to prioritize and resolve app compatibility issues.