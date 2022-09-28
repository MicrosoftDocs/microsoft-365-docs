---
title: "Create exact data match sensitive information type workflow classic experience"
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
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
description: Get started creating exact data match based sensitive information types using the classic UX workflow.
ms.custom: seo-marvel-apr2020
---

# Create exact data match sensitive information type workflow classic experience

Creating and making an exact data match (EDM) based sensitive information type (SIT) available is a multi-phase process. They can be used in Microsoft Purview data loss prevention policies, auto-labeling, eDiscovery and certain content governance tasks.  This article outlines the workflow and links to the procedures for each phase using the classic experience.

## Applies to

- Classic experience

If you want to create an EDM SIT using the new experience see, [Create EDM SIT new experience workflow ](sit-create-edm-sit-unified-ux-workflow.md).

## Before you begin

Make sure you review:

- [Learn about EDM based SITs](sit-learn-about-exact-data-match-based-sits.md)
- [Get started with exact data match based sensitive information types overview](sit-get-started-exact-data-match-based-sits-overview.md)

## The work flow at a glance

![exact data match workflow phases](..\media\swimlane_edm_process.png)


|Phase|What's needed|
|---|---|
|[Phase 1: Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type)|- Read access to the sensitive data|
|[Phase 2: Create the schema for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md#create-the-schema-for-exact-data-match-based-sensitive-information-types)|- Access to the sensitive information type wizard in the compliance portal </br>- access to the [Microsoft 365 admin center via Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell) |
|[Phase 3: Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md#hash-and-upload-the-sensitive-information-source-table-for-exact-data-match-sensitive-information-types)|- Custom security group and user account </br>- **Hash and upload from one computer**: local admin access to a computer with direct internet access and to host the EDM Upload Agent </br>- **Hash and upload from separate computers**: local admin access to a computer with direct internet access and host the EDM Upload Agent for the upload and local admin access to a secure computer to host the EDM Upload Agent to hash the sensitive information source table </br>- Read access to the sensitive information source table file </br> the schema file |
|[Phase 4: Create exact data match sensitive information type/rule package](sit-get-started-exact-data-match-create-rule-package.md#create-exact-data-match-sensitive-information-typerule-package) |- Access to the Microsoft Purview compliance portal |
|[Test an exact data match sensitive information type](sit-get-started-exact-data-match-test.md#test-an-exact-data-match-sensitive-information-type)| - Access to the Microsoft Purview compliance portal

## See also

- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type)
