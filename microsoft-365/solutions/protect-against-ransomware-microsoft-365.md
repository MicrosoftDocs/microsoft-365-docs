---
title: "Deploy protection against ransomware with Microsoft 365"
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
- m365solution-overview
ms.custom: seo-marvel-jun2020
keywords: 
description: Step through protecting your Microsoft 365 resources from ransomware attacks.
---

# Deploy protection against ransomware with Microsoft 365

Ransomware is a type of extortion attack that encrypts files and folders, preventing access to important data. Commodity ransomware typically spreads like a virus that infects devices and only requires malware remediation. Human-operated ransomware is the result of an active attack by cybercriminals that infiltrate an organization’s on-premises or cloud IT infrastructure, elevate their privileges, and deploy ransomware to critical data.

Once the attack is complete, an attacker demands money from victims in exchange for decryption keys or a promise not to release sensitive data to the dark web or the public internet. Human-operated ransomware can also be used to shut down critical machines or processes, such as those needed for industrial production, bringing normal business operations to a halt until the ransom is paid and the damage is corrected or the organization remediates the damage themselves.

A human-operated ransomware attack can be catastrophic to businesses of all sizes and are difficult to clean up, requiring complete adversary eviction to protect against future attacks. Unlike commodity ransomware, human-operated ransomware can continue to threaten businesses operations after the initial ransom incident.

## Ransomware prevention and mitigation capabilities provided with Microsoft 365

A ransomware attacker that has infiltrated Microsoft 365 can attempt to create financial leverage by:

- Deleting files or email
- Encrypting files
- Copying files outside the tenant




## What’s in this solution

This solution steps you through the deployment of Microsoft 365 protection and mitigation features, configurations, and ongoing operations to minimize the ability of a ramsomware attacker to use the critical data in your Microsoft 365 tenant as financial leverage and hold your organization at ransom.

![The steps to protecting against ransomware with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-step-grid.png)

The steps in this solution are:

1. [Configure security baselines](protect-against-ransomware-microsoft-365-step1.md)
2. [Deploy attack detection and response](protect-against-ransomware-microsoft-365-step2.md)
3. [Protect identities](protect-against-ransomware-microsoft-365-step3.md)
4. [Protect devices](protect-against-ransomware-microsoft-365-step4.md)
5. [Protect information](protect-against-ransomware-microsoft-365-step5.md)

Here are the steps of the solution deployed for your Microsoft 365 tenant.

![Ransomware protection for a Microsoft 365 teanant](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-architecture.png)

To protect your Microsoft 365 tenant from a ransomware attack, use these Microsoft 365 features.

| Capability or feature | Description | Licensing |
|:-------|:-----|:-------|
|MFA enforced with security defaults|Protect against compromised identities and devices by requiring a second form of authentication for sign-ins. Security defaults requires MFA for all user accounts.|Microsoft 365 E3 or E5|
|MFA enforced with Conditional Access|Require MFA based on the properties of the sign-in with Conditional Access policies.|Microsoft 365 E3 or E5|
|MFA enforced with risk-based Conditional Access|Require MFA based on the risk of the user sign-in with Microsoft Defender for Identity.|Microsoft 365 E5 or E3 with Azure AD Premium P2 licenses|
|Microsoft Intune|Manage devices and applications.|Microsoft 365 E3 or E5|
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
||||

## Impact on users and change management

Deploying additional security features and policies to your Microsoft 365 tenant can impact your users. For example, you may impose a new security policy that requires users to create new teams for specific uses with a list of user accounts as members, instead of more easily creating a team for all users in the organization. This can help prevent a ransomware attacker from exploring teams that are not available from the attacker's compromised user account and targeting them in the attack.

This solution will identify when a new configuration or recommended security policy can impact your users so you can implement the required change management.


## Next steps

[![Step 1 for ransomware protection with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-step1.png)](protect-against-ransomware-microsoft-365-step1.md)

Use these steps:

1. [Configure security baselines](protect-against-ransomware-microsoft-365-step1.md)
2. [Deploy attack detection and response](protect-against-ransomware-microsoft-365-step2.md)
3. [Protect identities](protect-against-ransomware-microsoft-365-step3.md)
4. [Protect devices](protect-against-ransomware-microsoft-365-step4.md)
5. [Protect information](protect-against-ransomware-microsoft-365-step5.md)
