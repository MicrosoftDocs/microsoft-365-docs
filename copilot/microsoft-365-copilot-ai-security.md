---
title: Security for Microsoft 365 Copilot
f1.keywords: NOCSH
ms.author: georgerozo
author: denisebmsft
manager: dansimp
ms.reviewer: georgerozo
ms.date: 09/04/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- m365copilot
- trust-pod
- magic-ai-copilot
description: Learn how Microsoft 365 Copilot integrates AI to enhance productivity while maintaining robust security and compliance measures.
appliesto:
- ✅ Microsoft 365 Copilot
---

# Security for Microsoft 365 Copilot

Security is foundational to our approach at Microsoft; it safeguards customer data, supports system integrity, and includes user safety features. This commitment aligns with our [broader principles of privacy, compliance, and trust](https://www.microsoft.com/trust-center). This article outlines our approach to securing Microsoft 365 Copilot and provides guidance you can use to strengthen your AI security posture.

## What Microsoft does to secure Microsoft 365 Copilot

Microsoft applies a multi-layered, defense-in-depth strategy to secure Microsoft 365 Copilot at every level, grounded in enterprise security, privacy, and compliance standards. This means that if one layer is breached, others still provide protection. Microsoft's approach is guided by [Responsible AI principles](https://www.microsoft.com/en-us/ai/responsible-ai) and is reinforced by the recently expanded [Secure Future Initiative](https://aka.ms/SFIwebsite).

Our comprehensive security posture for AI includes:

- Secure engineering and development practices
- Threat intelligence and risk mitigation
- Privacy and compliance by design

Each aspect of this foundation forms a safer digital ecosystem for you to confidently adopt AI features and tools.

In addition, Microsoft embeds its Responsible AI principle-based governance across the entire AI lifecycle to help ensure that systems are developed and deployed ethically and securely. This strategy helps ensure AI behaves in ways that are trustworthy, responsible, and inclusive. A core part of the Responsible AI program is designed to identify potential risks, measure their propensity to occur, and build mitigations to manage them, outlined in [Transparency note for Microsoft 365 Copilot: Mapping, measuring, and managing risks](/copilot/microsoft-365/microsoft-365-copilot-transparency-note#mapping-measuring-and-managing-risks).

### Secure engineering and development practices

Security is integrated from the ground up through our [Security Development Lifecycle](https://www.microsoft.com/en-us/securityengineering/sdl/) (SDL). This integration helps ensure that vulnerabilities are identified and mitigated early in the development process. Microsoft also provides tailored security guidance and best practices for developers, engineers, and security professionals working with Microsoft AI technologies. See [Build a strong security posture for AI](/security/security-for-ai/posture).

#### Assessments and testing

Microsoft conducts internal red teaming and commissions third-party assessments that include penetration testing. These assessments help evaluate Microsoft 365 Copilot implementations against traditional vulnerabilities and the [Open Web Application Security Project (OWASP) Top 10 for LLMs](https://owasp.org/www-project-top-10-for-large-language-model-applications/). To see the assessments, visit the [Service Trust Portal](https://servicetrust.microsoft.com/viewpage/PenTest). 

#### Execution controls

Microsoft 365 Copilot enforces secure coding and architectural safeguards to prevent misuse, including ransomware generation and remote code execution. Malicious patterns are blocked through prompt inspection and content filtering, while sandboxing helps ensure that Microsoft 365 Copilot operates within constrained execution boundaries. For more information, see [Microsoft 365 Copilot architecture and how it works](/copilot/microsoft-365/microsoft-365-copilot-architecture).

### Threat intelligence and risk mitigation

Microsoft 365 Copilot is protected by a multi-layered defense strategy that combines threat intelligence, AI-specific detection, and architectural containment. Microsoft uses global threat intelligence to monitor adversarial attacks, model manipulation, and data leakage. To see the latest findings, visit the [Microsoft Security: Threat intelligence blog](https://www.microsoft.com/security/blog/topic/threat-intelligence/).

Key practices include:

- Internal red teaming and third-party penetration testing
- Proactive identification to block malicious inputs
- Machine learning classifiers
- Metaprompting
- Content filtering to detect prompt injection attempts, including jailbreaks, eXternalized Prompt Injection Attacks (XPIAs), and agentic vulnerabilities

To view the reports, whitepapers, and other resources, visit the [Service Trust Portal](https://servicetrust.microsoft.com/).

Microsoft 365 Copilot mitigates XPIA and agentic vulnerabilities through layered defenses, including markdown sanitization, malicious prompt classifiers, session hardening, and content security policies. These protections help prevent unauthorized actions and data exfiltration across Microsoft 365 Copilot surfaces, and are deployed automatically through Microsoft's cloud infrastructure without customer action required. This methodology also includes continuous testing and containment strategies.

#### Containment by design

In the event of a successful injection attempt, [Microsoft 365 Copilot's architecture](/copilot/microsoft-365/microsoft-365-copilot-architecture) helps ensure containment by design. Microsoft 365 Copilot operates within the user's identity and access context, limiting the blast radius of any potential compromise. 

- Microsoft 365 Copilot operates within the user's identity and tenant context
- Microsoft 365 Copilot only accesses data the user is authorized to view
- All interactions are scoped to existing permissions, preventing lateral movement or unauthorized data access

#### Prompt injection defenses

Microsoft employs a multi-layered defense strategy across the Microsoft 365 Copilot prompt flow to mitigate risks of prompt injection. Here are some examples of protection features that are active by default and don't require setup:

- The user-in-the-loop design enables users to review, modify, or reject AI-generated content.
- Spam, scam, and suspicious content filtering help block malicious instructions, phishing attempts, and fraudulent material in prompts.
- Microsoft 365 Copilot ignores junk email and untrusted Microsoft Teams chats, including chats from external contacts.
- Microsoft 365 Copilot honors Bing web blocking to filter out adult, low-authority, and malicious sites during web search.
- Microsoft 365 Copilot operates using a stateless LLM architecture. Requests are processed in real time using tenant-scoped [semantic indexing](/microsoftsearch/semantic-index-for-copilot) to help ensure data access and relevance are strictly limited to the user's organizational context.

For more information about how Microsoft safeguards data, enforces privacy controls, and secures AI operations, see [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).

#### Data exfiltration prevention

Microsoft 365 Copilot's layered security model addresses traditional and emerging threats, including scenarios with the potential for data exfiltration, like these:

- Unauthenticated image URLs, where a user generates an image containing sensitive data, extracts the URL using browser tools, and then shares the image externally. If the image is accessible without authentication, it could bypass enterprise controls, such as [Conditional Access](/entra/identity/conditional-access/overview) or [sensitivity labels](/purview/sensitivity-labels#sensitivity-labels-for-microsoft-365-copilot-and-microsoft-365-copilot-chat).
- Malicious images, such as QR codes, where a user in one tenant generates a malicious image and shares an anonymous URL with users in another tenant. If a URL isn't protected by authentication, access controls might not be enforced. 

To help mitigate such scenarios, Microsoft applies its defense-in-depth strategy. This strategy includes continuous monitoring for data leakage vectors, adversarial misuse, and unauthorized access patterns. 

Content generated by Microsoft 365 Copilot is governed by the same access controls and compliance policies as other Microsoft 365 content. This means that user permissions, sensitivity labels, and Conditional Access policies are enforced at the point of content generation and access.

### Privacy and compliance by design

Microsoft 365 Copilot adheres to the privacy and compliance standards described in [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md). Protections that are enforced through security controls include:

- Data access enforcement
- Encryption and isolation
- Compliance tooling
- Safeguarding data across the AI lifecycle
- EU data boundary
- Cross-cloud governance for AI workloads
- Policy integration and enforcement

For more information, see [Enterprise data protection in Microsoft 365 Copilot and Microsoft 365 Copilot Chat](/copilot/microsoft-365/enterprise-data-protection).

#### Data access enforcement

Microsoft 365 Copilot respects [Microsoft Entra ID](/entra/fundamentals/what-is-entra) permissions and [Microsoft Purview policies](/purview/ai-m365-copilot). Microsoft 365 Copilot only surfaces organizational data to which individual users have at least view permissions. Policies are enforced by Microsoft Entra ID, Microsoft Purview, and [Conditional Access](/entra/identity/conditional-access/overview).

[Microsoft 365 Copilot connectors](/microsoft-365-copilot/extensibility/overview-copilot-connector) enhance the value of Microsoft 365 Copilot while maintaining enterprise protections.

#### Encryption and isolation

Data is encrypted in transit and at rest using FIPS 140-2–compliant technologies, with tenant-level isolation. [Double Key Encryption](/purview/double-key-encryption) (DKE) helps to ensure that Microsoft can't access protected content without the customer's key, and the content isn't accessible to Microsoft 365 Copilot.

When you have data that's encrypted by Microsoft Purview Information Protection, Microsoft 365 Copilot honors the usage rights granted to the user. Encryption can be applied by [sensitivity labels](/purview/sensitivity-labels) or by restricted permissions in apps in Microsoft 365 by using Information Rights Management (IRM). 

For more information about using Purview with Microsoft 365 Copilot, see [Microsoft Purview data security and compliance protections for generative AI apps](/purview/ai-microsoft-purview).

#### Cross-cloud governance for AI workloads

[Microsoft Purview](/purview/ai-microsoft-purview) helps you govern AI across hybrid and multicloud environments like Azure, AWS, and Google Cloud. If you have [Microsoft Security Copilot](/copilot/security/microsoft-security-copilot), you get more AI insights and threat detection capabilities.

- Purview enables consistent data classification, labeling, and policy enforcement across clouds, with visibility into how data flows into AI models and plugins.
- Security Copilot detects AI-related risks across platforms, correlates threats, and surfaces posture insights from [Cloud security posture management](/azure/defender-for-cloud/concept-cloud-security-posture-management).

#### Policy integration and enforcement

Microsoft 365 Copilot is part of Microsoft's enterprise compliance program and benefits from a range of certifications and assessments. These include (but aren't limited to):

- FedRAMP
- HiTrust
- SOC 2 Type 1
- ISO/IEC 27001, 27701, 22301, 27018, and 42001

Microsoft Entra ID, Microsoft Purview, and Microsoft 365 for business enforce Conditional Access, sensitivity labels, and information barriers. 

For more information, see the following resources:

- [Meeting regulatory compliance requirements](microsoft-365-copilot-privacy.md#meeting-regulatory-compliance-requirements)
- [Microsoft Purview data security and compliance protections for generative AI apps](/purview/ai-microsoft-purview)
- [Use Microsoft Purview to manage data security & compliance for Microsoft 365 Copilot & Microsoft 365 Copilot Chat](/purview/ai-m365-copilot)

## Secure your data for Microsoft 365 Copilot

Securing your data for AI tools like Microsoft 365 Copilot is a shared responsibility. In addition to what Microsoft does to secure Microsoft 365 Copilot, there are certain tasks your organization must do to manage your data and help ensure you're using AI safely and securely. See the [AI shared responsibility model](/azure/security/fundamentals/shared-responsibility-ai). 

Microsoft Purview provides tools to help you secure and govern your data for use in Microsoft 365 Copilot and AI tools. See the following articles:

- [Use Microsoft Purview to manage data security & compliance for Microsoft 365 Copilot & Microsoft 365 Copilot Chat](/purview/ai-m365-copilot)
- [Microsoft Purview data security and compliance protections for generative AI apps](/purview/ai-microsoft-purview)

Download and review our scenario-based deployment models, presentations, and guides. These resources describe how to rapidly implement a secure-by-default configuration, address oversharing concerns, and prevent data leak to shadow AI. See [Notes from engineering: Microsoft Purview deployment models](https://aka.ms/PurviewBlueprints).