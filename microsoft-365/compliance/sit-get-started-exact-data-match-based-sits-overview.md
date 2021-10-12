---
title: "Get started with exact data match based sensitive information types"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date:
localization_priority: Normal
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: Get started creating exact data match based sensitive information types.
ms.custom: seo-marvel-apr2020
---

# Get started with exact data match based sensitive information types

Creating and making an exact data match (EDM) based sensitive information type (SIT) available is a multi-phase process. The can be used in data loss prevention policies, eDiscovery and certain content governance tasks  This article outlines the workflow and links to the procedures for each of the phases

## Before you begin

Familiarize yourself with the concepts and terminology in these articles:

- [Learn about sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)

## Required licenses and permissions

You must be a global admin, compliance administrator, or Exchange Online administrator to perform the tasks described in this article. To learn more about DLP permissions, see [Permissions](data-loss-prevention-policies.md#permissions).

EDM-based classification is included in these subscriptions

- Office 365 E5
- Microsoft 365 E5
- Microsoft 365 E5 Compliance
- Microsoft E5/A5 Information Protection and Governance

See the [data loss prevention service description](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#data-loss-prevention-for-exchange-online-sharepoint-online-and-onedrive-for-business) for complete licensing information

## Portal links for your subscription

|Portal|World Wide/GCC|GCC-High|DOD|
|---|---|---|---|
|Office SCC|compliance.microsoft.com|scc.office365.us|scc.protection.apps.mil|
|Microsoft 365 Security center|security.microsoft.com|security.microsoft.us|security.apps.mil|
|Microsoft 365 Compliance center|compliance.microsoft.com|compliance.microsoft.us|compliance.apps.mil|

## The work flow at a glance

![exact data match workflow phases](..\media\swimlane_edm_process.png)


|Phase|What's needed|
|---|---|
|[Phase 1: Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type)|- Read access to the sensitive data|
|[Phase 2: Create the schema for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md#create-the-schema-for-exact-data-match-based-sensitive-information-types)|- Access to the sensitive information type wizard in the Microsoft 365 admin center </br>- access to [Microsoft 365 admin center via Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell) |
|[Phase 3: Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md#hash-and-upload-the-sensitive-information-source-table-for-exact-data-match-sensitive-information-types)|- Custom security group and user account </br>- **Hash and upload from one computer**: local admin access to a computer with direct internet access and to host the EDM Upload Agent </br>- **Hash and upload from separate computers**: local admin access to a computer with direct internet access and host the EDM Upload Agent for the upload and local admin access to a secure computer to host the EDM Upload Agent to hash the sensitive information source table </br>- Read access to the sensitive information source table file </br> the schema file |
|[Phase 4: Create exact data match sensitive information type/rule package](sit-get-started-exact-data-match-create-rule-package.md#create-exact-data-match-sensitive-information-typerule-package) |- Access to the Microsoft 365 Compliance Center |
|[Test an exact data match sensitive information type](sit-get-started-exact-data-match-test.md#test-an-exact-data-match-sensitive-information-type)| - Access to the Microsoft 365 Compliance Center

## See also

- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type)
