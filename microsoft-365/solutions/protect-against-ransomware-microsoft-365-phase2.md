---
title: "Step 2: Minimize privileged access and prevent credential escalation"
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
- remotework
- m365solution-remotework
- m365solution-overview
- M365initiative-coredeploy
ms.custom: seo-marvel-jun2020
keywords: 
description: Step through protecting your Microsoft 365 resources from ransomware attacks.
---

# Step 2: Minimize privileged access and prevent credential escalation


## Privileged access strategy

High-privilege accounts: IT admins or users with access to ransomable assets.

### Prevent: Attacker can’t gain privileged access

- Change authentication for all high-privilege accounts

   - New and strong password

   - Multi-factor authentication

   - Use Conditional Access policies to lock down high-privilege accounts

- Use governance to determine which high-privilege accounts can be removed

### Mitigate: Attacker has privileged access, but can’t use it easily

No standing access, approval process required

- Secure admin workstations for all M365 admin procedures
- Use Azure AD Privileged Identity Management

   Enrollment and approval process before admin account becomes usable

- Privileged access management (PAM)

Request just-in-time access to complete elevated and privileged tasks through a highly scoped and time-bounded approval workflow

## Detection and response of credential escalation

- Azure AD Identity Protection

   Monitor for password spray

- M365 Defender


## Next step

[Step 3: Prevent attacker access](protect-against-ransomware-microsoft-365-phase3.md)

<!--

[![The steps to set up ransomware protection with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-step-grid-2.png)](protect-against-ransomware-microsoft-365-phase2.md)

--> 


