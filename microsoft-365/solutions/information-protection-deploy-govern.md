---
title: "Govern information subject to data privacy regulation
"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 05/01/2020
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- M365solutions
ms.custom: 
description: add.
---

# Govern information subject to data privacy regulation

A number of information governance controls can be employed in your environment to help address data privacy compliance needs, including (per Compliance Score) a number that are specific to GDPR, HIPAA-HITECH, CCPA, and LGPD. 

These controls primarily fall into the following solution areas, which are explored further below:

- Retention policies
- Retention labels
- Records management

## Data privacy regulations impacting information governance controls

A sample listing of data privacy regulations that may relate to information governance controls is provided below.

- GDPR Article (13)(2)(a)
- GDPR Article (5)(1)(f)
- HIPAA-HITECH (45 CFR 164.312(c)(2))
- HIPAA-HITECH (45 CFR 164.316(b)(1)(i))
- HIPAA-HITECH (45 CFR 164.316(b)(1)(ii))
- LGPD Article 46

Refer to the article 2. Assess data privacy risks and identify sensitive information - Potentially applicable data privacy regulations for more information on each of the above.

In summary, the data privacy regulations generally call for the following in the area of information governance:

- A technical scheme for retention and deletion for personal data stored in Office 365 should be employed.
- If you're going to store personal data, inform the subject of how long the data will be stored (which is a standard practice now on front-end web systems).
- Personal data should be protected against accidental processing, loss, or alteration using verifiable methods.
- Any action executed against personal data should be documented, and that documentation retained for a specified period.

Because the data privacy regulations are not very specific when it comes to data retention and deletion, other factors need to be taken into consideration in your organization which may dictate information governance guidelines for personal information stored in your Office 365 tenant.

A few examples are provided below for reference:

- One organization surveyed ages out (i.e., closes) consumer accounts after 5 years of inactivity and requires deletion or anonymization of account data after that point, requiring orchestration between the system storing the data and workflows related to notifications and other automation.
- Another organization had rules for keeping policies and procedures related to GDPR around for 3 years after they've been superseded, which aligns with the organization's retention schedule for policies and procedures.
- The same organization maintained a separate tenant for communicating with consumers through its support organization, and all email communications were retained and deleted after two weeks to reduce any privacy debt buildup in the system.

A key question to answer here is: how long does information containing personal data need to be kept around for valid business reasons and how to avoid past "keep it forever" stances, balanced with retention needs for business continuity?

Regardless of the legal and business reasons for keeping personal information around and/or deleting it, Microsoft provides a number of capabilities to implement your data governance scheme in Microsoft 365, as listed below.

## Managing information governance in Microsoft 365

General reference: 
- Manage information governance
- Data Retention, Deletion and Destruction in Office 365

### Pre-requisite: Develop data retention schedules for containers, email, and content

- Establishing a data retention schedule for defined information types should be considered a prerequisite to implementing any retention and/or deletion scheme
- Given the number of information types that most organizations consider important and the corresponding large records retention schedules that go along with them, implementing a data retention and records management strategy requires concerted planning. 
- The key to establishing an effective data governance strategy of this type is to focus on the highest priority business functions and information types requiring more formal management. E.g. legal contracts, financial statements, regulatory compliance documentation, etc. Try to avoid having a separate retention schedule for every single information type, rather, try to utilize general categories as much as possible (e.g. with retention schedules of 7 years for general business content). 
- Once the personal information types in your environment are better known, establish retention/deletion schedules for this type of content and adjust your information architecture (as necessary) to make governance of this sort of information easier (e.g. isolate personal information in separate sites, libraries, folders, etc. with controlled access).

### Retention policies

Detailed reference: Retention policies

Create and deploy retention policies for content in sites (automatically applied to content in the sites).

- Example application in a data privacy context: for sites that contain (or are expected to contain) personal data, specify retention/deletion rules to address organizational standards for such content.
Refer to the referenced article for more information.

### Retention labels

Detailed reference: Retention labels

Create and deploy retention label policies for content and email.

- Example application in a data privacy context: for sites, libraries, folders and email that contain (or are expected to contain) personal data, specify auto retention/deletion rules to address organizational standards for such content

Refer to the referenced article for more information.

### Records Management

Create and retention labels for records management based on a records retention schedule and file plan

- Example application in a data privacy context: data subject requests (DSRs) received by legal are declared a record and stored indefinitely per regulatory activity retention specifications.

Refer to these references for more information: 

- Records Management
- File plan manager
- Event-based retention for records management
- Disposition reviews


