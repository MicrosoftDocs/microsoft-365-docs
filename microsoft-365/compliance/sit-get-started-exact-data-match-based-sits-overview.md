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
ms.localizationpriority: medium
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: Get started creating exact data match based sensitive information types.
ms.custom: seo-marvel-apr2020
---

# Get started with exact data match based sensitive information types

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

Creating and making an exact data match (EDM) based sensitive information type (SIT) available is a multi-phase process. They can be used in Microsoft Purview data loss prevention policies, eDiscovery and certain content governance tasks  This article outlines the workflow and links to the procedures for each of the phases

## Before you begin

Familiarize yourself with the concepts and terminology in these articles:

- [Learn about sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)

## Supported regions

Exact data match is available in these regions:

- Asia Pacific
- Australia
- Brazil
- Canada
- Europe
- France
- Germany
- India
- Japan
- Korea
- Norway
- South Africa
- Switzerland
- United Arab Emirates
- United Kingdom
- United States
- US DoD
- US GCC
- US GCCH

You can find out what region your tenant is hosting data-at-rest in by following the procedures in [Where your Microsoft 365 customer data is stored](../enterprise/o365-data-locations.md) and referring to the data center city locations in the same article.

## Required licenses and permissions

You must be a global admin, compliance administrator, or Exchange Online administrator to perform the tasks described in this article. To learn more about DLP permissions, see [Permissions](data-loss-prevention-policies.md#permissions).

See the [data loss prevention service description](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#data-loss-prevention-for-exchange-online-sharepoint-online-and-onedrive-for-business) for complete licensing information

## Portal links for your subscription

|Portal|World Wide/GCC|GCC-High|DOD|
|---|---|---|---|
|Office SCC|compliance.microsoft.com|scc.office365.us|scc.protection.apps.mil|
|Microsoft 365 Defender portal|security.microsoft.com|security.microsoft.us|security.apps.mil|
|Microsoft Purview compliance portal|compliance.microsoft.com|compliance.microsoft.us|compliance.apps.mil|

## The work flow at a glance

![exact data match workflow phases](..\media\swimlane_edm_process.png)


|Phase|What's needed|
|---|---|
|[Phase 1: Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type)|- Read access to the sensitive data|
|[Phase 2: Create the schema for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md#create-the-schema-for-exact-data-match-based-sensitive-information-types)|- Access to the sensitive information type wizard in the Microsoft 365 admin center </br>- access to [Microsoft 365 admin center via Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell) |
|[Phase 3: Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md#hash-and-upload-the-sensitive-information-source-table-for-exact-data-match-sensitive-information-types)|- Custom security group and user account </br>- **Hash and upload from one computer**: local admin access to a computer with direct internet access and to host the EDM Upload Agent </br>- **Hash and upload from separate computers**: local admin access to a computer with direct internet access and host the EDM Upload Agent for the upload and local admin access to a secure computer to host the EDM Upload Agent to hash the sensitive information source table </br>- Read access to the sensitive information source table file </br> the schema file |
|[Phase 4: Create exact data match sensitive information type/rule package](sit-get-started-exact-data-match-create-rule-package.md#create-exact-data-match-sensitive-information-typerule-package) |- Access to the Microsoft Purview compliance portal |
|[Test an exact data match sensitive information type](sit-get-started-exact-data-match-test.md#test-an-exact-data-match-sensitive-information-type)| - Access to the Microsoft Purview compliance portal

## See also

- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type)
