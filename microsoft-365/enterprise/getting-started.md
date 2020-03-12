---
title: Getting Started - Desktop Deployment
f1.keywords:
- NOCSH
ms.author: jogruszc
author: JGruszczyk
manager: jemed
ms.date: 05/20/2019
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom: 
description: Introduction to the Desktop Deployment Process.
---

# Getting Started - Desktop Deployment

![](../media/desktop-deployment-center-home-media/desktop-deployment-center-home-media-2.png)

<table>
<thead>
<td><img src="../media/desktop-deployment-center-home-media/desktop-deployment-center-home-media-1.png" alt="Getting Started" height="130" width="130" /></td>
<td><p><strong>Getting Started: People, Process and Technology Guidance</strong></p>
<p>Discover the benefits of Windows 10 and Microsoft 365 Apps for enterprise, major changes and considerations versus previous deployments, and best practices to ensure a smooth transition to Windows 10 and Microsoft 365 Apps for enterprise.</p></td>
<td><a href="https://aka.ms/ddev0" target="_blank"><img src="../media/desktop-deployment-center-home-media/desktop-deployment-center-home-media-13.png" alt="Getting Started" height="120" width="213" /></a></td>
</thead>
</table>

>[!NOTE]
>In this series we will explain the best ways to use existing tools and introduce you to new technologies, services, and methods enabled by the Cloud.  To see the full desktop deployment process, visit the [Desktop Deployment Center](https://aka.ms/HowToShift).
>

Welcome to the Desktop Deployment Center, our central place to learn how to help you plan and make the shift to Windows 10 and Microsoft 365 Apps for enterprise. This will allow you take advantage of a secure workspace, powered by the latest productivity, teamwork, and collaboration experiences.

If you haven’t deployed a new desktop environment for a while, the good news is much about the deployment process has improved. Challenges of the past, such as application compatibility, are much less of an issue today. New tools, as well as insight delivered from the Cloud, enable you to move forward with confidence faster and more efficiently than ever before.

In this introduction we’ll outline what has changed and go on a tour of the Desktop Deployment Wheel. This will guide you through the recommended steps for your shift to Windows 10 and Microsoft 365 Apps for enterprise, detailing how to leverage your existing tools and processes while adopting modern management technology and approaches along the way.

## Why upgrade?

In combination, Windows 10 and the Microsoft Intelligence Cloud enhance your ability to deliver the most empowering and secure workspace for your users while allowing you to simplify your supporting infrastructure.

One of the key tenants of modern management practices is devices that are always up-to-date. Through this series you will read about new capabilities that are being delivered to help you move to Windows 10 and Microsoft 365 Apps for enterprise while staying current with the semi-annual releases of both.

[Windows 10 for the IT Pro](https://www.microsoft.com/itpro/windows-10)

[About Microsoft 365 Apps for enterprise in the enterprise](https://docs.microsoft.com/deployoffice/about-office-365-proplus-in-the-enterprise)

## What has Changed

Let’s start by taking a look at what has changed and improved since your last desktop deployment. If you haven’t shifted your desktop environment in a while you’re likely using Windows 7 and Office 2010 or Office 2013. If you are, you'll notice a few things have evolved since your last major upgrade. Here are some of the core changes:

**Identity and Access:** Windows 10 and Microsoft 365 Apps for enterprise, with its connectivity to cloud productivity, security, and management services, has a new Identity and Access Management service at its core: Azure Active Directory (Azure AD). This enables single sign-on and secure connectivity across your cloud services, meaning that you are going to need Azure AD in place to take advantage of Microsoft 365 services such as Office 365, Intune, or Windows Autopilot.

[Microsoft 365](https://www.microsoft.com/microsoft-365/default.aspx)

**Secure Pre-Boot Environment:** 64-bit UEFI firmware replaces BIOS. This not only speeds up boot times, it is required to enable many of the modern security capabilities in Windows 10. While Windows 10 will run on BIOS, UEFI is strongly recommended. If you have not switched from BIOS to UEFI and leveraging 64-bit, now is the time. There are tools to help you make this switch either during a Windows 10 upgrade, or after it.

**Cloud-based device Management:** Services like Microsoft Intune help you manage your Windows 10 devices as you do other mobile devices, all from one place. What makes Microsoft Intune unique is the ability to co-manage your Windows 10 devices with Microsoft Endpoint Configuration Manager. You can use Configuration Manager to help you in your shift to Windows 10, and then add Microsoft Intune. Working together, Microsoft Endpoint Configuration Manager becomes the intelligent edge within your organization, connected to the Microsoft intelligent cloud. This allows you to manage your users’ devices securely wherever they are, whether connected on your organization’s infrastructure or in the public cloud.

[Co-management for Windows 10 devices](https://docs.microsoft.com/configmgr/core/clients/manage/co-management-overview)

**Cloud-based Deployment Service:** As you acquire new PCs we’ve introduced a new cloud service to help you deploy Microsoft 365 devices called the Windows Autopilot deployment service. Autopilot is integrated with your hardware providers and new PCs are automatically registered in Autopilot enabling the new PC to be shipped directly to the end-user. When the PC is powered on the first time it is quickly configured to your organizations desired configuration and customized for the specific needs of the user.

[Windows Autopilot](https://www.microsoft.com/windowsforbusiness/windows-autopilot)

**Click-to-Run Deployments:** When provisioning Office desktop apps, Microsoft 365 Apps for enterprise is the preferred option. This gives you access to the newest innovations in Office as they are developed, so you won’t need to wait years before getting new capabilities. You’ll also use a new installation called Click-to-Run.

Click-to-Run is quite different from the MSI-based packages of the past. Click-to-Run is faster, lighter, and supports updates in the background to keep your users to be up and running. It is still a local copy of Office and you can continue to use your existing deployment tools, like Microsoft Endpoint Configuration Manager, to provision and configure the apps.

[Deployment guide for Microsoft 365 Apps for enterprise](https://docs.microsoft.com/DeployOffice/deployment-guide-for-office-365-proplus)

**Semi-Annual Updates:** Once you have moved to Windows 10 and Microsoft 365 Apps for enterprise, updates are delivered semi-annually with new features. But with Microsoft able to deliver insights from the cloud to help, you can quickly and confidently roll out these updates to hundreds or thousands of devices. Like an in-place upgrade, the Feature Update preserves apps, data, and configurations from the previous release.

## The Deployment Process Wheel

Before you get started, you’ll want to create a high-level plan and get the necessary sponsors on board. Our deployment process wheel outlines critical steps to help you to identify core team members and resources to manage in the following deployment areas.

**[Step 1: Device and App readiness](https://aka.ms/mdd1)** For a successful deployment you must first know what you have. That means taking an inventory of your devices and apps and verifying compatibility. To help with this you can leverage the tools available in our cloud-based service, Desktop Analytics. Desktop Analytics allows you tap into compatibility intelligence and diagnostic data gathered from hundreds of millions of PCs, to assess the apps and drivers running on your device so you can establish the readiness of your desktop estate. You can even export a list of “PCs ready for deployment” from Desktop Analytics to Configuration Manager if you use it, allowing you to build data-driven collections of targeted PCs as they become ready.

[Get started with Upgrade Readiness](https://docs.microsoft.com/windows/deployment/upgrade/upgrade-readiness-get-started)

**[Step 2: Directory and Network Readiness](https://aka.ms/mdd2)** If you haven’t already, you’ll want to implement Azure Active Directory for identity and access management next. You will also want to prepare your network for the movement of system images, application packages, user files, and updates across it. That means a large amount of additional data; your network must have the capacity to handle this extra load without impact to the day-to-day work of your organization. We have a range of networking optimizations available from bandwidth throttling and peer-to-peer options to dynamic bandwidth scavenging and differential updating.

[BranchCache vs. Peer Cache](https://blogs.technet.microsoft.com/swisspfe/2018/01/25/branch-cache-vs-peer-cache/)

**[Step 3: Office and Line of Business App Delivery](https://aka.ms/mdd3)** While Windows continues to support MSI-based installations it also now supports newer installations mechanisms, optimized for automated deployment and continuous updates. Microsoft 365 Apps for enterprise and Office 2019 clients use Click-to-Run installation technology. You may want to make a range of UWP apps available, and you may increasingly find yourself deploying third-party apps and in-house developed Line of Business Apps that use the new MSIX-based packaging apps. This step ensures your apps are ready for automated deployments, and that you are set up for success whether your apps deploy using Click-to-Run, MSIX, conventional MSI-based, or are UWP apps deployed from a Microsoft Store from Business you set up.

[MSIX Intro](https://blogs.msdn.microsoft.com/sgern/2018/06/15/msix-intro/)

**[Step 4: User Files and Settings Migration](https://aka.ms/mdd4)** This is a critical step in any PC replacement or refresh cycle: you have to ensure users’ files, data, and settings move successfully and are preserved over the migration. This step covers the options available for manual or automated migrations, including well-known and new options.

As in previous upgrades, the User State Migration Tool continues to be a valuable tool to automate this process and it remains an integral part of migrations orchestrated using Microsoft Endpoint Configuration Manager or the Microsoft Deployment Toolkit. But moving all this data at migration can be a timing bottleneck for PC replacement due to the physics involved in transferring sometimes hundreds of gigabytes per PC twice – first from the existing desktop, then back down to the new desktop. A new option enabled by OneDrive is Known Folder Move used to sync user documents, pictures, and desktop files at scale, in the cloud, and ahead of deployment.

[Redirect and move Windows known folders to OneDrive](https://docs.microsoft.com/onedrive/redirect-known-folders)

**[Step 5: Security and Compliance](https://aka.ms/mdd5)** Security and Compliance is an area with a lot upside when moving to Windows 10 and Microsoft 365 Apps for enterprise. It is important you familiarize yourself with the new built-in capabilities and compare that with what you already have. For example, new capabilities in Windows 10 using virtualization-based security can prevent credential theft, protect against browser-based exploits and malicious code execution by isolating core processes and secrets from the operating system. In addition, cloud services like Advanced Threat Protection give you a unified platform for security hardening, post-breach detection, investigation, and response. Advanced Threat Protection can also safeguard you against malicious email attachments, unsafe hyperlinks and more.

[Microsoft Security](https://www.microsoft.com/security/default.aspx)

**[Step 6: OS Deployment and Feature Updates](https://aka.ms/mdd6)** With everything prepared, the next step is to deploy the OS images. A lot of the heavy lifting for can be done using System Center Configuration Manage task sequences and infrastructure. The recommended approach is to deploy in phases, first targeting and deploying to an “early adopter group” in your organization using a representative set of hardware and apps. You can then use the data from those devices and users to gradually target more and more PCs.

[Introduction to operating system deployment in Configuration Manager](https://docs.microsoft.com/configmgr/osd/understand/introduction-to-operating-system-deployment)

**[Step 7: Windows and Office as a Service](https://aka.ms/mdd7)** This represents a major shift in the way you maintain users’ desktop real-estate. With this move to Windows 10 and Microsoft 365 Apps for enterprise you can move to managing Windows and Office as a service. In place of a massive shift in technology every few years, you will continually be bringing new capabilities, experiences, and protections to your user. Semi-annual feature updates deliver new capabilities in the Fall and Spring of each year, while monthly cumulative Quality Updates will contain security, reliability, and bug fixes. While you can opt to deploy the Office 2019 client, we strongly recommend you to move to Microsoft 365 Apps for enterprise. This follows a similar service plan to Windows so your users get updates to the Office apps on a regular basis too.

![](../media/getting-started-media/getting-started-media-2.png)

[Overview of Windows as a service](https://docs.microsoft.com/windows/deployment/update/waas-overview)
[Overview of Office as a service](https://docs.microsoft.com/DeployOffice/overview-of-update-channels-for-office-365-proplus)

**[Step 8: User Communications and Training](https://aka.ms/mdd8)** This last step is critical to driving usage of new capabilities for enhancing teamwork, communications, security, and more. Before broad deployment is targeted to users outside early adopter rings, we recommend you roll out user communication and training. This will help drive desired changes in how people use new capabilities in Office, Windows, or other line of business apps and services. To assist, we provide free online training via Microsoft FastTrack. Plus, we’ve published free sample communication plans and timelines together with email, social, and intranet templates to help with your rollout of Windows 10. As a Microsoft 365 or organization, your organization may also be eligible for and direct support.

## Next Step

Now you know what’s new and different in Windows 10 and Microsoft 365 Apps for enterprise, and we have walked through our recommended deployment process wheel. With this taste for the end-to-end guidance and tools available for you to make the shift to Windows 10 and Microsoft 365 Apps for enterprise, let’s get started.

## [Step 1: Device and App Readiness](https://aka.ms/mdd1)

