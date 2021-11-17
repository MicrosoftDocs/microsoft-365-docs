---
title: "Microsoft 365 compliance solutions trial playbook"
f1.keywords:
- NOCSH
ms.author: v-tophillips
author: v-tophillips
manager: laurawi
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
ms.collection: m365-security-compliance
ms.localizationpriority: high
search.appverid: 
- MOE150
- MET150
description: "Microsoft 365 compliance solutions trial playbook."
---

# Trial playbook: Microsoft 365 Compliance solutions

Welcome to the Microsoft 365 compliance solutions trial playbook. ​This playbook will help you make the most of your 90-day free trial by helping you discover robust and comprehensive capabilities of Microsoft 365 compliance and security products. ​
​
Trying each solution will help you make informed decisions to meet your organization’s compliance needs.​

||||||
|:--------------:|:--------------:|:--------------:|:--------------:|:--------------:|
|[:::image type="content" source="../media/compliance-trial/advanced-audit.jpg" alt-text="Advanced Audit":::](#advanced-audit)|[:::image type="content" source="../media/compliance-trial/communication-compliance.jpg" alt-text="Communication Compliance":::](#communication-compliance)|[:::image type="content" source="../media/compliance-trial/compliance-manager.jpg" alt-text="Compliance Manager":::](#compliance-manager)|[:::image type="content" source="../media/compliance-trial/data-loss-prevention.jpg" alt-text="Data Loss Prevention":::](#data-loss-prevention)|[:::image type="content" source="../media/compliance-trial/ediscovery.jpg" alt-text="eDiscovery":::](#ediscovery)|
|[:::image type="content" source="../media/compliance-trial/information-protection.jpg" alt-text="Information Protection":::](#information-protection)|[:::image type="content" source="../media/compliance-trial/insider-risk-management.jpg" alt-text="Insider Risk Management":::](#insider-risk-management)|[:::image type="content" source="../media/compliance-trial/records-management.jpg" alt-text="Records Management":::](#records-management)|[:::image type="content" source="../media/compliance-trial/compliance-manager-premium-assessment.jpg" alt-text="Compliance Manager Premium Assessment":::](#compliance-manager-premium-assessment)|[:::image type="content" source="../media/compliance-trial/privacy-management.jpg" alt-text="Privacy Management":::](#privacy-management)|

## Advanced Audit

**Conduct investigations**

Advanced Audit helps organizations to conduct forensic and compliance investigations by increasing audit log retention required to conduct an investigation, providing access to crucial events that help determine scope of compromise, and providing faster access to the Office 365 Management Activity API.

### Step 1: Apply the E5 license to each user for which you’d like to generate E5 events​

Advanced Audit features such as the ability to log crucial events such as MailItemsAccessed and Send require an appropriate E5 license assigned to users. Additionally, the Advanced Auditing app/service plan must be enabled for those users.

Set up Advanced Audit for users - to verify that the Advanced Auditing app is assigned to users, [perform the following steps for each user](set-up-advanced-audit.md#step-1-set-up-advanced-audit-for-users).​

1. Enable Advanced Audit events - [enable SearchQueryInitiatedExchange and SearchQueryInitiatedSharePoint](set-up-advanced-audit.md#step-2-enable-advanced-audit-events) to be audited for each user in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell.md).​
1. Set up audit retention policies - [create additional audit log retention policies](set-up-advanced-audit.md#step-3-set-up-audit-retention-policies) to meet the requirements of your organization's security operations, IT, and compliance teams. ​
1. Search for Advanced Audit events - [search for crucial Advanced Audit events](set-up-advanced-audit.md#step-4-search-for-advanced-audit-events) and other activities when conducting forensic investigations​

### Step 2: Create new Audit Log policies to specify how long to retain audit logs in your org for activities performed by users and define priority levels for your policies​

Audit log retention policies are part of the new Advanced Audit capabilities in Microsoft 365. An audit log retention policy lets you specify how long to retain audit logs in your organization.​

1. Before you create an audit log retention policy – [key things to know](audit-log-retention-policies.md#before-you-create-an-audit-log-retention-policy) before creating your policy.​
1. [Create an audit log retention policy​](audit-log-retention-policies.md#create-an-audit-log-retention-policy)
1. [Manage audit log retention policies in the Microsoft 365 compliance center](audit-log-retention-policies.md#manage-audit-log-retention-policies-in-the-microsoft-365-compliance-center) - Audit log retention policies are listed on the Audit retention policies tab (also called the dashboard). You can use the dashboard to view, edit, and delete audit retention policies. ​
1. Create and manage audit log retention policies on PowerShell - You can also use Security & Compliance Center PowerShell to [create and manage audit log retention policies](audit-log-retention-policies.md#create-and-manage-audit-log-retention-policies-in-powershell). One reason to use PowerShell is to create a policy for a record type or activity that isn't available in the UI.​

## Communication Compliance

**Identify and act on code of conduct policy violations**

Communication compliance helps you intelligently identify communication violations to support a compliant and healthy work environment by helping you detect inappropriate messages, investigate possible policy violations, and take steps to remediate.

### Step 1: Enable permissions for communication compliance​

[Assign all compliance users to the Communication Compliance role group](communication-compliance-configure.md#step-1-required-enable-permissions-for-communication-compliance).​
### Step 2: Enable the audit log​

To use this feature, turn on auditing so we can start recording user and admin activity in your org. When you turn this on, activity will be recorded to the audit log and available to view in a report. ​To learn more, see [Turn audit log search on or off](turn-audit-log-search-on-or-off.md).

### Step 3: Create a communication compliance policy

[Create communication compliance policy using the existing templates](communication-compliance-policies.md): 1- Inappropriate content; 2- Sensitive information; 3- Regulatory compliance; 4- Conflict of interest.​

### Step 4: Investigate and remediate alerts​

[Investigate and remediate](communication-compliance-investigate-remediate.md) communication compliance alerts.​

## Compliance Manager

**Manage your organizational compliance easily**

Compliance Manager can help you throughout your compliance journey, from taking inventory of your data protection risks to managing the complexities of implementing controls, staying current with regulations and certifications, and reporting to auditors.

### Step 1: Get to know Compliance Manager

Our Compliance Manager overview page is the best first stop for a comprehensive review of what Compliance Manager is and how it works. You may also want to jump right to key sections of our documentation using the links below:​

- [Understand your compliance score​](compliance-manager.md#understanding-your-compliance-score)
- [Overview of key elements: controls, assessments, templates, and improvement actions​](compliance-manager.md#key-elements-controls-assessments-templates-improvement-actions)
- [Understand the Compliance Manager dashboard​](compliance-manager-setup.md#understand-the-compliance-manager-dashboard)
- [Filter your dashboard view​](compliance-manager-setup.md#filtering-your-dashboard-view)
- [Learn about improvement actions​](compliance-manager-setup.md#improvement-actions-page)
- [Understand assessments​](compliance-manager.md#assessments)
- [Do a quick scan of your environment using the Microsoft Compliance Configuration Manager​](compliance-manager-mcca.md)

## Data Loss Prevention

**Protect sensitive data**

To comply with business standards and industry regulations, organizations need to protect sensitive info to prevent its inadvertent disclosure. Set up data loss prevention policies to identify, monitor, and automatically protect sensitive info across Microsoft 365.

## eDiscovery

**Discover more with an end-to-end workflow**

Take advantage of an end-to-end workflow for preserving, collecting, analyzing, and exporting content that’s responsive to your organization’s internal and external investigations. Legal teams can also manage the entire legal hold notification process by communicating with custodians involved in a case.

## Information Protection

**Discover, classify and protect your sensitive information**

Implement Microsoft Information Protection and sensitivity labels, to help you discover, classify, and protect your sensitive content wherever it lives or travels.

## Insider Risk Management

**Detect and remediate insider risks**

Leverage artificial intelligence to help you quickly identify, triage, and remediate internal risks. Using logs from Microsoft 365 and Azure services, you can define policies that monitor for insider risk signals, then take remediation actions such as promoting user education or initiating an investigation.

## Records Management

**Automate the retention schedule for business-critical records​**

Use integrated Records Management features to automate the retention schedule for organizational regulatory, legal, and business-critical records. Get full content lifecycle support, from creation to collaboration, record declaration, retention, and disposition.

## Compliance Manager Premium Assessment

**Assess risks and efficiently respond**

Help your organization assess risks and efficiently respond to nations, regional and industry requirements governing the collection and use of data.

## Privacy Management

**Identify & prevent​ privacy risks**

Proactively identify and protect against privacy risks such as data hoarding, data transfers, and data oversharing and help your organization automate and manage subject requests at scale.​
