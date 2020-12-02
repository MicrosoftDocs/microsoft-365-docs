---
title: Configure insider risk capabilities across Microsoft 365
description: Learn how to configure insider risk capabilities across Microsoft 365.
keywords: Microsoft 365, insider risk, compliance
localization_priority: Normal
ms.prod: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection:
- m365-security-compliance
- m365solution-insiderrisk
- m365initiative-compliance
---

# Configure insider risk capabilities across Microsoft 365

## Step 1: Enable and configure communication compliance

Protecting sensitive information and detecting and acting on workplace harassment incidents is an important part of compliance with internal policies and standards. [Communication compliance](communication-compliance.md) in Microsoft 365 helps minimize these risks by helping you quickly detect, capture, and take remediation actions for email and Microsoft Teams communications. These include inappropriate communications containing profanity, threats, and harassment and communications that share sensitive information inside and outside of your organization.

### To configure communication compliance for Microsoft 365

![Insider risk solution communication compliance steps](../media/ir-solution-cc-steps.png)

1. Plan for [communication compliance](communication-compliance-plan.md) and [verify licensing](communication-compliance-configure.md#before-you-begin)
2. Review [feature reference and solution capabilities](communication-compliance-feature-reference.md)
3. Configure [prerequisites](communication-compliance-configure.md#step-2-required-enable-the-audit-log) and [permissions](communication-compliance-configure.md#step-1-required-enable-permissions-for-communication-compliance)
4. Create and configure [communication compliance policies](communication-compliance-configure.md#step-5-required-create-a-communication-compliance-policy)

### More information about communication compliance

- [Investigate and remediate alerts](communication-compliance-investigate-remediate.md)
- [Case study - Contoso quickly configures an offensive language policy for Microsoft Teams, Exchange, and Yammer communications](communication-compliance-case-study.md)

## Step 2: Enable and configure insider risk management

Increasingly, employees have more access to create, manage, and share data across a broad spectrum of platforms and services. In most cases, organizations have limited resources and tools to identify and mitigate organization-wide risks while also meeting compliance requirements and employee privacy standards. These risks may include data theft by departing employees and data leaks of information outside your organization by accidental oversharing or malicious intent.

[Insider risk management](insider-risk-management.md) in Microsoft 365 uses the full breadth of service and 3rd-party indicators to help you quickly identify, triage, and act on risky user activity. By using logs from Microsoft 365 and Microsoft Graph, insider risk management allows you to define specific policies to identify risk indicators and to take action to mitigate these risks.

### To configure insider risk management for Microsoft 365

![Insider risk solution insider risk management steps](../media/ir-solution-ir-steps.png)

1. Plan for [insider risk management and verify licensing](insider-risk-management-plan.md)
2. Configure [insider risk management settings](insider-risk-management-settings.md)
3. Configure [permissions](insider-risk-management-configure.md#step-1-enable-permissions-for-insider-risk-management) and [policy prerequisites & connectors](insider-risk-management-configure.md#step-3-configure-prerequisites-for-templates)
4. Create and configure [insider risk management policies](insider-risk-management-configure.md#step-5-create-an-insider-risk-management-policy)

### More information about insider risk management

- [Manage insider risk policies](insider-risk-management-policies.md)
- [Investigate insider risk alerts](insider-risk-management-alerts.md)
- [Act on insider risk cases](insider-risk-management-cases.md)

## Step 3: Consider additional Microsoft 365 compliance solutions

After you've configured communication compliance and insider risk management and depending on the needs of your organization, you may want to consider additional compliance solutions included in Microsoft 365.

### Optional: Enable and configure information barriers

Microsoft 365 enables communication and collaboration across groups and organizations and supports ways to restrict communication and collaboration among specific groups of users when necessary. This may include situations or scenarios where you want to restrict communication and collaboration between two groups to avoid a conflict of interest from occurring in your organization. This may also include situations when you need to restrict communication and collaboration between certain people inside your organization to safeguard internal information.

[Information barriers](information-barriers.md) is supported in Microsoft Teams, SharePoint Online, and OneDrive for Business. A compliance administrator or information barriers administrator can define policies to allow or prevent communications between groups of users in Microsoft Teams. Information barrier policies can be used for situations like these:

- User in the day trader group should not communicate or share files with the marketing team
- Finance personnel working on confidential company information should not communicate or share files with certain groups within their organization
- An internal team with trade secret material should not call or chat online with people in certain groups within their organization
- A research team should only call or chat online with a product development team

#### To configure information barriers for Microsoft 365

![Insider risk solution information barriers steps](../media/ir-solution-ib-steps.png)

1. Configure [prerequisites and permissions](information-barriers-policies.md#prerequisites)
2. Segment [users in your organization](information-barriers-policies.md#part-1-segment-users)
3. Create and configure [information barrier policies](information-barriers-policies.md#part-2-define-information-barrier-policies)
4. Apply [information barrier policies](information-barriers-policies.md#part-3-apply-information-barrier-policies)

#### More information about information barriers

- [Attributes for information barrier policies](information-barriers-attributes.md)
- [Edit or remove information barrier policies](information-barriers-edit-segments-policies.md)

### Optional: Enable and configure privileged access management policies

Having standing access by some users to sensitive information or critical network configuration settings in Microsoft Exchange Online is a potential pathway for compromised accounts or internal threat activities. [Privileged access management](privileged-access-management-overview.md) helps protect your organization from breaches and helps to meet compliance best practices by limiting standing access to sensitive data or access to critical configuration settings. Instead of administrators having constant access, just-in-time access rules are implemented for tasks that need elevated permissions. Enabling privileged access management for Exchange Online in Microsoft 365 allows your organization to operate with zero standing privileges and provide a layer of defense against standing administrative access vulnerabilities.

#### To configure privileged access management for Microsoft 365

![Insider risk solution privileged access management steps](../media/ir-solution-pam-steps.png)

1. Create an [approver's group](privileged-access-management-configuration.md#step-1-create-an-approvers-group)
2. Enable [privileged access management](privileged-access-management-configuration.md#step-2-enable-privileged-access)
3. Create an [access policy](privileged-access-management-configuration.md#step-3-create-an-access-policy)
4. Submit/approve [privileged access requests](privileged-access-management-configuration.md#step-4-submitapprove-privileged-access-requests)

#### More information about privileged access management

- [Frequently asked questions about privileged access management](privileged-access-management-overview.md#frequently-asked-questions)