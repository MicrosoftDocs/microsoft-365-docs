---
title: How does Microsoft 365 Copilot work?
f1.keywords:
- NOCSH
ms.author: mandia
author: MandiOhlinger
manager: dougeby
ms.date: 01/28/2025
audience: Admin
ms.reviewer: mandia, bcarter
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-overview
description: Learn how Microsoft 365 Copilot works within the service boundary of your Microsoft 365 tenant. And, how it uses Microsoft Graph to get your organization data based on user permissions. Copilot also honors Conditional Access and multifactor authentication (MFA).
ms.custom: [copilot-learning-hub]
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Microsoft 365 Copilot architecture and how it works

When you create a Microsoft 365 subscription, a tenant is automatically created for your organization. Your tenant sits inside the **Microsoft 365 service boundary**, where [Microsoft 365 Copilot](microsoft-365-copilot-overview.md) can access your organization's data.

This data includes information that the user can access, including their activities, and the content they create & interact with in Microsoft 365 apps.

:::image type="content" source="media/microsoft-365-copilot-architecture/copilot-tenant-architecture.svg" alt-text="Diagram that shows the Microsoft 365 tenant architecture with Microsoft 365 Copilot and user data." lightbox="media/microsoft-365-copilot-architecture/copilot-tenant-architecture.svg":::

Copilot is a shared service, just like many other services in Microsoft 365. When using Copilot in your tenant:

- Your customer data stays within the Microsoft 365 service boundary.
- Your data is secured based on existing security, compliance, and privacy policies already deployed by your organization.

This article describes how Microsoft 365 Copilot works, including the data flow in a user prompt, how Copilot access data, and how Copilot honors Conditional Access and multifactor authentication (MFA).

This article applies to:

- Microsoft 365 Copilot

## User prompts and Copilot responses

When users open a Microsoft 365 app, like Word or PowerPoint, they can use Copilot to get real-time data.

The following diagram provides a visual representation of how a Copilot prompt works.

:::image type="content" source="media/microsoft-365-copilot-architecture/copilot-query-flow.svg" alt-text="Diagram that shows the relationship between users, devices, apps, and Microsoft 365 Copilot." lightbox="media/microsoft-365-copilot-architecture/copilot-query-flow.svg":::

Let's take a look:

1. In a Microsoft 365 app, a user enters a prompt in Copilot.

2. Copilot preprocesses the input prompt using **grounding** and accesses Microsoft Graph in the user's tenant.

    - Grounding improves the specificity of your prompt, and helps you get answers that are relevant and actionable to your specific task. The prompt can include text from input files or other content Copilot discovers.

    - The data Copilot uses to generate responses is encrypted in transit.

3. Copilot sends the grounded prompt to the LLM. The LLM uses the prompt to generate a response that is contextually relevant to the user's task.

4. Copilot returns the response to the app and the user.

## User access and data privacy

Copilot only accesses data that an individual user is authorized to access, based on, for example, existing Microsoft 365 role-based access controls. Copilot doesn't access data that the user doesn't have permission to access.

The following diagram provides a visual representation of how Copilot and user access work together.

:::image type="content" source="media/microsoft-365-copilot-architecture/copilot-user-access.svg" alt-text="Diagram that shows Microsoft 365 Copilot only accesses the data the user has permissions to access." lightbox="media/microsoft-365-copilot-architecture/copilot-user-access.svg":::

Let's take a look:

- On devices, users open an app and enter a prompt in Copilot.

- Copilot uses [Microsoft Graph](/graph/overview) to access user data that's in the user's unique context. This user data includes emails, chats, and documents that the user has permission to access.

  There are Microsoft 365 services that help control access and security to your organization's data. These services include Restricted SharePoint Search (RSS), SharePoint Advanced Management (SAM), and Microsoft Purview. To learn more, see [Microsoft 365 E3 and E5 feature comparison list for Microsoft 365 Copilot](microsoft-365-copilot-license-feature-overview.md).

- Copilot can't access data that the user doesn't have permission to access. In the diagram, the grayed-out data represents data that Copilot can't access.

- When a user enters a prompt and Copilot responds, this **interaction** is stored in the user's Copilot chat history. Users can review and reuse their previous prompts. They can also [delete their chat history](https://support.microsoft.com/office/delete-your-microsoft-365-copilot-activity-history-76de8afa-5eaf-43b0-bda8-0076d6e0390f).

To learn more, see [Data stored about user interactions with Microsoft 365 Copilot](microsoft-365-copilot-privacy.md#data-stored-about-user-interactions-with-microsoft-365-copilot)

## Copilot honors Conditional Access and MFA

Copilot honors Conditional Access policies and multifactor authentication (MFA).

:::image type="content" source="media/microsoft-365-copilot-architecture/copilot-conditional-access-mfa.svg" alt-text="Diagram that shows Conditional Access and MFA can control access to Microsoft 365 Copilot." lightbox="media/microsoft-365-copilot-architecture/copilot-conditional-access-mfa.svg":::

This means:

- If you [enable and configure Conditional Access policies](/entra/identity/conditional-access/plan-conditional-access), make sure your users are allowed to access Microsoft 365 services. You can manage access based on conditions you configure, including enforcing device compliance policies you set. To learn more, see [Protect AI with Conditional Access policy](/entra/identity/conditional-access/policy-all-users-copilot-ai-security).

  If you use Microsoft Intune, then you can use Intune compliance policies and Conditional Access together. To learn more, see [Use compliance policies to set rules for devices you manage with Intune](/mem/intune/protect/device-compliance-get-started).

- Copilot uses the same MFA features you configure for your tenant. With MFA, like all Microsoft 365 services, users must provide multiple forms of verification before they're allowed to access Copilot.

  If your tenant is using [security defaults](/microsoft-365/solutions/empower-people-to-work-remotely-secure-sign-in), then MFA is enabled by default. If MFA isn't enabled, then Microsoft recommends [enabling MFA](/entra/identity/authentication/tutorial-enable-azure-mfa).

## Related content

- [Microsoft 365 Copilot data protection and auditing architecture](microsoft-365-copilot-architecture-data-protection-auditing.md)
- [Setup and deploy Microsoft 365 Copilot](microsoft-365-copilot-setup.md)
- [Read about Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)
