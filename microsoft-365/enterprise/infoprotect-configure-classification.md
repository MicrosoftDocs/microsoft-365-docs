---
title: "Step 2: Configure classification for your environment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/16/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
description: Understand and configure various ways to classify data in your organization.
---

# Step 2: Configure classification for your environment

*This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![](./media/deploy-foundation-infrastructure/infoprotection_icon-small.png)

In this step, you work with your legal and compliance teams to define a classification scheme for your organization’s data.

## Microsoft classifications

Microsoft 365 includes three types of classification:

- Sensitive information types for Office 365
- Office 365 retention labels
- Azure Information Protection labels and protection

### Sensitive information types for Office 365

Sensitive information types for Office 365 define how automated processes such as search recognize specific information types such as health service numbers and credit card numbers. You use sensitive information types to find sensitive data and apply data loss prevention rules and policies to protect this data. For more information, see [Overview of data loss prevention policies](https://docs.microsoft.com/office365/securitycompliance/data-loss-prevention-policies). For example, sensitive information types are especially helpful for meeting compliance and regulation requirements, such as for the General Data Protection Regulation (GDPR).

### Office 365 retention labels

You can use Office 365 retention labels for personal data and for highly regulated and trade secret files stored in SharePoint Online and OneDrive for Business. For more information, including how to create them, see [Overview of retention labels](https://docs.microsoft.com/office365/securitycompliance/labels).

If you decide to use Office 365 retention labels, you should configure at least one for each level of protection. For example, create three labels for:

- Baseline
- Sensitive
- Highly regulated

### Azure Information Protection labels and protection

You can use Azure Information Protection labels to classify, and optionally protect, your organization’s documents and emails. These labels can apply to documents that are stored outside of Office 365. These labels can be applied automatically by administrators who define rules and conditions, manually by users, or a combination where users are given recommendations.

To plan and deploy Azure Information Protection labels and protection, do the following:

1. Review the [requirements for Azure Information Protection](https://docs.microsoft.com/information-protection/get-started/requirements).
2. Follow the [deployment roadmap for classification, labeling, and protection](https://docs.microsoft.com/information-protection/plan-design/deployment-roadmap#deployment-roadmap-for-classification-labeling-and-protection).

For more information, see the [library of Azure Information Protection documentation](https://docs.microsoft.com/information-protection/).

## Classification for GDPR

For an example classification scheme that includes personal data for GDPR, see [Architect a classification schema for personal data](https://docs.microsoft.com/office365/enterprise/architect-a-classification-schema-for-personal-data).

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Data classification](data-classification-microsoft-365-enterprise-dev-test-environment.md) |
|||

As an interim checkpoint, see the [exit criteria](infoprotect-exit-criteria.md#crit-infoprotect-step3) corresponding to this step.

## Next step

|||
|:-------|:-----|
|![](./media/stepnumbers/Step3.png)|[Configure increased security for Office 365](infoprotect-configure-increased-security-office-365.md)|

