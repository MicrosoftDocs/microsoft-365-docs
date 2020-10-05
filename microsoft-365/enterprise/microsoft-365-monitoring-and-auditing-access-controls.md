---
title: "Microsoft 365 Monitoring and Auditing Access Controls"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: "Summary: A summary of the various monitoring and auditing access controls available within Microsoft 365."
---

# Monitoring and Auditing Access Controls in Microsoft 365

Microsoft performs extensive monitoring and auditing of all delegation, privileges, and operations that occur within Microsoft 365. Microsoft 365 access control is an automated process built on the principle of least privilege and incorporating data access controls and audits:

- All permitted access is traceable to a unique user. Administrators are accountable for their handling of customer content.
- Access control requests, approvals, and administrative operations logs are captured for analysis of security and malicious events.
- Access levels are reviewed in near real-time based on security group membership to ensure that only users who have authorized business justifications and meet the eligibility requirements have access to the systems.
- Microsoft 365, its access controls, and supporting services, including Azure Active Directory and physical datacenters, are regularly audited by independent third-parties for compliance with [ISO/IEC 27001](https://www.microsoft.com/TrustCenter/Compliance/iso-iec-27001), [ISO/IEC 27018](https://www.microsoft.com/TrustCenter/Compliance/iso-iec-27018), [SOC](https://www.microsoft.com/TrustCenter/Compliance/SOC), [FedRAMP](https://www.microsoft.com/TrustCenter/Compliance/FedRAMP), and other [standards](https://www.microsoft.com/TrustCenter/Compliance?service=Office#Icons).
- Microsoft 365 engineers must take yearly security training, review elevated access best procedures, and acknowledge Microsoft's security and privacy policies to maintain entitlements to the service.

Automated alerts trigger when suspicious activity is detected, such as multiple failed logins within a short period. The Microsoft 365 Security Response team uses machine learning and big data analysis to review and analyze activity, look for irregular access patterns, and proactively respond to anomalous and illicit activities. Microsoft also employs a dedicated team of penetration testers and engages in periodic Red Team and Blue Team exercises to find security and access control issues in the service. Customers can verify the effectiveness of access control systems by using audit reports and the management activity API provided by Microsoft 365.

For more information, see [Office 365 Management Activity API reference](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-reference) and [Auditing and reporting in Microsoft 365](microsoft-365-auditing-and-reporting-overview.md).
