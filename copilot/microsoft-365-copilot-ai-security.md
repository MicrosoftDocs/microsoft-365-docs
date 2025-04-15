---
title: AI security for Microsoft 365 Copilot
f1.keywords: NOCSH
ms.author: adparmar
author: adparmar
manager: pauloliveria
ms.date: 10/24/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn how Microsoft 365 Copilot integrates AI to enhance productivity while maintaining robust security and compliance measures.
appliesto:
  - ✅ Microsoft 365 Copilot
---

# AI security for Microsoft 365 Copilot

AI has revolutionized many sectors, providing unprecedented capabilities and efficiencies. For example, [Microsoft 365 Copilot](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot), our AI-powered productivity tool, coordinates large language models (LLMs), content in Microsoft Graphs, and the Microsoft 365 productivity apps such as Word, Excel, PowerPoint, Outlook, Teams, SharePoint, and others. This integration provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills.

Customers are keen to explore these opportunities, and they're thoughtfully considering the important aspects of security that come with them. Based on our interactions with customers who are on their AI transformation journey, we understand that topics such as data security, privacy, model robustness, and cyberattacks are top of mind.

Microsoft understands how critical these considerations are, which is why we employ a robust defense-in-depth strategy to help protect productivity tools like Microsoft 365 Copilot against security risks. This multi-layered approach involves a combination of advanced threat intelligence, rigorous security practices, and proactive safeguards. For example, in addition to our own red-teaming exercises to test Microsoft 365 Copilot, we engaged Casaba Security to test nine Copilot implementations across the Microsoft 365 product suite. We promptly addressed and resolved the findings of [their testing](https://servicetrust.microsoft.com/DocumentPage/67d59873-b315-4768-a057-8583cd84680a), which focused on identifying Open Worldwide Application Security Project's (OWASP) top 10 for LLM as well as traditional security vulnerabilities in supporting application infrastructure.

Microsoft takes extensive steps to ensure that Microsoft 365 Copilot is compliant with our existing privacy, security, and compliance commitments to our customers. And as AI technologies and use cases continue to evolve, our work is never done: Microsoft is committed to continuously advancing protections for Copilot, learning from our own monitoring and testing of our systems, as well as working with customers, partners, and the broader security industry.

This article provides an overview of Microsoft's overall security posture for AI, and how different Microsoft security solutions work together to help secure your data and interactions in Microsoft 365 Copilot and other AI applications. We will update this article with new information about emerging risks and innovations in solutions as they become available.

## Securing Microsoft 365 Copilot

At Microsoft, security isn't just a priority; it's the foundation for everything we do. This commitment extends to AI: not only does the Microsoft Office of Responsible AI guide safety and security on our AI journey, our recently expanded [Secure Future Initiative](https://aka.ms/SFIwebsite) further reflects our dedication to create a safer digital landscape for everyone.

Our comprehensive security posture for AI has the following pillars:

- **Responsible AI development**: Microsoft champions [responsible AI principles](https://www.microsoft.com/ai/responsible-ai). These principles emphasize fairness, reliability and safety, privacy and security, inclusiveness, transparency, and accountability throughout the AI lifecycle.
- **Security best practices**: We provide tailored resources and best practices for developers, engineers, and security professionals working with Microsoft AI products. These resources help organizations understand and implement security measures during deployment.
- **Security development lifecycle (SDL)**: Our rigorous SDL integrates security considerations throughout the entire AI development process. This proactive approach ensures vulnerabilities are identified and mitigated from the very beginning.
- **Threat research, detection, and mitigation**: We actively invest in strategies to detect and mitigate threats to our AI models. This includes ongoing vulnerability monitoring and developing countermeasures against potential attacks. Microsoft Threat Intelligence, our global network of researchers, also monitors the [threat landscape](https://www.microsoft.com/security/blog/threat-intelligence/ai-threats/) for threat actors and cyberattacks that might take advantage of AI applications.

Microsoft safeguards privacy, security, and reliability for Microsoft 365 Copilot's AI features, from the user input stage through the system output stage. Microsoft 365 Copilot is compliant with our existing [privacy, security, and compliance commitments](microsoft-365-copilot-privacy.md), including the General Data Protection Regulation (GDPR) and European Union (EU) Data Boundary. In keeping with these commitments, Microsoft handles the information in any prompts entered using Copilot, and the retrieved data and generated responses remain secured as Customer Data and subject to our contractual data handling requirements.

The following sections cover how Microsoft addresses various aspects of privacy, security, and compliance that are important customer considerations for adopting Microsoft 365 Copilot.

### Access control and permissions management

Microsoft 365 Copilot accesses resources on behalf of the user, so it can only access resources the user already has permission to access. If the user doesn't have access to a document for example, then Microsoft 365 Copilot working on the user's behalf will also not have access either.

The data that it uses to generate responses is processed by Microsoft pursuant to contractual data handling requirements, including being encrypted in transit, helping safeguard privacy and prevent data leakage. In addition, Microsoft 365 data, including data from Microsoft Graph and SharePoint, adheres to access control and auditing mechanisms.

Microsoft 365 Copilot respects Microsoft 365, Microsoft Entra, and Microsoft Purview policies that further limit user access and permission, such as information barriers, Conditional Access, and sensitivity labels.

Microsoft 365 Copilot inherits data loss prevention (DLP) policies to prevent data exfiltration of Copilot-generated responses. Additionally, it enhances data security by applying sensitivity labels to these responses.

### Protecting data during model training

Microsoft 365 Copilot uses pretrained LLM models hosted by Microsoft; it doesn't use Customer Data to train these models. In addition, prompt and grounding data isn't used to train AI models and is never shared with OpenAI or other third parties.

### Honoring data residency requirements

Microsoft honors data residency commitments as outlined in the Microsoft Product Terms and Data Protection Addendum. Microsoft [Advanced Data Residency (ADR)](/microsoft-365/enterprise/advanced-data-residency) and [Multi-Geo Capabilities](/microsoft-365/enterprise/microsoft-365-multi-geo) offerings include data residency commitments for Microsoft 365 Copilot customers as of March 1, 2024. For European Union (EU) users, Microsoft has additional safeguards to comply with the [EU Data Boundary](/privacy/eudb/eu-data-boundary-learn). EU traffic stays within the EU Data Boundary while worldwide traffic can be sent to the EU and other countries or regions for LLM processing.

All data sent for AI processing is encrypted both in transit and at rest. To ensure that data remains secure throughout the processing lifecycle, Microsoft 365 uses FIPS 140-2-compliant service-side technologies that encrypt customer content at rest and in transit, including BitLocker, per-file encryption, Transport Layer Security (TLS) 1.2, and Internet Protocol Security (IPsec).

### Hardening against prompt injections

Microsoft uses a combination of advanced machine learning for content filtering at multiple layers, rigorous security protocols, and continuous monitoring. Indirect or cross-prompt injection classifiers detect and block prompt injection at multiple layers. Meanwhile, defenses, such as the following, also help minimize the security impact of cross-prompt injection attacks (XPIA):

- XPIA classifiers are used to detect and reduce instances of XPIA

- Requirement for human-in-the-loop (user-initiated or approved actions) for privileged actions and actions that could alter or egress content, such as sending out an email message

- Unnecessary data egress mechanisms are removed to prevent data exfiltration

Additionally, in the context of a prompt injection attack, the attacker can only access data to the extent that the user has access to. This means that the attacker is limited to the permissions and data that the user has within the system. This limitation helps to contain the potential damage of a prompt injection attack to the scope of the user's permissions.

### Adhering to Responsible AI principles

Microsoft Responsible AI principles guide the development and use of Microsoft 365 Copilot. For example, Microsoft 365 Copilot implements classifiers, such as those available in [Azure AI Content Safety](/azure/ai-services/content-safety/), and metaprompting to help reduce the risk of harmful, offensive, or violent content. Microsoft 365 Copilot uses AI-based classifiers and content filters to flag different types of potentially harmful content in user prompts or generated responses. Meanwhile, metaprompting guides model behavior, including making sure that the system behaves in accordance with Microsoft's AI principles and user expectations. 

Microsoft also applies prompt inspection technology and content filters to prevent the use of Microsoft 365 Copilot for ransomware and other malware-based attacks. In addition, the Security Development Lifecycle (SDL) helps secure Microsoft 365 Copilot against remote code execution. One way we do this involves preventing Copilot from running unconstrained and unsandboxed code. 

To help prevent ungrounded content, Microsoft 365 Copilot implements retrieval augmented generation (RAG) by using a dedicated semantic database that can provide information on the content of Microsoft 365 tenant customers. Microsoft continuously and carefully reviews changes in the grounding level of the response. For any changes we make to Microsoft 365 Copilot (including prompt, model, or orchestration), we catch regressions that could adversely impact the user.  

There are [new tools in Azure AI](https://azure.microsoft.com/blog/announcing-new-tools-in-azure-ai-to-help-you-build-more-secure-and-trustworthy-generative-ai-applications/) that help further enhance these safeguards by helping AI app developers build more secure AI applications.

### Protecting copyright and intellectual property

Microsoft has built-in protections against the generation of protected content, which includes the industry's first [Customer Copyright Commitment](https://blogs.microsoft.com/on-the-issues/2023/09/07/copilot-copyright-commitment-ai-legal-concerns/) program to defend customers and compensate for any adverse judgments, in the event of a copyright infringement lawsuit.

### Meeting regulatory requirements

Microsoft 365 Copilot meets regulatory requirements for eDiscovery, audit logging, and retention through several mechanisms: 

- Retention policies: Messages from Microsoft 365 Copilot are automatically included in the retention policy location named Teams chats and Copilot interactions. This means that user prompts and Copilot responses can be retained and deleted for compliance reasons. The data from Copilot messages is stored in a hidden folder in the mailbox of the user who runs Copilot, which compliance administrators can search with eDiscovery tools. 

- Audit logging: Audit logs generated by Microsoft 365 Copilot can be retained for up to 180 days for Audit (Standard) customers and up to one year for Audit (Premium) license holders, with the option to extend up to 10 years.  

- Compliance with Microsoft Purview: Microsoft Purview provides data security and compliance protections for generative AI apps like Copilot. The Microsoft Purview Data Security Posture Management for AI, currently in preview, provides easy-to-use graphical tools and reports to quickly gain insights into AI use within the organization. One-click policies help [protect data and comply with regulatory requirements](/purview/ai-microsoft-purview).  

- Admin controls: Admins can use Microsoft Purview to view and manage stored data, set retention policies, and perform eDiscovery searches. Both admin and user-initiated deletion options are available via Purview.

## Frequently asked questions

### Are the results of Microsoft 365 Copilot reliable?  

While Microsoft safeguards provide strong threat mitigation against misinformation and compromise, as with any AI application, Microsoft 365 Copilot's responses might not always be accurate. You should still apply human judgment to check these responses.

### How does Microsoft treat my prompts and responses? 

Microsoft treats prompts and responses as we treat other more traditional forms of content like emails, documents, and chats, and our contractual commitments are the same.

### Does Microsoft 365 Copilot use my data to train AI models? 

Prompts, responses, and Customer Data accessed through Microsoft Graph aren't used to train foundation LLMs, including those used by Microsoft 365 Copilot. Product improvements are driven through techniques such as customer-reported incidents and synthetic prompt generation.

### What should I do if I see unexpected or offensive content?  

Report any disturbing or suspicious content immediately by selecting the downvote (thumbs down) button beside the prompt response.

### How can I access the Microsoft 365 Copilot vulnerability assessment report?  

The third-party vulnerability assessment of Microsoft 365 Copilot can be downloaded from [Service Trust Portal](https://servicetrust.microsoft.com/DocumentPage/67d59873-b315-4768-a057-8583cd84680a).

### Can Microsoft help me find risks in my AI applications?  

Microsoft has released Python Risk Identification Toolkit for generative AI ([PyRIT](https://github.com/Azure/PyRIT)), an open access automation framework that aims to empower security professionals and machine learning engineers to proactively [find risks](https://www.microsoft.com/security/blog/2024/02/22/announcing-microsofts-open-automation-framework-to-red-team-generative-ai-systems/) in their own generative AI systems. 

### Does Microsoft 365 Copilot have access to data I don't have when grounding content? 

Microsoft 365 Copilot accesses resources on behalf of the user, so it can only access resources you already have permission to access.  

Grounding occurs within the context of your identity, and the semantic index and graph queries are "security trimmed" based on your permissions for the underlying content. This process ensures that only authorized content is included in the grounding process.

### How can I limit data that Microsoft 365 Copilot can use?

The following steps can help administrators control user access and therefore limit what data Microsoft 365 Copilot can use:

- [Restrict SharePoint site access](/sharepoint/restricted-access-control) and [OneDrive content access](/sharepoint/onedrive-site-access-restriction) to specific groups, even after content has been overshared.
- [Use Restricted SharePoint Search](/sharepoint/restricted-sharepoint-search) to limit the websites from which Microsoft 365 Copilot is permitted to reference content.
- [Use Microsoft SharePoint Premium - SharePoint Advanced Management](/sharepoint/advanced-management), which offers reports and tools to analyze and manage overly permissive access-control lists and sharing links across the environment.
- [Review information protection considerations](/purview/ai-microsoft-purview-considerations#information-protection-considerations-for-copilot) for Copilot. Microsoft 365 Copilot honors EXTRACT permissions and automatically [inherits sensitivity labels](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-purview-service-description#microsoft-purview-information-protection-sensitivity-labeling) from referenced content to Copilot-generated responses and files.
- [Apply sensitivity labels](https://support.microsoft.com/office/apply-sensitivity-labels-to-your-files-and-email-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9) to your Microsoft 365 files and email. For Microsoft Purview customers, administrators can [create and configure sensitivity labels](/purview/create-sensitivity-labels) that they want to make available for apps and other services.
- [Use Microsoft Purview Data Security Posture Management for AI](/purview/ai-microsoft-purview) (currently in preview) to discover sensitive data shared with Copilot, see files referenced in Copilot responses, and discover unlabeled files referenced by Copilot and associated SharePoint sites, thereby letting you identify and protect files at risk of overexposure.
- Set up policies that remove old and unused data and limit data sprawl due to data oversharing with [Microsoft Purview Data Lifecycle Management](/purview/data-lifecycle-management).

### How can I use Microsoft security solutions to protect data and AI application interactions?

Microsoft always recommends that you build a strong security foundation for your enterprise. The [Zero Trust](/security/zero-trust/copilots/zero-trust-microsoft-365-copilot) security strategy provides guidance for such a foundation because it treats each connection and resource request as though it originated from an uncontrolled network and a threat actor. Regardless of where the request originates or what resource it accesses, use Zero Trust principles.  

Our comprehensive security solutions—including Microsoft Defender, Entra, Purview, and Intune—work together to help secure your data and interactions in Microsoft 365 Copilot and other AI applications. These products have capabilities that empower you and your teams to: 

- **Identify potential risks related to AI use,** such as sensitive data leaks and unauthorized access to high-risk applications

- **Secure the AI applications** and the sensitive data they process or generate, including prompts and responses

- **Govern AI use responsibly** by retaining and logging interactions, detecting policy violations, and investigating incidents  

For example, we recently introduced new Microsoft Defender and Purview capabilities that provide purpose-built tools for robust security and governance of generative AI applications and their data. In addition, the seamless integration of [Microsoft Security Copilot](/copilot/security/microsoft-security-copilot) across our products streamlines the overall process and experience for security analysts. By prioritizing security and offering these advanced features, Microsoft empowers organizations to confidently apply the benefits and opportunities AI applications provide.

### Where should I report vulnerabilities in Microsoft 365 Copilot and other AI applications? 

If you discover new vulnerabilities in any AI platform, we encourage you to follow responsible disclosure practices for the platform owner. Microsoft's own procedure (for Copilot) is explained in this page: [Microsoft AI Bounty Program](https://www.microsoft.com/msrc/bounty-ai).
