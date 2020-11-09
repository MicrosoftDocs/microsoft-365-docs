---
title: Health Insurance Portability and Accountability (HIPAA) & HITECH Acts
description: Microsoft offers Health Insurance Portability & Accountability Act Business Associate Agreements (BAAs).
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

# Health Insurance Portability and Accountability (HIPAA) & HITECH Acts

## HIPAA and the HITECH Act overview

The Health Insurance Portability and Accountability Act (HIPAA) is a US healthcare law that establishes requirements for the use, disclosure, and safeguarding of individually identifiable health information. It applies to covered entities — doctors' offices, hospitals, health insurers, and other healthcare companies — with access to patients' protected health information (PHI), as well as to business associates, such as cloud service and IT providers, that process PHI on their behalf. (Most covered entities do not carry out functions such as claims or data processing on their own; they rely on business associates to do so.)

The law regulates the use and dissemination of PHI in four general areas:

- Privacy, which covers patient confidentiality.
- Security, which deals with the protection of information, including physical, technological, and administrative safeguards.
- Identifiers, which are the types of information that cannot be released if collected for research purposes.
- Codes for electronic transmission of data in healthcare-related transactions, including eligibility and insurance claims and payments.

The scope of HIPAA was extended with the enactment of the Health Information Technology for Economic and Clinical Health (HITECH) Act. Together, HIPAA and HITECH Act rules include:

- The HIPAA Privacy Rule, which focuses on the right of individuals to control the use of their personal information, and covers the confidentiality of PHI, limiting its use and disclosure.
- The HIPAA Security Rule, which sets the standards for administrative, technical, and physical safeguards to protect electronic PHI from unauthorized access, use, and disclosure. It also includes such organizational requirements as Business Associate Agreements (BAAs).

The HITECH Breach Notification Final Rule, which requires giving notice to individuals and the government when a breach of unsecured PHI occurs.

## Microsoft and HIPAA and the HITECH Act

HIPAA regulations require that covered entities and their business associates — in this case, Microsoft when it provides services, including cloud services, to covered entities — enter into contracts to ensure that those business associates will adequately protect PHI. These contracts, or BAAs, clarify and limit how the business associate can handle PHI, and set forth each party's adherence to the security and privacy provisions set forth in HIPAA and the HITECH Act. Once a BAA is in place, Microsoft customers — covered entities — can use its services to process and store PHI.

Currently there is no official certification for HIPAA or HITECH Act compliance. However, those Microsoft services covered under the BAA have undergone audits conducted by accredited independent auditors for the Microsoft ISO/IEC 27001 certification.

Microsoft enterprise cloud services are also covered by FedRAMP assessments. Microsoft Azure and Microsoft Azure Government received a Provisional Authority to Operate from the FedRAMP Joint Authorization Board; Microsoft Dynamics 365 U.S. Government received an Agency Authority to Operate from the US Department of Housing and Urban Development, as did Microsoft Office 365 U.S. Government from the US Department of Health and Human Services.

To learn how the Microsoft Cloud helps customers support HIPAA and the HITECH requirements, visit [Microsoft Customer Stories](https://customers.microsoft.com).

## Microsoft in-scope cloud services

- [Azure and Azure Government](https://aka.ms/AzureCompliance)
- Microsoft Cloud App Security
- [Microsoft Cloud for Healthcare](https://aka.ms/MicrosoftCloudforHealthcareCompliance)
- Microsoft Microsoft Healthcare Bot Service
- Microsoft Stream
- Microsoft Professional Services: Premier and On Premises for Azure, Dynamics 365, Intune, and for medium business and enterprise customers of Microsoft 365 for business
- [Dynamics 365 and Dynamics 365 U.S. Government](https://aka.ms/d365-compliance-list)
- Power Automate (formerly Microsoft Flow) cloud service either as a standalone service or as included in an Office 365 or Dynamics 365 branded plan or suite
- Intune
- [Office 365, Office 365 U.S. Government, and Office 365 U.S. Government Defense](https://go.microsoft.com/fwlink/p/?LinkID=2077751)
- PowerApps cloud service either as a standalone service or as included in an Office 365 or Dynamics 365 branded plan or suite
- Power BI cloud service either as a standalone service or as included in an Office 365 or Dynamics 365 branded plan or suite
- Azure DevOps Services

## Accelerate your deployment of HIPAA/HITRUST solutions on Azure

Get a head start on taking advantage of the benefits of the cloud for health data solutions with the Azure Security and Compliance Blueprint — HIPAA/HITRUST Health Data and AI. This blueprint provides tools and guidance to get you started building HIPAA/HITRUST solutions today.

[Start using the Azure HIPAA/HITRUST Blueprint](https://docs.microsoft.com/azure/governance/blueprints/samples/hipaa-hitrust-9-2)

## Frequently asked questions

**Can my organization enter into a BAA with Microsoft?**

Microsoft offers qualified companies or their suppliers a BAA that covers in-scope Microsoft services.

For Microsoft cloud services: The [HIPAA Business Associate Agreement](https://aka.ms/BAA) is available via the Online Services Terms by default to all customers who are covered entities or business associates under HIPAA. See 'Microsoft in-scope cloud services' on this webpage for the list of cloud services covered by this BAA.

For Microsoft Professional Services services: The HIPAA Business Associate Amendment is available for in-scope Microsoft Professional Services upon request to your Microsoft services representative.

**Does having a BAA with Microsoft ensure my organization's compliance with HIPAA and the HITECH Act?**

No. By offering a BAA, Microsoft helps support your HIPAA compliance, but using Microsoft services does not on its own achieve it. Your organization is responsible for ensuring that you have an adequate compliance program and internal processes in place, and that your particular use of Microsoft services aligns with HIPAA and the HITECH Act.

**Can Microsoft modify my organization's BAA?**

Microsoft cannot modify the HIPAA BAA, because Microsoft services are consistent for all customers and so must follow the same procedures for everyone. However, to create the BAA for Microsoft's HIPAA-regulated customers and its services, Microsoft collaborated with some of the leading US medical schools and their HIPAA privacy counsel, as well as other public- and private-sector HIPAA-covered entities.

**How can I get copies of the auditor's reports?**

The [Service Trust Portal](https://www.microsoft.com/trustcenter/STP/default.aspx) provides independently audited compliance reports. You can use the portal to request audit reports so that your auditors can compare Microsoft's cloud services results with your own legal and regulatory requirements.

**How can I learn more about complying with HIPAA and the HITECH Act?**

To assist customers with this task, Microsoft has published these guides:

- *HIPAA/HITECH Act implementation guidance* for [Azure](https://docs.microsoft.com/azure/governance/blueprints/samples/hipaa-hitrust/) and for [Dynamics 365 and Office 365](https://go.microsoft.com/fwlink/?LinkID=257510). Written for privacy, security, and compliance officers and others responsible for HIPAA and HITECH Act implementation, they describe concrete steps your organization can take to maintain compliance.
- [Practical guide to designing secure health solutions using Microsoft Azure](https://aka.ms/azureindustrysecurity) helps you better understand what it takes to successfully adopt a cloud service in a secure manner.
- [Addressing HIPAA security and privacy requirements in the Microsoft Cloud](https://smb.blob.core.windows.net/smbproduction/Content/Microsoft_Cloud_Healthcare_HIPAA_Security_Privacy.pdf) offers a brief overview of regulation requirements. It also provides a detailed analysis of how Microsoft's cloud services were built with methodologies that map to those requirements, and guidance on how to build compliance-ready solutions.

## Use Microsoft Compliance Manager to assess your risk

[Microsoft Compliance Manager](compliance-manager.md) is a feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) to help you understand your organization's compliance posture and take actions to help reduce risks. Compliance Manager offers a premium template for building an assessment for this regulation. Find the template in the **assessment templates** page in Compliance Manager. Learn how to [build assessments in Compliance Manager](compliance-manager-assessments.md).

## Resources

- [HIPAA Omnibus Rule](https://aka.ms/HIPAA-omnibus) (The final regulations-modifying HIPAA rules)
- [Microsoft Common Controls Hub Compliance Framework](https://www.microsoft.com/trustcenter/common-controls-hub)
- [Microsoft Online Services Terms](https://aka.ms/Online-Services-Terms)
- [Microsoft Government Cloud](https://go.microsoft.com/fwlink/p/?linkid=2087246)
- [Understanding HIPAA Compliance with Azure](https://www.youtube.com/embed/6ptdye1LZ5k?autoplay=0)(May 19, 2016)
- [Azure HIPAA HITRUST blueprint sample](https://docs.microsoft.com/azure/governance/blueprints/samples/hipaa-hitrust/)
- [Compliance on the Microsoft Trust Center](https://www.microsoft.com/trust-center/compliance/compliance-overview)
