---
title: Communication compliance
description: Learn how to configure communication compliance in Microsoft Purview.
keywords: Microsoft 365, insider risk, compliance
ms.localizationpriority: medium
ms.topic: article
ms.service: O365-seccomp
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 05/03/2023
audience: itpro
ms.collection:
- tier1
- purview-compliance
- m365solution-insiderrisk
- m365initiative-compliance
- m365solution-scenario
- highpri
---

# Communication compliance

> [!IMPORTANT]
> Microsoft Purview Communication Compliance provides the tools to help organizations detect regulatory compliance (for example, SEC or FINRA) and business conduct violations such as sensitive or confidential information, harassing or threatening language, and sharing of adult content. Built with privacy by design, usernames are pseudonymized by default, role-based access controls are built in, investigators are opted in by an admin, and audit logs are in place to help ensure user-level privacy.

Protecting sensitive information and detecting and acting on workplace harassment incidents is an important part of compliance with internal policies and standards. Microsoft Purview Communication Compliance helps minimize these risks by helping you quickly detect, capture, and take remediation actions for email and Microsoft Teams communications. These include potentially inappropriate communications containing profanity, threats, and harassment and communications that share sensitive information inside and outside of your organization.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

Microsoft Purview Communication Compliance is an insider risk solution that helps you detect, capture, and act on inappropriate messages that can lead to potential data security or compliance incidents within your organization. Communication compliance evaluates text and image-based messages in Microsoft and third-party apps (Teams, Yammer, Outlook, WhatsApp, etc.) for potential business policy violations including inappropriate sharing of sensitive information, threatening or harassing language as well as potential regulatory violations (such as stock and capital manipulations).  

Communication compliance's mission is to foster safe and compliant communications across customers' enterprise communication channels. With role-based access controls, human investigators can take remediation actions such as removing a message from Teams or notifying senders of potentially inappropriate conduct.

## System capabilities

Communication compliance uses machine learning models and keyword matching to identify messages containing potential business conduct or regulatory policy violations that are then reviewed by an investigator. Communication compliance cultivates user privacy with pseudonymization and responsible use of the product by providing role-based access controls.

> [!IMPORTANT]
> Microsoft is committed to making sure artificial intelligence (AI) systems are developed responsibly and in ways that warrant people's trust. As part of this commitment, Microsoft Purview engineering teams are operationalizing the six core principles of [Microsoft's Responsible AI](https://www.microsoft.com/ai/our-approach) strategy to design, build, and manage AI solutions. As part of our effort to responsibly deploy AI, we provide documentation, role-based access, scenario attestation, and more to help organizations use AI systems responsibly.

Users are given [permissions](/microsoft-365/compliance/communication-compliance-plan#configure-permissions) that allow them to perform the tasks in their role, such as:  

- **Administrator role**: Administrators configure policies to detect specific patterns in an organization. Admins choose which machine learning classifiers to include in policies and can use the value of machine learning classifiers alongside keyword/phrase matching to meet organizational needs.  
- **Investigator role**: Investigators view and remediate potentially risky messages flagged by built-in classifiers. Investigators have a range of actions they may take to address the displayed message and no automatic actions are taken without manual investigator review. Investigators can share feedback on messages misclassified by Microsoft classifiers via the *Report as Misclassified* action, which aims to continually improve classifier performance through customer submitted feedback.  
- **Communication compliance role**: Communication compliance role can create policies for the organization and review policy matches for every policy.  

## Intended uses of communication compliance

Communication compliance empowers organizations to detect, triage, and remediate communications with potential business conduct and/or regulatory compliance violations. Communication compliance provides the following policy templates that use machine learning classifiers for users:  

- **Business conduct**: Discrimination, Profanity, Threat, and Targeted harassment classifiers
- **Regulatory compliance**: Corporate sabotage, customer complaints, gifts & entertainment, money laundering, regulatory collusion, stock manipulation, unauthorized disclosure classifiers

## Metrics used to evaluate and measure performance

Communication compliance considers many metrics to holistically evaluate system accuracy and performance. False positive rates and true positive rates (also known as recall rates) from test data sets are two of the most important metrics that inform the classifier's performance. Quantitative metrics (for example, the number of hits) and qualitative feedback from customers are also used to evaluate performance and help improve the classifiers.  

## Operational factors and settings

Operational factors and settings allow for effective and responsible use of the system. These are detailed in the table below.

|Operational factor|Benefits|
|---|---|
|Role-based access control|- No individual has too much power to influence usage of communication compliance in the organization: <br> - Investigators can only view policies they have permission to view <br> - Administrators can only create/edit policies <br> - Communication compliance role has the most widespread permissions to view and edit policies.|
|Using multiple conditions in a policy|The value from machine learning classifiers can be fine-tuned with other capabilities such as key phrase matching, detection of sensitive information, or scoping to specific domains.|
|End user reporting of inappropriate content in Teams|Message recipients can report messages they find inappropriate or deem a data security incident as a proactive approach to identifying communication risks.|
|Keyword highlighting of messages caught by built-in classifiers|Investigators gain clarity on which key phrases trigger which classifiers.|
|Pseudonymization|Sender/recipient aliases are pseudonymized to minimize investigation bias.|
|Users choose which communication channels to detect for patterns in|Users can choose which channels, such as Microsoft Teams, Exchange, Yammer, or third-party sources, to identify and detect content patterns.|
|Feedback loop to report misclassified items|Items misclassified by machine learning classifiers can be reported to Microsoft to improve future performance of classifiers. User privacy is honored as per the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement).|

## Limitations of communication compliance

There are limitations to any artificial intelligence solution. Users of communication compliance can minimize the impact of the limitations when using the system.  These limitations are detailed in the table below.

|Limitations|Impacted users|Ways to minimize impact|
|---|---|---|
|False positive messages|Message senders|- Communications compliance uses a feedback loop to report misclassified items to continually improve classifier performance. <br> - Human reviewers must view message before action is taken.|
|False negative messages|Admins and message recipients|Machine learning classifiers can be combined with multiple conditions such as key phrase matching or user scoping to satisfy unique organizational needs.|
|Limited support for evasive typing and other adversarial inputs|Message recipients|Basic evasive typing coverage is provided to address swapping letters with numbers with improvements to come in future releases.|
|Not all languages covered|Message recipients|12 languages supported today corresponding to highest usage regions.|

## Configure communication compliance

Use the following steps to configure communication compliance for your organization:

![Insider risk solution communication compliance steps.](../media/ir-solution-cc-steps.png)

1. Learn about [communication compliance](/microsoft-365/compliance/communication-compliance)
2. Plan for [communication compliance](/microsoft-365/compliance/communication-compliance-plan) and [verify licensing](/microsoft-365/compliance/communication-compliance-configure#subscriptions-and-licensing)
3. Configure [prerequisites](/microsoft-365/compliance/communication-compliance-configure#step-2-required-enable-the-audit-log) and [permissions](/microsoft-365/compliance/communication-compliance-configure#step-1-required-enable-permissions-for-communication-compliance)
4. Create and configure [communication compliance policies](/microsoft-365/compliance/communication-compliance-configure#step-5-required-create-a-communication-compliance-policy)

> [!IMPORTANT]
> Microsoft Purview Communication Compliance provides built-in machine learning tools for detecting messages that may violate regulatory, code of conduct, or organizational requirements. Users may choose built-in classifiers during policy configuration to evaluate organization communications and admin are able to edit policy settings at any time according to organizational needs. Built with privacy by design, no customer data/evaluations are shared with Microsoft unless explicitly consented to by your organization's investigators via the *Report as Misclassified* action.

## More information about communication compliance

- [Investigate and remediate alerts](/microsoft-365/compliance/communication-compliance-investigate-remediate)
- [Case study: Contoso quickly configures an inappropriate content policy for Microsoft Teams, Exchange, and Yammer communications](/microsoft-365/compliance/communication-compliance-case-study)
