---
title: "What's new in Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/23/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- tier1
search.appverid: 
- MOE150
- MET150
description: "Find out what’s new in Compliance Manger and what’s to come. Read about updated assessments, new assessment templates, new actions, and more."
---

# What's new in Microsoft Purview Compliance Manager

**In this article:** Learn about recent updates in Compliance Manager.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## May 2023

Compliance Manager now integrates with Microsoft Defender for Cloud so you can assess your compliance posture across Microsoft 365, Microsoft Azure, Google Cloud Platform (GCP), and Amazon Web Services (AWS) with resource-level testing and cloud-specific guidance. This new integration provides customers with a single interface in Compliance Manager to help make it easier to manage compliance across the organization’s digital estate. Learn more about [multicloud support in Compliance Manager](compliance-manager-multicloud.md).

Compliance Manager also features an integrated set of connectors that can help you understand your compliance obligations across the many services you use in your organization. Connectors for Salesforce and Zoom are now available, with more coming soon. Learn more about [working with connectors in Compliance Manager](compliance-manager-connectors.md).

Also, you can now provide scoped access to assessments based on regulation. For each regulatory template, you can assign users a role that allows them to access any assessment created for that regulation. Learn more about [granting user access to regulatory templates](compliance-manager-templates.md#grant-user-access-to-regulations).

## January 2023

In preview: Compliance Manager has new improvement actions that correspond to actions taken in Microsoft Priva to bolster your organization's compliance with data privacy regulations. Learn more about [Priva](/privacy/priva/priva-overview) and get details about [automatic testing and monitoring of improvement actions](compliance-manager-setup.md#testing-source-for-automated-testing) in Compliance Manager.

## December 2022

Assessment templates that belong to the same regulation family now count as one template. This change means that when you purchase a premium template license for a regulation, the license will apply for all levels and versions of that regulation. Review the [list of templates](compliance-manager-templates-list.md) and a summary of [template licensing changes starting December 2022](compliance-manager-faq.yml#what-changed-with-template-licensing-in-december-2022-).

Also new in December: Improvement actions now provide greater visibility into related controls and assessments so you can better understand the impact of completing an action. Each improvement action details page has a new [**Related controls** tab](compliance-manager-improvement-actions.md#improvement-actions-details-page) that lists all the controls associated to the action, with a link to each control's description. In the **Summary** section, the number underneath **Assessments** is now linked. When you select the number, you'll see a flyout pane listing all the assessments related to that action.

## November 2022

Compliance Manager allows you to assign user roles that are specific to individual assessments. This feature allows you to provide assessors with scoped access to Compliance Manager. Learn more about [granting user access to individual assessments](compliance-manager-assessments.md#grant-user-access-to-individual-assessments).

## August 2022

Compliance Manager has published the following new assessment template:

- Australian Information Security Registered Assessor Program (IRAP) with ISM Version 3.5 - Official

View our [full list of assessment templates](compliance-manager-templates-list.md).

## July 2022

Compliance Manager has published the following new assessment template:

- Hong Kong - Code of Banking Practice and Payment Card

View our [full list of assessment templates](compliance-manager-templates-list.md).


## May 2022

Compliance Manager has published the following new assessment templates:

Europe, Middle East, and Africa (EMEA)
- Qatar National Information Assurance (NIA)
- UAE Data Privacy Law

US Government Community (GCC) Moderate, GCC High, and Department of Defense (DoD) customers should see these templates available in the next few weeks.

View our [full list of assessment templates](compliance-manager-templates-list.md).

## March 2022

### New templates available

Compliance Manager has published the following new assessment templates:

**Global**
- ISO 37301
- NIST 800-207 - Zero Trust Architecture
- SIG 2022

**US Government**
- CMMC v2 Level 1
- CMMC v2 Level 2

**North America**
- Information Security Management Act - Province of British Columbia, CA

View our [full list of assessment templates](compliance-manager-templates-list.md).

### Continuous compliance assessment of improvement actions

We're adding automated testing and evidence generation for over 35 improvement actions in Compliance Manager that weren't previously covered by Secure Score. With continuous compliance assessment, you can receive updates about which of these improvement actions you've completed if they're relevant for your compliance assessments and you're licensed to access the relevant solutions. Continuous compliance assessment also gives users visibility into the scoring logic of your improvement actions and provides insight and evidence about why you received a certain score. This feature works alongside existing integrations with Microsoft 365 Secure Score, and any automated actions you've previously configured will continue to work as-is. Learn more about [automated testing settings](compliance-manager-setup.md#testing-source-for-automated-testing).

## February 2022

### Alerts and alert policies

Users can now set alerts for changes in Compliance Manager that an organization wants to track. Using an easy setup wizard, you can build alert policies to create notifications when the following types of events happen: an improvement action score change, an improvement action assignment change, a testing or implementation status change in an improvement action, and a file upload or deletion in an improvement action's Documents tab. Learn more by visiting [Compliance Manager alerts and alert policies](compliance-manager-alert-policies.md).

### Try recommended assessment templates for your organization

Your organization can now get recommendations from Compliance Manager about which assessments may be most relevant to you, with a quick setup process to get up and running. To learn more about recommendations and how to try premium assessment templates before buying a license, see [Start a premium assessments trial](compliance-manager-setup.md#start-a-premium-assessments-trial).

## November 2021

### Zero Trust integration for the Data Protection Baseline template

Zero Trust is a proactive, integrated approach to security across all layers of the digital estate that explicitly and continuously verifies every transaction, asserts least privilege, and relies on intelligence, advanced detection, and real-time response to threats. Compliance Manager's Data Protection Baseline template, included for all users, now integrates 57 new controls and 36 new actions for Zero Trust aligned across the following control families:

- Zero Trust Application
- Zero Trust App development guidance
- Zero Trust Endpoint
- Zero Trust Data
- Zero Trust Identity
- Zero Trust Infrastructure
- Zero Trust Network
- Zero Trust Visibility, automation, and orchestration

### New preview templates

The following assessment templates are now available in preview:

- ISO 27001:2013 for Azure (Preview)
- ISO 27001:2013 for Dynamics 365 (Preview)
- FedRAMP Moderate for Dynamics 365 (Preview)
- FedRAMP Moderate for Azure (Preview)
- FedRAMP High for Azure (Preview)
- FedRAMP High for Dynamics 365 (Preview)
- SOC 2 for Azure (Preview)
- SOC 2 for Dynamics 365 (Preview)
- ISO 27018:2019 for Azure (Preview)
- ISO 27018:2019 for Dynamics 365 (Preview)

## October 2021

### New assessment templates

We published new assessment templates, including:

- Colorado Privacy Act (CPA)
- Virginia Consumer Data Privacy Act (CDPA)
- Egypt - Data Protection Law
- Australia - ASD Essential 8 Maturity Level 1
- Australia - ASD Essential 8 Maturity Level 2
- Australia - ASD Essential 8 Maturity Level 3

### Integration with Microsoft Priva

Compliance Manager can now work hand in hand with Microsoft Priva, a solution that can help you safeguard the personal data your organization stores in Microsoft 365. Priva offers tools to help you visualize and understand your data, implement policies to manage key risk scenarios, and handle subject rights requests. When you take steps in Priva to protect the personal data you store, this can contribute to your privacy assessments in Compliance Manager and can help you improve your compliance score. To see how Priva and other solutions are contributing to your score, and learn about potential opportunities for further improvements, see the **Solutions** tab in Compliance Manager. You can also find more details about Priva at [Learn about Microsoft Priva](/privacy/priva).

## July 2021

We added the capability to create assessments for products other than Microsoft 365, based on new universal versions of our templates. To learn more, start with [Working with assessment templates](compliance-manager-templates.md).

## May 2021

### New assessment templates

We published 75 new assessment templates, including:
- Australia Privacy Act
- CIS Microsoft 365 Foundation Levels 1 and 2
- Germany - Supervisory Requirements for IT in Financial Institutions (BAIT)
- Sarbanes-Oxley Act
- South Africa - Promotion of Access to Information Act

Check out the complete list of [assessment templates](compliance-manager-templates-list.md).

## April 2021

### Support for US Government DoD customers

Compliance Manager is now available to US Government DoD customers, in addition to US Government Community (GCC) Moderate and GCC High customers.

## March 2021

### Active and inactive templates

Each assessment page and assessment template page has an activated templates counter. This counter shows how many eligible templates you're using according to your licensing agreement. View [Template availability and licensing](compliance-manager-templates.md#regulation-availability-and-licensing) to learn more.
