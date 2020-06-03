---
title: "Govern information subject to data privacy regulation
"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 06/03/2020
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

A number of information governance controls can be employed in your environment to help address data privacy compliance needs, including (per Compliance Score) a number that are specific to General Data Protection Regulation (GDPR), HIPAA-HITECH (the United States health care privacy act), California Consumer Protection Act (CCPA), and the Brazil Data Protection Act (LGPD). 

These controls primarily fall into the following solution areas:

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

For more information on these regulations, see the [assess data privacy risks and identify sensitive information article](information-protection-deploy-assess.md).

In the area of information governance, data privacy regulations typically call for the following:

- A technical scheme for retention and deletion for personal data stored in Microsoft 365 should be employed.
- If you're going to store personal data, inform the subject of how long the data will be stored, which is a standard practice now on front-end web systems.
- Personal data should be protected against accidental processing, loss, or alteration using verifiable methods.
- Any action executed against personal data should be documented, and that documentation retained for a specified period.

Because the data privacy regulations are not very specific when it comes to data retention and deletion, other factors need to be taken into consideration in your organization which may dictate information governance guidelines for personal information stored in your Microsoft 365 subscription.

Here are a few examples:

- An organization surveyed ages out consumer accounts after 5 years of inactivity and requires deletion or anonymization of account data after that point, requiring orchestration between the system storing the data and workflows related to notifications and other automation.
- An organization had rules for keeping policies and procedures related to GDPR around for 3 years after they've been superseded, which aligns with the organization's retention schedule for policies and procedures.
- An organization maintained a separate subscription for communicating with consumers through its support organization, and all email communications were retained and deleted after two weeks to reduce any privacy debt buildup in the system.

A key question to answer is: 

- How long does information containing personal data need to be kept around for valid business reasons and how to avoid past "keep it forever" stances, balanced with retention needs for business continuity?

Regardless of the legal and business reasons for keeping personal information around or deleting it, Microsoft provides a number of capabilities to implement your data governance scheme in Microsoft 365, as listed below.

## Managing information governance in Microsoft 365

To begin,see [Manage information governance](../compliance/manage-information-governance.md) and [Data Retention, Deletion and Destruction in Microsoft 365](https://docs.microsoft.com/office365/Enterprise/office-365-data-retention-deletion-and-destruction-overview).

### Develop data retention schedules for containers, email, and content

Keep the following in mind:

- Establishing a data retention schedule for defined information types should be considered a prerequisite to implementing any retention and/or deletion scheme

- Given the number of information types that most organizations consider important and the corresponding large records retention schedules that go along with them, implementing a data retention and records management strategy requires concerted planning. 

- The key to establishing an effective data governance strategy of this type is to focus on the highest priority business functions and information types requiring more formal management. Examples are legal contracts, financial statements, and regulatory compliance documentation. Try to avoid having a separate retention schedule for every single information type, rather, try to utilize general categories as much as possible, for example, with retention schedules of 7 years for general business content.

- Once the personal information types in your environment are better known, establish retention/deletion schedules for this type of content and adjust your information architecture (as necessary) to make governance of this sort of information easier. For example, isolate personal information in separate sites, libraries, or folders with controlled access.

### Retention policies

Create and deploy [retention policies](../compliance/retention-policies.md) for content in sites (automatically applied to content in the sites).

For data privacy for sites that contain or are expected to contain personal data, specify retention or deletion rules to address organizational standards for such content.

### Retention labels

Create and deploy [retention labels](../compliance/labels.md) for content and email.

For data privacy for sites, libraries, folders, and email that contain or are expected to contain personal data, specify auto retention or deletion rules to address organizational standards.

### Records Management

Create and deploy retention labels for records management based on a records retention schedule and file plan.

For data privacy, data subject requests (DSRs) received by legal are declared a record and stored indefinitely to adhere to regulatory activity retention specifications.

See these resources for more information: 

- [Records Management](../compliance/records-management.md)
- [File plan manager](../compliance/file-plan-manager.md)
- [Event-based retention for records management](../compliance/automate-event-driven-retention.md)
- [Disposition of content](../compliance/disposition-reviews.md)


