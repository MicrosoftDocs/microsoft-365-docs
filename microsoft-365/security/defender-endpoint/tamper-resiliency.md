---
title: Tamper resiliency with Microsoft Defender for Endpoint
description: Learn about the anti-tampering capabilities of Microsoft Defender for Endpoint.
author: denisebmsft
ms.author: deniseb
manager: dansimp
ms.reviewer: joshbregman
ms.service: microsoft-365-security
ms.subservice: mde
ms.date: 05/31/2023
ms.topic: overview
ms.collection: 
- tier1
- highpri
f1.keywords: NOCSH
audience: ITPro
---

# Protect your organization from the impact of tampering

Tampering is the general term used to describe attackers attempts to impair the effectiveness of Microsoft Defender for Endpoint. The ultimate goal of attackers is not to impact a single device, but rather to achieve their objective such as launching a ransomware attack.  As such, the anti-tampering capabilities of Microsoft Defender for Endpoint extend beyond preventing tampering of a single device, but detecting attacks and minimizing their impact. 

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender)
- [Microsoft Defender for Business](/microsoft-365/security/defender-business/mdb-overview)

## Organization wide tamper resiliency is built on Zero Trust

The foundation for defending against tampering is following a [Zero Trust](/windows/security/zero-trust-windows-device-health) model.   

- Follow the best practice of least privilege. See [Access control overview for Windows](/windows/security/identity-protection/access-control/access-control).
- Configure [Conditional Access policies](/azure/active-directory/conditional-access/overview) to keep untrusted users and devices isolated.

In order to provide an effective defense against tampering, devices must be healthy.

- [Onboard devices to Defender for Endpoint](/microsoft-365/security/defender-endpoint/onboard-configure). 
- Make sure [security intelligence and antivirus updates](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-updates) are installed. 
- Managed devices centrally, such as by [Microsoft Intune](/mem/intune/protect/advanced-threat-protection-configure), [Microsoft Defender for Endpoint Security Configuration Management](/mem/intune/protect/mde-security-integration), or [Configuration Manager](/mem/configmgr/protect/deploy-use/endpoint-protection-configure).

> [!NOTE]
> On Windows devices, Microsoft Defender Antivirus can be also be managed via Group Policy, WMI, and PowerShell cmdlets. These methods are more susceptible to tampering than using Microsoft Intune or Microsoft Configuration Manager or Microsoft Defender for Endpoint Security Configuration Management. 
> If you're using Group Policy, we recommend [disabling local overrides for Microsoft Defender Antivirus settings](/microsoft-365/security/defender-endpoint/configure-local-policy-overrides-microsoft-defender-antivirus#configure-local-overrides-for-microsoft-defender-antivirus-settings) and [disabling local list merging](/microsoft-365/security/defender-endpoint/configure-local-policy-overrides-microsoft-defender-antivirus#configure-how-locally-and-globally-defined-threat-remediation-and-exclusions-lists-are-merged).

The health of [Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/device-health-microsoft-defender-antivirus-health) and [sensors](/microsoft-365/security/defender-endpoint/device-health-sensor-health-os) are available in the [device health reports in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/device-health-reports). 

## Preventing tampering on a single device

Attackers use a variety of tampering techniques to disable Microsoft Defender for Endpoint on a single device.  These techniques are prevented differently on different operating systems.

| Control | OS | Technique Families |
|--- |---| ---|
| [Tamper protection](/microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection) | Windows | <br/>- Terminating/suspending processes<br/>- Stopping/pausing/suspending services<br/>- Modifying registry settings including exclusions<br/>- Manipulating/hijacking DLLs<br/>- Manipulation/modification of the file system<br/>- Agent integrity |
| [Tamper protection](/microsoft-365/security/defender-endpoint/tamperprotection-macos) | Mac | <br/>- Terminating/suspending processes<br/>- Manipulation/modification of the file system<br/>- Agent integrity|
|Attack surface reduction (ASR) rules | Windows | Kernel drivers (see [Block abuse of exploited vulnerable signed drivers](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference#block-abuse-of-exploited-vulnerable-signed-drivers))|
| Windows Defender Application Control (WDAC) | Windows | Kernel drivers (see [Microsoft vulnerable driver blocklist](/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules))|


## Understanding the different ways to prevent driver based tampering on Windows

One of the most common tampering techniques is to use a driver to gain access to the kernel. This driver is often wrapped in an easy to deploy tool, but the underlying technique is the same.

In order to prevent a driver based tampering on a single device, the device needs to be configured to block the loading of that driver before the attack.

Microsoft provides several ways to keep devices well protected and up-to-date against driver based tampering.

### Broadest protection - Microsoft vulnerable driver block list

The blocklist is updated with each new major release of Windows, typically 1-2 times per year. Microsoft will occasionally publish future updates through regular Windows servicing. With Windows 11 2022 update, the vulnerable driver blocklist is enabled by default for all devices, but requires either memory integrity (also known as hypervisor-protected code integrity or HVCI), Smart App Control, or S mode to be active. 

See ([Microsoft recommended driver blocklist](/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules#microsoft-vulnerable-driver-blocklist)).  

For devices that don't meet those requirements, this list of drivers can be blocked by using Windows Defender Application Control policy. 

See ([Vulnerable Driver blocklist XML](/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules#microsoft-vulnerable-driver-blocklist)).  


### Faster updates - Block exploited vulnerable and signed drivers ASR rule

This list of drivers blocked by the exploited and vulnerable drivers get updated more frequently than the recommended drivers block list.  ASR rules can run in audit mode first to ensure that there is no impact before applying the rule in block mode.

See([Block abuse of exploited vulnerable signed drivers rule](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference#block-abuse-of-exploited-vulnerable-signed-drivers)).  

### Block additional drivers - Windows Defender Application Control (WDAC)

Attackers may use drivers that are not blocked by either the recommended driver block list or by the ASR rule. In this case, customers can protect themselves by using [WDAC to create a policy to block](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-operational-guide)

WDAC also provides an audit mode to help understand the impact of applying the policy in block mode to avoid accidentally impacting legitimate use.

## Preventing tampering via Microsof Defender Antivirus exclusions on Windows

A common technique used by attackers is to make unauthorized changes to anti-virus exclusions.  Tamper protection prevents this from happening when all of the following conditions are met:

- The device is managed by Intune; and 
- The device has [Disable Local Admin Merge enabled](/microsoft-365/security/defender-endpoint/configure-local-policy-overrides-microsoft-defender-antivirus#use-microsoft-intune-to-disable-local-list-merging).

For more details see [Tamper protection for antivirus exclusions](/microsoft-365/security/defender-endpoint/manage-tamper-protection-intune#tamper-protection-for-antivirus-exclusions).

Attackers can be preventing from discovering existing antivirus exclusions by enabling [HideExclusionsFromLocalAdmin](/windows/client-management/mdm/defender-csp#configurationhideexclusionsfromlocaladmins).  

## Detecting potential tampering activity in the Microsoft 365 Defender portal 

When tampering is detected, an alert is raised. Some of the alert titles for tampering are:

- Possible Antimalware Scan Interface (AMSI) tampering
- Potential attempt to tamper with MDE via drivers
- Tamper Protection bypass
- Tampering with the Microsoft Defender for Endpoint sensor
- Possible tampering with protected processes

If the abuse of exploited vulnerable or signed driver ASR rule is triggered, this can be seen in the [ASR Report](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-report) as well as in [Advanced Hunting](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-deployment-operationalize#asr-rules-advanced-hunting)

If WDAC is enabled, the [block and audit activity can be seen in Advanced Hunting](/windows/security/threat-protection/windows-defender-application-control/querying-application-control-events-centrally-using-advanced-hunting).




