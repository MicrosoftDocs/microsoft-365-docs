---
title: Commodity Futures Trading Commission (CFTC) Rule 1.31(c-d) United States 
description: An independent assessment firm validated that Azure and Office 365 can help financial firms meet CFTC Rule 1.31 records retention and immutable storage requirements.
keywords: Microsoft 365, compliance, offerings
localization_priority: None
ms.prod: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: M365-security-compliance
hideEdit: true
titleSuffix: Microsoft Compliance
---

# Commodity Futures Trading Commission (CFTC) Rule 1.31(c-d) United States

## About CFTC Rule 1.3(c-d)

The [Commodity Futures Trading Commission](https://www.cftc.gov/) (CFTC), an independent US federal agency, regulates the commodity futures and options markets and, more recently, the swaps market.  
  
The long-standing CFTC Rule 1.31 defines records retention requirements established by SEC Rule 17a-4(f). In addition, it specifies that electronic records must be maintained for five years and that the originals be kept “readily accessible” during the first two years and made available for inspection by the Commission or the US Department of Justice during the entire retention period.  
  
In 2017, the [CFTC revised its rule](https://www.cftc.gov/sites/default/files/idc/groups/public/@lrfederalregister/documents/file/2017-11014a.pdf), amending and modernizing its recordkeeping regulation to adopt less prescriptive, principles-based standards that provide greater flexibility in how records can be maintained. This makes the rule more technology neutral, enabling regulated entities to choose the technology most appropriate for their business while maintaining the safeguards that “ensure the reliability of the recordkeeping process.” The revised rule removes the requirement that organizations maintain the original records for two years, but retains the five-year maintenance period, which harmonizes practices for firms regulated by both the CFTC and the SEC.

## Microsoft and CFTC Rule 1.31(c-d)

Financial services customers, representing one of the most heavily regulated industries in the world, are subject to complex provisions like the retention of financial transactions and related communication in a non-erasable and non-modifiable state. Among the most prescriptive is Rule 1.31 of the US Commodity Futures Trading Commission (CFTC) that stipulates stringent requirements for regulated entities that elect to retain books and records on electronic storage media. Records stored must be tamper-proof with no ability to alter or delete them until after the designated retention period. Microsoft Azure Immutable Blob Storage with Policy Lock and Microsoft Office 365 with Preservation Lock can help financial institutions meet the storage requirements of CFTC Rule 1.31(c-d).

### Microsoft Azure

To evaluate Azure compliance with CFTC Rule 1.31(c-d), Microsoft retained an independent assessment firm that specializes in records management and information governance, Cohasset Associates. In the resulting report, [CFTC 1.31 (c)–(d) Compliance Assessment: Microsoft Azure Storage](https://servicetrust.microsoft.com/ViewPage/MSComplianceGuide?command=Download&downloadType=Document&downloadId=19b08fd4-d276-43e8-9461-715981d0ea20&docTab=4ce99610-c9c0-11e7-8c2c-f908a777fa4d_GRC_Assessment_Reports), Cohasset validated that [Azure Immutable Blob Storage](https://docs.microsoft.com/azure/storage/blobs/storage-blob-immutable-storage) with the Policy Lock option, when used to retain time-based Blobs in a non-erasable and non-rewritable (WORM) format, meets the principles-based requirements of the CFTC rule. Each Blob (record) is protected from being modified, overwritten, or deleted until the required retention period has expired and any associated legal holds have been released. Software providers and partners with sensitive workloads can now rely on Azure Immutable Blob Storage as a one-stop shop cloud solution for records retention. Financial institutions can now build their own applications taking advantage of these features while remaining compliant.

### Microsoft Office 365

To evaluate Office 365 compliance with CFTC Rule 1.31(c-d), Microsoft engaged a leading independent law firm that specializes in regulatory issues, Covington & Burling, LLP. In the resulting report, [Archiving in Microsoft Office 365, Data Retention, and Rule 17a-4 Compliance](https://go.microsoft.com/fwlink/?linkid=830440), Covington validated that [Office 365 with Preservation Lock](retention-preservation-lock.md) includes archiving features that enable regulated customers to store data in a manner that helps them comply with CFTC requirements for records retention.

Archiving in Office 365 helps to preserve a wide range of data, including email, voicemail, shared documents, instant messages, and third-party data. In particular, archiving in Office 365 enables customers to set global or granular messaging retention policies to store data for a defined period and beyond in a non-rewriteable, non-erasable format.

## Microsoft in-scope cloud services

- [Azure](https://aka.ms/AzureCompliance)
- [Office 365](https://aka.ms/o365-compliance-framework)

## Audits, reports, and certificates

[Azure & CFTC Rule 1.31 — SEC 17a-4(f) & CFTC 1.31(c-d) Compliance Assessment of Azure Storage

[Office 365 & CFTC Rule 1.31 — Archiving in Office 365, data retention, and SEC Rule 17a-4 compliance

## How to implement

- [Financial services regulation](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=5b483567-00b0-4d86-96ae-ee887dadb61c&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_Compliance_Guides): Compliance map of key US regulatory principles for cloud computing and Microsoft online services.
- [Risk Assessment & Compliance Guide](https://aka.ms/RiskGovernanceGuide): Create a governance model for risk assessment of Microsoft cloud services, and regulator notification.
- [Financial use cases](https://docs.microsoft.com/azure/industry/financial/): Use case overviews, tutorials, and other resources to build Azure solutions for financial services.

## Resources

- [Microsoft Financial Services Compliance Program](https://aka.ms/FSCP-Print)
- [Microsoft business cloud services and financial services](https://www.microsoft.com/trustcenter/cloudservices/financialservices)
- [Financial services compliance in Azure](https://azure.microsoft.com/resources/videos/azurecon-2015-financial-services-compliance-in-azure/)
- [Azure Financial Services Cloud Risk Assessment Tool](https://aka.ms/FFIEC-CSDT)
- [Microsoft Office 365 Retention Policies](https://docs.microsoft.com/office365/securitycompliance/retention-policies)
- [Microsoft Financial Services Blog](https://techcommunity.microsoft.com/t5/Financial-Services-Blog/bg-p/FinancialServicesBlog)
- [Compliance on the Microsoft Trust Center](https://www.microsoft.com/trust-center/compliance/compliance-overview)
