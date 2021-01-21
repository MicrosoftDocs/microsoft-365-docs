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

Microsoft Managed Desktop regularly evaluates device requirements to be included in the service. This article describes the hardware and software requirements a device must meet in order to work with Microsoft Managed Desktop. Currently, you can also review a list of specific [devices already approved](device-list.md) for use with the service. You can also shop for devices already curated for Microsoft Managed Desktop use at [Windows devices for business](https://www.microsoft.com/windowsforbusiness/view-all-devices). For long-term planning, you should also be aware of the [device lifecycle](device-lifecycle.md).

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

The device must have Windows 10 installed, as well as {the 64-bit version of Office click-to-run [double-check name w/ Office colleagues]}.


### Physical features

Devices must have these capabilities:

- Enabled for UEFI secure boot. For more information, see [Secure boot](https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-secure-boot).
- Trusted Platform Module 2.0. For more information, see [Trusted Platform Module 2.0](https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-tpm).
- Capable of virtualization-based security. For more information, see [Virtualization-based security](https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-vbs).
- Supports Hypervisor-protected code integrity. For more information, see [Enable virtualization-based protection of code integrity](https://docs.microsoft.com/windows/security/threat-protection/device-guard/enable-virtualization-based-protection-of-code-integrity).

Devices should meet or exceed following limits for storage and memory. If you have a strong need for a device that doesn't quite meet these limits, you can file a [request](customizing.md#request-an-exception) for the Operations team to evaluate, though approval is not guaranteed.

- Boot drive must be any type other than a hard disk. For example, SSD, NVMe, and eMMC drives are all valid choices.
- Boot drive must have a capacity of at least 128 GB.

If the device was made after July 1, 2020, it should also have an IR camera, fingerprint reader, or both, in order to support [Windows Hello](https://docs.microsoft.com/windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security). If you have a strong need for a device that doesn't have these features, you can file a [request](customizing.md#request-an-exception) for the Operations team to evaluate, though approval is not guaranteed.

## Recommended requirements

Though they are not absolute requirements, your users will have a much better experience if you choose devices that have these features:

- Either an Intel vPro-platform processor with at least the i3 chipset or an AMD Ryzen processor of at least the Pro series
- Boot drive of the SSD type with a capacity of at least 256 GB
- Support for Modern Standby
- Device is of Secured-core PC type
- Supports Kernel DMA Protection