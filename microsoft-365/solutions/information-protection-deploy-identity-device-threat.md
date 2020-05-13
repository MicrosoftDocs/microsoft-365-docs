---
title: "Use identity, device and threat protection for data privacy regulation"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 05/01/2020
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- M365solutions
ms.custom: 
description: add.
---

# Use identity, device and threat protection for data privacy regulation

Microsoft 365 provides a number of identity, device, and threat protection capabilities that organizations can employ to help comply with data privacy-related compliance obligations. This section briefly describes what the data privacy regulations call for (in general) in these areas, as well as provides a listing of related Microsoft 365 solutions, with links to more information to help you address any implementation requirements.

## How identity, device and threat protection relates to the substance of data privacy regulation

While the data privacy regulations vary in their specificity, the essence of what they call for can be embodied in the GDPR’s Article 5(1)(f), which states that: 

- "Personal data shall be processed in a manner that ensures appropriate security of the personal data, including protection against unauthorized or unlawful processing and against accidental loss, destruction or damage, using appropriate technical or organizational measures ('integrity and confidentiality')".

Since personal data breaches are often caused by administrative and/or end-user account compromise and malicious system access (e.g. resulting in exfiltration of customer credit card numbers or other personal information), all the generally advisable identity, device and threat protection available with Microsoft 365 potentially come into play, most of which will be reflected in your Compliance Score (though it's worth noting that most of these would be implemented regardless of compliance obligations).

## Using the results of your assessment work and Compliance Manager/Compliance Score

Compliance Score includes identity, device and threat protection using these categories:

- Identity corresponds to the **Control Access** category
- Device corresponds to the **Manage Devices** category
- Threat protection corresponds to the **Protect Against Threats** category
 
In total, if these are selected across our sample set of four major data privacy regulations, Compliance Score specifies 90 improvement actions, most of which are scored a "27" (i.e. Preventative and Mandatory). Since such a large number are called out by Compliance Score for these categories, some of the more common ones are listed here, for reference.

For more information, the reader is directed to more specific documentation referred to in Compliance Manager, Compliance Score, and the articles referenced below, and customer current state vs. requirements obviously dictate which of these make sense to put on your list to employ (if not already implemented).

Use Azure Active Directory (Azure AD) for identity and the corresponding **Control Access** category, with which you can:

- Implement Replay-Resistant Authentication (to prevent “Man in the middle” attacks)
- Block Legacy Authentication
- Configure User Risk and User Sign-in Risk Policies
- Enable Conditional Access and Multi-factor Authentication for Admins and Non-Admins
- Configure and Enforce Password Policies
- Restrict Access to Privileged Accounts (i.e. use Privileged Identity Management)
- Disable Access Upon Termination
- Audit User Accounts and Status Changes
- Review Role Group and Administrative Changes	

Use Microsoft Endpoint Manager for devices and the corresponding ***Manage Devices** category, with which you can:

- Block Jail Broken and Rooted Mobile Devices
- Configure Intune for Mobile Device Management
- Create Separate Compliance Policies for Android, iOS, macOS and Windows Devices
- Create a Device Configuration Profile for Android, iOS, macOS and Windows Devices
- Create App Protection Policies for iOS and Windows
- Conceal Information with Lock Screen
- Implement Password Policies for Mobile Devices
- Require Mobile Devices to Lock Upon Inactivity
- Require Mobile Devices to Wipe on Multiple Sign-in Failures	

Use Exchange Online Protection and Office 365 Advanced Threat Protection (ATP) for the corresponding **Protect Against Threats** category, with which you can:

- Enable sender authentication (SPF, DMARC and DKIM)
- Set up Office 365 ATP Anti-Phishing Policies
- Implement ATP Safe Attachments
- Implement ATP Safe Links
- Implement Malware Detection and Response Policies
- Implement Outbound and Inbound Spam Policies

### References:

- [Common identity and device access policies](../enterprise/identity-access-policies)
- [Protect against threats in Office 365](https://support.office.com/article/protect-against-threats-in-office-365-b10023f6-f30f-45d3-b3ad-b71aa4aa0d58)
- [ATP Safe Attachments](../security/office-365-security/atp-safe-attachments)
- [ATP Safe Links](../security/office-365-security/atp-safe-links)
- [ATP Safe Docs](../security/office-365-security/safe-docs)

