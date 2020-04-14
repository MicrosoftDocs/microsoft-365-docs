---
title: Windows 7 to Windows 10 automated upgrades
f1.keywords:
- NOCSH
ms.author: jogruszc
author: JGruszczyk
manager: jemed
ms.date: 07/01/2019
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom: 
description: Windows 7 to Windows 10 automated upgrades for large organizations
---

# Windows 7 to Windows 10 automated in-place upgrades for large organizations

As of January 14, 2020, security updates or support for PCs running Windows 7 are no longer provided. For the shift from Windows 7 to Windows 10 with multiple options to deploy, a common question in the IT community is, “What’s the fastest way to move from Windows 7 to Windows 10?” The short answer is to perform in-place upgrades for existing PCs and in doing that you can reduce focus on several aspects of the desktop deployment process.

<center><img src="../media/windows-7-to-windows-10-upgrade-automated-media/windows-7-to-windows-10-upgrade-automated-media-1.png" alt="wheel" height="421" width="500" /></center>

Using in-place upgrades, several desktop deployment processes get reduced dramatically in scope, especially:

  - **Application packaging** and redelivery of required line-of-business apps – these are simply carried forward from the Windows 7 environment

  - **File migration** and basic user settings – these are also carried forward from the previous install when the same user retains the device

The grayed-out tasks in the deployment process wheel graphic above are not items that you can completely ignore, but to save time this assumes that you’ll bring forward your security configuration, change software update processes post-deployment, and we’ll assume that your user training for the Windows component has largely happened at home for your users, as privately purchased Windows computers since 2012 for most part have not had Windows 7 pre-loaded and since the release of Windows 10 in 2015, the majority of Windows 7 home systems have also been upgraded to Windows 10.

## In-place upgrade reliability, safeguards, and scale

In-place upgrades to Windows 10 are a reliable approach for moving an existing device running Windows 7 or newer to Windows 10, without requiring file migration or application reinstallation. After an in-place upgrade, the user’s files, settings and available apps are consistent with their previous Windows 7 installation. Upgrades also work when moving from like-to-like architectures (32-bit to 32-bit or 64-bit to 64-bit) and like-to-like editions of Windows (Professional to Pro or Enterprise to Enterprise).

The upgrade process by default backs-up your previous Windows installation as part of upgrade, so that in the event of an upgrade failure or if a device or application doesn’t function properly post-upgrade, the computer can roll back to Windows 7. Upgraded PCs by default have 10 days so you can manually initiate a roll back to Windows 7 if necessary.

In-place upgrades can be automated using operating system deployment tools like [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/configmgr/osd/deploy-use/create-a-task-sequence-to-upgrade-an-operating-system) or the [Microsoft Deployment Toolkit](https://docs.microsoft.com/windows/deployment/upgrade/upgrade-to-windows-10-with-the-microsoft-deployment-toolkit). This article highlights the automated approaches and optimizations along with links to related resources for additional help.

## Upgrading a small number of computers

For a single computer or a handful of computers, the manual approach to upgrade is usually the best option compared to more automated approaches. You can find the necessary software and licenses at the [Microsoft Store](https://go.microsoft.com/fwlink/p/?LinkId=808282), other software retailers, or at the [Volume Licensing Service Center](https://www.microsoft.com/licensing/servicecenter/default.aspx) if you have volume licensing. For detailed guidance to upgrade a single PC to Windows 10 as well as post-upgrade restore options, see the [Windows 7 to Windows 10 manual upgrade step-by-step guide](https://docs.microsoft.com/microsoft-365/enterprise/windows-7-to-windows-10-upgrade).

## How to upgrade many computers

If you manage dozens or thousands of computers, then your best option is to perform in-place upgrades using task sequence automation with Microsoft Endpoint Configuration Manager or the Microsoft Deployment Toolkit. While the process is very reliable in most situations, depending on the number of PCs you are upgrading, it still makes sense to have the necessary testing and controls in place to ensure success at scale.

This means that you may skip directory readiness or tasks associated with Azure Active Directory, Office and line of business app delivery and packaging and user file migration since those aspects are retained as part of upgrade, and security should be at minimum carried forward. These areas can all be enhanced over time.

The upgrade deployment option is covered in [OS Deployment and Feature Updates](https://www.aka.ms/mdd6) and although you can easily build scripted solutions that will run Windows 10 setup in an automated way with minimal or no admin interaction, a task sequence will give you more granular control to:

  - Perform pre-deployment checks,

  - Manage drive encryption state pre-upgrade,

  - Uninstall known problematic drivers and apps pre-upgrade,

  - Install additional drivers and apps post-upgrade,

  - Manage drive encryption state post-upgrade,

  - Restore a PC to a previous state – where uninstalled apps or drivers are reinstalled – in the event of a failed upgrade,

  - Along with anything else you need to configure to achieve a business ready state

![](../media/windows-7-to-windows-10-upgrade-automated-media/windows-7-to-windows-10-upgrade-automated-media-2.png)

The most common reasons upgrades may not complete or are not possible include challenges with:

  - Outdated device drivers

  - 3<sup>rd</sup> party disk encryption

  - Low level code solutions, such as anti-malware, VPN or virtualization

[Upgrade task sequence](https://docs.microsoft.com/configmgr/osd/deploy-use/create-a-task-sequence-to-upgrade-an-operating-system) templates are built into Microsoft Endpoint Configuration Manager (current branch) and have been available for several releases. In recent releases, there have been significant technology enhancements to Configuration Manager that make the process even more efficient for determining device and Office compatibility readiness, reducing network traffic, and configuring new options such as OneDrive backup. Watch this [Microsoft Mechanics show](https://youtu.be/CYRnAmCD7ls) to learn more about recent updates to Configuration Manager OS deployment.

If you do not use Microsoft Endpoint Configuration Manager, you can use the Microsoft Deployment Toolkit to build and execute upgrade deployment task sequences.

## Pre-cache task sequence upgrades

The [pre-cache option](https://docs.microsoft.com/configmgr/osd/deploy-use/create-a-task-sequence-to-upgrade-an-operating-system#configure-pre-cache-content) for Configuration Manager deployment task sequence allows clients to download relevant OS upgrade package content before the task sequence upgrades the operating system. Previously, initiating the task sequence would initiate the download of package content. Pre-cache content also gives you the option for the client to only download the applicable OS upgrade package and all other referenced content as soon as it receives the deployment.

Pre-cache task sequences combined with compatibility scans

In addition to saving time for the package download, you can pre-cache the upgrade package and use Windows setup to assess whether the in-place upgrade will succeed prior to executing the actual Windows upgrade. The following command line syntax can be used to silently execute a compatibility scan and find out whether or not Windows Setup assesses the device as ready for upgrade.

Logs will then be sent to your defined server path and Windows Setup will not show itself to the user and close without user interaction.

The results of the logs themselves will be:

1.  If Setup does not find any compatibility issue and the PC appears to meet all requirements, it will return MOSETUP\_E\_COMPAT\_SCANONLY (0xC1900210)

2.  If Setup finds actionable compatibility issues, like apps known incompatible, it will return MOSETUP\_E\_COMPAT\_INSTALLREQ\_BLOCK (0xC1900208)

3.  If Setup finds the PC is not eligible for Windows 10, it will return MOSETUP\_E\_COMPAT\_SYSREQ\_BLOCK (0xC1900200)

4.  If Setup finds that PC does not have enough free space to install, it will return MOSETUP\_E\_INSTALLDISKSPACE\_BLOCK (0xC190020E)

Once you’ve deployed pre-cache sequences with compatibility scans to a large number of PCs in a collection, you can begin to parse the log files for device readiness. Using the outputs listed above, \#1 (0xC1900210) can be actioned as “ready to deploy” and \#4 (0xC190020E) can be actioned by freeing up disk space. Here, you’ll want to be careful about what to delete, but Windows Update Cleanup, Recycle Bin, and Temporary Files are places to start and many cases will provide enough space for the upgrade to succeed. Can you run the compat scan as often as needed until the PC is found ready for the in-place upgrade. You can find more information about Windows Setup command line options at <https://aka.ms/setupswitches>

## [Desktop Deployment Center](https://aka.ms/howtoshift)
