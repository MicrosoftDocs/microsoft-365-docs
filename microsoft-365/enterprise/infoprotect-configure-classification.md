---
title: "Step 2: Configure classification for your environment"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/19/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
ms.custom:
description: Understand and configure various ways to classify data in your organization.
---

# Step 2: Configure classification for your environment

*This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![Phase 6: Information Protection](./media/deploy-foundation-infrastructure/infoprotection_icon-small.png)

In this step, you work with your legal and compliance teams to define a classification scheme for your organization’s data.

## Microsoft 365 classification types

Microsoft 365 includes four types of classification:

- Sensitive information types
- Retention labels
- Sensitivity labels
- Azure Information Protection labels and protection

### Sensitive information types

Sensitive information types for Microsoft 365 define how automated processes such as search recognize specific information types. These include sensitive employee or customer data such as health service numbers and credit card numbers. You use sensitive information types to find sensitive data and apply data loss prevention (DLP) rules and policies to protect this data. For more information, see [what a DLP policy contains](https://docs.microsoft.com/office365/securitycompliance/data-loss-prevention-policies#what-a-dlp-policy-contains). 

Sensitive information types are especially helpful for meeting compliance and regulation requirements, such as for the General Data Protection Regulation (GDPR).

### Retention labels

Part of defining a data governance strategy is deciding how long specific types of documents or documents with specific contents should be retained in compliance with organization policies and regional regulations. For example, some types of documents should be retained for a set amount of time and then deleted and others must be retained indefinitely.

For documents stored in Microsoft 365, you define and apply retention labels to documents and data stored in Exchange email, SharePoint Online, OneDrive for Business, and Teams chat and channel messages. 

If you use retention labels, you should configure a label for each category of file that needs to have a retention policy applied. Within the retention label, you can specify:

- A set of descriptors for the files (for example, by business department, file category, or regulation).
- The retention settings for the files that have the retention label attached, such as retain times and behaviors after the retain time has been reached.

You can also apply a retention label to files automatically by configuring a SharePoint Online site to apply a default retention label to all new documents in the site. 

For more information, see the [overview of retention labels](https://docs.microsoft.com/office365/securitycompliance/labels).

### Sensitivity labels

Part of protecting and implementing security for specific types of documents or documents with specific contents is marking them with a label so that the additional security can be applied. With sensitivity labels in Microsoft 365, you can:

- Enforce protection settings such as encryption, permissions, or adding a watermark.
- Use Windows Information Protection (WIP) endpoint protection to prevent that content from being copied to a third-party app, such as Twitter or Gmail, or being copied to removable storage, such as a USB drive.
- Use Microsoft Cloud App Security (CAS) to protect content in third-party apps and services. 
- Classify content without using any protection settings.

If you use sensitivity labels, you should configure a label for each security and information protection level. For example, create three sensitivity labels for:

- Baseline
- Sensitive
- Highly regulated

If you store files with highly regulated data in a SharePoint Online site and want those files to have the same permissions as the site if the files leave the site, you need to create an additional sensitivity label whose permissions are the same as the site.

For more information, see this [overview of sensitivity labels](https://docs.microsoft.com/office365/securitycompliance/sensitivity-labels).

### Azure Information Protection labels and protection

You can use Azure Information Protection labels to classify, and optionally protect, your organization’s documents and emails. These labels can apply to documents that are stored outside of Microsoft 365. These labels can be applied automatically by administrators who define rules and conditions, manually by users, or a combination where users are given recommendations.

To plan and deploy Azure Information Protection labels and protection, do the following:

1. Review the [requirements for Azure Information Protection](https://docs.microsoft.com/information-protection/get-started/requirements).
2. Follow the [deployment roadmap for classification, labeling, and protection](https://docs.microsoft.com/information-protection/plan-design/deployment-roadmap#deployment-roadmap-for-classification-labeling-and-protection).

For more information, see the [library of Azure Information Protection documentation](https://docs.microsoft.com/information-protection/).

Existing Azure Information Protection labels work seamlessly with sensitivity labels. For example, you can keep your existing Azure Information Protection labels and the labels that are applied to documents and email.

If you have both sensitivity and Azure Information Protection labels, you should [migrate your Azure Information Protection labels to sensitivity labels](https://docs.microsoft.com/office365/securitycompliance/sensitivity-labels#how-sensitivity-labels-work-with-existing-azure-information-protection-labels).

## Example: Classification for GDPR

For an example classification scheme that includes personal data for GDPR, see [Architect a classification schema for personal data](https://docs.microsoft.com/office365/enterprise/architect-a-classification-schema-for-personal-data).

## Take it for a test drive

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Data classification](data-classification-microsoft-365-enterprise-dev-test-environment.md) |
|||

As an interim checkpoint, see the [exit criteria](infoprotect-exit-criteria.md#crit-infoprotect-step2) corresponding to this step.

## Next step

|||
|:-------|:-----|
|![Step 3](./media/stepnumbers/Step3.png)|[Configure increased security for Office 365](infoprotect-configure-increased-security-office-365.md)|

