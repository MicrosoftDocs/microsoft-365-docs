---
title: What is Microsoft Managed Desktop?
description:  Orientation for what the service is and shortcuts to articles for different audiences
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
audience: ITpro
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.custom: intro-overview
ms.author: tiaraquan
manager: dougeby
ms.topic: article
---

# What is Microsoft Managed Desktop?

Microsoft Managed Desktop is a cloud-based service that brings together [Microsoft 365 Enterprise](../../enterprise/microsoft-365-overview.md) (including [Windows 10](/windows/windows-10/) Enterprise and [Office 365 Enterprise](https://www.microsoft.com/microsoft-365/business/compare-more-office-365-for-business-plans)) and adds these features:

- User device deployment
- IT service management and operations
- Security monitoring and response

Microsoft Managed Desktop offers a solution for several of the challenges facing businesses and their people today:

- The transition to the agile world of software as a service is daunting.
- Users want an empowered, connected work experience.
- Many current IT management and security processes are outdated, time-intensive, and expensive.
- Businesses want to focus on what makes them uniquely successful, rather than maintaining digital infrastructure.

Your users will enjoy the latest versions of Windows 10 and Microsoft 365 Apps for Enterprise apps (and more), using devices and software that are curated and rigorously tested for best performance and reliability.

Also, you'll never have to worry about keeping any of this software up to date because that happens automatically. The updates follow a careful rollout sequence that is monitored every step of the way. Registered devices are monitored 24 hours a day, seven days a week for technical and security issues. If something goes wrong, help will be on the way.

## Unique to Microsoft Managed Desktop

Of course, there's nothing stopping you from obtaining and managing your own devices and Microsoft 365 deployments yourself. So what does Microsoft Managed Desktop offer?

Our policies and security baseline offers your users these benefits:

- Boot times for Microsoft Managed Desktop devices about one-fourth as long.
- At least twice the battery life.
- About one-third as many device crashes per year.
- Device mobility through [Enterprise State Roaming](/azure/active-directory/devices/enterprise-state-roaming-overview) to allow users to have the same experience no matter what device they sign into.

Your IT admins benefit from these features:

- Insights dashboards constantly keeping you up to date on usage, reliability, device health, and other data on devices and users.
- About *one-tenth* the amount of time needed to update 95% of devices.
- More time to focus on other IT admin activities, thanks to [device management](#device-management) provided by the service.
- Better awareness of device and app performance and early warning of security issues from [device monitoring](#device-monitoring).

## Device management

Microsoft Managed Desktop takes on the burden of managing registered devices and the Microsoft software they use.

| Management | Description |
| ----- | ----- |
| Hardware management| Instead of your IT department researching and figuring out if a device is compatible with the service, we've provided specific hardware and software requirements, tools, and processes to streamline selection so you can choose devices with confidence.<br><br>You can find recommended devices by filtering for Microsoft Managed Desktop on the [Shop Windows Pro business devices](https://www.microsoft.com/windows/business/devices) site. You can either obtain devices yourself, work with a partner, or reuse devices you already have. Registering devices is easy and straightforward. Before they're deployed, you can also [customize](../working-with-managed-desktop/config-setting-overview.md) certain aspects of the device experience for your users. |
| Update management | Microsoft Managed Desktop sets up and manages all aspects of [deployment groups](../service-description/updates.md) for Windows 10 quality and feature updates, drivers, firmware, anti-virus definitions, and Microsoft 365 Apps for enterprise updates.<br><br>This includes extensive testing and verification of all updates, assuring that registered devices are always up to date and minimizing disruptions, freeing your IT department from that ongoing task. |
| Apps | As part of Microsoft 365 Enterprise, Microsoft provides and manages several key Microsoft apps for you.<br><br>However, you may also have other apps that you need for your business. Instead of your IT department having to test, package, and deploy those apps, Microsoft helps you deploy them through the [FastTrack](https://www.microsoft.com/FastTrack) program.<br><br>Additionally, Microsoft's [App Assure](/fasttrack/products-and-capabilities#app-assuree) program can help remediate any app compatibility issues that arise when migrating to the latest versions of our products. Learn more at [Apps in Microsoft Managed Desktop](../get-ready/apps.md).

## Device monitoring

We help maintain the security of your devices with a dedicated security operations center that monitors your devices and uses data from the unique threats that Microsoft analyzes each month. These security features are built in instead of added on later.

We also monitor device health and provide you with insights about device performance. For more information, see [Microsoft Managed Desktop operations and monitoring](../service-description/operations-and-monitoring.md).

## Need more details?

For more information about the value of Microsoft Managed Desktop, including customer stories, see [Microsoft Managed Desktop](https://aka.ms/mmd).

Great places to get started:

- [Roadmap](https://aka.ms/AA6jiam)
- [Forrester Total Economic Impact case study](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/managed-desktop/intro/downloads/forrester-tei-study.pdf)
- Downloadable [one-page summary](https://aka.ms/AA6ob3h)

You can find the latest news at the Microsoft Managed Desktop [blog](https://aka.ms/AA6l2dd).

If Microsoft Managed Desktop seems right for your organization, you can delve into further documentation that explains:

- More about the service.
- How to prepare your organization to enroll.
- How to get started with the service
- Ongoing operations thereafter, including how you and your users can easily get help if needed.

If you're already ready to come on board, start with contacting your [local account team](https://pages.email.office.com/contactmmd/).

### More information

| Information | Description |
| ----- | ----- |
| More overview and background | Primarily for technical and business decision makers, these articles detail the division of roles and responsibilities between your organization and Microsoft, technologies used in Microsoft Managed Desktop, and how the service fits into a broader strategy as part of the ITIL framework.<br><ul><li>[Microsoft Managed Desktop roles and responsibilities](roles-and-responsibilities.md)</li><li>[Microsoft Managed Desktop technologies](technologies.md)</li><li>[Microsoft Managed Desktop and ITIL](../MMD-and-ITSM.md)</li><li>[Compliance](compliance.md)</li><li>[Microsoft Managed Desktop service description](../service-description/index.md)</li></ul> |
| Get ready for enrollment | These articles describe the steps you must take in your organization to prepare for enrollment, including checking that your environment meets key prerequisites, configuring networks, setting up certificates, and preparing your apps.<ul><li>[Prerequisites for Microsoft Managed Desktop](../get-ready/prerequisites.md)</li><li>[Network configuration for Microsoft Managed Desktop](../get-ready/network.md)</li><li>[Prepare on-premises resources access for Microsoft Managed Desktop](../get-ready/authentication.md)</li><li>[Prepare mapped drives for Microsoft Managed Desktop](../get-ready/mapped-drives.md)</li><li>[Prepare certificates and network profiles for Microsoft Managed Desktop](../get-ready/certs-wifi-lan.md)</li><li>[Apps in Microsoft Managed Desktop](../get-ready/apps.md)</li></ul> |
| Get started | Once you're ready to enroll, this section includes the steps to follow to actually join the service, obtain and set up devices, prep your users, and deploy apps.<ul><li>[Add and verify admin contacts in the Admin portal](../get-started/add-admin-contacts.md)</li><li>[Adjust conditional access](../get-started/conditional-access.md)</li><li>[Assign licenses](../get-started/assign-licenses.md)</li><li>[Install Intune Company Portal on on devices](../get-started/company-portal.md)</li><li>[Enable Enterprise State Roaming](../get-started/enterprise-state-roaming.md)</li><li>[Prepare devices](../get-started/prepare-devices.md)</li><li>[Get your users ready to use devices](../get-started/get-started-devices.md)</li><li>[Deploy apps to devices](../get-started/deploy-apps.md)</li></ul> |
| Working with Microsoft Managed Desktop | This section includes information about your day-to-day life with the service, such as how your IT admins can get support if needed, how your users get support, managing your apps once deployed, and how to work the customizable settings on devices.<ul><li>[Admin support for Microsoft Managed Desktop](../working-with-managed-desktop/admin-support.md)</li><li>[Getting help for users](../working-with-managed-desktop/end-user-support.md)</li><li>[Configurable settings - Microsoft Managed Desktop](../working-with-managed-desktop/config-setting-overview.md)</li><ul> |

<!--When you enroll in Microsoft Managed Desktop, Microsoft provides you with devices that are configured to join your Azure Active Directory tenant. Windows 10, Office 365, and some apps and features associated with [Microsoft 365 Enterprise E5](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) are installed (by Microsoft) on your devices. When your employees who are using these devices need help, they contact Microsoft Managed Desktop support (provided by Microsoft) through a custom chat app.-->

<!--With Microsoft Managed Desktop, you get **software as a service** (Microsoft 365 E5), **Device as a service** (Microsoft Surface devices ready to use), and **IT support as a service** (Help desk and more).-->
