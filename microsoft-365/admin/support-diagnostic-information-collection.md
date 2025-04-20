---
title: "Understanding Microsoft 365 case creation and diagnostic data access"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 04/07/2025
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

The purpose of this article is to inform Microsoft 365 customers about the type of information that Microsoft Support engineers may collect and use in order to resolve a support case.

## Consent for diagnostic information

When you [create a support request](get-help-support.md), you consent to allow a Microsoft Support engineer to remotely run diagnostics on the Microsoft 365 subscription(s) associated with your request. This access allows them to collect diagnostic information that enables them to troubleshoot and solve your problem.

## How long does Microsoft have this access?

Access is removed automatically when your support request is closed. If your request is still open, access is removed 30 days from the date of request creation, and you will be prompted to provide access again. If you have multiple requests open, the access expires 30 days from the date of creation of the latest request.

Depending on the nature of your support request, the data that Microsoft can access would belong under one or more of the following categories:

- **Support Data** – All data provided to Microsoft by the customer as part of a customer engagement to obtain support services.
  - Examples
    - Support requests from customers and phone conversations, online chat sessions, or remote assistance sessions between support professionals and customers
    - Case notes and/or records related to support requests from customers
    - Data provided to Microsoft by the customer as part of support activities

- **Account Data** – Contact and billing/purchase/payment/license information.
  - Examples
    - Customer’s provisioning information
    - Account configuration and billing data
    - Tenant administrator contact information (for example, tenant administrator’s name, address, e-mail address, phone number)
    - This also includes Licensing and Purchase Information.

- **System Metadata** – Data generated in the course of running the service.
  - Examples
    - Event Logs
    - Access Control Logs
    - Account information belonging to Microsoft operations personnel
    - Microsoft server names/server IPs
    - Server patching and vulnerability data
    - Service configuration data
    - Telemetry (on-prem or cloud)

- **Organization Identifiable Information (OII)** – Data that can be used to identify a particular tenant/deployment/organization (generally config or usage data)
  - Examples
    - Tenant ID (non-GUID)
    - TenantID (GUID) – due to the existence of many out of boundary TenantID to name mapping tables
    - Tenant usage data
    - Tenant IP Addresses (IPv4) such as tenant’s firewall IP address
    - Global Prefix and Subnet ID (first 64 bits of IPv6 address)
    - Tenant Domain name in e-mail address (joe@**contoso.com**)
    - Mapping of organizational GUID to organization

- **End User Identifiable Information (EUII)** – Data that directly identifies or could be used to identify the authenticated user of a Microsoft service.
  - Examples
    - User-specific IP address (IPv4)
    - User Principal Name (joe@company.com)
    - Address Book Data
    - User’s machine Name
    - SIP URI

- **End User Pseudonymous Identifiers (EUPI)** – An identifier created by Microsoft tied to the user of a Microsoft service.
  - Examples
    - User GUIDs or PUIDs
    - Session IDs

## How long is diagnostic data retained in Microsoft systems?

Microsoft retains diagnostic data for up to 28 days after it is collected. After this period, the data is deleted.

## Where is support activity on a customer tenant logged?

Activity performed on a customer tenant is available under Microsoft Entra Audit logs.
