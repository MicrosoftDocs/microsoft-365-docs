---
title: "Threats detected by Microsoft Defender Antivirus"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: conceptual 
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid: MET150
description: "Learn how Microsoft Defender Antivirus protects your Windows devices from software threats, such as viruses, malware, and spyware."
---

# Threats detected by Microsoft Defender Antivirus

Microsoft Defender Antivirus protects your Windows devices from software threats, such as viruses, malware, and spyware.

- Viruses typically spread by attaching their code to other files on your device or network and can cause infected programs to work incorrectly.
- Malware includes malicious files, applications, and code that can cause damage and disrupt normal use of devices. Also, malware can allow unauthorized access, use system resources, steal passwords and account information, lock you out of your computer and ask for ransom, and more.
- Spyware collects data, such as web-browsing activity, and sends the data to remote servers.
 
To provide threat protection, Microsoft Defender Antivirus uses several methods. These methods include cloud-delivered protection, real-time protection, and dedicated protection updates.

- Cloud-delivered protection helps provide near-instant detection and blocking of new and emerging threats.
- Always-on scanning uses file- and process-behavior monitoring and other techniques (also known as *real-time protection*).
- Dedicated protection updates are based on machine learning, human and automated big-data analysis, and in-depth threat resistance research. 

To learn more about malware and Microsoft Defender Antivirus, see the following articles: 

- [Understanding malware & other threats](/windows/security/threat-protection/intelligence/understanding-malware)
- [How Microsoft identifies malware and potentially unwanted applications](/windows/security/threat-protection/intelligence/criteria)
- [Next-generation protection in Windows 10](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10)

## What happens when a non-Microsoft antivirus solution is used? 

Microsoft Defender Antivirus is part of the operating system and is enabled on devices that are running Windows 10. However, if you're using a non-Microsoft antivirus solution and you aren't using [Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection), then Microsoft Defender Antivirus automatically goes into disabled mode.  

When in disabled mode, users and customers can still use Microsoft Defender Antivirus for scheduled or on-demand scans to identify threats; however, Microsoft Defender Antivirus will no longer:

- be used as the default antivirus app.
- actively scan files for threats.
- remediate, or resolve, threats.

If you uninstall the non-Microsoft antivirus solution, Microsoft Defender Antivirus will automatically go into active mode to protect your Windows devices from threats.

> [!TIP]
> - If you're using Microsoft 365, consider using Microsoft Defender Antivirus as your primary antivirus solution. Integration can provide better protection. See [Better together: Microsoft Defender Antivirus and Office 365](/windows/security/threat-protection/microsoft-defender-antivirus/office-365-microsoft-defender-antivirus).
> - Make sure to keep Microsoft Defender Antivirus up to date, even if you're using a non-Microsoft antivirus solution.

## What to expect when threats are detected

When threats are detected by Microsoft Defender Antivirus, the following things happen:

- Users receive [notifications in Windows](https://support.microsoft.com/windows/8942c744-6198-fe56-4639-34320cf9444e). 
- Detections are listed in the [Windows Security app](/windows/security/threat-protection/windows-defender-security-center/windows-defender-security-center) on the **Protection history** page.  
- If you've [secured your Windows 10 devices](secure-win-10-pcs.md) and [enrolled them in Intune](/mem/intune/enrollment/windows-enrollment-methods), and your organization has 800 or fewer devices enrolled, you'll see threat detections and insights in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> on the **Threats and antivirus** page, which you can access from the **Microsoft Defender Antivirus** card on the **Home** page (or from the navigation pane by selecting **Health** > **Threats & antivirus**).

    If your organization has more than 800 devices enrolled in Intune, you'll be prompted to view threat detections and insights from [Microsoft Endpoint Manager](/mem/endpoint-manager-overview) instead of from the **Threats and antivirus** page.
 
    > [!NOTE]
    > The **Microsoft Defender Antivirus** card and **Threats and antivirus** page are being rolled out in phases, so you may not have immediate access to them.

In most cases, users don't need to take any further action. As soon as a malicious file or program is detected on a device, Microsoft Defender Antivirus blocks it and prevents it from running. Plus, newly detected threats are added to the antivirus and antimalware engine so that other devices and users are protected, as well.  

If there's an action a user needs to take, such as approving the removal of a malicious file, they'll see that in the notification they receive. To learn more about actions that Microsoft Defender Antivirus takes on a user's behalf, or actions users might need to take, see [Protection History](https://support.microsoft.com/office/f1e5fd95-09b4-46d1-b8c7-1059a1e09708). To learn how to manage threat detections as an IT professional/admin, see [Review detected threats and take action](review-threats-take-action.md).

To learn more about different threats, visit the <a href="https://www.microsoft.com/wdsi/threats" target="_blank">Microsoft Security Intelligence Threats site</a>, where you can perform the following actions: 

- View current information about top threats.
- View the latest threats for a specific region.
- Search the threat encyclopedia for details about a specific threat.

## Related content

[Secure Windows 10 devices](secure-windows-10-devices.md) (article)\
[Evaluate Microsoft Defender Antivirus](/windows/security/threat-protection/microsoft-defender-antivirus/evaluate-microsoft-defender-antivirus) (article)\
[How to turn on real-time and cloud-delivered antivirus protection](/mem/intune/user-help/turn-on-defender-windows#turn-on-real-time-and-cloud-delivered-protection) (article)\
[How to turn on and use Microsoft Defender Antivirus from the Windows Security app](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-security-center-antivirus) (article)\
[How to turn on Microsoft Defender Antivirus by using Group Policy](/mem/intune/user-help/turn-on-defender-windows#turn-on-windows-defender) (article)\
[How to update your antivirus definitions](/mem/intune/user-help/turn-on-defender-windows#update-your-antivirus-definitions) (article)\
[How to submit malware and non-malware to Microsoft for analysis](/microsoft-365/security/office-365-security/submitting-malware-and-non-malware-to-microsoft-for-analysis) (article)
