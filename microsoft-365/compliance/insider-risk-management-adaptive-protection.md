---
title: Help dynamically mitigate risks with Adaptive Protection (preview)
description: Learn how to help mitigate risks with Adaptive Protection and Data Loss Prevention (DLP) policies.
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection:
- tier1
- purview-compliance
ms.custom: admindeeplinkCOMPLIANCE
---

# Help dynamically mitigate risks with Adaptive Protection (preview)

>[!IMPORTANT]
>Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

Insider risk management policies and alerts are effective in helping you detect and identify potential risks associated with specific user actions in your organization. However, organizations need a more effective and efficient data protection solution that can automatically protect their data against the most critical risks.

Adaptive Protection (AP) in insider risk management uses machine learning to identify and mitigate the most critical risks with the most effective DLP protection controls dynamically, saving security teams valuable time while ensuring better data security. AP helps increase risk mitigation by extending and managing preventative options associated with detected risky action to the capabilities provided by Data Loss Prevention (DLP) policies.

AP helps mitigate these potential risks by using the following features:

- **Context-aware detection**. Helps identify the most critical risks with ML-driven analysis of both content and user activities.
- **Dynamic controls**. Helps enforce effective controls on high-risk users while others maintain productivity.
- **Automated mitigation**. Helps to minimize the impact of potential data security incidents and reduce admin overhead.

AP dynamically assigns appropriate DLP policies to users based on the risk levels defined and analyzed by the machine learning models in insider risk management. With this new capability, static DLP policies become adaptive based on user context, ensuring that the most effective policy, such as blocking data sharing, is applied only to high-risk users while low-risk users can maintain productivity. The policy controls constantly adjust, so when a user's risk level changes, an appropriate policy is dynamically applied to match the new risk level.

Watch the following video to learn more about the AP workflow:

PLACEHOLDER FOR AP VIDEO - RED TIGER VIDEO LINK NEEDED FROM TINA

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Customized risk levels and preventive controls

With AP, your administrators can configure the risk factors or activities for each risk level (*minor*, *moderate*, and *elevated*) based on your organization's needs. For example, you can define the elevated risk level as users who downloaded an unusual volume of highly sensitive information for more than 3 days and have privileged roles, such as Azure Active Directory admins; while the moderate risk level could be the same activity, but the users don't have such as an elevated roles. The configuration helps insider risk management learn an organization's risk priorities so it can apply the machine learning-driven models to understand user context of potential data security risks and assigns risk levels accordingly. 

The risk levels for AP update continuously and automatically based on the users' risk factors, so when users' data security risks increase or decrease, their risk levels will be adjusted accordingly. Based on the risk levels, DLP automatically applies the right level of preventative controls as configured by admins; such as *block*, *block with override*, or *warning*.

For example, with AP, DLP can allow users in the minor or medium risk level to receive policy tips and education on best practices of handling sensitive data, influencing positive behavior changes over time to reduce organizational data risks. For users in the elevated risk level, administrators can use the strictest protection controls, such as blocking users from saving or sharing sensitive data, to minimize the impact of potential data incidents.

## Prerequisites

To get started with AP in your organization, you'll need to configure insider risk management with at least one policy. You'll also need to make sure that your organization's subscription and licensing includes DLP. 

See the following articles to complete the prerequisites for insider risk management and DLP before enabling AP:

- [Get started with insider risk management](insider-risk-management-configure.md)
- [Get started with insider risk management settings](insider-risk-management-settings.md)
- [Subscription and licensing for DLP](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-data-loss-prevention-data-loss-prevention-dlp-for-exchange-online-sharepoint-online-and-onedrive-for-business)

<<<<<<< Updated upstream
## Enable Adaptive Protection


## Manage Adaptive Protection

=======
## Enable and configure Adaptive Protection

### Quick setup

Here’s what is configured when you use the quick setup process for Adaptive Protection:

- Insider risk policy scoped to all users in your org
- Built-in risk levels for Adaptive Protection to define how risky a user’s activity might be
- DLP policy in test mode that only audits user activity

### Custom setup

Step 1: Create insider risk management policy or choose an existing one.
Step 2: Configure risk level settings
Step 3: Create or edit a DLP policy
Step 4: Turn on adaptive protection

### Risk levels, activity detection, and risk level timeframe

Risk levels in AP define how risky a user's activity is and can be based on criteria such as how many exfiltration activities they performed or whether their activity generated a high severity insider risk alert.

- Elevated risk level
- Moderate risk level
- Minor risk level

## Manage Adaptive Protection

### Dashboard


### Users in scope

### DLP policies



>>>>>>> Stashed changes

## Disable Adaptive Protection

