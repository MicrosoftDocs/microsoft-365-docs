---
title: "Govern information subject to data privacy regulation"
ms.author: bcarter
author: brendacarter
f1.keywords:
- NOCSH
manager: laurawi
ms.date: 06/09/2020
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- m365solution-infoprotection
- m365solution-scenario
ms.custom: 
description: Use Microsoft 365 retention labels and policies to manage personal data in your Microsoft 365 environment.
---

# Govern information subject to data privacy regulation

Information governance controls can be employed in your environment to help address data privacy compliance needs, including a number that are specific to General Data Protection Regulation (GDPR), HIPAA-HITECH (the United States health care privacy act), California Consumer Protection Act (CCPA), and the Brazil Data Protection Act (LGPD). 

These controls primarily fall into the following solution areas:

- Retention policies
- Retention labels
- Records management

## Data privacy regulations impacting information governance controls

Here is a sample listing of data privacy regulations that may relate to information governance controls:

- GDPR Article (13)(2)(a)
- GDPR Article (5)(1)(f)
- HIPAA-HITECH (45 CFR 164.312(c)(2))
- HIPAA-HITECH (45 CFR 164.316(b)(1)(i))
- HIPAA-HITECH (45 CFR 164.316(b)(1)(ii))
- LGPD Article 46

For more information on these regulations, see the [assess data privacy risks and identify sensitive information article](information-protection-deploy-assess.md).

For information governance, data privacy regulations typically call for the following:

- You should employ a technical scheme for retention and deletion for personal data stored in Microsoft 365.
- If you're going to store personal data, inform the subject of how long the data will be stored, which is a standard practice now on front-end web systems.
- Personal data should be protected against accidental processing, loss, or alteration using verifiable methods.
- Any action executed against personal data should be documented and that documentation should be retained for a specified period.

Because the data privacy regulations are not very specific when it comes to data retention and deletion, other factors need to be taken into consideration that may dictate information governance guidelines for personal information stored in your Microsoft 365 subscription. Here are a few examples:

- Aging out consumer accounts after 5 years of inactivity and requires deletion or anonymization of account data after that point, requiring orchestration between the system storing the data and workflows related to notifications and other automation.
- Configuring rules for keeping policies and procedures related to GDPR around for three years after they've been superseded, which aligns with the organization's retention schedule for policies and procedures.
- Maintaining a separate subscription for communicating with consumers through its support organization. All email communications were retained and deleted after two weeks to reduce any privacy debt buildup in the system.

A key question to answer is: 

- How long does information containing personal data need to be kept around for valid business reasons to avoid "keep it forever" practices? This must be balanced with retention needs for business continuity.

Regardless of the legal and business reasons for keeping personal information around or deleting it, Microsoft provides a number of capabilities to implement your data governance scheme in Microsoft 365.

## Managing information governance in Microsoft 365

To begin, see [Manage information governance](../compliance/manage-information-governance.md) and [Data Retention, Deletion and Destruction in Microsoft 365](/office365/Enterprise/office-365-data-retention-deletion-and-destruction-overview).

### Develop data retention schedules for containers, email, and content

Keep the following in mind:

- Establishing a data retention schedule for defined information types should be considered a prerequisite to implementing any retention or deletion scheme.

- Given the number of information types that most organizations consider important and the corresponding large records retention schedules that go along with them, implementing a data retention and records management strategy requires planning. 

- The key to establishing an effective data governance strategy of this type is to focus on the highest priority business functions and information types that require more formal management. Examples are legal contracts, financial statements, and regulatory compliance documentation. Try to avoid having a separate retention schedule for every single information type. Try to utilize general categories as much as possible, for example, with retention schedules of 7 years for general business content.

- Once the personal information types in your environment are better known, establish retention and deletion schedules for this type of content and adjust your information architecture to make governance of this sort of information easier. For example, isolate personal information in separate sites, libraries, or folders with controlled access.

### Retention policies and retention labels

Use [retention policies and retention labels](../compliance/retention.md) to retain or delete content in Microsoft 365 that contains or is expected to contain personal data.

### Records management

Use retention labels that declare content a record to implement a [records management solution](../compliance/records-management.md) for data in Microsoft 365.

For data privacy, data subject requests (DSRs) received by the legal department are declared a record and can be stored indefinitely or disposed of with proof, to adhere to regulatory activity retention specifications.