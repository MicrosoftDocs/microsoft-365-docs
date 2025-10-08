---
title: "Understanding Microsoft 365 case creation and diagnostic data access"
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 07/30/2025
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- Adm_O365
- Adm_TOC
description: "Learn about the diagnostic data Microsoft 365 Support engineers access to resolve support cases, including consent, data categories, retention periods, and logging details."
---

# Understanding Microsoft 365 case creation and diagnostic data access

> [!IMPORTANT]
> **Based on customer feedback, Microsoft is rolling back and evaluating the following feature**:
> 
> When you create a support request and you grant advanced diagnostic consent, you see a notification that cross-tenant access settings were updated due to a partner addition. The notification occurs because the Microsoft Support tenant (`Office365ConciergeSupport.onmicrosoft.com - b4c546a4-7dac-46a6-a7dd-ed822a11efd3`) is added as a service provider for the duration of active support requests in your tenant. Expect to see audit logs in these categories:
> 
> - `Policy`
> - `CrossTenantAccessSettings`
> - `DelegatedAdminServiceProviderConstraints`

The purpose of this article is to inform Microsoft 365 customers about the type of information that Microsoft Support engineers may collect and use in order to resolve a support case.

## Consent for diagnostic information

When you [create a support request](get-help-support.md), you consent to allow a Microsoft Support engineer to remotely run diagnostics on the Microsoft 365 subscription(s) associated with your request. This access allows them to collect diagnostic information that enables them to troubleshoot and solve your problem.

## How long does Microsoft have this access?

Access is removed automatically when your support request is closed. If your request is still open, access is removed 30 days from the date of request creation, and you will be prompted to provide access again. If you have multiple requests open, the access expires 30 days from the date of creation of the latest request.

Depending on the nature of your support request, the data that Microsoft can access would belong under one or more of the following categories:

| Category | Examples |
|--|--|
| **Support data**: All data provided to Microsoft by the customer as part of a customer engagement to obtain support services | Support requests from customers and phone conversations, online chat sessions, or remote assistance sessions between support professionals and customers<br/><br/> Case notes and/or records related to support requests from customers<br/><br/>Data provided to Microsoft by the customer as part of support activities |
| **Account data**: Contact, billing, purchase, payment, and/or license information | Customer's provisioning information<br/><br/>Account configuration and billing data<br/><br/>Tenant administrator contact information (such as tenant administrator's name, address, e-mail address, phone number)<br/><br/>Licensing and purchase information |
| **System metadata**: Data generated in the course of running the service | Event logs<br/><br/>Access control logs<br/><br/>Account information belonging to Microsoft operations personnel<br/><br/>Microsoft server names/server IPs<br/><br/>Server patching and vulnerability data<br/><br/>Service configuration data<br/><br/>Telemetry (on-premises or cloud) |
| **Organization identifiable information (OII)**: Data that can be used to identify a particular tenant, deployment, or organization (generally config or usage data) | Tenant ID (non-GUID)<br/><br/>TenantID (GUID) due to the existence of many out of boundary `TenantID` to name mapping tables<br/><br/>Tenant usage data<br/><br/>Tenant IP addresses (IPv4), such as tenant's firewall IP address<br/><br/>Global prefix and subnet ID (first 64 bits of IPv6 address)<br/><br/>Tenant domain name in e-mail address (such as `joe@contoso.com`)<br/><br/>Mapping of organizational GUID to organization |
| **End-user identifiable information (EUII)**: Data that directly identifies or could be used to identify the authenticated user of a Microsoft service | User-specific IP address (IPv4)<br/><br/>User principal name (`joe@company.com`)<br/><br/>Address book data<br/><br/>User's machine name<br/><br/>SIP URI |
| **End-user pseudonymous identifiers (EUPI)**: An identifier created by Microsoft tied to the user of a Microsoft service | User GUIDs or PUIDs<br/><br/>Session IDs |

## How long is diagnostic data retained in Microsoft systems?

Microsoft retains diagnostic data for up to 28 days after it is collected. After this period, the data is deleted.

## Where is support activity on a customer tenant logged?

Activity performed on a customer tenant is available under Microsoft Entra Audit logs.

