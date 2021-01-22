---
title: Device requirements
description:  Summary of the minimum hardware and software requirements for devices to work with Microsoft Managed Desktop
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Device requirements

Microsoft Managed Desktop regularly evaluates device requirements to be included in the service. This article describes the hardware and software requirements a device must meet in order to work with Microsoft Managed Desktop. You can review a list of specific [devices already approved](device-list.md) for use with the service based on these requirements.

> [!NOTE]
> These requirements can change at any time, but we will provide 90 days notice of any such changes. The requirements most recently changed are marked with **\***. 

## Check hardware requirements

Besides reviewing device specs, you can also use the downloadable [readiness assessment checker](../get-ready/readiness-assessment-downloadable.md) to verify that a given device meets the necessary requirements. This tool also checks network settings and endpoints that are also necessary for the service to work.

## Minimum requirements

To be enrolled in Microsoft Managed Desktop, a device must meet or exceed all of these requirements.

### Manufacturer

The device must have been made by one of these manufacturers:

- Dell
- HP
- Lenovo
- Microsoft


### Installed software

The device must have this software preinstalled:

- Windows 10 {ANY PARTICULAR EDITON?}
- {the 64-bit version of Office click-to-run {I will double-check name w/ Office colleagues]}
- All applicable device drivers


### Physical features

Devices must have these capabilities:

- Enabled for UEFI secure boot 
- Trusted Platform Module 2.0 
- Capable of virtualization-based security 
- Supports Hypervisor-protected code integrity 

For more about these capabilities and the technologies related to them that the service uses, see [Microsoft Managed Desktop technologies](../intro/technologies.md).

Devices should meet or exceed following limits for storage and memory:

- Boot drive must be any type other than a hard disk. For example, SSD, NVMe, and eMMC drives are all valid choices.
- Boot drive must have a capacity of at least 128 GB.

If the device was made after July 1, 2020, it should also have an IR camera, fingerprint reader, or both, in order to support [Windows Hello](https://docs.microsoft.com/windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security).

## Recommended requirements

Though they are not absolute requirements, your users will have a much better experience if you choose devices that have these features:

- Either an Intel vPro-platform processor or an AMD Ryzen Pro processor
- Boot drive of the SSD type with a capacity of at least 256 GB
- Support for Modern Standby
- Device is of Secured-core PC type
- Supports Kernel DMA Protection