---
title: North American Electric Reliability Corporation (NERC)
description: Azure and Azure Government are suitable for registered entities deploying certain workloads in the cloud subject to NERC CIP standards.
keywords: Microsoft 365, compliance, offerings
localization_priority: Priority
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

# North American Electric Reliability Corporation (NERC)

## About the NERC

The [North American Electric Reliability Corporation](https://www.nerc.com/) (NERC) is a nonprofit regulatory authority whose mission is to ensure the reliability of the North American bulk power system. NERC is subject to oversight by the US Federal Energy Regulatory Commission (FERC) and governmental authorities in Canada. In 2006, FERC granted the Electric Reliability Organization (ERO) designation to NERC in accordance with the Energy Policy Act of 2005 (US Public Law 109-58). NERC develops and enforces reliability standards known as NERC [Critical Infrastructure Protection (CIP) standards](https://www.nerc.com/pa/Stand/Pages/CIPStandards.aspx).

## Microsoft and the NERC CIP standard

The North American Electric Reliability Corporation (NERC) is a nonprofit regulatory authority whose mission is to ensure the reliability of the North American bulk power system. NERC is subject to oversight by the US Federal Energy Regulatory Commission (FERC) and governmental authorities in Canada. In 2006, FERC granted the Electric Reliability Organization (ERO) designation to NERC in accordance with the Energy Policy Act of 2005 (US Public Law 109-58). NERC develops and enforces reliability standards known as NERC [Critical Infrastructure Protection (CIP) standards](https://www.nerc.com/pa/Stand/Pages/CIPStandards.aspx).

All bulk power system owners, operators, and users must [comply with NERC CIP standards](https://www.nerc.com/pa/comp/Pages/default.aspx). These entities are required to register with NERC. Cloud Service Providers and third-party vendors are not subject to NERC CIP standards; however, the CIP standards include goals that should be considered when [Registered Entities](https://www.nerc.com/pa/comp/Pages/Registration.aspx) use vendors in the operation of the Bulk Electric System (BES). Microsoft customers operating Bulk Electric Systems are wholly responsible for ensuring their own compliance with NERC CIP standards. Neither Microsoft Azure nor Microsoft Azure Government constitutes a BES or BES Cyber Asset.

As stated by NERC in the current set of [CIP standards](https://www.nerc.com/pa/Stand/Reliability%20Standards%20Complete%20Set/RSCompleteSet.pdf) and the NERC [Glossary of Terms](https://www.nerc.com/pa/Stand/Glossary%20of%20Terms/Glossary_of_Terms.pdf), BES Cyber Assets perform real-time functions of monitoring or controlling the BES, and would affect the reliable operation of the BES within 15 minutes of being impaired. To properly accommodate BES Cyber Assets and Protected Cyber Assets in cloud computing, existing definitions in NERC CIP standards would [need to be revised](https://www.nerc.com/pa/Stand/Pages/Project%202016-02%20Modifications%20to%20CIP%20Standards.aspx). However, there are many workloads that deal with CIP sensitive data and do not fall under the 15-minute rule, including the broad category of BES Cyber System Information (BCSI).

Azure and Azure Government are suitable for Registered Entities deploying certain workloads subject to NERC CIP standards, including BCSI workloads. Microsoft makes the following documents available to Registered Entities interested in deploying data and workloads subject to NERC CIP compliance obligations in Azure or Azure Government:

- [NERC CIP Standards and Cloud Computing](https://aka.ms/AzureNERC) is a white paper that discusses compliance considerations for NERC CIP requirements based on established third-party audits that are applicable to cloud service providers such as FedRAMP. It covers background screening for cloud operations personnel and answers common question about logical isolation and multitenancy that are of interest to Registered Entities. It also addresses security considerations for on-premises vs. cloud deployment.
- [Cloud Implementation Guide for NERC Audits](https://aka.ms/AzureNERCGuide) is a guidance document that provides control mapping between the current set of NERC CIP standards requirements and the [NIST SP 800-53 Rev 4](https://nvd.nist.gov/800-53/Rev4) control set that forms the basis for FedRAMP. It is designed as technical how-to guidance to help Registered Entities address NERC CIP compliance requirements for assets deployed in the cloud. The document contains pre-filled [Reliability Standard Audit Worksheets (RSAWs)](https://www.nerc.com/pa/comp/Pages/Reliability-Standard-Audit-Worksheets-\(RSAWs\).aspx) narratives that help explain how Azure controls address NERC CIP requirements, and guidance for Registered Entities on how to use Azure services to implement controls that they own.

The NERC ERO Enterprise [released](https://www.nerc.com/pa/comp/guidance/Pages/default.aspx) a Compliance Monitoring and Enforcement Program (CMEP) [practice guide](https://www.nerc.com/pa/comp/guidance/CMEPPracticeGuidesDL/ERO%20Enterprise%20CMEP%20Practice%20Guide%20_%20BCSI%20-%20v0.2%20CLEAN.pdf) to provide guidance to ERO Enterprise CMEP staff when assessing a Registered Entity's process to authorize access to designated BCSI storage locations and any access controls the Registered Entity implemented. Moreover, NERC reviewed Azure control implementation details and FedRAMP audit evidence related to NERC CIP-004-6 and CIP-011-2 standards that are applicable to BCSI. Based on the ERO-issued practice guide and reviewed FedRAMP controls to ensure that Registered Entities encrypt their data, no additional guidance or clarification is needed for Registered Entities to deploy BCSI and associated workloads in the cloud. However, Registered Entities are ultimately responsible for compliance with NERC CIP standards according to their own facts and circumstances. Registered Entities should review the [Cloud Implementation Guide for NERC Audits](https://aka.ms/AzureNERCGuide) for help with documenting their processes and evidence used to authorize electronic access to BCSI storage locations, including encryption key management used for BCSI encryption in Azure and Azure Government.

## Microsoft in-scope cloud services

- [Azure and Azure Government](https://aka.ms/AzureCompliance)

## Audits, reports, and certificates

Microsoft is required to recertify its cloud services each year to maintain its P-ATOs and ATOs. To do so, Microsoft must monitor and assess its security controls continuously, and demonstrate that it remains in compliance.

- [Microsoft cloud services authorizations](https://marketplace.fedramp.gov/?sort=productName&productNameSearch=azure#/product/azure-government)
- [Microsoft FedRAMP Audit Reports](https://aka.ms/MicrosoftFedRAMPAuditDocuments)

## How to implement

### NERC CIP Standards and Cloud Computing

Addresses compliance for Registered Entities considering cloud adoption for workloads subject to NERC CIP standards.

[Learn more](https://aka.ms/AzureNERC)

### Cloud Implementation Guide for NERC Audits

Technical guidance helps Registered Entities with NERC audits of assets deployed in Azure or Azure Government. 

[Learn more](https://aka.ms/AzureNERCGuide)

## Frequently asked questions

**Who is responsible for compliance with NERC CIP standards?**

All bulk power system owners, operators, and users must [comply with NERC CIP standards](https://www.nerc.com/pa/comp/Pages/default.aspx). These entities are required to register with NERC. Cloud Service Providers and third-party vendors are not subject to NERC CIP standards; however, the CIP standards include goals that should be considered when [Registered Entities](https://www.nerc.com/pa/comp/Pages/Registration.aspx) use vendors in the operation of the Bulk Electric System (BES). Microsoft customers operating Bulk Electric Systems are wholly responsible for ensuring their own compliance with NERC CIP standards. Neither Azure nor Azure Government constitutes a BES or BES Cyber Asset.

To assess the suitability of Azure and Azure Government for data and workloads subject to NERC CIP standards, Registered Entities should consult with their own compliance officers and NERC auditors. They should review the [Cloud Implementation Guide for NERC Audits](https://aka.ms/AzureNERCGuide) for help with documenting their processes and evidence for assets deployed in the cloud.

**What workloads can Registered Entities deploy on Azure and Azure Government?**

The NERC [CIP standards](https://www.nerc.com/pa/Stand/Reliability%20Standards%20Complete%20Set/RSCompleteSet.pdf) and [Glossary of Terms](https://www.nerc.com/pa/Stand/Glossary%20of%20Terms/Glossary_of_Terms.pdf) state that BES Cyber Assets perform real-time functions of monitoring or controlling the BES, and that if impaired would, within 15 minutes, affect the reliable operation of the BES. To properly accommodate BES Cyber Assets and Protected Cyber Assets in cloud computing, existing definitions in NERC CIP standards would [need to be revised](https://www.nerc.com/pa/Stand/Pages/Project%202016-02%20Modifications%20to%20CIP%20Standards.aspx). However, there are many workloads that deal with CIP sensitive data and do not fall under the 15-minute rule, including the broad category of BES Cyber System Information (BCSI).

The NERC ERO Enterprise [released](https://www.nerc.com/pa/comp/guidance/Pages/default.aspx) a Compliance Monitoring and Enforcement Program (CMEP) [practice guide](https://www.nerc.com/pa/comp/guidance/CMEPPracticeGuidesDL/ERO%20Enterprise%20CMEP%20Practice%20Guide%20_%20BCSI%20-%20v0.2%20CLEAN.pdf) to provide guidance to ERO Enterprise CMEP staff when assessing a Registered Entity's process to authorize access to designated BCSI storage locations and any access controls the Registered Entity implemented. Moreover, NERC reviewed Azure control implementation details and FedRAMP audit evidence related to NERC CIP-004-6 and CIP-011-2 standards that are applicable to BCSI. Based on the ERO issued practice guide and reviewed FedRAMP controls to ensure that Registered Entities encrypt their data, no additional guidance or clarification is needed for Registered Entities to deploy BCSI and associated workloads in the cloud. However, Registered Entities are ultimately responsible for compliance with NERC CIP standards according to their own facts and circumstances.

## Use Microsoft Compliance Manager to assess your risk

[Microsoft Compliance Manager](compliance-manager.md) is a feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) to help you understand your organization's compliance posture and take actions to help reduce risks. Compliance Manager offers a premium template for building an assessment for this regulation. Find the template in the **assessment templates** page in Compliance Manager. Learn how to [build assessments in Compliance Manager](compliance-manager-assessments.md).

## Resources

- [NERC Compliance Guidance](https://www.nerc.com/pa/comp/guidance/)
- [NERC Cyber Security - Supply Chain Risk Management](https://www.nerc.com/pa/Stand/Pages/CIP0131RI.aspx)
- [NERC Compliance and Enforcement](https://www.nerc.com/pa/comp/Pages/default.aspx)
- [NERC Organization and Certification](https://www.nerc.com/pa/comp/Pages/Registration.aspx)
- [Microsoft and FedRAMP](offering-fedramp.md)
- Microsoft and CSA STAR [Attestation](offering-csa-star-attestation.md) and [Certification](offering-csa-star-certification.md)
- [Microsoft and SOC 2 Reports](offering-soc.md)
- [Compliance on the Microsoft Trust Center](https://www.microsoft.com/trust-center/compliance/compliance-overview)
