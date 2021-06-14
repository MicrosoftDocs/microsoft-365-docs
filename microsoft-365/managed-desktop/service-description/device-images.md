---
title: Device images
description:  Image requirements when ordering new devices or reusing existing devices
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
f1.keywords:
- NOCSH
ms.author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
manager: laurawi
ms.topic: article
audience: Admin
---

# Device images


Whether you order [new devices](#new-devices) or reuse [existing](#existing-devices) ones, you have several options to ensure the image on the device meets our [device requirements](device-requirements.md#check-hardware-requirements).

## New devices
When you order a new device from an [approved manufacturer](device-requirements.md#minimum-requirements), follow these steps to make sure they ship devices with the right Microsoft Managed Desktop image and software configuration.

### Dell
Work directly with the Dell sales representative, who will make sure that the image approved by Microsoft Managed Desktop is applied to devices for your order. For more questions on Dell devices, the image, and the ordering process, contact MMD_at_dell@dell.com.

### HP 
When you order new devices from HP, be sure to use the specific SKU listed in the Additional requirements section for each model found in the [Shop Windows 10 Pro business devices](https://www.microsoft.com/windowsforbusiness/view-all-devices) site (filter the view to show Microsoft Managed Desktop devices).

If you're ordering a device from HP that has been approved as an [exception](customizing.md) but isn't currently listed on the Device List page, be sure to request the SKU to be used for your model. We'll work with HP to get you this information by using your exception request. You can also contact HP directly for any questions about devices and device ordering instructions by using these addresses:
 
- Americas: mmd-americas@hp.com
- Europe/Middle East/Africa: mmd-emea@hp.com
- Asia Pacific/Japan: mmd-apj@hp.com
- Global: mmd@hp.com

### Lenovo
When you order devices from Lenovo for use in Microsoft Managed Desktop, you'll need to indicate a specific part number included as part of the order. Contact your Lenovo sales representative or Lenovo Channel Partner and ask them to create a "*special bid model*" with a system that meets our [device requirements](device-requirements.md#minimum-requirements). To include a pre-loaded image compatible with Microsoft Managed Desktop, ask the sales representative to reference "*system building block part number SBB0Q94938 – MMD Enablement*."

The following products are currently enabled for Microsoft Managed Desktop support:

- L13 Gen 1
- L13 Yoga Gen 1
- L14 Gen 1 (Intel)
- L14 Gen 1 (AMD)
- L15 Gen 1 (Intel)
- L15 Gen 1 (AMD)
- X1 Carbon Gen 8
- X1 Yoga Gen 5
- T14 Gen 1 (Intel)
- T14 Gen 1 (AMD)
- T15 Gen 1
- X13 Gen 1 (Intel)


### Microsoft
All Microsoft devices that meet device requirements come with an image that works with Microsoft Managed Desktop. No other steps are required.

To get the latest image available in the factory on a Microsoft device, work with your Surface specialist to use the Surface "Pegged PO" process.

## Existing devices

You can reuse existing devices as long as they meet both the  [device requirements](device-requirements.md#minimum-requirements) and the [software requirements](device-requirements.md#installed-software). Follow the steps relevant to your manufacturer.

You can reimage devices either with an image from the manufacturer or by using the Microsoft Managed Desktop "universal image." To get an appropriate manufacturer image, you could order at least one [new device](#new-devices) of the model you are reusing. Then you can obtain the image from that device and apply it to other devices of the exact same model.

> [!NOTE]
> It's your the responsibility to create, test, and deploy images. We also recommend using appropriate images provided by the manufacturer whenever possible instead of custom images--including the "universal image."

### HP

HP Commercial PCs shipped with the HP Corporate Ready Image include a .WIM file for recovery. You can use this image to apply the factory restoration image to other devices of the same model.

These steps will remove all data on the device, so before starting you should back up any data on you want to keep.

1. [Create a bootable USB drive](/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive) with WinPE.
2. Copy these files from C:\\SOURCES to the USB drive:
    - The factory recovery WIM file (for example, HP\_EliteBook\_840\_G7\_Notebook\_PC\_CR\_2004.wim)
    - DEPLOY.CMD
    - ReCreatePartitions.txt
3. [Boot the device to WinPE](https://store.hp.com/us/en/tech-takes/how-to-boot-from-usb-drive-on-windows-10-pcs) USB drive.
4. In a command prompt, run [Diskpart.exe](/windows-server/administration/windows-commands/diskpart#additional-references).
5. In Diskpart, run `list disk`, and then note the primary storage disk number (typically, Disk 0).
6. Exit Diskpart by typing `exit`.
7. In the command prompt, run `deploy.cmd <sys_disk> <recovery_wim>`, where *sys_disk* is the disk number of the primary storage disk you just determined and *recovery_wim* is the filename of the .WIM file you copied earlier.
8. Remove the USB drive, and then restart the device.

### Microsoft 

Microsoft Surface devices include "bare metal recovery" [images](https://support.microsoft.com/en-us/surfacerecoveryimage) that are specific to each model. You can use these images to reimage devices.

These images use the Windows Recovery Environment (WinRE) and this is a manual process (not automated). Follow the steps in [Creating and using a USB recovery drive for Surface](https://support.microsoft.com/surface/creating-and-using-a-usb-recovery-drive-for-surface-677852e2-ed34-45cb-40ef-398fc7d62c07).


### Universal image
Microsoft Managed Desktop has created an image containing Windows 10 Pro and Microsoft 365 Apps for Enterprise that you can use with Microsoft Managed Desktop. However, it's best to use images appropriate to Microsoft Managed Desktop provided by the manufacturer whenever possible, even if that means an older Windows version that then needs to update once the user signs in. Using the Microsoft Managed Desktop Universal image should be a final option.

- We update the image with the latest Windows monthly quality updates every 30-60 days and Microsoft 365 Apps for Enterprise updates at least twice a year.
- The image contains a recovery provisioning package to ensure Microsoft 365 Apps for Enterprise is restored following Windows recovery scenarios.
- You can deploy the image with USB drives. It contains a scriptable process to insert drivers (outlined in the documentation included with the image).
- You can modify the included scripts and folders for use with other customizations, such as adding specific cumulative updates, file copy code, or performing other checks.
- Drivers and quality updates are added to Windows during deployment from the USB drive.

> [!NOTE]
> It's your responsibility to add all necessary drivers, perform all testing, and ensure there are no issues with the final deployed image. We provide the Universal Image "as-is" but will provide technical guidance and answer questions. Contact MMDImage@microsoft.com.

Submit requests for the Universal Image content and documentation by creating a change request at the [Admin portal](../get-started/access-admin-portal.md).


