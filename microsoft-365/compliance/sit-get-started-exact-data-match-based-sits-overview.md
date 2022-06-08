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

- [Learn about sensitive information types](sensitive-information-type-learn-about.md)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md)

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


## EDM new experience vs. classic experience

The new EDM experience combines the functionality of the EDM schema and EDM sensitive info types wizards into a single user experience. The new experience adds:

### Simplified workflow

•	Simplified EDM SIT (Sensitive Information Type) creation flow, which combines the two EDM wizards (create schema, create EDM SIT) into a single flow.

•	Addition of status to the EDM SIT page, where users can see whether a data store has been uploaded against a schema or its progress, etc. The full list of available statuses available are:
o	Data not yet uploaded
o	Data upload %
o	Data upload complete
o	Indexing complete
o	Data upload failed
o	Data indexing failed


### Automated schema and SIT creation

•	Automation to save time, reduce manual work: 
o	Users can elect to upload a sample data file that looks similar to the large EDM data table (that will be salted/hashed/uploaded as the final step in creating a working EDM SIT, outside of the UI). 
	This sample file should contain non-sensitive data (it won’t be hashed nor used for anything other than configuring the EDM SIT; after the EDM SIT is created, this data will no longer be retained nor accessible). 
	We will automatically extract the field names so it’s not necessary to manually input this information.
o	We will automatically validate that the sample data is in the correct format (CSV, TSV, PSV) and display an error for invalidly formatted data (including mismatched fields across rows).
o	We will automatically detect and suggest the best matching SITs for each field. We will also categorize how well that SIT matches the data and allow admins to easily view which sample data was detected by that SIT (i.e., “matched”).
o	We will also automatically generate the EDM detection rules (one for each field selected as primary).
	By default, we will only provide high and medium confidence rules, both of which will include all other fields that were uploaded as corroborative evidence. Users can elect to add a low confidence rule and all inputs are fully configurable.



### Additional guardrails
Guardrails to reduce input errors and help avoid missed detections due to throttling and timeouts:
o	As the Azure-based EDM cloud service leverages a shared infrastructure, a misconfigured EDM SIT that triggers excessive EDM lookups could impact EDM performance for other customers if it wasn't controlled. This is prevented by throttling instances where EDM is misconfigured in a way that would cause excessive lookups. 
o	We will also automatically warn administrators if they map a “loosely defined” SIT to a primary (indexed) field, which would cause the system to have to perform EDM lookups on large amounts of strings not related to the kind of content that's being targeted, which could result in missed detections. 
o	Similarly, we will also warn users if the primary field selected is not unique enough, as EDM lookups for values that are common to large numbers of rows can result in large EDM record sets being returned which could take longer to process than the allowed timeouts.



You can toggle back and forth between the new and classic experiences, but we recommend using the new experience unless your needs fall into one or more of these four use cases.

### You want to map multiple EDM SITS to the same schema

Each time you create an EDM SIT using the new flow, a new schema is created. This results in a 1:1 mapping between EDM schema and EDM SIT. The new flow doesn't support mapping multiple SITs to the same schema.

### You need to create or manage more than 10 EDM SITs

 Because the new flow doesn't support mapping multiple SITs to the same schema, you are limited to creating and managing 10 EDM SITS. In the classic flow, you can map multiple EDM SITs to the same schema and so have more than 10 EDM SITs. Using the new flow, you'll receive an error if you try to create an eleventh EDM schema and you won't be able to view more than 10 EDM SITs.

### You need to specify the name of your EDM schema

NEEDS MORE EXPLANATION, EXPLAIN THE USE CASE AND IMPACT.You are unable to name the schema as a default auto-generated name (EDM SIT name concatenated with the word “schema”) is created.  Include finding the schema name

### You need to edit EDM schemas that were created in the classic experience

NEEDS MORE EXPLANATION, EXPLAIN THE USE CASE AND IMPACT Schema created in the legacy EDM UI or uploaded via PowerShell as an XML file will be “orphaned” in the new EDM UI

## See also

- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md)
- [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type)
- [Get started with exact data match (new)](sit-get-started-edm-unified-ux.md)
- [Get started with exact data match (classic)](sit-get-started-edm-classic.md)