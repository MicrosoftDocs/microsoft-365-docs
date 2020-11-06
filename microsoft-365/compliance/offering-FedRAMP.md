---
title: Federal Risk and Authorization Management Program (FedRAMP)
description: Microsoft was granted US Federal Risk and Authorization Management Program P-ATOs and ATOs.
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

# Federal Risk and Authorization Management Program (FedRAMP)

## FedRAMP overview

The US Federal Risk and Authorization Management Program (FedRAMP) was established to provide a standardized approach for assessing, monitoring, and authorizing cloud computing products and services under the Federal Information Security Management Act (FISMA), and to accelerate the adoption of secure cloud solutions by federal agencies.

The Office of Management and Budget now requires all executive federal agencies to use FedRAMP to validate the security of cloud services. (Other agencies have also adopted it, so it is useful in other areas of the public sector as well.) The National Institute of Standards and Technology (NIST) SP 800-53 sets the mandatory standards, establish security categories of information systems—confidentiality, integrity, and availability—to assess the potential impact on an organization should its information and information systems be compromised. FedRAMP is the program that certifies that a cloud service provider (CSP) meets those standards.

CSPs desiring to sell services to a federal agency can take three paths to demonstrate FedRAMP compliance:

- Earn a Provisional Authority to Operate (P-ATO) from the Joint Authorization Board (JAB). The JAB is the primary governance and decision-making body for FedRAMP. Representatives from the Department of Defense, the Department of Homeland Security, and the General Services Administration serve on the board. The board grants a P-ATO to CSPs that have demonstrated FedRAMP compliance.
- Receive an Authority to Operate (ATO) from a federal agency.
- Or, work independently to develop a CSP Supplied Package that meets program requirements.

Each of these paths requires a stringent technical review by the FedRAMP Program Management Office (PMO) and an assessment by an independent third-party organization that is accredited by the program.

FedRAMP authorizations are granted at three impact levels based on NIST guidelines—low, medium, and high. These levels rank the impact that the loss of confidentiality, integrity, or availability could have on an organization—low (limited effect), medium (serious adverse effect), and high (severe or catastrophic effect).

## Microsoft and FedRAMP

Microsoft’s government cloud services, including Azure Government, Dynamics 365 Government, and Office 365 U.S. Government meet the demanding requirements of the US Federal Risk and Authorization Management Program (FedRAMP), enabling U.S. federal agencies to benefit from the cost savings and rigorous security of the Microsoft Cloud.

Microsoft government cloud services offer public sector customers a rich array of services compliant with FedRAMP, and robust guidance and implementation tools, including the [FedRAMP High blueprint](https://aka.ms/fedrampblueprint), which helps customers deploy a core set of policies for any Azure-deployed architecture that must implement FedRAMP High controls.

## Microsoft Azure P-ATOs

Azure and Azure Government have earned a P-ATO at the High Impact Level from the Joint Authorization Board, the highest bar for FedRAMP accreditation, which authorizes the use of Azure and Azure Government to process highly sensitive data.

The FedRAMP audit of Azure and Azure Government included the information security management system that encompasses infrastructure, development, operations, management, and support of in-scope services. Once a P-ATO is granted, a CSP still requires an authorization (an ATO) from any government agency it works with. For Azure, a government agency can use the Azure P-ATO in its own security authorization process and rely on it as the basis for issuing an agency ATO that also meets FedRAMP requirements.

Azure continues to support more services at FedRAMP High Impact levels than any other cloud provider. And while FedRAMP High in the Azure public cloud will meet the needs of many US government customers, agencies with more stringent requirements will continue to rely on Azure Government, which provides additional safeguards such as the heightened screening of personnel. Microsoft lists all [Azure public services currently available](https://docs.microsoft.com/azure/azure-government/compliance/azure-services-in-fedramp-auditscope#azure-public-services-by-audit-scope) in Azure Government to the FedRAMP High boundary, as well as services planned for the current year.

## Microsoft Dynamics 365 U.S. Government ATO

Dynamics 365 U.S. Government was granted a FedRAMP Agency ATO at the High Impact Level by the US Department of Housing and Urban Development (HUD). Although the scope of the certification is limited to the Government Community Cloud, Dynamics 365 U.S. Government business and enterprise plans operate following the same set of stringent FedRAMP controls.

## Microsoft Office 365 and Office 365 U.S. Government ATOs

- Office 365 and Office 365 U.S. Government have an ATO from the US Department of Health and Human Services (DHHS).
- Office 365 U.S. Government Defense has a P-ATO from the US Defense Information Systems Agency (DISA). Any customer wishing to deploy Office 365 U.S. Government Defense may use the DISA P‑ATO to generate an agency ATO to document their acceptance of it.
- Office 365 (enterprise and business plans) and Office 365 U.S. Government have a FedRAMP Agency ATO at the Moderate Impact Level from the DHHS Office of the Inspector General. Office 365 U.S. Government was the first cloud-based email and collaboration service to obtain this authorization.

## Microsoft in-scope cloud services

- [Azure and Azure Government](https://go.microsoft.com/fwlink/p/?linkid=2095323)
- [Dynamics 365 U.S. Government](https://aka.ms/d365-compliance-list)
- Intune
- [Office 365 and Office 365 U.S. Governmen](https://go.microsoft.com/fwlink/p/?linkid=2077751)
- Office 365 U.S. Government Defense
- Power BI cloud service either as a standalone service or as included in an Office 365 branded plan or suite
- Microsoft Defender for Endpoint

> [!NOTE]
> The use of Azure Active Directory within Azure Government requires the use of components that are deployed outside of Azure Government on the Azure public cloud.

## Audits, reports, and certificates

Microsoft is required to recertify its cloud services each year to maintain its P-ATOs and ATOs. To do so, Microsoft must monitor and assess its security controls continuously, and demonstrate that the security of its services remains in compliance.

- [Microsoft cloud services FedRAMP authorizations</span>](https://marketplace.fedramp.gov/#/product/azure-government?sort=productName&productNameSearch=azure)
- [Microsoft FedRAMP Audit Reports</span>](https://aka.ms/MicrosoftFedRAMPAuditDocuments)  

To receive other FedRAMP reports, send email to [Azure Federal Documentation](mailto:AzFedDoc@microsoft.com).

## Quickly deploy your FedRAMP solutions on Azure Government

Let Microsoft guide you through the ATO process and quickly deploy your FedRAMP solutions using the FedRAMP High blueprint, which helps customers implement a core set of policies for any Azure-deployed architecture that must implement FedRAMP High controls.

[Start using the Azure FedRAMP High Blueprint](https://aka.ms/fedrampblueprint)

## Frequently asked questions

**Do Microsoft cloud services comply with the Federal Information Security Management Act (FISMA)?**

FISMA is the federal law that requires US federal agencies and their partners to procure information systems and services only from organizations that adhere to FISMA requirements. Most agencies and their vendors that indicate that they are FISMA-compliant are referring to how they meet the controls identified by the NIST in Special Publication 800-53 rev 4. The FISMA process (but not the underlying standards themselves) was replaced by FedRAMP in 2011.

**To whom does FedRAMP apply?**

'FedRAMP is mandatory for federal agency cloud deployments and service models at the low and moderate risk impact levels.' Any federal agency that wants to engage a CSP may be required to meet FedRAMP specifications. In addition, companies that employ cloud technologies in products or services used by the federal government may be required to obtain an ATO.

**Where does my agency start its own compliance effort?**

For an overview of the steps federal agencies must take to successfully navigate FedRAMP and meet its requirements, go to [Get Authorized: Agency Authorization](https://www.fedramp.gov/agency-authorization/).

**Can I use Microsoft compliance in my agency’s authorization process?**

Yes. You may use the certifications of Microsoft cloud services as the foundation for any program or initiative that requires an ATO from a federal government agency. However, you need to achieve your own authorizations for components outside these services.

## Use Microsoft Compliance Manager to assess your risk

[Microsoft Compliance Manager](compliance-manager.md) is a feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) to help you understand your organization's compliance posture and take actions to help reduce risks. Compliance Manager offers a premium template for building an assessment for this regulation. Find the template in the **assessment templates** page in Compliance Manager. Learn how to [build assessments in Compliance Manager](compliance-manager-assessments.md).

## Resources

- [Federal Risk and Authorization Management Program](https://www.fedramp.gov/)
- [FedRAMP Security Assessment Framework](https://www.fedramp.gov/assets/resources/documents/FedRAMP_Security_Assessment_Framework.pdf)
- [Managing compliance in the cloud at Microsoft](https://www.microsoft.com/trustcenter/common-controls-hub)
- [Microsoft Government Cloud](https://go.microsoft.com/fwlink/p/?linkid=2087246)
- [Azure Compliance Offerings](https://aka.ms/azurecompliance)
