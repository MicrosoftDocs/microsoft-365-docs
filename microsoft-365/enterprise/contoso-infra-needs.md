---
title: "Contoso's IT infrastructure and business needs"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 10/01/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:

description: Understand the basic structure of Contoso's on-premises IT infrastructure and how its business needs were met by Microsoft 365 Enterprise.
---

# Contoso's IT infrastructure and business needs

Contoso has been transitioning from an on-premises, centralized IT infrastructure to a cloud-inclusive one that incorporates cloud-based personal productivity workloads and applications.

## Contoso's existing IT infrastructure

Contoso uses a mostly centralized on-premises IT infrastructure, with application datacenters in the Paris headquarters.

Figure 1 shows a headquarters office with application datacenters, a DMZ, and the Internet.

![Contoso's existing IT infrastructure](../media/contoso-infra-needs/contoso-infra-needs-fig1.png)

**Figure 1: Contoso's existing IT infrastructure**
 
The on-premises application datacenters host: 

- Custom line of business applications that use SQL Server and other Linux databases.
- A set of legacy SharePoint servers.
- Organization and team-level servers for file storage.

Additionally, each regional hub office supports a set of servers with a similar set of applications. These servers are under the control of regional IT departments.

Searchability across the applications and data of these separate multi-geographical datacenters continues to be a challenge.

In Contoso's headquarters DMZ, different sets of servers provide:

- Hosting for the Contoso public web site, from which customers can order products, parts, supplies, or service.
- Hosting for the Contoso partner extranet for partner communication and collaboration.
- Virtual private network (VPN)-based remote access to the Contoso intranet and web proxying for workers in the Paris headquarters.

## Contoso's business needs

Contoso's business needs fall into five main categories.

Productivity:

- Make collaboration easier

  Replace the email and file share-based collaboration with an online model that allows real-time changes on documents, easier online meetings, and captured conversation threads.
- Improve productivity for remote and mobile workers

  With many employees working from homes or in the field, replace the bottlenecked VPN solution with performant access to Contoso data and resources in the cloud.
- Increase creativity and innovation

  Take advantage of the latest visual learning and idea development methods, including inking and 3D visualization.

Security:

- Identity and access management

  Enforce multi-factor and other forms of authentication and protect user and administrator account credentials.

- Threat protection

  Protect against external security threats, including email and operating system-based malware.

- Information protection

  Lock down access to and encrypt high-value digital assets, such as customer data, design and manufacturing specifications, and employee information.

- Security management

  Monitor security posture and be able to detect and respond to threats in real time.

Remote and mobile access and business partners:

- Better security for remote and mobile workers

  Institute Bring Your Own Device (BYOD) and company-owned device management to ensure secured access, correct application behavior, and company data protection.

- Reduce remote access infrastructure for employees

  Reduce maintenance and support costs and improve performance for remote access solution by moving commonly-accessed resources to the cloud.

- Provide better connectivity and lower overhead for Business-to-Business (B2B) transactions

  Replace aging and expensive partner extranet with a cloud-based solution that uses federated authentication.

Compliance:

- Adhere to regional regulatory requirements

  Become and remain compliant with industry and regional regulations for data storage, encryption, data privacy, and personal data regulations, such as the General Data Protection Regulation (GDPR) for the Europe Union.

Management:

- Lower the IT overhead for managing software running on client PCs and devices

  Automate the installation of updates to the Windows operating system and Microsoft Office ProPlus across the organization.

## Mapping Contoso's business needs to Microsoft 365 Enterprise

Contoso's IT department determined the following mapping of business needs to Microsoft 365 E5 features prior to deployment:

||||
|:-------|:-----|:-----|
| **Category** | **Business need** | **Microsoft 365 Enterprise products or features** |
| Productivity |  |  |
|  | Make collaboration easier | Microsoft Teams, SharePoint, OneDrive |
|  | Improve productivity for remote and mobile workers | Microsoft 365 workloads and cloud-based data |
|  | Increase creativity and innovation | Windows Ink, Cortana at Work, PowerPoint |
| Security |  |  |
|  | Identity & access management | Dedicated global administrator accounts with Azure Multi-Factor Authentication (MFA) and Azure AD Privileged Identity Management (PIM) <BR> MFA for all user accounts <BR> Conditional Access <BR> Windows Hello <BR> Windows Credential Guard |
|  | Threat protection | Advanced Threat Analytics <BR> Windows Defender <BR> Advanced Threat Protection <BR> Office 365 Advanced Threat Protection <BR> Office 365 threat investigation and response <BR> |
|  | Information protection | Azure Information Protection <BR> Office 365 Data Loss Prevention (DLP) <BR> Windows Information Protection (WIP) <BR> Microsoft Cloud App Security <BR> Microsoft Intune |
|  | Security management | Azure Security Center  <BR> Windows Defender Security Center |
| Remote and mobile access and business partners |  |  |
|  | Better security for remote and mobile workers | Microsoft Intune |
|  | Reduce remote access infrastructure for employees | Microsoft 365 workloads and cloud-based data |
|  | Provide better connectivity and lower overhead for B2B transactions | Federated authentication and cloud-based resources |
| Compliance |  |  |
|  | Adhere to regional regulatory requirements | GDPR features in Office 365 |
| Management |  |  |
|  | Lower the IT overhead for installing client updates | Deployment rings <BR> Windows 10 Enterprise updates <BR> Office 365 ProPlus updates |
||||

## Next step

[Learn](contoso-networking.md) about the Contoso Corporation’s on-premises network and how it was optimized for access and latency to Microsoft 365 cloud-based resources.

## See also

[Deployment guide](deploy-microsoft-365-enterprise.md)

[Test lab guides](m365-enterprise-test-lab-guides.md)
