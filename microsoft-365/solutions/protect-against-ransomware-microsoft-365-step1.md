---
title: "Step 1. Configure security baselines"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: dansimp
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection:
- M365-security-compliance
- Strat_O365_Enterprise
- ransomware
- m365solution-ransomware
ms.custom: seo-marvel-jun2020
keywords: 
description: Step through protecting your Microsoft 365 resources from ransomware attacks.
---

# Step 1. Configure security baselines

As a first step to thwart ransomware attackers, you must configure the following Microsoft-defined security baselines:

- Microsoft 365 security
- Exchange email management
- Additional baselines for Windows devices and client software

These baselines contain configuration settings and rules that are well-known by attackers. Thier absence are quickly noticed and commonly exploited in cyberattacks.

## Microsoft 365 security baseline

First, assess and measure your security posture using [Microsoft Secure Score](/microsoft-365/security/defender/microsoft-secure-score) and follow instructions to improve it as needed.

Next, use [attack surface reduction rules](/microsoft-365/security/defender-endpoint/attack-surface-reduction) to help block suspicious activity and vulnerable content:

- Block all Office applications from creating child processes
- Block executable content from email client and webmail
- Block executable files from running unless they meet a prevalence, age, or trusted list criterion
- Block execution of potentially obfuscated scripts
- Block JavaScript or VBScript from launching downloaded executable content
- Block Office applications from creating executable content
- Block Office applications from injecting code into other processes
- Block Office communication application from creating child processes
- Block untrusted and unsigned processes that run from USB
- Block persistence through WMI event subscription
- Block credential stealing from the Windows local security authority subsystem (lsass.exe)
- Block process creations originating from PSExec and WMI commands

## Exchange email management baseline 

Help prevent initial access to your tenant from an email-based attack with these Exchange email baseline settings:

- Enable Microsoft Defender Antivirus email scanning.
- Use Microsoft Defender for Office 365 for [enhanced phishing protection](/microsoft-365/security/office-365-security/anti-phishing-protection) and coverage against new threats and polymorphic variants.
- Check your Office 365 email filtering settings to ensure you block spoofed emails, spam, and emails with malware. Use Microsoft Defender for Office 365 for enhanced phishing protection and coverage against new threats and polymorphic variants. Configure Microsoft Defender for Office 365 to [recheck links on click](/microsoft-365/security/office-365-security/atp-safe-links) and [delete delivered mails](/microsoft-365/security/office-365-security/zero-hour-auto-purge) in response to newly acquired threat intelligence.
- Review and update to the latest [recommended settings for EOP and Microsoft Defender for Office 365 security](/microsoft-365/security/office-365-security/recommended-settings-for-eop-and-office365-atp).
- Configure Microsoft Defender for Office 365 to [recheck links on click](/microsoft-365/security/office-365-security/set-up-safe-links-policies) and delete delivered mails in response to newly acquired threat intelligence.

## Additional baselines

Apply [security baselines](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/bg-p/Microsoft-Security-Baselines) for:

- Windows 10
- Microsoft 365 Apps for Enterprise
- Microsoft Edge
- Windows Server

## Impact on users and change management

As a best practice for an attack surface reduction rule, assess how an attack surface reduction rule might impact your network by opening the security recommendation for that rule in threat and vulnerability management. The recommendation details pane describes the user impact, which you can use to determine what percentage of your devices can accept a new policy enabling the rule in blocking mode without adverse impact to user productivity.

## Resulting configuration

Here is the ransomware protection for your tenant after this step.

![Ransomware protection for your Microsoft 365 tenant after Step 1](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-architecture-step1.png)


## Next step

[![Step 2 for ransomware protection with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-step2.png)](protect-against-ransomware-microsoft-365-step2.md)

[Step 2. Deploy attack detection and response](protect-against-ransomware-microsoft-365-step2.md)
