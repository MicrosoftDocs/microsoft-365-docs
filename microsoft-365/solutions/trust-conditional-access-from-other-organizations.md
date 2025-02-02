---
title: Require conditional access for people outside your organization
author: DaniEASmith
ms.author: danismith
manager: jtremper
ms.date: 12/08/2023
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.collection: 
- highpri
- Tier1
- SPO_Content
- M365-collaboration
- m365solution-securecollab
- m365solution-scenario
- m365initiative-externalcollab
ms.localizationpriority: medium
f1.keywords: NOCSH
recommendations: false
description: Learn how to require people outside your organization to pass conditional access checks such as MFA and compliant devices.
---

# Require conditional access for people outside your organization

You can require any of the following conditional access options for people outside your organization:

- Multifactor authentication
- Compliant devices
- Microsoft Entra hybrid joined devices

When using Microsoft Entra B2B direct connect - such as with shared channels in Teams - you can choose to trust the conditional access settings from other organizations for these options. Note that the conditional access policies are only used for access to the Files tab in the shared channel and the associated SharePoint site.

## Planning considerations for conditional access

Multifactor authentication can be used with any external account. If your organization doesn't trust multifactor authentication from other Microsoft Entra organizations, users from those organizations must perform multifactor authentication when accessing resources in your organization. People with email addresses not hosted by Microsoft are always prompted for multifactor authentication.

The options **Trust compliant devices** and **Trust Microsoft Entra hybrid joined device** require devices that are managed in Microsoft Entra ID. If you choose to enable these options, people outside your organization must be using devices that are managed by your organization or by an organization that you trust. People without managed devices will be blocked, including:

- People with email addresses not hosted by Microsoft, including consumer email addresses
- People from Microsoft 365 or Microsoft Entra organizations that don't manage devices
- People from Microsoft 365 or Microsoft Entra organizations that require managed devices where your organization doesn't trust their conditional access settings.

We recommend using caution when requiring compliant or Microsoft Entra hybrid joined devices because this blocks many external collaboration scenarios. Be sure all of your partner organizations manage their devices and that your organization trusts their settings.

## Set up conditional access requirements for people outside your organization

To require conditional access for people outside your organization, do the following:

1. [Choose conditional access settings to trust from other organizations](#choose-conditional-access-settings-to-trust-from-other-organizations).
1. [Set up conditional access for people outside your organization](#set-up-conditional-access-for-people-outside-your-organization).

## Choose conditional access settings to trust from other organizations

You can choose to trust conditional access settings from all other Microsoft 365 and Microsoft Entra organizations or only from those you specify.

> [!NOTE]
> Changes to cross-tenant access settings may take two hours to take effect.

<a name='trust-conditional-access-settings-from-all-azure-active-directory-organizations'></a>

### Trust conditional access settings from all Microsoft Entra organizations

If you want to trust conditional access settings from all organizations, follow this procedure.

To trust conditional access settings from all Microsoft Entra organizations
1. Sign in to [Microsoft Entra ID](https://entra.microsoft.com) using a Security Administrator account.
1. Expand **External Identities**, and then select **Cross-tenant access settings**.
1. Select the **Default settings** tab.
1. Under **Inbound access settings**, select **Edit inbound defaults**.
1. Select the **Trust settings** tab.
1. Choose which settings you want your conditional access policies to accept from other organizations.
1. Select **Save** and close the **Default settings** blade.

### Trust conditional access settings from a specific organization

If you want to trust conditional access settings from a specific organization, follow this procedure.

To trust conditional access settings from a specific organization
1. Sign in to [Microsoft Entra ID](https://entra.microsoft.com) using a Security Administrator account.
1. Expand **External Identities**, and then select **Cross-tenant access settings**.
1. Select the **Inbound access** settings for the organization where you want to trust conditional access settings.
1. Select the **Trust settings** tab.
1. Select the **Customize settings** option.
1. Choose which settings you want your conditional access policies to accept from other organizations.
1. Select **Save** and close the **Inbound access settings** blade.

## Set up conditional access for people outside your organization

Setting up a conditional access policy for people outside your organization affects the following:

- People using guest accounts (Microsoft Entra B2B collaboration users)
- External participants in Teams shared channels (Microsoft Entra B2B direct connect users)

> [!IMPORTANT]
> Only select the **Require device to be marked compliant** or **Require Microsoft Entra hybrid joined device** if everyone outside your organization is using a device that is managed by your organization or by a trusted Microsoft 365 or Microsoft Entra organization.

To set up conditional access for people outside your organization
1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com).
1. Browse to **Protection** > **Conditional Access**.
1. Select **Create new policy**.
1. Give your policy a name.
1. Under **Assignments**, select **Users or workload identities**.
   1. Under **Include**, select **All guest and external users**
   1. Under **Exclude**, select **Users and groups** and choose your organization's emergency access or break-glass accounts. 
1. Under **Target resources** > **Cloud apps** > **Include**, select **All cloud apps**.
   1. Under **Exclude**, select any applications that don't require multifactor authentication.
1. Under **Access controls** > **Grant**, select **Grant access**, **Require multifactor authentication**, and select **Select**.
1. Choose if you want to enable the policy and select **Create**.

## Related topics

[Tutorial: Enforce multifactor authentication for B2B guests](/entra/external-id/b2b-tutorial-require-mfa)
