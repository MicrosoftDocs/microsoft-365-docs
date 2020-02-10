---
title: Federal Risk and Authorization Management Program (FedRAMP)
description: Microsoft was granted US Federal Risk and Authorization Management Program P-ATOs and ATOs.
keywords: Microsoft 365, compliance, offerings
localization_priority: None
ms.prod: Microsoft-365-enterprise
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

The Office of Management and Budget now requires all executive federal agencies to use FedRAMP to validate the security of cloud services. (Other agencies have also adopted it, so it is useful in other areas of the public sector as well.) The National Institute of Standards and Technology (NIST) 800-53 sets the standard, and FedRAMP is the program that certifies that a cloud service provider (CSP) meets that standard.

CSPs desiring to sell services to a federal agency can take three paths to demonstrate FedRAMP compliance: earn a Provisional Authority to Operate (P-ATO) from the Joint Authorization Board (JAB); receive an Authority to Operate (ATO) from a federal agency; or work independently to develop a CSP Supplied Package that meets program requirements. Each of these paths requires a stringent technical review by the FedRAMP Program Management Office (PMO) and an assessment by an independent third-party organization that is accredited by the program.

FedRAMP authorizations are granted at three impact levels based on NIST guidelines — low, medium, and high. These rank the impact that the loss of confidentiality, integrity, or availability could have on an organization — low (limited effect), medium (serious adverse effect), and high (severe or catastrophic effect).

## Microsoft and FedRAMP

Microsoft’s government cloud services, including Azure Government, Office 365 U.S. Government, and Dynamics 365 Government meet the demanding requirements of the US Federal Risk and Authorization Management Program (FedRAMP), enabling U.S. federal agencies to benefit from the cost savings and rigorous security of the Microsoft Cloud.

Microsoft government cloud services offer public sector customers a rich array of services compliant with FedRAMP, and robust guidance and implementation tools, including the Azure Security and Compliance Blueprint for FedRAMP, which helps automate deployment and configuration of Azure resources in a FedRAMP environment.

Learn about the benefits of FEDRAMP on the Microsoft Cloud: [Download the FedRAMP compliance backgrounder](https://aka.ms/fedramp-backgrounder)

Learn how to accelerate your FEDRAMP deployment with our Azure Security and Compliance Blueprint: [Download the Azure — Blueprint FedRAMP High SSP](https://servicetrust.microsoft.com/ViewPage/Blueprint?command=Download&downloadType=Document&downloadId=64de30d4-42c6-47e7-bd52-0be935710df9&docTab=fc060920-cdb8-11e7-bacf-0bf52b09d912_FedRAMP%20Blueprint)

## Microsoft Azure P-ATOs

Azure and Azure Government have earned a P-ATO from the Joint Authorization Board

The JAB is the primary governance and decision-making body for FedRAMP. Representatives from the Department of Defense, the Department of Homeland Security, and the General Services Administration serve on the board. The board grants a P-ATO to CSPs that have demonstrated FedRAMP compliance.

Azure maintains a P-ATO at the Moderate Impact Level. (Azure was the first public cloud with infrastructure and platform services to receive a P-ATO.) The JAB has also granted Azure Government a P-ATO at the High Impact Level, the highest bar for FedRAMP accreditation, which authorizes the use of Azure Government to process highly sensitive data. The mandatory NIST 800-53 standards establish security categories of information systems — confidentiality, integrity, and availability — to assess the potential impact on an organization should its information and information systems be compromised. The FedRAMP audit of Azure and Azure Government included the Information Security Management System that encompasses infrastructure, development, operations, management, and support of in-scope services.

Once a P-ATO is granted, a CSP still requires an authorization — an ATO — from any government agency it works with. In the case of Azure, a government agency can use the Azure P-ATO in its own security authorization process and rely on it as the basis for issuing an agency ATO that also meets FedRAMP requirements.

## Dynamics 365 U.S. Government ATO

- Dynamics 365 U.S. Government has received an ATO from HUD
- Dynamics 365 U.S. Government was granted a FedRAMP Agency ATO at the High Impact Level by the Department of Housing and Urban Development (HUD). (Note that although the scope of the certification is limited to the Government Community Cloud, Dynamics 365 U.S. Government business and enterprise plans operate following the same set of stringent FedRAMP controls.)

## Office 365 ATOs

- Office 365, Office 365 U.S. Government have an ATO from DHHS.
- Office 365 U.S. Government Defense has a P-ATO from Defense Information Systems Agency (DISA).
- Office 365 (Enterprise and Business plans) and Office 365 U.S. Government have a FedRAMP Agency ATO at the Moderate Impact Level from the Department of Health and Human Services (DHHS) Office of the Inspector General. Office 365 U.S. Government was the first cloud-based email and collaboration service to obtain this authorization.
- Any customer wishing to consume O365 U.S. Government Defense may utilize the DISA P-ATO to generate an Agency ATO to document their acceptance of O365.

## Microsoft in-scope cloud services

- [Azure and Azure Government](https://go.microsoft.com/fwlink/p/?linkid=2095323)
- [Dynamics 365 U.S. Government](https://aka.ms/d365-compliance-list)
- Intune
- [Office 365 and Office 365 U.S. Government](https://aka.ms/o365-compliance-framework)
- Office 365 U.S. Government Defense
- Power BI cloud service either as a standalone service or as included in an Office 365 branded plan or suite
- Microsoft Defender ATP

> [!NOTE]
> The use of Azure Active Directory within Azure Government requires the use of components that are deployed outside of Azure Government on the Azure public cloud.

## Audits, reports, and certificates

Microsoft is required to recertify its cloud services each year to maintain its P-ATO and ATOs. To do so, Microsoft must monitor and assess its security controls continuously, and demonstrate that the security of its services remains in compliance.

- [Microsoft cloud services authorizations](https://marketplace.fedramp.gov/#/product/azure-government?sort=productName&productNameSearch=azure)
- [Microsoft FedRAMP Audit Reports](https://aka.ms/MicrosoftFedRAMPAuditDocuments)

## Ramp up your FedRAMP solutions on Azure Government

Let Microsoft guide you through the ATO process and quickly deploy your FedRAMP solutions with the Azure Security and Compliance FedRAMP blueprint. Our blueprint gets you started with reference architectures, deployment guidance, control implementation mappings, ATO Factory support, and more.

[Start using the Azure FedRAMP Blueprint](https://aka.ms/fedrampblueprint)

## Frequently asked questions

**Do Microsoft cloud services comply with the Federal Information Security Management Act (FISMA)?**

FISMA is a federal law that requires US federal agencies and their partners to procure information systems and services only from organizations that adhere to FISMA requirements. Most agencies and their vendors that indicate that they are FISMA-compliant are referring to how they meet the controls identified by the NIST in Special Publication 800-53 rev 4. The FISMA process (but not the underlying standards themselves) was replaced by FedRAMP in 2011.

**To whom does FedRAMP apply?**

'FedRAMP is mandatory for federal agency cloud deployments and service models at the low and moderate risk impact levels.' Any federal agency that wants to engage a CSP may be required to meet FedRAMP specifications. In addition, companies that employ cloud technologies in products or services used by the federal government may be required to obtain an ATO.

**Where does my agency start its own compliance effort?**

For an overview of the steps federal agencies must take to successfully navigate FedRAMP and meet its requirements, go to [www.fedramp.gov/participate/agencies](https://www.fedramp.gov/agency-authorization/).

**Can I use Microsoft compliance in my agency’s authorization process?**

Yes. You may use the certifications of Microsoft cloud services as the foundation for any program or initiative that requires an ATO from a federal government agency. However, you need to achieve your own authorizations for components outside these services.

## Use Microsoft Compliance Score to assess your risk

[Microsoft Compliance Score](compliance-score.md) is a preview feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) to help you understand your organization’s compliance posture and take actions to help reduce risks. After [setting up Compliance Score](compliance-score-setup.md), use the pre-configured [FedRAMP template](https://go.microsoft.com/fwlink/?linkid=2118102) to help your organization meet the requirements for this regulation.

## Resources

- [Federal Risk and Authorization Management Program](https://www.fedramp.gov/)
- [Microsoft Common Controls Hub Compliance Framework](https://www.microsoft.com/trustcenter/common-controls-hub)
- [Microsoft Government Cloud](https://go.microsoft.com/fwlink/p/?linkid=2087246)
- [FedRAMP Security Assessment Framework](https://go.microsoft.com/fwlink/p/?linkid=2099507)
- [Compliance on the Microsoft Trust Center](https://www.microsoft.com/trust-center/compliance/compliance-overview)

## Download the offering backgrounder

Do you need the backgrounder document for this offering? Download the [PDF](https://download.microsoft.com/download/6/B/7/6B7B25B8-D44F-439A-80A9-1ED04C88B922/FedRAMP_backgrounder-2018.pdf).
