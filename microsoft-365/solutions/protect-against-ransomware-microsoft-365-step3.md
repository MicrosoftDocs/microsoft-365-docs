---
title: "Step 3. Protect identities"
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

# Step 3. Protect identities


## Increase password security

- Use Azure AD Identity Protection to prevent and detect attacks and extend blocking of known weak passwords to on-premises Active Directory

- Extend Azure AD Password Protection to on-premises active directory

Enforce strong multi-factor authentication (MFA) or passwordless logon for all users starting with administrators by using one or more of:

- Passwordless authentication with Windows Hello or Microsoft Authenticator app
- Azure Multi-Factor Authentication
- Third-party MFA solutions


### Prevent privilege escalation

Practice the principle of least-privilege and maintain credential hygiene. Avoid the use of domain-wide, admin-level service accounts. Restricting local administrative privileges can help limit installation of RATs and other unwanted applications.

Enforce end-to-end session security. Explicitly validate the trust of users and workstations before allowing access to administrative interfaces using Azure AD Conditional Access.

Enable Local Admin password management

Determine where highly privileged accounts are logging on and exposing credentials. Highly privileged accounts should not be present on workstations.

Disable the local storage of passwords and credentials.

## Impact on users and change management

TBD

## Next step

[![Step 4 for ransomware protection with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-step4.png)](protect-against-ransomware-microsoft-365-step4.md)

[Step 4. Protect devices](protect-against-ransomware-microsoft-365-step4.md)
