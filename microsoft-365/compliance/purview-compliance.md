---
title: "Microsoft Purview risk and compliance solutions"
description: Use this article to learn more about Microsoft Purview risk and compliance solutions.
keywords: Microsoft 365, Microsoft Purview, compliance, solutions
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: overview
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection: 
- tier1
- purview-compliance
---

# Microsoft Purview risk and compliance solutions

[Microsoft Purview](/purview/purview) risk and compliance solutions help you manage and monitor your data, protect information, minimize compliance risks, and meet regulatory requirements. This article will help you learn about Microsoft Purview risk and compliance solutions and quickly get started with deploying these solutions to meet specific compliance needs for your organization.

## Protect sensitive data across clouds, apps, and devices

Your information protection strategy should be driven by your business needs, but every organization has a requirement to protect some or all of its data. Use the capabilities from [Microsoft Purview Information Protection](/microsoft-365/compliance/information-protection) (formerly Microsoft Information Protection) to help you discover, classify, protect, and govern sensitive information wherever it lives or travels.

### Know your data

You have information residing across all the Microsoft 365 services and on-premises. Identifying which items are sensitive and gaining visibility into how they're being used is central to your information protection practice. Microsoft Purview includes:

- [Sensitive information types](/microsoft-365/compliance/sensitive-information-type-learn-about) to identify sensitive items by using built-in or custom regular expressions, or a function.
- [Trainable classifiers](/microsoft-365/compliance/classifier-learn-about) to identify sensitive items by using examples of the data you're interested in rather than identifying elements in the item.
- [Data classification](/microsoft-365/compliance/data-classification-overview) provides a graphical identification of items in your organization that have a sensitivity label, a retention label, or have been classified and the actions your users are taking on them

### Protect your data

There are many capabilities that you can use from the Microsoft Purview Information Protection solution to help protect your data, wherever it's stored and however it's accessed. However, sensitivity labels are the foundational capability that both provide protection actions and interact with other Purview solutions and capabilities.

Sensitivity labels provide users and admins with visibility into the sensitivity of the data that they're using, and the labels themselves can apply protection actions that include encryption, access restrictions, and visual markings. For more information about the range of labeling scenarios supported, see the [Common scenarios for sensitivity labels](/microsoft-365/compliance/get-started-with-sensitivity-labels#common-scenarios-for-sensitivity-labels) section from the getting started documentation. For more information about sensitivity labels, see [Learn about sensitivity labels](/microsoft-365/compliance/sensitivity-labels).

### Prevent data loss

Unintentional sharing of sensitive items can cause financial harm to your organization and may result in a violation of laws and regulations. [Microsoft Purview Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp) can help protect your organization against unintentional or accidental sharing of sensitive information both inside and outside of your organization. In a data loss prevention policy, you:

- Define the sensitive information you want to monitor for, like financial, health, medical, and privacy data.
- Where to monitor, like Microsoft 365 services or Windows and macOS devices.
- The conditions that must be matched for a policy to be applied to an item, like items containing credit card, driver's license, or social security numbers.
- The actions to take when a match is found, like audit, block the activity, and block the activity with override.

### Manage your data lifecycle

[Microsoft Purview Data Lifecycle Management](/microsoft-365/compliance/manage-data-governance#microsoft-purview-data-lifecycle-management) (formerly Microsoft Information Governance) provides you with tools and capabilities to retain and delete content across Exchange, SharePoint, OneDrive, Microsoft 365 Groups, Teams, and Yammer. Retaining and deleting emails, documents, and messages are often needed for compliance and regulatory requirements. However, deleting content that no longer has business value also reduces your attack surface.

For more information, see [Learn about data lifecycle management](/microsoft-365/compliance/data-lifecycle-management).

### Encrypt your data and control your encryption keys

[Encryption](/microsoft-365/compliance/encryption) is an important part of your file protection and information protection strategy. The encryption process encodes your data (referred to as plaintext) into ciphertext. Unlike plaintext, ciphertext can't be used by people or computers unless and until the ciphertext is decrypted. Decryption requires an encryption key that only authorized users have. Encryption helps ensure that only authorized recipients can decrypt your content.

[Microsoft Purview Double Key Encryption](/microsoft-365/compliance/double-key-encryption) helps secure your most sensitive data that is subject to the strictest protection requirements. [Microsoft Purview Customer Key](/microsoft-365/compliance/customer-key-overview) helps you meet regulatory or compliance obligations for controlling root keys. You explicitly authorize Microsoft 365 services to use your encryption keys to provide value added cloud services, such as eDiscovery, anti-malware, anti-spam, search indexing, and so on.

## Identify data risks and manage regulatory compliance requirements

Insider risks are one of the top concerns of security and compliance professionals in the modern workplace. Industry studies have shown that insider risks are often associated with specific user events or activities. Protecting your organization against these risks can be challenging to identify and difficult to mitigate. Insider risks include vulnerabilities in various areas and can cause major problems for your organization, ranging from the loss of intellectual property to workplace harassment, and more.

Microsoft Purview offers the following compliance solutions to help your organization manage data risk and compliance requirements:

- [Insider risk management](#detect-and-act-on-risk-activities-with-insider-risk-management)
- [Communication compliance](#detect-and-act-on-inappropriate-and-sensitive-messages-with-communication-compliance)
- [Information barriers](#restrict-communication-and-collaboration-between-users-with-information-barriers)
- [Records management](#manage-business-legal-or-regulatory-record-keeping-requirements-with-records-management)
- [Audit (Premium) and Audit (Standard)](#log-and-search-for-audited-activities-in-sharepoint-and-onedrive-with-audit-premium-or-audit-standard)
- [eDiscovery (Premium) and eDiscovery (Standard)](#identify-and-manage-data-for-legal-cases-with-ediscovery-premium-or-ediscovery-standard)

### Detect and act on risk activities with insider risk management

[Microsoft Purview Insider Risk Management](/microsoft-365/compliance/insider-risk-management) uses the full breadth of service and 3rd-party indicators to help you quickly identify, triage, and act on risky user activity in your organization. By using logs from Microsoft 365 and Microsoft Graph, insider risk management allows you to define specific policies to identify risk indicators. After identifying risky activities, you can take action to mitigate these risks.

### Detect and act on inappropriate and sensitive messages with communication compliance

Protecting sensitive information and detecting and acting on workplace harassment incidents is an important part of compliance with internal policies and standards. [Microsoft Purview Communication Compliance](/microsoft-365/compliance/communication-compliance-policies) helps minimize these risks by helping you quickly detect, capture, and take remediation actions for email and Microsoft Teams communications. These include inappropriate communications containing profanity, threats, and harassment and communications that share sensitive information inside and outside of your organization.

### Restrict communication and collaboration between users with information barriers

[Microsoft Purview Information Barriers (IB)](/microsoft-365/compliance/information-barriers) is a compliance solution that allows you to restrict two-way communication and collaboration between groups and users in Microsoft Teams, SharePoint Online, and OneDrive for Business. Often used in highly regulated industries, IB can help to avoid conflicts of interest and safeguard internal information between users and organizational areas.

### Manage business, legal, or regulatory record-keeping requirements with records management

[Microsoft Purview Records Management](/microsoft-365/compliance/manage-data-governance#microsoft-purview-records-management) helps an organization manage its legal obligations, provides the ability to demonstrate compliance with regulations, and increases efficiency with regular disposition of items that are no longer required to be retained, no longer of value, or no longer required for business purposes. For more information, see [Learn about records management](/microsoft-365/compliance/records-management).

### Log and search for audited activities in SharePoint and OneDrive with Audit (Premium) or Audit (Standard)

[Microsoft Purview auditing solutions](/microsoft-365/compliance/auditing-solutions-overview) provide integrated solutions to help organizations effectively respond to security events, forensic investigations, internal investigations, and compliance obligations. Thousands of user and admin operations performed in dozens of Microsoft 365 services and solutions are captured, recorded, and retained in your organization's unified audit log. Audit records for these events are searchable by security ops, IT admins, insider risk teams, and compliance and legal investigators in your organization. This capability provides visibility into the activities performed across your Microsoft 365 organization.

For more information about auditing solutions, see [Audit (Premium)](/microsoft-365/compliance/advanced-audit) and [Audit (Standard)](/microsoft-365/compliance/set-up-basic-audit).

### Identify and manage data for legal cases with eDiscovery (Premium) or eDiscovery (Standard)

Electronic discovery, or eDiscovery, is the process of identifying, collecting, and auditing electronic information for legal, regulatory, or business reasons. You can use [Microsoft Purview eDiscovery solutions](/microsoft-365/compliance/ediscovery) to search for data and content in Exchange Online, OneDrive for Business, SharePoint Online, Microsoft Teams, Microsoft 365 Groups, and Yammer teams. You can search mailboxes and sites in the same eDiscovery search, and then export the search results for analysis and review.

For more information about eDiscovery solutions, see [eDiscovery (Premium)](/microsoft-365/compliance/overview-ediscovery-20) and [eDiscovery (Standard)](/microsoft-365/compliance/get-started-core-ediscovery).

## Get started with regulatory compliance

Organizations must comply with a complex and evolving web of policies, industry standards, and regional regulations, and also cope with the increasing cost of potential non-compliance. In fact, there are hundreds of updates per day from thousands of regulatory bodies, making it challenging to keep up to date with the rapidly changing compliance landscape. Microsoft Purview Compliance Manager and a detailed collection of compliance offerings can help your organization manage these regulatory requirements.

### Get started with Compliance Manager

[Microsoft Purview Compliance Manager](/microsoft-365/compliance/compliance-manager) is a feature in the Microsoft Purview compliance portal that helps you manage your organization's compliance requirements with greater ease and convenience. Compliance Manager can help you throughout your compliance journey, from taking inventory of your data protection risks to managing the complexities of implementing controls, staying current with regulations and certifications, and reporting to auditors.

### Learn about Microsoft regulatory compliance offerings

Microsoft offers a comprehensive set of [compliance offerings](/compliance/regulatory/offering-home) to help your organization comply with national, regional, international, and industry-specific requirements governing the collection and use of data.

## Deploy Purview compliance solutions

Area-specific solutions bring together the technical guidance you need to understand, plan, and implement integrated compliance solutions for secure and compliant data collaboration:

- [Secure data with Zero Trust](/security/zero-trust/deploy/data)
- [Deploy an information protection solution](/microsoft-365/compliance/information-protection-solution)
- [Deploy a data governance solution](/microsoft-365/compliance/data-governance-solution)
- [Deploy information protection for data privacy regulations](/microsoft-365/solutions/information-protection-deploy)
- [Explore information protection & compliance illustrations](/microsoft-365/solutions/productivity-illustrations)

## Next steps for organizations new to risk and compliance solutions

- [Learn about the Microsoft Purview solution trial](/microsoft-365/compliance/compliance-easy-trials)
- [Quick tasks for getting started with compliance in Microsoft Purview](/microsoft-365/compliance/compliance-quick-tasks)
