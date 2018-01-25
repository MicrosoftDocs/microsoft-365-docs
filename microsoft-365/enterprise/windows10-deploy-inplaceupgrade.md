---
title: Windows 10 Enterprise infrastructure for Microsoft 365 Enterprise | Microsoft docs
description: Provides a high-level guidance on the steps you need to deploy Windows 10 Enterprise on PCs as part of Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, deployment, in-place upgrade, Configuration Manager
author: CelesteDG
ms.localizationpriority: high
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 01/29/2018
ms.author: celested
---

# Configure and deploy Windows 10 Enterprise as an in-place upgrade

## Step 1: Assess
Before upgrading an OS in an enterprise environment, take the following technical aspects into account:
* [Infrastructure](#infrastructure)
* [Apps](#apps)
* [Governance and business processes](#governance-and-business-processes)

This guide is meant only to provide Microsoft's best recommendations around these assumptions by providing links to existing documentation.

### Infrastructure

#### Group Policy
Windows 10 introduces many new features and removes and changes many others in Windows 7 and 8.1, including new Group Policy settings which need to be tested and implemented as part of a Windows 10 migration. The following resources provide examples on assessing current group policies for Windows, including Group Policy Objects in the Active Directory structure. For more details,see: 
* [Manage Windows 10 with administrative templates](https://go.microsoft.com/fwlink/?linkid=860226)
* [Group Policy settings that apply to Windows 10](https://docs.microsoft.com/windows/client-management/group-policies-for-enterprise-and-education-editions)

> [!NOTE]
> If you are considering moving to modern management by using MDM instead of Group Policy to manage device configurations, you can start by using the MDM Migration Analysis Tool (MMAT) to determine what Group Policies are set on the device and report the corresponding settings, if available.

#### Data management
Although in-place upgrades shouldn’t affect user data and apps, a best practice is to configure a backup scenario and back up user data. For example, export all user data to a OneDrive for Business account, BitLocker To Go-encrypted USB flash drive, or network file server. For more details, see:
* [How to back up or transfer your data on a Windows-based computer](https://go.microsoft.com/fwlink/?linkid=860230)
* [Redirect known folders to OneDrive for Business](https://go.microsoft.com/fwlink/?linkid=846620)

#### System Center Configuration Manager
This guide assumes you are following Microsoft recommendations and have one of the following versions of System Center Configuration Manager 2012 onward:
* System Center 2012 Configuration Manager with SP2
* System Center 2012, 2012 R2 Configuration Manager with SP1, Current Branch, 1706
    * [Run an in-place upgrade to the latest Configuration Manager](https://go.microsoft.com/fwlink/?linkid=839406)
    * [Updates for Configuration Manager](https://go.microsoft.com/fwlink/?linkid=620343)
* Core Configuration Manager configuration
    * CONFIGURATION MANAGER accounts
    * Active Directory permissions
    * Source folder structure
    * Active Directory schema
* Configure the following [necessary Configuration Manager components for Windows 10 deployment](https://go.microsoft.com/fwlink/?linkid=860245):
    * State migration point - Stores user state migration data during computer replace scenarios
    * Distribution point - Stores all packages in Configuration Manager
    * Software update point - Updates an OS as part of the deployment process
    * Reporting services point - Monitors the OS deployment process
    * Boot images - Windows Preinstallation Environment (PE) images Configuration Manager uses to start deployments
    * OS images - The production deployment image (mounted OS)
    * OS installers - Creates reference images using Microsoft Deployment Toolkit (MDT) Light Touch
    * Drivers - A repository of managed device drivers
    * Task Sequence - Delivered automatically to the client as a policy

#### Network bandwidth
This guide assumes you have enough network bandwidth to support the deployment of Windows 10 Enterprise and Office 365 ProPlus as a unit. As a bundle, network bandwidth is a significant factor.

#### Client machines and in-place upgrade scenario
* Disk encryption - Third-party disk encryption isn't supported in an in-place upgrade scenario.
* User profiles - Only the standard user profile type is supported.
* Legacy BIOS to Unified Extensible Firmware Interface (UEFI) booting - Changing from legacy BIOS to UEFI booting isn't supported.
* Dual-boot - This scenario is not covered in the guide. If you have the FastTrack Benefit, it only covers devices running a single OS.
* Virtual desktop infrastructure (VDI) environments - This scenario is not covered in the guide. If you have the FastTrack Benefit, it doesn't cover configuration or deployment on VDI environments.
* x64 and x86 - Changing from a 32-bit OS to a 64-bit isn't supported. For more info, see [Windows 10 deployment scenario > In-place upgrade](https://docs.microsoft.com/en-us/windows/deployment/windows-10-deployment-scenarios#in-place-upgrade).

### Apps
TBD

### Governance and business processes
TBD

## Step 2: Remediate
Make sure you've completed Phase 1: Networking and Phase 2: Identity before proceeding.

### Client readiness
TBD

#### System Center Configuration Manager
TBD

#### Telemetry
TBD

## Enable
TBD

### In-place upgrade to Windows 10 Enterprise
TBD

1. Integrate System Center Configuration Manager with Microsoft Deployment Tool
2. Prepare for zero-touch installation
3. Create a custom Windows Preinstallation Environment boot image
4. Add a Windows 10 OS upgrade image
5. Create an app to deploy with Windows 10
6. Add drivers to a Windows 10 deployment using Windows PE
7. Create a task sequence
8. Finalize the OS configuration for Windows 10 deployment
9. Deploy the Windows 10 Enterprise image to a UEFI machine
10. Monitor the Windows 10 deployment

### Windows Defender Antivirus
TBD



## Learn more
[Microsoft 365 Enterprise product page](https://www.microsoft.com/microsoft-365/enterprise)

[Windows 10](https://docs.microsoft.com/windows/windows-10)

[Deploy and update Windows 10](https://docs.microsoft.com/windows/deployment/)

