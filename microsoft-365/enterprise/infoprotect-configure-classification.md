---
title: "Step 3: Configure classification for your environment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/13/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Understand and configure various ways to classify data in your organization.
---

# Step 3: Configure classification for your environment

*This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

In Step 3, you work with your legal and compliance teams to define a classification scheme for your organization’s data.

## Microsoft classifications

Microsoft 365 includes three types of classification:

- Sensitive information types for Office 365
- Office 365 labels
- Azure Information Protection labels and protection

### Sensitive information types for Office 365

Sensitive information types for Office 365 define how automated processes such as search recognize specific information types such as health service numbers and credit card numbers. You use sensitive information types to find sensitive data and apply data loss prevention rules and policies to protect this data. For more information, see [Overview of data loss prevention policies](https://support.office.com/en-us/article/overview-of-data-loss-prevention-policies-1966b2a7-d1e2-4d92-ab61-42efbb137f5e). For example, sensitive information types are especially helpful for meeting compliance and regulation requirements, such as for the General Data Protection Regulation (GDPR).

### Office 365 labels
You use Office 365 labels for personal data and for highly regulated and trade secret files stored in SharePoint Online and OneDrive for Business. For more information, including how to create them, see [Overview of labels](https://support.office.com/article/overview-of-labels-af398293-c69d-465e-a249-d74561552d30).

If you decide to use Office 365 labels, you should configure at least one for each level of protection. For example, create three labels for:

- Baseline
- Sensitive
- Highly regulated

### Azure Information Protection labels and protection

You use Azure Information Protection labels to classify, and optionally protect, your organization’s documents and emails. These labels can apply to documents that are stored outside of Office 365. These labels can be applied automatically by administrators who define rules and conditions, manually by users, or a combination where users are given recommendations.

To plan and deploy Azure Information Protection labels and protection, do the following:

1. Review the [requirements for Azure Information Protection](https://docs.microsoft.com/information-protection/get-started/requirements).
2. Follow the [deployment roadmap for classification, labeling, and protection](https://docs.microsoft.com/information-protection/plan-design/deployment-roadmap#deployment-roadmap-for-classification-labeling-and-protection).

For more information, see the [library of Azure Information Protection documentation](https://docs.microsoft.com/information-protection/).

## Classification for GDPR

For an example classification scheme that includes personal data for GDPR, see [Architect a classification schema for personal data](https://docs.microsoft.com/office365/enterprise/architect-a-classification-schema-for-personal-data).

## Results

You have determined:

- Sensitive data types
- Office 365 labels
- Azure Information Protection labels and protection rules and conditions

As an interim checkpoint, see the [exit criteria](infoprotect-exit-criteria.md#crit-infoprotect-step3) corresponding to this step.

## Next step

[Step 4: Configure increased security for Office 365](infoprotect-configure-increased-security-office-365.md)
