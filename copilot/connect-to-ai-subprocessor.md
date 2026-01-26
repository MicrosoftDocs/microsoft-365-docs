---
title: "Anthropic as a subprocessor for Microsoft Online Services"
ms.author: kwekua
author: kwekuako
ms.update-cycle: 180-days
manager: scotv
ms.date: 12/02/2025
audience: Admin
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-overview
- operations-pod
- OtherAILLMs
appliesto:
- ✅ Microsoft 365 Copilot
description: "Learn about Anthropic as a subprocessor for Microsoft."
---

# Anthropic as a subprocessor for Microsoft Online Services

Microsoft is introducing a new offering with Anthropic AI models as part of Microsoft Online Services, delivering enterprise-grade commitments and safeguards to ensure secure and responsible use of Anthropic models within your organization.

To enable this change, Anthropic has onboarded as a Microsoft subprocessor. As part of this update, we're deprecating the previous option that allowed Microsoft tenant admins to opt-in to use Anthropic models under Anthropic’s separate commercial terms and data processing agreement. This change simplifies the experience and strengthens compliance and security under Microsoft’s enterprise framework.

As a subprocessor, Anthropic will operate with Microsoft oversight through contractual safeguards and appropriate technical and organizational measures. The Microsoft [Product Terms](https://www.microsoft.com/licensing/terms?msockid=344e0e6ad66c6b3e19441848d7416abd) and [Microsoft Data Protection Addendum (DPA)](https://www.microsoft.com/licensing/docs/view/Microsoft-Products-and-Services-Data-Protection-Addendum-DPA?lang=18&msockid=344e0e6ad66c6b3e19441848d7416abd) apply to use of Anthropic models through Microsoft’s enterprise Online Services. Such use is also covered under our [Enterprise Data Protection](enterprise-data-protection.md). The Microsoft Customer Copyright Commitment (CCC) applies to Anthropic models used within products covered by the CCC’s, including Microsoft 365 Copilot and Copilot Studio.

For more information about subprocessor data access, see [Microsoft Data Access Management](https://www.microsoft.com/trust-center/privacy/data-access). To see a list of Microsoft subprocessors, see [Service Trust Portal](https://aka.ms/subprocessor).

Microsoft will enable Anthropic models on by default for most customers in commercial cloud (excluding EU/EFTA and UK). This update gives users in your organization the ability to use multiple AI models in their Microsoft offerings, including in Microsoft 365 Copilot, Researcher, Copilot Studio, Agent Mode in Excel, and Word, Excel, and PowerPoint agents. This affirms Microsoft’s commitment to offering choice between leading AI models while maintaining enterprise-grade security and compliance.

> [!IMPORTANT]
> Anthropic models deployed in Microsoft offerings (including Microsoft 365 Copilot, Researcher, Copilot Studio, Agent Mode in Excel, and Word, Excel, and PowerPoint agents) are currently excluded from the EU Data Boundary, and when applicable, in-country processing commitments. Customers within the EU Data Boundary and customers in the UK will have Anthropic models disabled by default. Anthropic models aren't currently available for use in government clouds (GCC, GCC High, DoD) or sovereign clouds.

Anthropic as a subprocessor is being introduced gradually and isn't yet available to all organizations. During this phased rollout, some features may be limited for your organization. Full availability is expected by the end of February 2026.

## Manage Anthropic's model settings in the Microsoft 365 admin center

Microsoft is making Anthropic models available by default in certain regions. In Microsoft 365 Copilot (web, desktop, and mobile), UI indicators will show when Anthropic and Claude models are in use. In Copilot Studio, creators must select the model during agent creation. In Agent mode for Excel and Researcher, users can select **Try Claude**.

## Opt-in regions and exclusions

In some regions, Anthropic’s models aren't available by default. For these regions, the toggle will appear but the default is set to **Off**. These regions include the [European Union (EU), the European Free Trade Association (EFTA)](/privacy/eudb/eu-data-boundary-learn), and the United Kingdom (UK).

In addition, Anthropic models aren't available in government clouds (GCC, GCC High, DoD) as there's no FedRAMP certification in place yet. They're also not available in other sovereign clouds. No toggle will be present for government or sovereign clouds.

## Opt-in to use Anthropic's models

If your organization is in a region that has Anthropic as a subprocessor set to **Off** by default, you can choose to opt-in so Anthropic's models are available for your organization. You must be a member of the global administrator role to perform this task. For more information, see [About admin roles](https://learn.microsoft.com) and [Global administrator](/entra/identity/role-based-access-control/permissions-reference).

1. Go to the Microsoft 365 admin center and select **Copilot** -\> **Settings**.
2. On the **Data access** page, select **AI providers operating as Microsoft subprocessors**.
3. On the **AI providers operating as Microsoft subprocessors** page, under **Available subprocessors for your organization**, select **Enable Anthropic as a Microsoft subprocessor subject to the above terms**.

> [!NOTE]
> If your organization is in the European Union (EU), the European Free Trade Association (EFTA), or the United Kingdom and you previously opted in to use Anthropic models under Anthropic’s separate commercial terms and data processing agreement, you’ll need to opt in again. The toggle will be set to **Off** by default.

Some features are only available when Anthropic models are enabled. If you turn off Anthropic as a subprocessor, certain features may no longer be accessible.

## Additional controls for Copilot Studio in the Power Platform Admin Center

Once enabled in the Microsoft 365 admin center, additional admin controls are available in the Microsoft Power Platform admin center (PPAC) to allow Anthropic to be used in Copilot Studio. For more information, see [Allow external large language models (LLMs) for generative responses](https://go.microsoft.com/fwlink/?linkid=2334706).

## Disable connection to Anthropic's models

If your organization is in a region that has Anthropic as a subprocessor set to **On** by default, you can opt-out to restrict Anthropic models in the Microsoft 365 admin center. You must be a member of the global administrator role to perform this task. For more information, see [About admin roles](https://learn.microsoft.com) and [Global administrator](/entra/identity/role-based-access-control/permissions-reference).

1. Go to the Microsoft 365 admin center and select **Copilot** -\> **Settings**.
2. On the **User access** page, select **AI providers operating as Microsoft subprocessors**.
3. On the **AI providers operating as Microsoft subprocessors** page, under **Available subprocessors for your organization**, select **Disable Anthropic as a Microsoft subprocessor**.

Once you disable Anthropic as an AI subprocessor, users won't have the option to use Anthropic's AI models. You can choose to enable Anthropic models at a later date if desired.

## Deprecation of legacy Anthropic admin toggle

The legacy Anthropic toggle to opt-in to Anthropic’s separate commercial terms and data processing agreement has been deprecated and replaced by this new Anthropic as a subprocessor admin toggle.

- December 8, 2025: New administrator toggle for Anthropic models appears in the Microsoft 365 admin center. For most commercial cloud customers, it will be enabled **On** by default (except customers in EU/EFTA and UK will be **Off** by default). [Some customer and region exclusions apply](#opt-in-regions-and-exclusions).
- January 7, 2026: Anthropic as a Microsoft subprocessor becomes enabled in your organization. The legacy admin toggle to opt-in to Anthropic’s commercial terms and data processing agreement is deprecated.
    - If you previously opted in to the legacy Anthropic toggle, and you’re in a region where the new toggle is set to OFF by default, you need to opt in to the new subprocessor toggle to use Anthropic’s models.

## Related topics
