---
title: Identity and device access policies for allowing guest and external user B2B access - Microsoft 365 for enterprise | Microsoft Docs
description: Describes the recommended Conditional Access and related policies for protecting access of guests and external users.
ms.service: microsoft-365-zero-trust
ms.topic: conceptual
ms.author: tracyp
author: MSFTTracyP
audience: Admin
manager: dansimp
f1.keywords:
  - NOCSH
ms.reviewer: martincoetzer
ms.custom:
  - it-pro
  - goldenconfig
ms.collection:
  - M365-identity-device-management
  - m365-security
  - m365solution-identitydevice
  - m365solution-scenario
  - zerotrust-solution
  - tier2
search.appverid: met150
ms.date: 1/31/2023
---

# Policies for allowing guest access and B2B external user access

This article discusses adjusting the recommended Zero Trust identity and device access policies to allow access for guests and external users that have a Microsoft Entra Business-to-Business (B2B) account. This guidance builds on the [common identity and device access policies](zero-trust-identity-device-access-policies-common.md).

These recommendations are designed to apply to the **starting point** tier of protection. But you can also adjust the recommendations based on your specific needs for **enterprise** and **specialized security** protection.

Providing a path for B2B accounts to authenticate with your Microsoft Entra tenant doesn't give these accounts access to your entire environment. B2B users and their accounts have access to services and resources, like files, shared with them by Conditional Access policy.

## Updating the common policies to allow and protect guests and external user access

This diagram shows which policies to add or update among the common identity and device access policies, for B2B guest and external user access.

:::image type="content" source="../../media/microsoft-365-policies-configurations/identity-access-ruleset-guest.svg" alt-text="The summary of policy updates for protecting guest access" lightbox="../../media/microsoft-365-policies-configurations/identity-access-ruleset-guest.svg":::

The following table lists the policies you either need to create and update. The common policies link to the associated configuration instructions in the [Common identity and device access policies](zero-trust-identity-device-access-policies-common.md) article.

|Protection level|Policies|More information|
|---|---|---|
|**Starting point**|[Require MFA always for guests and external users](zero-trust-identity-device-access-policies-common.md#require-mfa-based-on-sign-in-risk)|Create this new policy and configure: <ul><li>For **Assignments > Users and groups > Include**, choose **Select users and groups**, and then select **All guest and external users**.</li><li>For **Assignments > Conditions > Sign-in risk** and select all Sign-in risk levels. </li></ul>|
||[Require MFA when sign-in risk is *medium* or *high*](zero-trust-identity-device-access-policies-common.md#require-mfa-based-on-sign-in-risk)|Modify this policy to exclude guests and external users.|

To include or exclude guests and external users in Conditional Access policies, for **Assignments > Users and groups > Include** or **Exclude**, check **All guest and external users**.

:::image type="content" source="../../media/microsoft-365-policies-configurations/identity-access-exclude-guests-ui.png" alt-text="The controls for excluding guests and external users" lightbox="../../media/microsoft-365-policies-configurations/identity-access-exclude-guests-ui.png":::

## More information

### Guests and external user access with Microsoft Teams

Microsoft Teams defines the following users:

- **Guest access** uses a Microsoft Entra B2B account that can be added as a member of a team and have access to the communications and resources of the team.

- **External access** is for an external user that doesn't have a B2B account. External user access includes invitations, calls, chats, and meetings, but doesn't include team membership and access to the resources of the team.

For more information, see the [comparison between guests and external user access for teams](/microsoftteams/communicate-with-users-from-other-organizations#compare-external-and-guest-access).

For more information on securing identity and device access policies for Teams, see [Policy recommendations for securing Teams chats, groups, and files](zero-trust-identity-device-access-policies-teams.md).

### Require MFA always for guest and external users

This policy prompts guests to register for MFA in your tenant, regardless of whether they're registered for MFA in their home tenant. Guests and external users accessing resources in your tenant are required to use MFA for every request.

### Excluding guests and external users from risk-based MFA

While organizations can enforce risk-based policies for B2B users using Microsoft Entra ID Protection, there are limitations in the implementation of Microsoft Entra ID Protection for B2B collaboration users in a resource directory because their identity exists in their home directory. Due to these limitations, Microsoft recommends you exclude guests from risk-based MFA policies and require these users to always use MFA.

For more information, see [Limitations of ID Protection for B2B collaboration users](/entra/id-protection/concept-identity-protection-b2b#limitations-of-id-protection-for-b2b-collaboration-users).

### Excluding guests and external users from device management

Only one organization can manage a device. If you don't exclude guests and external users from policies that require device compliance, these policies block these users.

## Next step

:::image type="content" source="../../media/microsoft-365-policies-configurations/identity-device-access-steps-next-step-4.png" alt-text="The Policies for Microsoft 365 cloud apps and Microsoft Defender for Cloud Apps" lightbox="../../media/microsoft-365-policies-configurations/identity-device-access-steps-next-step-4.png":::

Configure Conditional Access policies for:

- [Microsoft Teams](zero-trust-identity-device-access-policies-teams.md)
- [Exchange Online](zero-trust-identity-device-access-policies-exchange.md)
- [SharePoint](zero-trust-identity-device-access-policies-sharepoint.md)
- [Microsoft Defender for Cloud Apps](zero-trust-identity-device-access-policies-mcas-saas.md)
