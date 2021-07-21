---
title: "Step 1: Remove attacker financial leverage with data protection/Protect your ransomable targets"
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

# Step 1: Remove attacker financial leverage with data protection/Protect your ransomable targets

Assume attacker has the credentials to access your tenant and can laterally move around to discover targets.

## Elements of financial leverage

- Data encryption or destruction
- Data exfiltration: Attacker copies data outside the tenant
- Attack recovery sabotage: Encrypt or destroy IT recovery plans

## Data encryption or destruction

**Attacker's goal:** Make crucial organization data unusable, bringing normal business operations to a halt. 

**Financial leverage:** Organization can’t operate normally and loses revenue.

### Prevent: Attacker can’t access data

- Access to data through tight permissions

   Perform broad permissions review

   Audit and monitor for new broad permissions

- MIP, sensitive information types, and sensitivity labels (permissions and encryption)
- Office 365 Message Encryption new capabilities (OME) and OME Advanced Message Encryption
- Customer Key, BYOK, and HYOK
- Protected Folders/controlled folder access for malicious apps
- Teams/SharePoint sites with security isolation

### Mitigate: attacker can access data, but can’t encrypt or destroy all copies

- Offline, off-site, immutable backups

## Data exfiltration: Attacker copies data outside the tenant

**Attacker's goal:** Obtaining internal and critical data as proof of attack and being able to share it with others.

**Financial leverage:** Sharing data with competitors (loss of competitive advantage), other criminals (for future attacks or additional extortion), or the public (damage to reputation and brand) can result in lost revenue.

### Prevent: Attacker can’t exfiltrate data

- DLP

### Mitigate: attacker can exfiltrate, but exfiltrated data is unusable to them

- MIP, sensitive information types, and sensitivity labels (permissions and encryption)
- Office 365 Message Encryption new capabilities (OME) and OME Advanced Message Encryption

## Attack recovery sabotage: Encrypt or destroy IT recovery plans

Financial leverage: Making it longer and more difficult to recover data, endpoints, and processes can result in additional lost revenue.

### Prevent: Attacker can’t access plans

- Access through tight permissions
- MIP, sensitive information types, and sensitivity labels (permissions and encryption)
- Office 365 Message Encryption new capabilities (OME) and OME Advanced Message Encryption
- Customer Key
- Teams/SharePoint sites with security isolation

### Mitigate: Attacker can access plans, but can’t encrypt or destroy all copies

- Offline, off-site, immutable backups of plans


<!--

Prevent a ransomware attacker from accumulating financial leverage over your organization:

- Data destruction/encryption

  How valuable is my data?

- Data exfiltration with intent to:

  - Sell to the dark web (other criminals, competitors)

  - Expose information to the public (embarassment, loss of public integrity, privacy regulation penalties)

- Make it difficult to recover from a ransomware attack

Thwart goals of attackers:

### Perform data destruction/encryption

Attacker: I’ve got their data and there’s nothing they can do about it 
Mitigation: My data is backed up and undamaged and they A. Can’t get to it and B. Even if they can, they can’t change it.

### Perform data exfiltration

Data exfiltration with intent to sell to the dark web (other criminals, competitors, or expose information to the public (embarassment, loss of public integrity)

### Sabotage recovery efforts

Attacker: I’ve got their IT disaster recovery plans and there’s nothing they can do about it

Mitigate: Protect supporting documents required for recovery such as restoration procedure documents, Configuration Management database (CMDB), and network diagrams. 

Microsoft 365 solution: Team with security isolation for ongoing changes combined with off-site, off-line, or immutable storage (CD/DVD).

## Data protection

https://docs.microsoft.com/en-us/microsoft-365/solutions/information-protection-deploy-protect-information?view=o365-worldwide#managing-information-protection-in-microsoft-365

Microsoft information protection solutions include a number of integrated capabilities across Microsoft 365, Microsoft Azure, and Microsoft Windows. In Microsoft 365, information protection solutions include:

- Sensitive information types (described in the assess data privacy risks and identify sensitive items article)

  - Sensitivity labels

  - Service/container-level

  - Client-side/content-level

- Automated for data-at-rest in SharePoint and OneDrive
- Data Loss Prevention (DLP)
- Microsoft 365 Endpoint data loss prevention
- Office 365 Message Encryption new capabilities (OME) and OME Advanced Message Encryption

--> 









## Next step

[Step 2: Minimize privileged access and prevent credential escalation](protect-against-ransomware-microsoft-365-phase2.md)

<!--

[![The steps to set up ransomware protection with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-step-grid-1.png)](protect-against-ransomware-microsoft-365-phase1.md)

--> 


