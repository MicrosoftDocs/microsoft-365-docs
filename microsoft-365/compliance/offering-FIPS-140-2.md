---
title: Federal Information Processing Standard (FIPS) Publication 140-2
description: Microsoft certifies that its cryptographic modules comply with the US Federal Information Processing Standard.
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

# Federal Information Processing Standard (FIPS) Publication 140-2

## FIPS 140-2 standard overview

The Federal Information Processing Standard (FIPS) Publication 140-2 is a U.S. government standard that defines minimum security requirements for cryptographic modules in information technology products, as defined in Section 5131 of the Information Technology Management Reform Act of 1996.

The [Cryptographic Module Validation Program](https://csrc.nist.gov/Projects/cryptographic-module-validation-program) (CMVP), a joint effort of the U.S. National Institute of Standards and Technology (NIST) and the Canadian Centre for Cyber Security (CCCS), validates cryptographic modules to the *Security Requirements for Cryptographic Modules* standard (i.e., FIPS 140-2) and related FIPS cryptography standards. The FIPS 140-2 security requirements cover 11 areas related to the design and implementation of a cryptographic module. The NIST Information Technology Laboratory operates a related program that validates the FIPS approved cryptographic algorithms in the module.

## Microsoft’s approach to FIPS 140-2 validation

Microsoft maintains an active commitment to meeting the 140-2 requirements, having validated cryptographic modules since the standard’s inception in 2001. Microsoft validates its cryptographic modules under the National Institute of Standards and Technology (NIST) [Cryptographic Module Validation Program](https://csrc.nist.gov/Projects/cryptographic-module-validation-program) (CMVP). Multiple Microsoft products, including many cloud services, use these cryptographic modules.

For technical information on Microsoft Windows cryptographic modules, the security policy for each module, and the catalog of CMVP certificate details, see the [Windows and Windows Server FIPS 140-2 content](https://aka.ms/AA6ehud).

## Microsoft in-scope cloud services

While the current CMVP FIPS 140-2 implementation guidance precludes a FIPS 140-2 validation for a cloud service itself; cloud service providers can choose to obtain and operate FIPS 140 validated cryptographic modules for the computing elements that comprise their cloud service. Microsoft online services that include components, which have been FIPS 140-2 validated include, among others:

- [Azure and Azure Government](https://docs.microsoft.com/azure/azure-government/documentation-government-plan-security)
- [Dynamics 365 and Dynamics 365 Government](https://docs.microsoft.com/microsoft-365/compliance/office-365-encryption-in-microsoft-dynamics-365)
- [Office 365, Office 365 U.S. Government, and Office 365 U.S. Government Defense](https://docs.microsoft.com/microsoft-365/compliance/office-365-encryption-risks-and-protections)

## Frequently asked questions

**What is the difference between “FIPS 140 Validated” and “FIPS 140 compliant”?**

“FIPS 140 Validated” means that the cryptographic module, or a product that embeds the module has been validated (“certified”) by the CMVP as meeting the FIPS 140-2 requirements. “FIPS 140 compliant” is an industry term for IT products that rely on FIPS 140 Validated products for cryptographic functionality.

**When does Microsoft undertake a FIPS 140 validation?**

The cadence for starting a module validation aligns with the feature updates of Windows 10 and Windows Server. As the software industry evolved, operating systems are released more frequently, with monthly software updates. Microsoft undertakes validation for feature releases, but in between releases, seeks to minimize the changes to the cryptographic modules.

**Which computers are included in a FIPS 140 validation?**

Microsoft validates cryptographic modules on a representative sample of hardware configurations running Windows 10 and Windows Server. It is common industry practice to accept this FIPS 140-2 validation when an environment uses hardware, which is similar to the samples used for the validation process.

**There are many modules listed on the NIST website. How do I know which one applies to my agency?**

If you are required to use cryptographic modules validated through FIPS 140-2, you need to verify that the version you use appears on the validation list. The CMVP and Microsoft maintain a list of validated cryptographic modules, organized by product release, along with instructions for identifying which modules are installed on a Windows system. For more information on configuring systems to be compliant, see the [Windows and Windows Server FIPS 140-2 content](https://aka.ms/AA6ehud).

**What does 'When operated in FIPS mode' mean on a certificate?**

This caveat informs the reader that required configuration and security rules must be followed to use the cryptographic module in a way that is consistent with its FIPS 140-2 security policy. Each module has its own security policy — a precise specification of the security rules under which it will operate — and employs approved cryptographic algorithms, cryptographic key management, and authentication techniques. The security rules are defined in the security policy for each module. For more information, including links to the security policy for each module validated through the CMVP, see the [Windows and Windows Server FIPS 140-2 content](https://aka.ms/AA6ehud).

**Does FedRAMP require FIPS 140-2 validation?**

Yes, the Federal Risk and Authorization Management Program (FedRAMP) relies on control baselines defined by the [NIST SP 800-53 Revision 4](https://nvd.nist.gov/800-53/Rev4/), including [SC-13 Cryptographic Protection](https://nvd.nist.gov/800-53/Rev4/control/SC-13) mandating the use of FIPS-validated cryptography or NSA-approved cryptography.

**How does Microsoft Azure support FIPS 140-2?**

Azure is built with a combination of hardware, commercially available operating systems (Linux and Windows), and Azure-specific version of Windows. Through the Microsoft [Security Development Lifecycle](https://www.microsoft.com/securityengineering/sdl/) (SDL), all Azure services use FIPS 140-2 approved algorithms for data security because the operating system uses FIPS 140-2 approved algorithms while operating at a hyper scale cloud.

**Can I use Microsoft’s adherence to FIPS 140-2 in my agency’s certification process?**

To comply with FIPS 140-2, your system must be configured to run in a FIPS approved mode of operation, which includes ensuring that a cryptographic module uses only FIPS-approved algorithms. For more information on configuring systems to be compliant, see the [Windows and Windows Server FIPS 140-2 content](https://aka.ms/AA6ehud).

**What is the relationship between FIPS 140-2 and Common Criteria?**

These are two separate security standards with different, but complementary, purposes. FIPS 140-2 is designed specifically for validating software and hardware cryptographic modules, while the Common Criteria is designed to evaluate security functions in IT software and hardware products. Common Criteria evaluations often rely on FIPS 140-2 validations to provide assurance that basic cryptographic functionality is implemented properly.

## Resources

- [FIPS Pub 140-2 Security Requirements for Cryptographic Modules](https://csrc.nist.gov/publications/fips/fips140-2/fips1402.pdf)
- [NIST Cryptographic Module Validation Program](https://csrc.nist.gov/groups/STM/cmvp/index.html)
- [Windows, Windows Server, and FIPS 140-2](https://docs.microsoft.com/windows/security/threat-protection/fips-140-validation)
- [Compliance on the Microsoft Trust Center](https://www.microsoft.com/trust-center/compliance/compliance-overview)
