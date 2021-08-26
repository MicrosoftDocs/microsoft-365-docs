---
title: "Step 5. Protect information"
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

# Step 5. Protect information

Because ransomware attackers will also look at your on-premises data on file, database, and other types of servers, one of the best ways to protect that data is to migrate it to your Microsoft 365 tenant. Once there, it can be protected by built-in mitigation and recovery features such as versioning, recycle bin, and the Preservation Hold library.

Providing additional protection your ransomable information in your Microsoft 365 tenant consists of:

- Locating the ransomable information
- Implementing tight permissions
- Protecting your ransomable information

## Locate your ransomable information

The first task is to idenitify the types and locations of ransomable information in your tenant, which can include the following types:

- Sensitive
- Proprietary or intellectual property
- Regulated, such 
- IT recovery plans



## Implement tight permissions for locations with ransomable information

Tight permissions within your Microsoft 365 tenant is the "only those that need to know" principle for locations and communications venues, which in Microsoft 365 are typically OneDrive folders, SharePoint sites and folders, and teams and teams channels in Teams. While it is easier to create file storage locations or Teams with broad permissions (such as the default of everyone in your organization), for ransomable data, the user accounts that are permitted and the actions that are allowed must to confined to the minimum set required to meet the collaboration requirements of the group.

Once a ransomware attacker has infiltrated your tenant, they try to escalate their privileges by compromising the credentials of user accounts with wider scope of permissions across your tenant, such as administrator role accounts or user accounts that have access to ransomable information. Based on this typical attacker behavior, there are two levels of difficulty for the attacker:

- **Low:** An attacker can use a low-permission account and discover your ransomable information because of broad permissions throughout your tenant.
- **Higher:** An attacker must escalate their permissions by determining and then compromising the credentials of an account that has access to a location with ransomable information, but then may only be able to do a limited set of actions.

You can ensure tight permissions in your tenant with these steps:

1. Review the permissions for the locations of sensitive information to remove the broad access on OneDrive folders, SharePoint sites and folders, and teams. Broad is defined as many users having write/delete to business-critical data
2. Reduce broad permissions while meeting business collaboration requirements.
3. Perform change management for your users so that future locations for ransomable information are created and maintained with the minimum permissions.
4. Audit and monitor the locations for ransomable information to ensure that broad permissions aren't granted.

An example of a communcation and collaboration venue with minimal permissions for sensitive information is a [team with security isolation](/microsoft-365/solutions/secure-teams-security-isolation).

## Protect your ransomable information

- Designate [Protected Folders](/en-us/windows/security/threat-protection/microsoft-defender-atp/controlled-folders) to make it more difficult for unauthorized applications to modify the data in these folders.

- Implement [controlled folder access](https://support.microsoft.com/en-us/topic/ransomware-protection-in-windows-security-445039d6-537a-488a-ad53-48906f346363) to help prevent files from being altered or encrypted by ransomware. See [Set controlled folder access to Enabled or Audit mode](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/enable-controlled-folders?view=o365-worldwide).

- Use Microsoft Information Protection and sensitivity labels that are applied to ransomable information. Sensitivity labels can be configured for additional encryption and permissions of user accounts and allowed actions. A file with a sensitivity label that is exfiltrated from your tenant will only be useable to a user account defined in the permissions.

- Use Microsoft 365 [Data Loss Prevention (DLP)](/microsoft-365/compliance/dlp-learn-about-dlp) to detect, warn, and block risky, inadvertent, or inappropriate sharing of data containing personal or confidential information based on sensitivity labels, both internally and externally.

- Use [Microsoft Cloud App Security](/cloud-app-security/what-is-cloud-app-security) to block downloads of sensitive information such as files. 

- Back up important files regularly. Use the 3-2-1 rule. Keep three backups of your data, on two different storage types, and at least one backup offsite.


## Impact on users and change management

For the protection of ransomable information in your Microsoft 365 tenant:

- Train your users to create communication and collaboration venues for ransomable data with the minimum set of user accounts for access and the minimal allowed actions for each. Admnistrative changes to broad permissions can lead to users being denied access or being unable to execute some actions.

- Train your users to use Protected Folders and controlled folder access.

- 



## Resulting configuration

Here is the ransomware protection for your tenant after this final step.

![Ransomware protection for your Microsoft 365 tenant after Step 5](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-architecture-step5.png)

