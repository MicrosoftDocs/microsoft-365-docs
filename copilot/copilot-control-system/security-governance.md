---
title: Copilot Control System Security and Governance
description: Learn how to implement data security, AI security, and compliance controls using the Copilot Control System framework for Microsoft 365 Copilot and agents.
#customer intent: As an IT admin, I want to implement security and governance controls for Microsoft 365 Copilot, so that I can mitigate risks related to data security, compliance, and governance.
author: mestew
ms.author: mstewart
manager: scotv
ms.reviewer: bensum,sophieke,ericatoelle
ms.service: microsoft-365-copilot
ms.topic: solution-overview
ms.date: 10/09/2025
---

# Copilot Control System security and governance

When you implement Microsoft 365 Copilot and agents, you might face new and amplified risks related to security, compliance, privacy, and governance. This security and governance framework helps you mitigate these issues in the following components:

- Microsoft 365 Copilot
- Microsoft 365 Copilot Chat
- Microsoft 365 prebuilt agents
- Agents created in Microsoft Copilot Studio and published to Microsoft 365 channels

This article refers to *foundational* and *optimized* controls. In general, those terms refer to the following products and services:

- **Foundational**: controls for security and governance in the Microsoft 365 admin center, SharePoint Advanced Management, and Microsoft Purview with an A3/E3/G3 license.

- **Optimized**: controls in Microsoft Purview and Microsoft Defender for Cloud Apps with an A5/E5/G5 license.

:::image type="content" source="media/security-governance.png" alt-text="A diagram of the Copilot Control System framework highlighting the Security and Governance pillar.":::

> [!NOTE]
> The [Copilot Control System](overview.md) consists of three main pillars:
>
> - **Security and governance** (this article)
> - [Management controls](management-controls.md)
> - [Measurement and reporting](measurement-reporting.md)

The security and governance pillar of the Copilot Control System focuses on the following key capabilities:

- Data security
- AI security
- Compliance and privacy

## Data security

First and foremost, safeguard your organization's information. Depending on your current licensing, use Microsoft Purview and SharePoint Advanced Management to assess oversharing risks. You can also use Microsoft Purview for policy recommendations and to take corrective actions. These actions help you to be confident that sensitive data remains protected, and access is limited to only those users who need it, including with Copilot and agents.

### Foundational data security and governance controls

In SharePoint Advanced Management and Microsoft Purview with an A3/E3/G3 license, you get the following foundational data security and governance controls:

- Identify potentially overshared data across all of Microsoft 365. Routinely run the following reports:

  - [Data access governance reports for SharePoint sites](/sharepoint/data-access-governance-reports) let you identify overshared data for sites. You can also send a site access review to owners of overshared sites.

- Remove organization-wide site access as needed.

  - Use SharePoint to manually configure this access or automate the configuration with Windows PowerShell. For more information, see [Restrict SharePoint site access with Microsoft 365 Groups and Microsoft Entra security groups](/sharepoint/restricted-access-control).

  - To restrict user, Copilot, and agent access to overshared sites while remediating risks, use [SharePoint restricted content discovery](/sharepoint/restricted-content-discovery) or [SharePoint restricted access control](/sharepoint/restricted-access-control).

  - Use Microsoft Purview Information Protection site sensitivity labels. For more information, see [Use sensitivity labels with Microsoft Teams, Microsoft 365 Groups, and SharePoint sites](/purview/sensitivity-labels-teams-groups-sites).

- Improve Copilot and agent responses by archiving or deleting unneeded content.

  - To identify and manage inactive or ownerless SharePoint sites, and then archive or delete them, use [SharePoint site lifecycle management](/sharepoint/site-lifecycle-management).

  - Use [Microsoft Purview Data Lifecycle Management](/purview/retention-policies-sharepoint) to identify and delete files you don't need.

In Microsoft Purview with an A3/E3/G3 license, you get the following foundational data security controls:

- Get notifications when new oversharing occurs with options for remediation. For more information, see [Microsoft Purview Data Loss Prevention](/purview/dlp-learn-about-dlp).

- Secure sensitive data through file level access controls. For more information, see [Apply encryption using Microsoft Purview Information Protection sensitivity labels](/purview/encryption-sensitivity-labels).

- View reports of sensitive data and unprotected files referenced in Copilot and agent interactions. For more information, see the reports in [Microsoft Purview Data Security Posture Management (DSPM) for AI](/purview/ai-m365-copilot).

- Use [Microsoft Purview Information Protection sensitivity labels](/purview/sensitivity-labels) for the following controls:

  - Detect when content contains sensitive data and ask the user to *manually* apply protections.

  - Protect files even if a user moves or downloads them.

### Optimized data security controls

In Microsoft Purview with an A5/E5/G5 license, you get the following optimized data security controls:

- Use [Microsoft Purview data security posture management (DSPM) for AI](/purview/dspm-for-ai) for the following controls:

  - Create data risk assessments targeted to specific Microsoft 365 locations, such as SharePoint sites and OneDrive.

  - Receive and act on policy suggestions to mitigate your specific oversharing risks.

- To detect when content contains sensitive data and *automatically* apply protections, use [Microsoft Purview Information Protection sensitivity labels](/purview/apply-sensitivity-label-automatically).

- Use [Microsoft Purview Insider Risk Management](/purview/insider-risk-management) for the following controls:

- Get alerted to risky user actions that deviate from their usual pattern of behavior. For more information, see [Insider Risk Management policy templates](/purview/insider-risk-management-policy-templates).

- Correlate and sequence risk alerts to identify high severity risk patterns for a user. For more information, see [Insider Risk Management policies for sequence detection](/purview/insider-risk-management-policies).

- Automatically add a user to more strict security policies based on their risk patterns. For more information, see [Adaptive protection for insider risk management](/purview/insider-risk-management-adaptive-protection).

## AI security

You also need to safeguard AI-powered tools and their associated data against evolving threats. The Copilot Control System provides controls to monitor, detect, and respond to AI-related risks. For example, oversharing of sensitive information, anomalous user behavior, and misuse of generative AI capabilities. Use these controls to ensure that AI integrations remain secure, compliant, and resilient against both internal and external threats.

### Foundational AI security controls

Copilot already includes built-in protections against AI-based attacks. These protections include, but aren't limited to, the following protections:

- [Block prompt injection attacks](../microsoft-365-copilot-privacy.md#does-copilot-block-prompt-injections-jailbreak-attacks)

- [Block harmful content](../microsoft-365-copilot-privacy.md#how-does-copilot-block-harmful-content)

- [Detect protected material](../microsoft-365-copilot-privacy.md#does-copilot-provide-protected-material-detection)

In Microsoft Purview with an A3/E3/G3 license, you get the following foundational AI security controls:

- To view prompt and response text and referenced files, search and export with [Microsoft Purview eDiscovery](/purview/edisc).

- For Copilot and agent responses and documents created by Copilot and agents to inherit sensitivity labels and protections, use [Microsoft Purview Information Protection sensitivity labels](/purview/ai-m365-copilot).

### Optimized AI security controls

In Microsoft Purview with an A5/E5/G5 license, you get the following optimized AI security controls:

- To prevent Copilot and agents from processing certain sensitive files and from using them in responses, use [Microsoft Purview Data Loss Prevention for Microsoft 365 Copilot and agents](/purview/dlp-microsoft365-copilot-location-learn-about).

- To get alerted to risky AI use, such as an attempted prompt injection attack or use of sensitive data, use [Microsoft Purview Insider Risk Management](/purview/insider-risk-management-policy-templates).

- To block high risk users from accessing sensitive content using Copilot and agents, use [Adaptive protection for insider risk management](/purview/insider-risk-management-adaptive-protection).

- To view prompt and response text, any web queries used during grounding, and referenced files use activity explorer in [Microsoft Purview Data Security Posture Management for AI](/purview/dspm-for-ai-considerations).

## Compliance and privacy

The third aspect of security and governance in the Copilot Control System is to ensure that you can monitor, audit, and manage how Copilot and agent interactions comply with regulatory and internal standards. Use Microsoft Purview to provide comprehensive oversight of Copilot activities. With these controls, you can protect sensitive information, maintain privacy, and demonstrate regulatory compliance when you deploy and use Microsoft 365 Copilot and agents.

### Foundational compliance and privacy controls

In Microsoft Purview with an A3/E3/G3 license, you get the following foundational compliance and privacy controls:

- To audit Copilot and agent interactions, access detailed log information with [Microsoft Purview Audit for Copilot and AI applications](/purview/audit-copilot).

- To enforce retention and deletion policies for the following features, use [Microsoft Purview Data Lifecycle Management](/purview/data-lifecycle-management):

  - Microsoft 365 Copilot and agent interactions

  - Microsoft Teams meeting recordings and transcripts

- Use [Microsoft Purview eDiscovery](/purview/edisc) for the following controls:

  - Include a user's Copilot and agent prompts and responses in a legal hold. For more information, see [Holds and hold policies](/purview/edisc-features-components).

  - Search for litigation or an investigation and include content that Copilot and agents generate.

### Optimized compliance and privacy controls

In Microsoft Purview with an A5/E5/G5 license, you get the following optimized compliance and privacy controls:

- To receive an alert if a possible compliance or ethical violation occurs and then start an investigation, use [Microsoft Purview Communication Compliance](/purview/communication-compliance).

- To assess and track adherence to regulatory frameworks, use [Microsoft Purview Compliance Manager](/purview/compliance-manager).

## Zero Trust

Microsoft provides detailed documentation for implementing the principles of *Zero Trust* in your organization, and specific considerations for Microsoft 365 Copilot and Copilot Chat. Zero Trust isn't a product or service, but an approach in designing and implementing the following set of security principles:

- Verify explicitly
- Use least privileged access
- Assume breach

For more information, see [Use Zero Trust security to prepare for Copilot](/security/zero-trust/copilots/apply-zero-trust-copilots-overview).

## Related content

- [Data, Privacy, and Security for Microsoft 365 Copilot](../microsoft-365-copilot-privacy.md)

- [SharePoint Advanced Management](/sharepoint/advanced-management)

- [Microsoft Purview](/purview/ai-microsoft-purview)

- [Copilot Control System - Microsoft Adoption](https://adoption.microsoft.com/copilot/control-system/)
