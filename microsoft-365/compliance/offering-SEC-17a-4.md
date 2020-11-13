---
title: Securities and Exchange Commission (SEC) Rule 17a-4(f) United States
description: An independent assessment firm validated that Azure and Office 365 can help financial firms meet SEC Rule 17a-4(f) records retention and immutable storage requirements.
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

# Securities and Exchange Commission (SEC) Rule 17a-4(f) United States

## Microsoft and SEC Rule 17a-4(f)

The [US Securities and Exchange Commission (SEC)](https://www.sec.gov/) is an independent agency of the US federal government and the primary overseer and regulator of US securities markets. It wields enforcement authority over federal securities laws, proposes new securities rules, and oversees market regulation of the securities industry.

The SEC defines rigorous and explicit requirements for regulated entities that elect to retain books and records on electronic storage media. It established [17 CFR 240.17a-3](https://www.govinfo.gov/app/details/CFR-2012-title17-vol3/CFR-2012-title17-vol3-sec240-17a-3) and [17 CFR 240.17a-4](https://www.ecfr.gov/cgi-bin/text-idx?mc=true&node=pt17.4.240&rgn=div5#se17.4.240_117a_64) to regulate recordkeeping, including retention periods, for securities broker-dealers. Later, the SEC [amended](https://www.sec.gov/rules/interp/34-47806.htm) 17 CFR 240.17a-4 paragraph (f), issuing two interpretive releases expressly to allow books and records to be retained on electronic storage media as long as certain conditions were met.

An electronic storage system meets those conditions if it prevents the alteration or erasure of records for the required retention period. Retention periods vary from three to six years based on record types, with immediate accessibility mandated for the first two years. Moreover, one of the interpretive releases requires that the storage system be capable of retaining records beyond the SEC-established retention period to comply with subpoenas, legal hold, or other such requirements.

## Microsoft and SEC Rule 17a-4(f)

Financial services customers, representing one of the most heavily regulated industries in the world, are subject to complex provisions like the retention of financial transactions and related communication in a non-erasable and non-modifiable state. Among the most prescriptive is Rule 17a-4(f) of the US Security and Exchange Commission (SEC) that stipulates stringent requirements for regulated entities that elect to retain books and records on electronic storage media. Records stored must be tamper-proof with no ability to alter or delete them until after the designated retention period.

Microsoft Azure Immutable Blob Storage with Policy Lock and Microsoft Office 365 with Preservation Lock can help financial institutions meet the immutable storage requirements of SEC Rule 17a-4(f).

To evaluate Azure and Office 365 compliance with SEC Rule 17a-4(f), Microsoft retained an independent assessment firm that specializes in records management and information governance, Cohasset Associates. In the resulting report for:

- **Azure**: [SEC 17a-4(f) Compliance Assessment: Microsoft Azure Storage](https://servicetrust.microsoft.com/ViewPage/MSComplianceGuide?command=Download&downloadType=Document&downloadId=19b08fd4-d276-43e8-9461-715981d0ea20&docTab=4ce99610-c9c0-11e7-8c2c-f908a777fa4d_GRC_Assessment_Reports), Cohasset validated that [Azure Immutable Blob Storage](https://docs.microsoft.com/azure/storage/blobs/storage-blob-immutable-storage) with the Policy Lock option, when used to retain time-based Blobs in a non-erasable and non-rewritable (WORM) format, meets the immutable storage requirements of the SEC rule. Each Blob (record) is protected from being modified, overwritten, or deleted until the required retention period has expired and any associated legal holds have been released. Software providers and partners with sensitive workloads can now rely on Azure Immutable Blob Storage as a onestop-shop cloud solution for records retention and immutable storage. Financial institutions can now build their own applications taking advantage of these features while remaining compliant.
- **Microsoft 365**: [SEC 17a-4(f)](retention-regulatory-requirements.md#sec-17a-4f-finra-4511c-and-cftc-131c-d), Cohasset validated that Microsoft 365 includes archiving features that enable regulated customers, including broker-dealers, to store data in a manner that helps them comply with SEC requirements for records retention. Retention features in Microsoft 365 help preserve a wide range of data, including email, voicemail, shared documents, instant messages, and third-party data. In particular, archiving in Microsoft 365 enables customers to set global or granular messaging retention policies to store data for a defined period and beyond in a non-rewriteable, non-erasable format.

## Microsoft in-scope cloud services

- [Azure](https://gallery.technet.microsoft.com/Overview-of-Azure-c1be3942)
- [Office 365](https://aka.ms/Office365ComplianceOfferings)

## Audits, reports, and certificates

### Azure & SEC Rule 17

[SEC 17a-4(f) & CFTC 1.31 (c-d) Compliance Assessment of Azure Storage](https://servicetrust.microsoft.com/ViewPage/MSComplianceGuide?command=Download&downloadType=Document&downloadId=19b08fd4-d276-43e8-9461-715981d0ea20&docTab=4ce99610-c9c0-11e7-8c2c-f908a777fa4d_GRC_Assessment_Reports)

### Office 365 & SEC Rule 17

[SEC 17a-4(f) Compliance Assessment: Microsoft Security & Compliance Center with Exchange Online](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=9fa8349d-a0c9-47d9-93ad-472aa0fa44ec&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_FAQ_and_White_Papers)

## How to implement

### Financial services regulation

Compliance map of key US regulatory principles for cloud computing and Microsoft online services. [Learn more](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=5b483567-00b0-4d86-96ae-ee887dadb61c&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_Compliance_Guides)

### Risk Assessment & Compliance Guide

Create a governance model for risk assessment of Microsoft cloud services, and regulator notification. [Learn more](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=edee9b14-3661-4a16-ba83-c35caf672bd7&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_FAQ_and_White_Papers)

### Financial use cases

Use case overviews, tutorials, and other resources to build Azure solutions for financial services. [Learn more](https://docs.microsoft.com/azure/industry/financial/)

## Use Microsoft Compliance Manager to assess your risk

[Microsoft Compliance Manager](compliance-manager.md) is a feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) to help you understand your organization's compliance posture and take actions to help reduce risks. Compliance Manager offers a premium template for building an assessment for this regulation. Find the template in the **assessment templates** page in Compliance Manager. Learn how to [build assessments in Compliance Manager](compliance-manager-assessments.md).

## Resources

- [Archiving in Microsoft Office 365, Data Retention, and Rule 17a-4](https://www.microsoft.com/microsoft-365/blog/2015/11/10/office-365-exchange-online-archiving-now-meets-sec-rule-17a-4-requirements/)
- [Compliance Microsoft Financial Services](https://download.microsoft.com/download/6/4/7/64707E3E-6D3E-45D0-8207-A0EA3201B4A6/Microsoft%20Cloud%20-%20Financial%20Services%20Compliance%20Program%20\(Print\).pdf)
- [Compliance Program Microsoft business cloud services and financial services](https://servicetrust.microsoft.com/viewpage/financialservicesoverview)
- [Financial services compliance in Azure](https://azure.microsoft.com/resources/videos/azurecon-2015-financial-services-compliance-in-azure/)
- [Azure Financial Services Cloud Risk Assessment Tool](https://servicetrust.microsoft.com/ViewPage/FFIECBlueprint?command=Download&downloadType=Document&downloadId=079a1973-711a-428f-9312-9ddd290cff7b&docTab=c726d5c0-2d1e-11e8-a485-57140ec19669_PaaS)
- [Microsoft Office 365 Retention Policies](https://docs.microsoft.com/office365/securitycompliance/retention-policies)
- [Microsoft Financial Services Blog](https://techcommunity.microsoft.com/t5/Financial-Services-Blog/bg-p/FinancialServicesBlog)
- [Compliance on the Microsoft Trust Center](https://www.microsoft.com/trust-center/compliance/compliance-overview)
