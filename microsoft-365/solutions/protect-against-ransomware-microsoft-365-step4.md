---
title: "Step 4. Protect devices"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: dansimp
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection:
- M365-security-compliance
- Strat_O365_Enterprise
- ransomware
- m365solution-ransomware
ms.custom: seo-marvel-jun2020
keywords: 
description: Step through protecting your Microsoft 365 resources from ransomware attacks.
---

# Step 4. Protect devices

To help protect against the initial access part of an attack:

- Enable [Network Protection](/microsoft-365/security/defender-endpoint/network-protection) in Microsoft Defender for Endpoint and Microsoft 365 Defender.
- Configure [site and download checking](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-available-settings) in Microsoft Defender SmartScreen to block or warn.
- Configure [app and file checking](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-available-settings) in Microsoft Defender SmartScreen to block or warn.
- Enable [Microsoft Defender Antivirus scanning](/microsoft-365/security/defender-endpoint/configure-advanced-scan-types-microsoft-defender-antivirus) of downloaded files and attachments.
- Set **Remote Desktop security level** to **TLS** in Microsoft Defender for Endpoint and Microsoft 365 Defender.

To help protect against the lateral movement part of an attack:

- Turn on Microsoft Defender Firewall.
- Update Microsoft Defender Antivirus definitions.

To reduce the impact of the attack:

- Use [advanced protection](/Microsoft-365/security/defender-endpoint/attack-surface-reduction#use-advanced-protection-against-ransomware) against ransomware.

To help protect against an attacker evading your security defences:

- Keep [cloud-delivered protection](/microsoft-365/security/defender-endpoint/enable-cloud-protection-microsoft-defender-antivirus) in Microsoft Defender Antivirus turned on.
- Keep Microsoft Defender Antivirus [real-time behavior monitoring](/microsoft-365/security/defender-endpoint/configure-real-time-protection-microsoft-defender-antivirus) turned on.
- Turn on [real-time protection](/microsoft-365/security/defender-endpoint/configure-real-time-protection-microsoft-defender-antivirus).
- Turn on tamper protection in Microsoft Defender for Endpoint, to prevent malicious changes to security settings.

To help protect against an attacker executing code as part of an attack:

- Turn on Microsoft Defender Antivirus.
- Block Win32 API calls from Office macros.
- Migrate all legacy workbooks requiring Excel 4.0 macros to the updated VBA macro format using [this process](https://www.microsoft.com/microsoft-365/blog/2010/02/16/migrating-excel-4-macros-to-vba/).
- [Disable use of unsigned macros](https://support.microsoft.com/topic/enable-or-disable-macros-in-office-files-12b036fd-d140-4e74-b45e-16fed1a7e5c6). Ensure all internal macros with business need are signed and leveraging [trusted locations](/deployoffice/security/designate-trusted-locations-for-files-in-office) to ensure unknown macros will not run in your environment.
- Stop malicious XLM or VBA macros by ensuring runtime macro scanning by [Antimalware Scan Interface](https://www.microsoft.com/security/blog/2021/03/03/xlm-amsi-new-runtime-defense-against-excel-4-0-macro-malware/) (AMSI) is on. This feature (enabled by default) is on if the Group Policy setting for **Macro Run Time Scan Scope** is set to **Enable for All Files** or **Enable for Low Trust Files**. Get the latest group policy template files.

## Impact on users and change management

TBD

## Resulting configuration

Here is the ransomware protection for your tenant after this step.

![Ransomware protection for your Microsoft 365 tenant after Step 4](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-architecture-step4.png)

## Next step

[![Step 5 for ransomware protection with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-step5.png)](protect-against-ransomware-microsoft-365-step5.md)

[Step 5. Protect information](protect-against-ransomware-microsoft-365-step5.md)
