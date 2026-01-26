---
title: Microsoft 365 Copilot Agent Management Essentials
f1.keywords:
ms.author: erikre
author: ErikRe
manager: dansimp
ms.date: 12/02/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
description: Learn about the Microsoft 365 Copilot Agent Management Essentials.
---

# Microsoft 365 Copilot Agent Management Essentials

The guidance provided within this set of content has been designed to help you view, manage, create, protect, and understand all aspects of Microsoft 365 Copilot agents.

Key aspects of this content include the following topics:
- [Prerequisites](agent-prerequisites.md) - Understand licensing requirements, admin permissions, and access controls.
- [Blueprint](m365-agents-blueprint.md) - Understand how to enable Microsoft 365 Copilot at scale.
- [Checklist](m365-agents-checklist.md) - Understand how to successfully implement and deploy Copilot agent governance.
- [Visual Guide](m365-agents-visual-map.md) - Follow the guided management paths and links to better understand Copilot agents.
- [Admin Guide](m365-agents-admin-guide.md) - Understand where to start when working with Microsoft 365 Copilot agents.
- [FAQ](m365-agents-faq.md) - Answers to common questions about Microsoft 365 Copilot agents.

> [!NOTE]
> Microsoft Agent 365 is the control plane for AI agents, empowering your organization to confidently deploy, govern, and manage all your agents at scale, regardless of where these agents are built or acquired. For more information, see [Overview of Microsoft Agent 365](/microsoft-agent-365/overview) and [Microsoft Agent 365 documentation](/microsoft-agent-365/).

## Understand agent security, privacy, and compliance

Microsoft applies a multi-layered, defense-in-depth strategy to secure Microsoft 365 Copilot at every level, grounded in enterprise security, privacy, and compliance standards. Each aspect of this foundation forms a safer digital ecosystem for you and your organization to confidently adopt AI features and tools.

Copilot agents use this foundation as part of Copilot's AI [infrastructure](/copilot/microsoft-365/microsoft-365-copilot-architecture), [model](/microsoft-copilot-studio/nlu-gpt-overview), and [orchestrator](/microsoft-365-copilot/extensibility/orchestrator), which means Copilot agents adhere to the security, privacy, and compliance that is provided by Microsoft 365 Copilot. 

> [!NOTE]
> Your organization’s data is maintained within the Microsoft 365 service boundary within your tenant. For more information, see [Microsoft 365 Copilot architecture and how it works](/copilot/microsoft-365/microsoft-365-copilot-architecture).

Copilot and Copilot agents only access data that [individual users are authorized to access](/copilot/microsoft-365/microsoft-365-copilot-architecture#user-access-and-data-privacy) and don't access data that the user don't have permission to access. In addition, Copilot and Copilot agents honors [Conditional Access policies and multifactor authentication (MFA) based on Microsoft Entra ID](/copilot/microsoft-365/microsoft-365-copilot-architecture#copilot-honors-conditional-access-and-mfa).

When you integrate your business workflows as agents for Copilot, your internal data stays within your agent. That data doesn't flow out of [Microsoft Graph](/graph/overview) and it isn't used to train Microsoft 365 Copilot [LLMs](https://azure.microsoft.com/resources/cloud-computing-dictionary/what-are-large-language-models-llms). Copilot does, however, generate a search query to send to your agent on the user's behalf based on their prompt and conversation history with Copilot and data the user has access to in Microsoft 365. 

Microsoft’s comprehensive security posture for AI includes:
- [Secure engineering and development practices](/copilot/microsoft-365/microsoft-365-copilot-ai-security#secure-engineering-and-development-practices)
- [Threat intelligence and risk mitigation](/copilot/microsoft-365/microsoft-365-copilot-ai-security#threat-intelligence-and-risk-mitigation)
- [Privacy and compliance by design](/copilot/microsoft-365/microsoft-365-copilot-ai-security#privacy-and-compliance-by-design)

> [!NOTE]
> You can also use [Microsoft Purview](/purview/ai-m365-copilot), which provides tools to help you discover, secure, and govern your data for use in Microsoft 365 Copilot, Microsoft 365 Copilot Chat, and agents published to Microsoft 365. In addition, Purview can help discover, protect, and govern the interactions (prompts and responses) with these AI apps.

## Zero Trust

To prepare your Microsoft 365 environment for Copilot and Copilot agents, you should apply the principles of Zero Trust to your tenant. The seven layers of protection encompassing [Zero Trust](/security/zero-trust/copilots/zero-trust-microsoft-365-copilot?toc=%2Fcopilot%2Fmicrosoft-365%2Ftoc.json&bc=%2Fcopilot%2Fmicrosoft-365%2Fbreadcrumb%2Ftoc.json#whats-in-this-article) are the following:

1. Data protection
2. Identity and access
3. App protection
4. Device management and protection
5. Threat protection
6. Secure collaboration with Teams
7. User permissions to data

For more information about preparing your Microsoft 365 environment, see [Zero Trust](/security/zero-trust/copilots/zero-trust-microsoft-365-copilot?toc=%2Fcopilot%2Fmicrosoft-365%2Ftoc.json&bc=%2Fcopilot%2Fmicrosoft-365%2Fbreadcrumb%2Ftoc.json#whats-in-this-article).

## RAI

Copilot agents follow the Responsible AI (RAI) requirements included with Microsoft 365. Microsoft is committed to ensuring that our AI systems are guided by our [AI principles](https://www.microsoft.com/ai/principles-and-approach/) and [Responsible AI Standard](https://www.microsoft.com/ai/responsible-ai). These principles include empowering our customers to use these systems effectively and in line with their intended uses. Our approach to responsible AI is continually evolving to address emerging issues proactively.

RAI principles include the following principles:

- Accountability
- Transparency
- Fairness
- Reliability and safety
- Privacy and security
- Inclusiveness

For more information, see [Responsible AI FAQ for Microsoft Copilot in Azure](/azure/copilot/responsible-ai-faq).

## Protect organizational data

Microsoft 365 Copilot works with different Microsoft services to help you protect your organization’s data. When you’re ready to deploy Copilot agents within your organization, you should consider Microsoft’s recommended approach to address oversharing concerns. This approach provides the pilot, deploy, and operate phases to consider when deploying Copilot and Copilot agents. Each phase consists of activities, outcomes, and expected effort needed. For more information, see [Address oversharing concerns in Microsoft 365 Copilot deployment blueprint](/copilot/microsoft-365/microsoft-365-copilot-blueprint-oversharing).

In addition, Microsoft provides SharePoint Advance Management and Microsoft Purview to address oversharing. SharePoint Advance Management provides SharePoint site management and content governance capabilities. Microsoft Purview provides security, compliance, and governance across data and files.

> [!NOTE]
> Microsoft 365 Copilot uses the access rights of the end user to determine the data that can be presented to the end user.  

To better understand aspects of data protection related to Microsoft 365 Copilot, such as sensitivity labels, encryption, oversharing, and data auditing, see the following resources:
- [How data is protected and audited in Microsoft 365 and Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-architecture-data-protection-auditing)
- [Enterprise data protection in Microsoft 365 Copilot and Microsoft 365 Copilot Chat](/copilot/microsoft-365/enterprise-data-protection)
- [Considerations to manage Microsoft 365 Copilot and Channel Agent in Teams for security and compliance](/purview/ai-m365-copilot-considerations)



