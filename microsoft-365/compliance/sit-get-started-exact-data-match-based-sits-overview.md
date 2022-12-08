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
- tier1
- highpri
- purview-compliance
search.appverid:
- MOE150
- MET150
description: Get an overview of creating exact data match based sensitive information types.
ms.custom: seo-marvel-apr2020

---
# Get started with exact data match based sensitive information types

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Applies to 

- [New experience](sit-create-edm-sit-unified-ux-workflow.md)
- [Classic experience](sit-create-edm-sit-classic-ux-workflow.md)

Creating and making an exact data match (EDM) based sensitive information type (SIT) available is a multi-phase process. You can use the *new experience* the existing *classic experience*  or via PowerShell. This article helps you understand the differences between the two experiences and helps you pick the right one for your needs.

EDM SITs can be used in:

- Microsoft Purview Data Loss Prevention
- Auto-labeling (service adn client side)
- Microsoft Purview Insider Risk Management policies
- Microsoft Purview eDiscovery
- Microsoft Purview Insider Risk Management
- Microsoft Defender for Cloud Apps



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

## New EDM experience

The new EDM experience combines the functionality of the EDM schema and EDM sensitive info types wizards into a single user experience. The new experience adds:

### Simplified workflow

With the new experience, the schema and SIT are created via one user experience meaning fewer clicks, better guidance on mapping primary elements to default SITs and default confidence levels for the rules.

When you need to see the status of an EDM SIT in the creation process, the new experience reports on this in the UI.

- Data not yet uploaded
- Data upload percent
- Data upload complete
- Indexing complete
- Data upload failed
- Data indexing failed


### Automated schema and SIT creation

In the new experience you can provide a sample data file that has the same header values and enough rows (10-20) of representative data to the system. The system validates the format and creates the schema based on the headers. You then identify the primary fields in the schema and the system recommends the SITs that best match it to associate with the primary field. If you don't want to upload the file, you can enter the same values manually in the UI.

> [!IMPORTANT]
> Be sure to use sample data values that aren't sensitive, but are in the same format as your actual sensitive data. Using non-sensitive data is essential because the sample data file doesn't get encrypted and hashed when you upload it like the actual sensitive information table does. The data from the sample data file is not retained or accessible once the EDM SIT is created.

The system generates the EDM SIT detection rules, one for each primary field. Based on detection of the primary fields the system creates high and medium confidence rules using all the other fields as corroborative evidence. You can add low confidence rules if you want. 

### Additional guardrails to ensure better performance

<!--As the Azure-based EDM cloud service leverages a shared infrastructure, a misconfigured EDM SIT that triggers excessive EDM lookups could impact EDM performance for other customers if it wasn't controlled. This is prevented by throttling instances where EDM is misconfigured in a way that would cause excessive lookups.--> 

The system warns you if it finds a primary field mapped to a SIT that detects a broad range of values, called a *loosely defined SIT*.  This can cause the system to perform lookups on large numbers of strings that aren't related to the kind of content that you're looking for. Mapping between these types of SITs and primary fields can result in false negatives and decrease performance.

> [!NOTE]
> As *loosely defined SIT*, like a custom one that looks for all personal identification numbers, has detection rules that allow for greater variability in the items detected. A *strongly defined SIT*, like U.S. Social Security Number, has detection rules that only allow a narrow, well defined set of items to be detected. 

The system will also warn you if the values in the primary field you select occurs multiple times in a large number of rows. This can cause large numbers of result sets to be returned and processed, which could cause a time out. Time outs can result in missed detections and poor performance.


## Choosing the right EDM SIT creation experience for you

You can toggle back and forth between the new and classic experiences, but we recommend using the new experience unless your needs fall into one or more of these four use cases. 

1. Read through this section
1. Choose the experience that you want to use
1. Select the link for the [Next step](#next-steps) for the experience you want.

### You want to map multiple EDM SITS to the same schema

In EDM, you can create a maximum of 10 schemas. Each time you create an EDM SIT using the new experience, a new schema is created. This results in a 1:1 mapping between EDM schema and EDM SIT. The new experience doesn't support mapping multiple SITs to the same schema.

### You need to create or manage more than 10 EDM SITs

 Because the new experience doesn't support mapping multiple SITs to the same schema, you are limited to creating and managing 10 EDM SITS. In the classic experience, you can map multiple EDM SITs to the same schema and so have more than 10 EDM SITs. Using the new flow, you'll receive an error if you try to create an eleventh EDM schema and you won't be able to view more than 10 EDM SITs.

### You need to specify the name of your EDM schema

If you need to specify a name for your EDM SIT schemas, you have to use the classic experience to create and manage them. Because the new experience automatically creates the schema, you don't get the opportunity to give your schema a custom name. The auto-generated name is a concatenation of the EDM SIT name and the word *schema*. For example, if the EDM SIT name is *PatientNumber*, the schema name would be *PatientNumberschema*.

### You need to edit EDM schemas that were created in the classic experience

All schemas that are created using the classic experience or uploaded as a XML file using PowerShell are not viewable or manageable in the new experience.

## Next steps

- [Create exact data match sensitive information type new experience](sit-create-edm-sit-unified-ux-workflow.md)

or

- [Create exact data match sensitive information type classic experience](sit-create-edm-sit-classic-ux-workflow.md)

## See also

- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md)
- [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type)
- [Create exact data match sensitive information type workflow new experience](sit-create-edm-sit-unified-ux-workflow.md)
- [Create exact data match sensitive information type workflow classic experience](sit-create-edm-sit-classic-ux-workflow.md)
