---
title: "Use identity, device, and threat protection for data privacy regulation"
ms.author: bcarter
author: brendacarter
f1.keywords:
- NOCSH
manager: laurawi
ms.date: 06/09/2020
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- m365solution-infoprotection
- m365solution-scenario
ms.custom: 
description: Prevent personal data breaches with identity, device, and threat protection services of Microsoft 365.
---

# Use identity, device, and threat protection for data privacy regulation

Microsoft 365 provides a number of identity, device, and threat protection capabilities that organizations can employ to help comply with data privacy-related compliance regulations. This article describes what the data privacy regulations require in these areas and provides a listing of related Microsoft 365 features and services with links to more information to help you address implementation requirements.

## How identity, device, and threat protection relate to data privacy regulation

While the data privacy regulations vary in their specificity, the essence of what they call for is embodied in the GDPR’s Article 5(1)(f), which states that:

- Personal data shall be processed in a manner that ensures appropriate security of the personal data, including protection against unauthorized or unlawful processing and against accidental loss, destruction or damage, using appropriate technical or organizational measures ('integrity and confidentiality').

Because personal data breaches are often caused by administrative or end-user account compromise and malicious system access. For example, an admin account hack can result in exfiltration of customer credit card numbers or other personal information. All the generally advisable identity, device, and threat protection available with Microsoft 365 potentially should be implemented, which will be reflected in your compliance score, found in Compliance Manager.

## Using the results of your assessment work and Compliance Manager

Compliance Manager includes identity, device, and threat protection using these categories:

- Identity corresponds to the **Control Access** category
- Device corresponds to the **Manage Devices** category
- Threat protection corresponds to the **Protect Against Threats** category
 
If these are selected across our sample set of four major data privacy regulations, Compliance Manager specifies 90 improvement actions, most of which are scored a "27". Since such a large number are called out by Compliance Manager for these categories, some of the more common ones are listed here, for reference.

Use [Azure Active Directory (Azure AD)](https://azure.microsoft.com/services/active-directory/) for identity and the **Control Access** category, with which you can:

- Implement replay-resistant authentication (to prevent “Man in the middle” attacks)
- Block legacy authentication.
- Configure user risk and user sign-in risk policies.
- Enable Conditional Access and multi-factor authentication (MFA) for admins and non-admins.
- Configure and enforce password policies.
- Restrict access to privileged accounts with Azure AD Privileged Identity Management.
- Disable access upon termination.
- Audit user accounts and status changes.
- Review role group and administrative changes.

Use [Microsoft Endpoint Manager](https://www.microsoft.com/microsoft-365/microsoft-endpoint-manager) for devices and the **Manage Devices** category, with which you can:

- Block jail broken and rooted mobile devices.
- Configure Intune for mobile device management.
- Create compliance policies for Android, iOS, macOS and Windows devices.
- Create a device configuration profile for Android, iOS, macOS and Windows devices.
- Create app protection policies for iOS and Windows.
- Conceal information with lock screen.
- Implement password policies for mobile devices.
- Require mobile devices to lock upon inactivity.
- Require mobile devices to wipe on multiple sign-in failures.

Use [Exchange Online Protection and Microsoft Defender for Office 365](../security/office-365-security/defender-for-office-365.md) for the **Protect Against Threats** category, with which you can:

- Enable sender authentication (SPF, DMARC and DKIM).
- Set up Microsoft Defender for Office 365 anti-phishing policies.
- Implement Safe Attachments.
- Implement Safe Links.
- Implement malware detection and response policies.
- Implement outbound and inbound spam policies.

### References:

- [Common identity and device access policies](../security/office-365-security/identity-access-policies.md)
- [Protect against threats in Office 365](https://support.office.com/article/protect-against-threats-in-office-365-b10023f6-f30f-45d3-b3ad-b71aa4aa0d58)
- [Safe Attachments](../security/office-365-security/safe-attachments.md)
- [Safe Links](../security/office-365-security/safe-links.md)
- [Safe Documents](../security/office-365-security/safe-docs.md)
