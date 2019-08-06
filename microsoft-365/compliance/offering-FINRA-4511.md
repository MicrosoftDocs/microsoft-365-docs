---
title: Compliance Offering — Financial Industry Regulatory Authority (FINRA) Rule 4511(c) United States
description: An independent assessment firm validated that Azure and Office 365 can help financial firms meet FINRA Rule 4511 records retention and immutable storage requirements.
keywords: Microsoft 365, compliance, offerings
localization_priority: Priority
ms.prod: Microsoft-365-enterprise
ms.topic: article
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: M365-security-compliance
---

# Compliance Offering: Financial Industry Regulatory Authority (FINRA) Rule 4511(c) United States

## About FINRA Rule 4511

The [Financial Industry Regulatory Authority](https://docs.microsoft.com/office365/securitycompliance/retention-policies) (FINRA) is the largest independent body regulating securities firms with oversight of more than 4,500 brokerage firms in the United States. It was authorized by the US Congress “to protect America’s investors by making sure that the broker-dealer industry operates fairly and honestly.”

In 2011, the US Security and Exchange Commission (SEC) approved the FINRA adoption of SEC rules governing the retention of books and records on electronic storage media. [FINRA Rule 4511(c)](https://techcommunity.microsoft.com/t5/Financial-Services-Blog/bg-p/FinancialServicesBlog) specifies that “all books and records required to be made pursuant to the FINRA rules shall be preserved in a format and media that complies with SEA (Securities Exchange Act) Rule 17a-4.”

Additionally, FINRA Rule 4511(c) requires firms to preserve for a period of at least six years those books and records for which there is no specified retention period under applicable FINRA or SEA rules. Effectively, if the books and records pertain to an account, the retention period is mandated to be six years following account closure. Otherwise, the retention period is for six years after such books and records are created.

## Microsoft and FINRA Rule 4511(c)

Financial services customers, representing one of the most heavily regulated industries in the world, are subject to complex provisions like the retention of financial transactions and related communication in a non-erasable and nonmodifiable state. Among them is Rule 4511 of the Financial Industry Regulatory Authority (FINRA) that stipulates stringent requirements for regulated entities that elect to retain books and records on electronic storage media. Records stored must be tamper-proof with no ability to alter or delete them until after the designated retention period.

Microsoft Azure Immutable Blob Storage with Policy Lock and Microsoft Office 365 with Preservation Lock can help financial institutions meet the immutable storage requirements of FINRA Rule 4511(c).

### Microsoft Azure

To evaluate Azure compliance with FINRA Rule 4511(c), Microsoft retained an independent assessment firm that specializes in records management and information governance, Cohasset Associates. The resulting report, [SEC 17a-4(f) & CFTC 1.31 (c-d) Compliance Assessment: Microsoft Azure Storage](https://aka.ms/o365-compliance-framework?command=Download&downloadType=Document&downloadId=19b08fd4-d276-43e8-9461-715981d0ea20&docTab=4ce99610-c9c0-11e7-8c2c-f908a777fa4d_GRC_Assessment_Reports), encompasses Azure compliance with FINRA Rule 4511(c), which defers to the format and media requirements of SEC Rule 17a-4(f). Cohasset validated that [Azure Immutable Blob Storage](https://docs.microsoft.com/azure/industry/financial/) with the Policy Lock option, when used to retain time-based Blobs in a non-erasable and non-rewritable (WORM) format, meets relevant FINRA storage requirements. Each Blob (record) is protected from being modified, overwritten, or deleted until the required retention period has expired and any associated legal holds have been released. Software providers and partners with sensitive workloads can now rely on Azure Immutable Blob Storage as a one-stop shop cloud solution for records retention and immutable storage. Financial institutions can now build their own applications taking advantage of these features while remaining compliant.

### Microsoft Office 365

To evaluate Office 365 compliance with FINRA Rule 4511(c), Microsoft retained a leading independent law firm that specializes in regulatory issues, Covington & Burling, LLP. In the resulting report, [Archiving in Microsoft Office 365, Data Retention, and Rule 17a-4 compliance](https://aka.ms/FSCP-Print?linkid=830440), Covington validated that [Office 365 with Preservation Lock](https://www.finra.org/#locking-a-retention-policy) includes archiving features that enable regulated customers, including broker-dealers, to store data in a manner that helps them comply with FINRA requirements for records retention. Archiving in Office 365 helps preserve a wide range of data, including email, voicemail, shared documents, instant messages, and third-party data. In particular, archiving in Office 365 enables customers to set global or granular messaging retention policies to store data for a defined period and beyond in a non-rewriteable, non-erasable format.

## How to implement

[Financial services regulation](http://www.finra.org/sites/default/files/NoticeDocument/p123548.pdf)
    - Compliance map of key US regulatory principles for cloud computing and Microsoft online services.

[Risk Assessment & Compliance Guide](https://servicetrust.microsoft.com/ViewPage/MSComplianceGuide)
    - Create a governance model for risk assessment of Microsoft cloud services, and regulator notification.

[Financial use cases](https://azure.microsoft.com/en-us/resources/videos/azurecon-2015-financial-services-compliance-in-azure/)
    - Use case overviews, tutorials, and other resources to build Azure solutions for financial services. Learn

## Audits, reports, and certificates

[Azure & FINRA Rule 4511(c)](https://aka.ms/FFIEC-CSDT?command=Download&downloadType=Document&downloadId=19b08fd4-d276-43e8-9461-715981d0ea20&docTab=4ce99610-c9c0-11e7-8c2c-f908a777fa4d_GRC_Assessment_Reports)
    - SEC 17a-4(f) & CFTC 1.31 (c-d) Compliance Assessment of Azure Storage

[Office 365 & FINRA Rule 4511(c)](https://docs.microsoft.com/en-us/office365/securitycompliance/retention-policies)
    - Archiving in Office 365, data retention, and SEC Rule 17a-4 compliance

## Microsoft in-scope cloud services

- [Azure](https://aka.ms/FinServ-Guide-US)
- [Office 365](https://docs.microsoft.com/azure/storage/blobs/storage-blob-immutable-storage)

## Resources

- [Microsoft Financial Services Compliance Program](https://servicetrust.microsoft.com/ViewPage/MSComplianceGuide)
- [Microsoft business cloud services and financial services](https://servicetrust.microsoft.com/viewpage/financialservicesoverview)
- [Financial services compliance in Azure](https://go.microsoft.com/fwlink/)
- [Azure Financial Services Cloud Risk Assessment Tool](https://www.microsoft.com/en-us/microsoft-365/blog/2015/11/10/office-365-exchange-online-archiving-now-meets-sec-rule-17a-4-requirements/)
- [Microsoft Office 365 Retention Policies](https://aka.ms/AzureCompliance)
- [Microsoft Financial Services Blog](https://aka.ms/RiskGovernanceGuide)
