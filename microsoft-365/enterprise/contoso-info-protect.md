---
title: "Information protection for the Contoso Corporation"
author: kelleyvice-msft
f1.keywords:
- NOCSH
ms.author: kvice
manager: scotv
ms.date: 09/06/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- M365-security-compliance
- Strat_O365_Enterprise
- must-keep
ms.custom:

description: Understand how Contoso uses the information protection features in Microsoft 365 for enterprise to secure their digital assets in the cloud.
---

# Information protection for the Contoso Corporation

Contoso is serious about their information security. Leakage or destruction of intellectual property that describes their product designs and proprietary manufacturing techniques would place them at a competitive disadvantage.

Before moving their sensitive digital assets to the cloud, Contoso made sure that their on-premises information classification and protection requirements were supported by the cloud-based services of Microsoft 365 for enterprise.

## Contoso data security classification

Contoso performed an analysis of their data and determined the following classification levels.

| Level 1: Baseline | Level 2: Sensitive | Level 3: Highly regulated |
|:-------|:-----|:-----|
| Data is encrypted and available only to authenticated users.<BR> <BR> Provided for all data stored on-premises and in cloud-based storage and workloads. Data is encrypted while it resides in the service and in transit between the service and client devices. <BR><BR>Examples of Level 1 data are normal business communications (email) and files for administrative, sales, and support workers. | Level 1 plus strong authentication and data loss protection.<BR> <BR> Strong authentication includes Microsoft Entra multifactor authentication (MFA) with SMS validation. Microsoft Purview Data Loss Prevention ensures that sensitive or critical information doesn't travel outside the Microsoft cloud.<BR><BR>Examples of Level 2 data are financial and legal information and research and development data for new products. | Level 2 plus the highest levels of encryption, authentication, and auditing.<BR><BR>The highest levels of encryption for data at rest and in the cloud, compliant with regional regulations, combined with MFA with smart cards and granular auditing and alerting.<BR> <BR>Examples of Level 3 data are customer and partner personal information, product engineering specifications, and proprietary manufacturing techniques.  |
||||

## Contoso information policies
The following table lists the Contoso information policies.


| Value | Access | Data retention | Information protection |
|:-------|:-----|:-----|:-----|
| Low business value (Level 1: Baseline) | Allow access to all.  | 6 months | Use encryption. |
| Medium business value (Level 2: Sensitive) | Allow access to Contoso employees, subcontractors, and partners. <BR><BR> Use MFA, Transport Layer Security (TLS), and Mobile Application Management (MAM). | 2 years  | Use hash values for data integrity.  |
| High business value (Level 3: Highly regulated) | Allow access to executives and leads in engineering and manufacturing. <BR> <BR> Rights Management System (RMS) with managed network devices only.  | 7 years  | Use digital signatures for non-repudiation.  |
|||||

## The Contoso path to information protection with Microsoft 365 for enterprise

Contoso followed these steps to prepare Microsoft 365 for enterprise for their information-protection requirements:

1. Identify what information to protect

   Contoso did an extensive review of their existing digital assets located on on-premises SharePoint sites and file shares and classified each asset.

2. Determine access, retention, and information protection policies for data levels

   Based on the data levels, Contoso determined detailed policy requirements, which were used to protect existing digital assets as they were moved to the cloud.

3. Create sensitivity labels and their settings for the different levels of information

   Contoso created sensitivity labels for their data levels, with their highly regulated label that includes encryption, permissions, and watermarks.

4. Move data from on-premises SharePoint sites and file shares to their new SharePoint sites

    The files migrated to the new SharePoint sites inherited the default retention labels assigned to the site.

5. Train employees how to use sensitivity labels for new documents, how to interact with Contoso IT when creating new SharePoint sites, and to always store digital assets on SharePoint sites

    Changing bad worker information-storage habits is often considered the hardest part of the information protection transition for the cloud. Contoso IT and management needed to get employees to always label and store their digital assets in the cloud, refrain from using on-premises file shares, and not use third-party cloud storage services or USB drives.

## Conditional Access policies for information protection

As part of their rollout of Exchange Online and SharePoint, Contoso configured the following set of Conditional Access policies and applied them to the appropriate groups:

- [Managed and unmanaged application access on devices policies](../security/office-365-security/zero-trust-identity-device-access-policies-common.md)
- [Exchange Online access policies](../security/office-365-security/zero-trust-identity-device-access-policies-exchange.md)
- [SharePoint access policies](../security/office-365-security/zero-trust-identity-device-access-policies-sharepoint.md)

Here's resulting set of Contoso policies for information protection.

:::image type="content" alt-text="Device, Exchange Online, and SharePoint Conditional Access policies." source="../media/contoso-info-protect/contoso-info-protect-fig1.png" lightbox="../media/contoso-info-protect/contoso-info-protect-fig1.png":::

>[!Note]
>Contoso also configured additional Conditional Access policies for identity and sign-in. See [Identity for the Contoso Corporation](contoso-identity.md#conditional-access-policies-for-zero-trust-identity-and-device-access).
>

These policies ensure that:

- Apps that are allowed and the actions they can take with the organization's data are defined by app protection policies.
- PCs and mobile devices must be compliant.
- Exchange Online uses Office 365 message encryption (OME) for Exchange Online.
- SharePoint uses app-enforced restrictions.
- SharePoint uses access control policies for browser-only access and to block access for unmanaged devices.

## Mapping Microsoft 365 for enterprise features to Contoso data levels

The following table maps Contoso data levels to information protection features in Microsoft 365 for enterprise.

| Level | Microsoft 365 cloud services | Windows 11 and Microsoft 365 Apps for enterprise | Security and compliance |
|:-------|:-----|:-----|:-----|
| Level 1: Baseline  | SharePoint and Exchange Online Conditional Access policies <BR> Permissions on SharePoint sites | Sensitivity labels <BR> BitLocker <BR> Windows Information Protection | Device Conditional Access policies and Mobile Application Management policies |
| Level 2: Sensitive | Level 1 plus: <BR> <BR> Sensitivity labels <BR> Microsoft 365 retention labels on SharePoint sites <BR> Data Loss Prevention for SharePoint and Exchange Online <BR> Isolated SharePoint sites  | Level 1 plus: <BR> <BR> Sensitivity labels on digital assets  | Level 1 |
| Level 3: Highly regulated | Level 2 plus: <BR><BR> Bring your own key (BYOK) encryption and protection for trade secret information <BR> Azure Key Vault for line-of-business applications that interact with Microsoft 365 services | Level 2 | Level 1 |
|||||

Here's the resulting Contoso information-protection configuration.

:::image type="content" alt-text="Contoso's resulting information protection configuration." source="../media/contoso-info-protect/contoso-info-protect-fig2.png":::

## Next step

Learn how Contoso uses the [security features across Microsoft 365 for enterprise](contoso-security-summary.md) for identity and access management, threat protection, information protection, and security management.

## See also

[Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)
