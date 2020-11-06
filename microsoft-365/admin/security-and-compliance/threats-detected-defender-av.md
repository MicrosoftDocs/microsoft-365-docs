---
title: "Threats detected by Microsoft Defender Antivirus"   # (Required) Very important for SEO. See https://aka.ms/seo-for-writers-cheat-sheet
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article                  # (Required) Choose from: article, conceptual, reference, troubleshooting 
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid: MET150
description: "Brief summary of article here"   # (Required) Important for SEO. Recommended character length is 115-145 characters.
---

# Threats detected by Microsoft Defender Antivirus

Microsoft Defender Antivirus protects your Windows devices from software threats, such as viruses, malware, and spyware.

- Viruses typically spread by attaching their code to other files on your device or network, and can cause infected programs to not run correctly.
- Malware includes malicious files, applications, and code that can cause damage and disrupt normal use of devices. In addition, malware can allow unauthorized access, use system resources, steal passwords, lock you out of your computer and ask for ransom, and more.
- Spyware collects data, such as web-browsing activity, and sends the data to remote servers.
 
To provide threat protection, Microsoft Defender Antivirus uses several methods. These methods include cloud-delivered protection, real-time protection, and dedicated protection updates.

- Cloud-delivered protection helps provide near-instant detection and blocking of new and emerging threats.
- Always-on scanning uses file and process behavior monitoring and other heuristics (this is also known as "real-time protection").
- Dedicated protection updates are based on machine learning, human and automated big-data analysis, and in-depth threat resistance research. 

To learn more about malware and Microsoft Defender Antivirus, see the following articles: 

- [Understanding malware & other threats](/windows/security/threat-protection/intelligence/understanding-malware)
- [How Microsoft identifies malware and potentially unwanted applications](/windows/security/threat-protection/intelligence/criteria)
- [Next-generation protection in Windows 10](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10)

## What happens when a non-Microsoft antivirus solution is used? 

Microsoft Defender Antivirus is part of the operating system and is enabled on devices that are running Windows 10. But if you are using a non-Microsoft antivirus/antimalware solution, and you are not using [Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection), then Microsoft Defender Antivirus automatically goes into disabled mode.  

> [!NOTE]
> Your third-party antivirus solution must be registered with the Windows Security App after installation, which ensures that Microsoft Defender Antivirus moves to disabled mode.

When in disabled mode, users and customers can still use Microsoft Defender Antivirus for scheduled or on-demand scans to identify threats; however, in this situation, Microsoft Defender Antivirus:

- is not used as the default antivirus app
- does not actively scan files for threats
- does not remediate, or resolve, threats

> [!TIP]
> - If you're using Microsoft 365, consider using Microsoft Defender Antivirus as your primary antivirus solution. Integration can mean better protection. See [Better together: Microsoft Defender Antivirus and Office 365](/windows/security/threat-protection/microsoft-defender-antivirus/office-365-microsoft-defender-antivirus).
- Make sure to keep Microsoft Defender Antivirus up to date, even if you’re using a non-Microsoft antivirus solution.

### Sub-heading (optional)

<!-- Include sub-headings, if needed. -->

## Watch: <Name of video> (optional)

<!-- If you include a video in your article, put it under its own H2 heading so it shows up in the "In this article" list on the right side of the article. -->

## Next steps (optional)

<!-- Include this section for how-to articles only, if needed. Recommend the next logical action or actions to take after completing the task(s) outlined in the article. Include links to relevant how-to articles (such as the next task to complete in a scenario), links to recommended reading, or any other info that you think users should or might want to do next. -->

## Related content

<!-- Include a list of links, but do NOT use bullets. Next to each link, include the content type (choose from: article, video, blog post, link page) in parentheses. See examples below. -->

[Article title](https://docs.microsoft.com/microsoft-365/admin/admin-overview/about-the-admin-center) (article)\
[Video title](https://www.aka.ms/M365Btraining) (video)\
[Blog post title](https://techcommunity.microsoft.com/t5/office-365-blog/office-365-groups-ignite-recap/ba-p/1036796) (blog post)\
[Landing page title](https://www.aka.ms/M365Btraining) (link page)