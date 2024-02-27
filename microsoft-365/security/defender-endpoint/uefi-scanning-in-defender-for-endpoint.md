---
title: UEFI scanning in Defender for Endpoint
description: Learn how Microsoft Defender for Endpoint is extending its protection capabilities to the firmware level with a new Unified Extensible Firmware Interface (UEFI) scanner.
author: siosulli
ms.author: siosulli
manager: deniseb
ms.reviewer: yongrhee
audience: ITPro
ms.topic: conceptual
ms.service: defender-endpoint
ms.subservice: ngp
ms.localizationpriority: medium
ms.custom:
  - admindeeplinkDEFENDER
ms.collection: 
- m365-security
- tier2
search.appverid: met150
ms.date: 12/10/2023
---

# UEFI scanning in Defender for Endpoint

Beginning June 17 2020, Microsoft Defender for Endpoint extended its protection capabilities to the firmware level with a new [Unified Extensible Firmware Interface (UEFI)](/windows-hardware/drivers/bringup/unified-extensible-firmware-interface) scanner.

Hardware and firmware-level attacks have continued to rise in recent years, as modern security solutions made persistence and detection evasion on the operating system more difficult. Attackers compromise the boot flow to achieve low-level malware behavior that's hard to detect, posing a significant risk to an organization's security posture.

[Windows Defender System Guard](/windows/security/hardware-security/how-hardware-based-root-of-trust-helps-protect-windows) helps defend against firmware attacks by providing guarantees for secure boot through hardware-backed security features like [hypervisor-level attestation](https://www.microsoft.com/security/blog/2018/04/19/introducing-windows-defender-system-guard-runtime-attestation/) and [Secure Launch](/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows), also known as Dynamic Root of Trust (DRTM), which are enabled by default in [Secured-core PCs](https://www.microsoft.com/en-us/windowsforbusiness/windows10-secured-core-computers). The new UEFI scan engine in Defender for Endpoint expands on these protections by making firmware scanning broadly available.

The UEFI scanner is a new component of the [built-in antivirus](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10) solution on Windows 10 and newer versions, and gives Defender for Endpoint the unique ability to scan inside of the firmware filesystem and perform security assessment. It integrates insights from our partner chipset manufacturers and further expands the comprehensive endpoint protection provided by Defender for Endpoint.

## Prerequisites

- Microsoft Defender Antivirus as the primary antivirus product

  > [!NOTE]
  > UEFI scanner does not work with Endpoint detection and response (EDR) in block mode, since Microsoft Defender Antivirus would be operating in passive mode.

- Real-Time Protection should be ON
- Behavior Monitoring should be ON
- Supported version of Microsoft Defender Antivirus Platform Update (N-2)
- Windows 10, Windows 11 and newer versions, [Windows Server 2012 R2 and Windows Server 2016](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/defending-windows-server-2012-r2-and-2016/ba-p/2783292) running the unified Defender for Endpoint client, Windows Server 2019, Windows Server 2022 and newer versions

## How did we build the UEFI scanner?

The Unified Extensible Firmware Interface (UEFI) is a replacement for [legacy BIOS](/windows-hardware/drivers/bringup/smbios). If the chipset is configured correctly ([UEFI](https://uefi.org/sites/default/files/resources/UEFI%20Spec%202_6.pdf) & chipset configuration itself) and [secure boot](/windows-hardware/design/device-experiences/oem-secure-boot) is enabled, the firmware is reasonably secure. To perform a hardware-based attack, attackers exploit a vulnerable firmware or a misconfigured machine to deploy a [rootkit](https://www.microsoft.com/en-us/microsoft-365-life-hacks/privacy-and-safety/what-is-a-rootkit), which allows attackers to gain foothold on the machine.

:::image type="content" source="media/expected-vs-attacker-boot-flow.jpg" alt-text="Screenshot that shows expected boot flow vs compromised boot flow ":::

As the figure shows, for devices that are [configured correctly](/windows-hardware/drivers/bringup/secure-boot-and-device-encryption-overview), the boot path from power-on to OS initialization is reliable. If secure boot is disabled or if the motherboard chipset is misconfigured, attackers can change the contents of UEFI drivers that are unsigned or tampered with in the firmware. This could allow attackers to take over control of devices and give them the capability to deprivilege the operating system kernel or antivirus to reconfigure the security of the firmware.

:::image type="content" source="media/uefi-platform-initialization.jpg" alt-text="UEFI platform initialization":::

The [Serial Peripheral Interface (SPI)](https://en.wikipedia.org/wiki/Serial_Peripheral_Interface) flash stores important information. Its structure depends on OEM's design, and commonly includes processor microcode update, Intel Management Engine (ME), and boot image, a UEFI executable. When a computer runs, processors execute the firmware code from SPI flash for a while during UEFI's SEC phase. Instead of memory, the flash is permanently mapped to x86 reset vector (physical address 0xFFFF_FFF0). However, attackers can interfere with memory access to reset vector by software. They do this by reprogramming the BIOS control register on misconfigured devices, making it even harder for security software to determine exactly what gets executed during boot.

Once an implant is deployed, it's hard to detect. To catch threats at this level, security solutions at the OS level rely on information from the firmware, but the chain of trust is weakened.

Technically, the firmware is not stored and is not accessible from main memory. As opposed to other software, it is stored in SPI flash storage, so the new UEFI scanner must follow the hardware protocol provided by hardware manufacturers. To be compatible and be up to date with all platforms, it needs to take into consideration protocol differences.

:::image type="content" source="media/uefi-scanner-internals-overview.png" alt-text="Screenshot that shows UEFI scanner internals overview":::

The UEFI scanner performs dynamic analysis on the firmware it gets from the hardware flash storage. By obtaining the firmware, the scanner is able to parse the firmware, enabling Defender for Endpoint to inspect firmware content at runtime.

## How do you turn on UEFI scanner?

The new UEFI scanner is a component of Microsoft Defender Antivirus, thus, as long as it's the primary AV, it includes this capability to scan and access UEFI firmware.

## How do you manage UEFI scanner?

It's a built-in functionality of Microsoft Defender Antivirus, thus, there is no additional management.

## How does the UEFI scanner in Defender for Endpoint work?

The new UEFI scanner reads the firmware file system at runtime by interacting with the motherboard chipset. To detect threats, it performs dynamic analysis using multiple new solution components that include:

- UEFI anti-rootkit, which reaches the firmware through Serial Peripheral Interface (SPI)
- Full filesystem scanner, which analyzes content inside the firmware
- Detection engine, which identifies exploits and malicious behaviors

Firmware scanning is orchestrated by runtime events like suspicious driver load and through periodic system scans. Detections are reported in Windows Security, under Protection history.

:::image type="content" source="media/windows-security-detecting-malicious-content-in-nvram.png" alt-text="Screenshot that shows Windows Security notification for malicious content in NVRAM":::

Defender for Endpoint customers will also see these detections raised as alerts in [Microsoft Defender Security Center](https://security.microsoft.com/), empowering security operations teams to investigate and respond to firmware attacks and suspicious activities at the firmware level in their environments.

:::image type="content" source="media/mde-alert-detecting-malicious-code-in-firmware.png" alt-text="Screenshot that shows Defender for Endpoint alert detecting malicious code":::

Security operations teams can also use the [advanced hunting](/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview) capabilities in Defender for Endpoint to hunt for these threats:

```powershell
DeviceEvents

| where ActionType == "AntivirusDetection"

| extend ParsedFields=parse_json(AdditionalFields)

| extend ThreatName=tostring(ParsedFields.ThreatName)

| where ThreatName contains_cs "UEFI"

| project ThreatName=tostring(ParsedFields.ThreatName),

 FileName, SHA1, DeviceName, Timestamp

| limit 100
```

To detect unknown threats in SPI flash, signals from the UEFI scanner are analyzed to identify anomalies and where they have been executed. Anomalies are reported to the Microsoft Defender Security Center for investigation.

:::image type="content" source="media/mde-alert-malware-implant-in-uefi-file-system.png" alt-text="Screenshot that shows Defender for Endpoint alert for malware implant in UEFI":::

These events can likewise be queried through Advanced Hunting as shown:

```powershell
DeviceAlertEvents

| where Title has "UEFI"

| summarize Titles=makeset(Title) by DeviceName, DeviceId, bin(Timestamp, 1d)

| limit 100
```

## Comprehensive security levels up with low-level protections

The new UEFI scanner adds to a rich set of Microsoft technologies that integrate to deliver chip-to-cloud security, from a strong hardware root of trust to cloud-powered security solutions at the OS level.

Hardware backed security features like Secure Launch and device attestation help stop firmware attacks. These features, which are enabled by default in [Secured-core PCs](https://www.microsoft.com/en-us/windowsforbusiness/windows10-secured-core-computers), seamlessly integrate with Defender for Endpoint to provide comprehensive endpoint protection.

With its UEFI scanner, [Defender for Endpoint](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp) gets even richer visibility into threats at the firmware level, where attackers have been increasingly focusing their efforts on. Security operations teams can use this new level of visibility, along with the rich set of detection and response capabilities in Defender for Endpoint, to investigate and contain such advanced attacks.

This level of visibility is also available in [Microsoft 365 Defender (M365D)](https://www.microsoft.com/security/technology/threat-protection), which delivers an even broader cross-domain defense that coordinates protection across endpoints, identities, email, and apps.
