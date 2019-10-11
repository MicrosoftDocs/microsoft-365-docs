---
title: Compliance offering — Payment Card Industry (PCI) Data Security Standard (DSS)
description: Azure complies with Payment Card Industry Data Security Standards Level 1 version 3.2.
keywords: Microsoft 365, compliance, offerings
localization_priority: Priority
ms.prod: Microsoft-365-enterprise
ms.topic: article
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: M365-security-compliance
hideEdit: true
---

# Compliance offering: Payment Card Industry (PCI) Data Security Standard (DSS)

## PCI DSS overview

The Payment Card Industry (PCI) Data Security Standards (DSS) is a global information security standard designed to prevent fraud through increased control of credit card data. Organizations of all sizes must follow PCI DSS standards if they accept payment cards from the five major credit card brands—Visa, MasterCard, American Express, Discover, and the Japan Credit Bureau (JCB). Compliance with PCI DSS is required for any organization that stores, processes, or transmits payment and cardholder data.

## Microsoft and PCI DSS

Microsoft Azure completes an annual PCI DSS assessment using an approved Qualified Security Assessor (QSA). The auditor reviews the Azure environment, which includes validating the infrastructure, development, operations, management, support, and in-scope services. The PCI DSS designates four levels of compliance based on transaction volume. Azure is certified as compliant under PCI DSS version 3.2 at Service Provider Level 1 (the highest volume of transactions—more than 6 million a year).

The assessment results in an Attestation of Compliance (AoC) and Report on Compliance (RoC) issued by the QSA. The effective period for compliance begins upon passing the audit and receiving the AoC from the assessor, and ends one year from the date the AoC is signed. The AoC is available to customers to show the QSA has determined that Azure is in compliance with PCI DSS v3.2.

Customers who want to develop a cardholder environment or card processing service can leverage the Azure validation in many of the underlying portions, thereby reducing the associated effort and costs of getting their own PCI DSS certification.

It is, however, important to understand that Azure PCI DSS compliance status does not automatically translate to PCI DSS certification for the services that customers build or host on the Azure platform. Customers are responsible for ensuring that they achieve compliance with PCI DSS requirements. The Azure Customer PCI Guide specifies areas of responsibility for each PCI DSS requirement, and whether it is assigned to Azure or the customer, or if the responsibility is shared.

Learn about the benefits of PCI DSS on the Microsoft Cloud: [Download the Payment Card Industry (PCI) Data Security Standards (DSS) backgrounder](https://aka.ms/pcidss-backgrounder)

## Microsoft in-scope cloud services

- [Azure and Azure Government](https://aka.ms/AzureCompliance)
- Cloud App Security
- Graph
- Intune
- Microsoft Flow cloud service either as a standalone service or as included in an Office 365 or Dynamics 365 branded plan or suite
- PowerApps cloud service either as a standalone service or as included in an Office 365 or Dynamics 365 branded plan or suite
- Power BI cloud service either as a standalone service or as included in an Office 365 branded plan or suite

## Get your PCI DSS solution running on Azure

Build and deploy your PCI DSS solution in the cloud even faster with the Azure Security and Compliance PCI DSS Blueprint. Get reference architectures, deployment guidance, control implementation mappings, automated scripts and more. [Start using the Azure PCI DSS Blueprint](https://aka.ms/pciblueprint)

## Frequently asked questions

**Why does the Attestation of Compliance (AoC) cover page say “June 2018”?**

The June 2018 date on the cover page is when the AoC template was published. Refer to Section 2 for the date of the assessment.

**Why are there two Azure Attestations of Compliance (AoCs)?**

Azure is continuously releasing new services that PCI customers want to leverage. To keep up with customer demand, Azure undergoes two PCI assessments annually. The "Core" AoC covers the Azure platform, infrastructure, and the bulk of Azure services. The "Add-on" AoC covers new Azure services that were not included in the Core assessment. Both AoCs should be used together, as the Add-on AoC relies on the Core AoC. The Core AoC is issued in March, and the Add-on AoC follows each year in June.

**What is the relationship between the PA DSS and PCI DSS?**

The Payment Application Data Security Standard (PA DSS) is a set of requirements that comply with the PCI DSS, and replaces Visa’s Payment Application Best Practices, as well as consolidates the compliance requirements of the other primary card issuers. The PA DSS helps software vendors develop third-party applications that store, process, or transmit cardholder payment data as part of a card authorization or settlement process. Retailers must use PA DSS certified applications to efficiently achieve their PCI DSS compliance. Note that the PA DSS does not apply to Azure.

**What is an acquirer and does Azure use one?**

An "acquirer" is a bank or other entity that processes payment card transactions. Azure does not offer payment card processing as a service and thus does not use an acquirer.

**To what organizations and merchants does the PCI DSS apply?**

It applies to any company, no matter the size or number of transactions, that accepts, transmits, or stores cardholder data. That is, if any customer ever pays a company using a credit or debit card, then the PCI DSS requirements apply. Companies are validated at one of four levels based on the total transaction volume over a 12-month period. Level 1 is for companies that process over 6 million transactions a year; Level 2 for 1 million to 6 million transactions; Level 3 is for 20,000 to 1 million transactions; and Level 4 is for fewer than 20,000 transactions.

**How can I get copies of the Azure Attestations of Compliance (AoCs)?**

The latest Azure AoC is available at [http://aka.ms/azure-pci](http://aka.ms/azure-pci).

**Where do I begin my organization’s PCI DSS compliance efforts for a solution deployed on Azure?**

The information that the PCI Security Standards Council makes available is a good place to learn about specific compliance requirements. The council publishes the [PCI DSS Quick Reference Guide](https://www.pcisecuritystandards.org/documents/PCISSC%20QRG%20August%202014%20-print.pdf) that explains how the PCI DSS can help protect a payment card transaction environment and how to apply it. The council also offers [resources for assessing PCI DSS compliance](https://www.pcisecuritystandards.org/pci_security/why_security_matters).

Compliance involves several factors, including assessing the systems and processes not hosted on Azure. Individual requirements will vary based on which Azure services are used and how they are employed within the solution.

## Resources

- [PCI Security Standards Council](http://www.pcisecuritystandards.org/)
- [PCI Data Security Standard](https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf)
- [Azure PCI DSS Attestation of Compliance Package](https://go.microsoft.com/fwlink/p/?linkid=2099705)
- [Azure PCI DSS 3.2 Responsibility Matrix](https://aka.ms/pciresponsibilitymatrix)
- [PCI DSS Quick Reference Guide](https://www.pcisecuritystandards.org/documents/PCISSC%20QRG%20August%202014%20-print.pdf) for merchants and others involved in payment card processing
- [Microsoft Common Controls Hub Compliance Framework](https://www.microsoft.com/trustcenter/common-controls-hub)
- [Compliance on the Microsoft Trust Center](https://www.microsoft.com/trust-center/compliance/compliance-overview)

## Download the offering backgrounder

Do you need the backgrounder document for this offering? Download the [PDF](http://download.microsoft.com/download/3/7/7/377F1BBC-37D5-4677-AB4A-7C01D089CA67/PCI_DSS_Compliance_Backgrounder.pdf).
