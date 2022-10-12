---
title: "Strengthen your security posture with Microsoft 365 Defender"
f1.keywords:
- deploy zero trust
- zero trust strategy
ms.author: siosulli
author: siosulli
manager: dansimp
audience: Admin
description: Learn how to strengthen your organization's security posture with the capabilities available in Microsoft 365 Defender.
ms.topic: tutorial
ms.service: microsoft-365-security
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- m365solution-securityposture
- m365solution-overview
- m365-security
- securityposture-solution
- highpri
- tier1
---

# Strengthen your security posture with Microsoft 365 Defender (business framing)

This article describes how to strengthen your organization's security posture using capabilities available in Microsoft Defender 365.

It provides you with a framework that helps you plan and implement a solution that fits your security needs.

This solution provides guidance on how you can assess, improve and maintain your security posture.

## Overview of the solution (overview visual)

This illustration provides a representation of the high level flow you can follow to improve your security posture.

:::image type="content" source="../media/content-understanding/syntex-solution-manage-contracts-overview.png" alt-text="The Zero Trust security architecture" lightbox="../media/content-understanding/syntex-solution-manage-contracts-overview.png":::

This security posture solution guidance flow

includes four stages:

- **Prepare**:
- **Assess**:
- **Improve**:
- **Maintain**:

To complete the steps in this flow you use these M365D capabilities and features. These Microsoft 365 Defender capabilities and features help you strengthen your security posture.

| Product or component | Capability or feature | Description | Licensing |
|:-------|:-------|:-----|:-------|
|| Compliance Manager | Manage regulatory compliance activities, get an overall score of your current compliance configuration, and find recommendations for improvement. This is a workflow-based risk assessment tool in the Microsoft Purview compliance portal. | Microsoft 365 E3 and E5 |
|| Microsoft Defender for Office 365 | Protect your Microsoft 365 apps and data—such as email messages, Office documents, and collaboration tools—from attack. | Microsoft 365 E3 and E5 |
|| Sensitivity labels | Classify and protect your organization's data without hindering the productivity of users and their ability to collaborate. Place labels with various levels of protection on email, files, or sites. | Microsoft 365 E3 and E5 |
|| Data Loss Protection (DLP) | Detect, warn, and block risky, inadvertent, or inappropriate sharing of data containing personal information, both internally and externally. | Microsoft 365 E3 and E5 |
|| Data retention labels and policies | Implement information governance controls. These can include determining how long to keep data (such as personal data related to customers) to comply with your organization's policies or data regulations. | Microsoft 365 E3 and E5 |

## Before you begin

This solution guide provides specific and actionable steps to strengthen your security posture, and assumes the following facts:

- you are a global admin
- you're beyond the initial onboarding of devices stage

  ![Diagram of the solution showing the workflow to upload documents, extract data, notify stakeholders, and approve or reject the contract.](../media/content-understanding/syntex-solution-manage-contracts-overview.png)

## Organization of the guidance in this solution

To help you understand the Microsoft 365 tools available to help you meet one or more privacy-related regulations, this guidance is organized into sections.

![Steps to implement information protection for data privacy regulations.](../media/information-protection-deploy/information-protection-data-privacy-regulations-steps.png)

Each of these sections corresponds to a separate article in this solution.

> [!NOTE]
> If you are already familiar with your data privacy obligations and are executing against an existing plan, you may want to focus on the Prevent, Protect, Retain, and Investigate guidance.

> [!IMPORTANT]
> Following this guidance will not necessarily make you compliant with any data privacy regulation, especially considering the number of steps required that are outside the context of the features. You are responsible for ensuring your compliance and to consult your legal and compliance teams or to seek guidance and advice from third parties that specialize in compliance.

## Get started

The process of migrating from a third-party protection service to Defender for Office 365 can be divided into three phases as described in the following table:

:::image type="content" source="../../media/phase-diagrams/migration-phases.png" alt-text="The process for migrating to Defender for Office 365" lightbox="../../media/phase-diagrams/migration-phases.png":::

|Phase|Description|
|---|---|
|[Prepare for your migration](migrate-to-defender-for-office-365-prepare.md)|<ol><li>[Inventory the settings at your existing protection service](migrate-to-defender-for-office-365-prepare.md#inventory-the-settings-at-your-existing-protection-service)</li><li>[Check your existing protection configuration in Microsoft 365](migrate-to-defender-for-office-365-prepare.md#check-your-existing-protection-configuration-in-microsoft-365)</li><li>[Check your mail routing configuration](migrate-to-defender-for-office-365-prepare.md#check-your-mail-routing-configuration)</li><li>[Move features that modify messages into Microsoft 365](migrate-to-defender-for-office-365-prepare.md#move-features-that-modify-messages-into-microsoft-365)</li><li>[Define spam and bulk user experiences](migrate-to-defender-for-office-365-prepare.md#define-spam-and-bulk-user-experiences)</li><li>[Identify and designate priority accounts](migrate-to-defender-for-office-365-prepare.md#identify-and-designate-priority-accounts)</li></ol>|
|[Set up Defender for Office 365](migrate-to-defender-for-office-365-setup.md)|<ol><li>[Create distribution groups for pilot users](migrate-to-defender-for-office-365-setup.md#step-1-create-distribution-groups-for-pilot-users)</li><li>[Configure user submission for user message reporting](migrate-to-defender-for-office-365-setup.md#step-2-configure-user-submission-for-user-message-reporting)</li><li>[Maintain or create the SCL=-1 mail flow rule](migrate-to-defender-for-office-365-setup.md#step-3-maintain-or-create-the-scl-1-mail-flow-rule)</li><li>[Configure Enhanced Filtering for Connectors](migrate-to-defender-for-office-365-setup.md#step-4-configure-enhanced-filtering-for-connectors)</li><li>[Create pilot protection policies](migrate-to-defender-for-office-365-setup.md#step-5-create-pilot-protection-policies)</li></ol>|
|[Onboard to Defender for Office 365](migrate-to-defender-for-office-365-onboard.md)|<ol><li>[Begin onboarding Security Teams](migrate-to-defender-for-office-365-onboard.md#step-1-begin-onboarding-security-teams)</li><li>[(Optional) Exempt pilot users from filtering by your existing protection service](migrate-to-defender-for-office-365-onboard.md#step-2-optional-exempt-pilot-users-from-filtering-by-your-existing-protection-service)</li><li>[Tune spoof intelligence](migrate-to-defender-for-office-365-onboard.md#step-3-tune-spoof-intelligence)</li><li>[Tune impersonation protection and mailbox intelligence](migrate-to-defender-for-office-365-onboard.md#step-4-tune-impersonation-protection-and-mailbox-intelligence)</li><li>[Use data from user submissions to measure and adjust](migrate-to-defender-for-office-365-onboard.md#step-5-use-data-from-user-submissions-to-measure-and-adjust)</li><li>[(Optional) Add more users to your pilot and iterate](migrate-to-defender-for-office-365-onboard.md#step-6-optional-add-more-users-to-your-pilot-and-iterate)</li><li>[Extend Microsoft 365 protection to all users and turn off the SCL=-1 mail flow rule](migrate-to-defender-for-office-365-onboard.md#step-7-extend-microsoft-365-protection-to-all-users-and-turn-off-the-scl-1-mail-flow-rule)</li><li>[Switch your MX records](migrate-to-defender-for-office-365-onboard.md#step-8-switch-your-mx-records)</li></ol>|

## Next step

- Proceed to [Phase 1: Prepare](migrate-to-defender-for-office-365-prepare.md).
