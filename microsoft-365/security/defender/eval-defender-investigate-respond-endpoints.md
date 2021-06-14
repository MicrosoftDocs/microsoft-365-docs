---
title: Add endpoints to your Microsoft 365 Defender pilot environment
description: Add an Active Directory Domain Services (AD DS) domain controller and a Windows 10 device to your pilot environment.
keywords: Microsoft 365 Defender trial, try Microsoft 365 Defender, evaluate Microsoft 365 Defender, Microsoft 365 Defender evaluation lab, Microsoft 365 Defender pilot, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
localization_priority: Normal
ms.author: josephd
author: JoeDavies-MSFT
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-overview
  - m365solution-evalutatemtp
ms.topic: conceptual
ms.technology: m365d
---

# Add endpoints to your Microsoft 365 Defender pilot environment

**Applies to:**
- Microsoft 365 Defender

Now that your pilot environment has all of the Microsoft 365 Defender components enabled, it's time to create an incident with a simulated attack and use the Microsoft 365 Defender portal to investigate and respond.

An incident in Microsoft 365 Defender is a collection of correlated alerts and associated data that make up the story of an attack. 
Microsoft 365 services and apps create alerts when they detect a suspicious or malicious event or activity. Individual alerts provide valuable clues about a completed or ongoing attack. However, attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is multiple alerts for multiple entities in your tenant.

You'll simulate an attack on a Windows 10 device using a PowerShell script and then investigate, remediate, and resolve the incident.

First, you need to add endpoints to your pilot environment.

## Add pilot environment endpoints

To simulate an attack on a Windows 10 device, you need to add an Active Directory Domain Services (AD DS) domain controller and a Windows 10 device to your pilot environment.

1. Verify your pilot environment tenant has [enabled Microsoft 365 Defender](m365d-enable.md#confirm-that-the-service-is-on).

2. Verify that your domain controller:

   - Runs Windows Server 2008 R2 or a later version.
   - Reports to [Microsoft Defender for Identity](/azure/security-center/security-center-wdatp) and has enabled [remote management](/windows-server/administration/server-manager/configure-remote-management-in-server-manager).
   - Has [Microsoft Defender for Identity and Microsoft Cloud App Security integration](/cloud-app-security/mdi-integration) enabled.
   - Has a test user is created in the test domain. Administrator-level permissions are not needed.

3. Verify that your test device:

   - Runs Windows 10 version 1903 or a later version.
   - Is joined to the AD DS domain controller domain.
   - Has [Windows Defender Antivirus](/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features) enabled. If you are having trouble enabling Windows Defender Antivirus, see this [troubleshooting topic](/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding#ensure-that-windows-defender-antivirus-is-not-disabled-by-a-policy).
   - Is [onboarded to Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints).

If you use tenant and device groups, create a dedicated device group for the test device and push it to top level.

## Next step

[Simulate an attack and response with Microsoft 365 Defender](eval-defender-investigate-respond-simulate-attacks.md)

### Navigation you may need

[Create the Microsoft 365 Defender Evaluation Environment](eval-create-eval-environment.md)
