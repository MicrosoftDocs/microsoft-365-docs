---
title: Device requirements
description:  Summary of the minimum hardware and software requirements for devices to work with Microsoft Managed Desktop
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
---

# Device requirements

Microsoft Managed Desktop regularly evaluates device requirements to be included in the service. This article describes the hardware and software requirements a device must meet in order to work with Microsoft Managed Desktop.

You can review a list of specific devices already approved for use based on these requirements. Filter for Microsoft Managed Desktop in the [Shop Windows Pro business devices](https://www.microsoft.com/en-us/windows/business/devices) page.

> [!NOTE]
> These requirements can change at any time, but we'll provide 30 days notice of any hardware requirement changes. The requirements most recently changed are marked with <b>\*</b>.

## Check hardware requirements

Besides reviewing device specs, you can also use the downloadable [readiness assessment checker](../get-ready/readiness-assessment-downloadable.md) to verify that the device meets the necessary requirements.

This tool also checks network settings and endpoints that are necessary for the service to work.

## Minimum requirements

To be enrolled in Microsoft Managed Desktop, a device must meet or exceed all of these requirements.

### Manufacturer

The device must have been made by one of these manufacturers:

- Dell
- HP
- Lenovo
- Microsoft

> [!NOTE]
> As of Mar 01, 2022, devices managed by Microsoft Managed Desktop must be supported by the OEM.<br><br>Work with your OEM to find out when devices in your portfolio will reach end of life support. Customers will be responsible for ensuring devices are replaced prior to end of life support. Any devices falling outside of OEM support will continue to be managed by Microsoft Managed Desktop, but support for these devices may be limited as they are at risk of security and performance issues that may not be mitigated by our service.
</b>

### Installed software

The device must have this software preinstalled:

- <b>\*</b> Windows 10 or Windows 11: Enterprise, Pro, or Pro Workstation edition.
- 64-bit version of Microsoft 365 Apps for Enterprise.
- All applicable device drivers.

### Physical features

Devices must have these capabilities:

- Enabled for UEFI secure boot.
- Trusted Platform Module 2.0.
- Capable of Virtualization-based security.
- [Hypervisor-protected code integrity](/windows-hardware/drivers/bringup/device-guard-and-credential-guard) supported by the BIOS.

For more about these capabilities and the technologies related to them that the service uses, see [Microsoft Managed Desktop technologies](../intro/technologies.md).

> [!NOTE]
>- ARM processors aren't supported.
>- <b>\*</b> Windows 11 has additional [hardware requirements](/windows/whats-new/windows-11-requirements).

Devices should meet or exceed following limits for storage and memory:

- Boot drive must be any type other than a hard disk. For example, SSD, NVMe, and eMMC drives are all valid choices.
- Boot drive must have a capacity of at least 128 GB.
- Internal device memory (RAM) must equal or exceed 8 GB.

If the device was made after July 1, 2020, it should also have an IR camera, fingerprint reader, or both, in order to support [Windows Hello](/windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security).

## Recommended features

Your users will have a much better experience if you choose devices that have these features:

- Either an Intel vPro-platform processor or an AMD Ryzen Pro processor.
- Boot drive of the SSD type with a capacity of at least 256 GB.
- Internal device memory (RAM) of at least 16 GB.
- Support for Modern Standby.
- Device is of Secured-core PC type.
- Supports Kernel DMA Protection.
