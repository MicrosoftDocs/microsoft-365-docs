---
title: "Microsoft 365 technology controls"
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
ms.custom:
- seo-marvel-apr2020
description: This article provides an overview of the tools and technologies used by Microsoft for technology control in Microsoft 365.
---

# Microsoft 365 technology controls 

Microsoft uses several tools and technologies to control, manage, and audit access to customer data in  its online services. These apply to Exchange Online, SharePoint Online, Lockbox and Customer Lockbox, multi-factor authentication, and more. Yammer uses similar controls described in [Yammer Enterprise Access Controls](microsoft-365-yammer-enterprise-access-controls.md).

Microsoft 365 engineers have zero standing access to Microsoft 365 customer data. Engineers must go through a Microsoft approval process before access to Customer Data for service operations occurs. If the customer licenses the Customer Lockbox feature for Exchange Online and SharePoint Online, access to Customer Data requires customer approval. After approved, service-specific administrative accounts are provisioned just-in-time access for tasks required by the service request.

## Lockbox and Customer Lockbox

Although rare, a customer could request assistance from Microsoft that exposes customer content to a Microsoft engineer. To control access to Exchange Online, Microsoft uses an access control system called Lockbox. Before any Microsoft engineer accesses any Exchange Online or SharePoint Online systems or data, they must submit an access request using Lockbox. All service requests for Exchange Online and SharePoint Online are handled by the Lockbox system. With both Lockbox and Customer Lockbox, all approved access is traceable to a unique user, making engineers accountable for their handling of Customer Data.

> [!NOTE]
> Exchange Online includes any Skype for Business data stored in user mailboxes. Skype for Business coverage does not include Skype Meeting Broadcast recordings or content uploaded to meetings by users. SharePoint Online includes OneDrive for Business.

Lockbox processes requests for permissions that grant engineers the ability to perform operational and administrative functions within the service. Engineers submit requests through Lockbox and a Microsoft manager must approve the request before the engineer can access Customer Data. After manager approval, the engineer has time-limited and scope-limited access to Customer Data to work on the customer's issue.

Customer Lockbox for Microsoft 365 helps you meet compliance obligations if you need procedures in place for explicit data access authorization. This is a requirement for some compliance standards, such as FedRAMP and HIPAA. Customer Lockbox inserts you into the Lockbox approval process and provides you with the ability to control authorization of Microsoft access to your Exchange Online or SharePoint Online content for service operations.

In the rare instance when a Microsoft service engineer needs access to your data, you grant access only to data required to resolve the issue and for a limited amount of time. If you reject an access request, Microsoft engineers do not have access to your content and will not be able to complete service operations. If you approve the request, Microsoft engineers have limited just-in-time access to your content through monitored and constrained management interfaces.

Actions taken by the support engineer are logged for auditing purposes and are accessible via the [Office 365 Management Activity API](https://docs.microsoft.com/office/office-365-management-api/get-started-with-office-365-management-apis) and the [Security and Compliance Center](https://protection.office.com/).

>[!NOTE]
> Customer Lockbox is available in [Microsoft 365 E5](https://products.office.com/business/office-365-enterprise-e5-business-software) as an add-on purchase. For more information, see [Microsoft 365 Customer Lockbox Requests](https://support.office.com/article/Office-365-Customer-Lockbox-Requests-36f9cdd1-e64c-421b-a7e4-4a54d16440a2).

## Just-in-time access

Microsoft uses the just-in-time (JIT) access principle for Microsoft 365 to mitigate credential tampering risks and lateral attacks. JIT removes persistent administrative access to services and replaces entitlements with the ability to elevate into those roles on demand. Removing persistent access rights from administrators ensures credentials are available only when they are needed and reduces credential theft risks.

The JIT access model requires engineers to request elevated privileges for a limited period to perform administrative duties. In addition, engineers use temporary accounts created with machine-generated complex passwords and granted only those roles that allow them to perform necessary tasks. For example, administrative access granted by Lockbox is time-bound, and the amount of time access granted depends on the requested role. An engineer specifies the duration of time access needed in the request to the Lockbox system. The Lockbox system rejects requests when time requested exceeds the maximum permitted time for the elevation. After expiration, administrative access is removed and the temporary account expires.

When authorized and approved for access, engineers receive a one-time use administrative password generated by the authorization system. New passwords are generated each time a request for elevated access is approved. The password is copied into a password safe, is separate from the engineer's credentials for the Microsoft corporate environment, and is good only for the approved elevated access session.

## Constrained Management Interfaces

Engineers use two management interfaces to perform administrative tasks: Remote Desktop through secured Terminal Service Gateways (TSGs) and Remote PowerShell. Within these management interfaces, software policies and access controls place significant restrictions on what applications are executed and what commands and cmdlets are available.

Microsoft 365 servers restrict concurrent sessions to one session per-service team administrator, per-server. TSGs allow only a single concurrent session for users and do not allow multiple sessions. Using a single session per server, TSGs allow Microsoft 365 service team administrators to connect to multiple servers concurrently so administrators can effectively perform their duties. Service team administrators do not have any permissions on the TSGs themselves. The TSG is used only to enforce multi-factor authentication (MFA) and encryption requirements. Once the service team administrator connects to a specific server through a TSG, the specific server enforces a session limit of one per administrator.

Usage restrictions and connection and configuration requirements for Microsoft 365 personnel are established by Active Directory group policies. These policies include the following characteristics:

- TSGs use only [FIPS](https://www.microsoft.com/TrustCenter/Compliance/FIPS) 140-2 validated encryption.
- TSG sessions disconnect after 30 minutes of inactivity.
- TSG sessions automatically log off after 24 hours.

Connections to TSGs also require MFA using a separate physical smart card and an account separate from the engineer's Microsoft corporate credentials. Engineers are issued different smart cards for various platforms and secrets management platforms ensure secure storage of credentials. TSGs use Active Directory group policies to control who can log into remote servers, the number of allowed sessions, and idle timeout settings. Additional policies limit access to allowed applications and restrict Internet access.

In addition to remote access using specially configured TSGs, Exchange Online allows users with the Service Engineer Operations role to access certain administrative functionality on production servers using Remote PowerShell. To do this, the user must be authorized for read-only (debug) access to the Microsoft 365 production environment. Privilege escalation is enabled the same way it is enabled for TSGs using the Lockbox process.

For remote access, each datacenter has a load-balanced virtual IP that serves as a single point of access. The available Remote PowerShell cmdlets are based on the privilege level identified in the access claim obtained during authentication. These cmdlets provide the only administrative functionality accessible by users connecting using this method. Remote PowerShell limits the scope of commands available to the engineer and is based on the level of access granted via the Lockbox process. For example, in Exchange Online, Get-Mailbox might be available, but Set-Mailbox would not.
