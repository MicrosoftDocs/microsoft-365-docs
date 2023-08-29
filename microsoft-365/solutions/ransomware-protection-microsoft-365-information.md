---
title: "Step 5. Protect information"
author: dansimp
f1.keywords:
- NOCSH
ms.author: dansimp
manager: dansimp
ms.date: 08/20/2021
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
- M365-security-compliance
- Strat_O365_Enterprise
- ransomware
- m365solution-ransomware
ms.custom: seo-marvel-jun2020
keywords: ransomware, human-operated ransomware, human operated ransomware, HumOR, extortion attack, ransomware attack, encryption, cryptovirology, zero trust
description: Use controlled folder access, Microsoft Purview Information Protection, DLP, and Microsoft Defender for Cloud Apps to protect your Microsoft 365 sensitive data.
---

# Step 5. Protect information

Because ransomware attackers will also look at your on-premises data located on file, database, and other types of servers, one of the best ways to protect that data is to migrate it to your Microsoft 365 tenant. Once there, it can be protected by built-in mitigation and recovery features such as [versioning, recycle bin, and Files Restore](ransomware-protection-microsoft-365.md#ransomware-mitigation-and-recovery-capabilities-provided-with-microsoft-365).

To provide additional protection of sensitive information in your Microsoft 365 tenant:

- Locate your sensitive information.
- Implement strict permissions and eliminating broad access (for example, prevent too many users having write, edit, and delete capabilities).
- Protect your sensitive information.

>[!Note]
>For detailed deployment guidance for information protection in a Microsoft 365 tenant, see [Deploy information protection for data privacy regulations](information-protection-deploy.md). Although intended for data privacy regulations, much of the guidance also applies to ransomware protection.
>

## Locate your sensitive information

The first task is to [identify the types and locations](/microsoft-365/compliance/information-protection#know-your-data) of sensitive information in your tenant, which can include the following types:

- Sensitive
- Proprietary or intellectual property
- Regulated, such regional regulations that specify protection of personally identifying information (PII)
- IT recovery plans

For each type of sensitive information, determine the following:

- The use of the information to your organization
- A relative measure of its monetary value if it were held for ransom (such as high, medium, low)
- Its current location, such as a OneDrive or SharePoint folder or collaboration venue such as a Microsoft Teams team
- The current permissions, which consist of:

   - The user accounts who have access

   - The actions that are allowed to each account that has access 

## Implement strict permissions for locations with sensitive information

Implementing strict permissions within your Microsoft 365 tenant uses the principle of least privilege for locations and communications venues, which in Microsoft 365 are typically OneDrive folders, SharePoint sites and folders, and teams. 

While it is easier to create file storage locations or teams with broad access (such as the default of everyone in your organization), for sensitive information, the user accounts that are permitted and the actions that are allowed must be confined to the minimum set required to meet collaboration and business requirements.

Once a ransomware attacker has infiltrated your tenant, they try to escalate their privileges by compromising the credentials of user accounts with wider scopes of permissions across your tenant, such as administrator role accounts or user accounts that have access to sensitive information. 

Based on this typical attacker behavior, there are two levels of difficulty for the attacker:

- **Low:** An attacker can use a low-permission account and discover your sensitive information because of broad access throughout your tenant.
- **Higher:** An attacker can't use a low-permission account and discover your sensitive information because of strict permissions. They must escalate their permissions by determining and then compromising the credentials of an account that has access to a location with sensitive information, but then may only be able to do a limited set of actions.

For sensitive information, you must make the level of difficulty as high as you can.

You can ensure strict permissions in your tenant with these steps:

1. From the effort to [locate your sensitive information](#locate-your-sensitive-information), review the permissions for the locations of sensitive information. 
2. Implement strict permissions for the sensitive information while meeting collaboration and business requirements and inform the users that are affected.
3. Perform change management for your users so that future locations for sensitive information are created and maintained with strict permissions.
4. Audit and monitor the locations for sensitive information to ensure that broad permissions aren't being granted.

See [Set up secure file sharing and collaboration with Microsoft Teams](setup-secure-collaboration-with-teams.md) for detailed guidance. An example of a communication and collaboration venue with strict permissions for sensitive information is a [team with security isolation](/microsoft-365/solutions/secure-teams-security-isolation).

## Protect your sensitive information

To protect your sensitive information in case a ransomware attacker obtains access to it:

- Use [controlled folder access](/windows/security/threat-protection/microsoft-defender-atp/controlled-folders) to make it more difficult for unauthorized applications to modify the data in controlled folders.

- Use [Microsoft Purview Information Protection](/microsoft-365/compliance/information-protection) and sensitivity labels and apply them to sensitive information. Sensitivity labels can be configured for additional encryption and permissions with defined user accounts and allowed actions. A file labeled with this type of sensitivity label that is exfiltrated from your tenant will only be useable to a user account defined in the label.

- Use Microsoft Purview [Data Loss Prevention (DLP)](/microsoft-365/compliance/dlp-learn-about-dlp) to detect, warn, and block risky, inadvertent, or inappropriate sharing of data containing personal or confidential information based on sensitivity labels, both internally and externally.

- Use [Microsoft Defender for Cloud Apps](/cloud-app-security/what-is-cloud-app-security) to block downloads of sensitive information such as files. You can also use [Defender for Cloud Apps anomaly detection policies](/cloud-app-security/anomaly-detection-policy#ransomware-activity) to detect a high rate of file uploads or file deletion activities.

## Impact on users and change management

Administrative changes to broad permissions can lead to users being denied access or being unable to execute some actions.

Additionally, for the protection of sensitive information in your Microsoft 365 tenant, train your users to:

- Create communication and collaboration venues with strict permissions (the minimum set of user accounts for access and the minimum allowed actions for each account). 
- Apply the proper sensitivity labels to sensitive information.
- Use controlled folder access.

## Resulting configuration

Here's the ransomware protection for your tenant for steps 1-5.

![Ransomware protection for your Microsoft 365 tenant after Step 5](../media/ransomware-protection-microsoft-365/ransomware-protection-microsoft-365-architecture-step5.png)

## Additional ransomware resources

Key information from Microsoft:

- [The growing threat of ransomware](https://blogs.microsoft.com/on-the-issues/2021/07/20/the-growing-threat-of-ransomware/), Microsoft On the Issues blog post on July 20, 2021
- [Human-operated ransomware](/security/compass/human-operated-ransomware)
- [Rapidly protect against ransomware and extortion](/security/compass/protect-against-ransomware)
- [2021 Microsoft Digital Defense Report](https://www.microsoft.com/security/business/microsoft-digital-defense-report) (see pages 10-19)
- [Ransomware: A pervasive and ongoing threat](https://security.microsoft.com/threatanalytics3/05658b6c-dc62-496d-ad3c-c6a795a33c27/overview) threat analytics report in the Microsoft 365 Defender portal
- Microsoft's Detection and Response Team (DART) ransomware [approach and best practices](/security/compass/incident-response-playbook-dart-ransomware-approach) and [case study](/security/compass/dart-ransomware-case-study)

Microsoft 365:

- [Maximize Ransomware Resiliency with Azure and Microsoft 365](https://azure.microsoft.com/resources/maximize-ransomware-resiliency-with-azure-and-microsoft-365/)
- [Ransomware incident response playbooks](/security/ransomware/)
- [Malware and ransomware protection](/compliance/assurance/assurance-malware-and-ransomware-protection)
- [Protect your Windows 10 PC from ransomware](https://support.microsoft.com//windows/protect-your-pc-from-ransomware-08ed68a7-939f-726c-7e84-a72ba92c01c3)
- [Handling ransomware in SharePoint Online](/sharepoint/troubleshoot/security/handling-ransomware-in-sharepoint-online)
- [Threat analytics reports for ransomware](https://security.microsoft.com/threatanalytics3?page_size=30&filters=tags%3DRansomware&ordering=-lastUpdatedOn&fields=displayName,alertsCount,impactedEntities,reportType,createdOn,lastUpdatedOn,tags,flag) in the Microsoft 365 Defender portal

Microsoft 365 Defender:

- [Find ransomware with advanced hunting](/microsoft-365/security/defender/advanced-hunting-find-ransomware)

Microsoft Azure:

- [Azure Defenses for Ransomware Attack](https://azure.microsoft.com/resources/azure-defenses-for-ransomware-attack/)
- [Maximize Ransomware Resiliency with Azure and Microsoft 365](https://azure.microsoft.com/resources/maximize-ransomware-resiliency-with-azure-and-microsoft-365/)
- [Backup and restore plan to protect against ransomware](/security/compass/backup-plan-to-protect-against-ransomware)
- [Help protect from ransomware with Microsoft Azure Backup](https://www.youtube.com/watch?v=VhLOr2_1MCg) (26-minute video)
- [Recovering from systemic identity compromise](/azure/security/fundamentals/recover-from-identity-compromise)
- [Advanced multistage attack detection in Microsoft Sentinel](/azure/sentinel/fusion#ransomware)
- [Fusion Detection for Ransomware in Microsoft Sentinel](https://techcommunity.microsoft.com/t5/azure-sentinel/what-s-new-fusion-detection-for-ransomware/ba-p/2621373)

Microsoft Defender for Cloud Apps:

-  [Create anomaly detection policies in Defender for Cloud Apps](/cloud-app-security/anomaly-detection-policy)

Microsoft Security team blog posts:

- [3 steps to prevent and recover from ransomware (September 2021)](https://www.microsoft.com/security/blog/2021/09/07/3-steps-to-prevent-and-recover-from-ransomware/)
- [A guide to combatting human-operated ransomware: Part 1 (September 2021)](https://www.microsoft.com/security/blog/2021/09/20/a-guide-to-combatting-human-operated-ransomware-part-1/)

  Key steps on how Microsoft's Detection and Response Team (DART) conducts ransomware incident investigations.

- [A guide to combatting human-operated ransomware: Part 2 (September 2021)](https://www.microsoft.com/security/blog/2021/09/27/a-guide-to-combatting-human-operated-ransomware-part-2/)

  Recommendations and best practices.

- [Becoming resilient by understanding cybersecurity risks: Part 4—navigating current threats (May 2021)](https://www.microsoft.com/security/blog/2021/05/26/becoming-resilient-by-understanding-cybersecurity-risks-part-4-navigating-current-threats/)

  See the **Ransomware** section.

- [Human-operated ransomware attacks: A preventable disaster (March 2020)](https://www.microsoft.com/security/blog/2020/03/05/human-operated-ransomware-attacks-a-preventable-disaster/)

  Includes attack chain analyses of actual attacks.

- [Ransomware response—to pay or not to pay? (December 2019)](https://www.microsoft.com/security/blog/2019/12/16/ransomware-response-to-pay-or-not-to-pay/)
- [Norsk Hydro responds to ransomware attack with transparency (December 2019)](https://www.microsoft.com/security/blog/2019/12/17/norsk-hydro-ransomware-attack-transparency/)
