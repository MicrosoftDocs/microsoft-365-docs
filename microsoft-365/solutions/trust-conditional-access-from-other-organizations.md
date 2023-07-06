---
title: "Require conditional access for people outside your organization"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 12/08/2021
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

- Multi-factor authentication
- Compliant devices
- Hybrid Azure AD joined devices

When using Azure AD B2B direct connect - such as with shared channels in Teams - you can choose to trust the conditional access settings from other organizations for these options. Note that the conditional access policies are only used for access to the Files tab in the shared channel and the associated SharePoint site.

## Planning considerations for conditional access

Multi-factor authentication can be used with any external account. If your organization doesn't trust multi-factor authentication from other Azure AD organizations, users from those organizations will have to perform multi-factor authentication when accessing resources in your organization. People with third party email addresses (not hosted by Microsoft) will always be prompted for multi-factor authentication.

The options **Require device to be marked compliant** and **Require Hybrid Azure AD joined device** require devices that are managed in Azure AD. If you choose to enable these options, people outside your organization must be using devices that are managed by your organization or by an organization that you trust. People without managed devices will be blocked, including:

- People with third party or consumer email addresses
- People from Microsoft 365 or Azure AD organizations that don't manage devices
- People from Microsoft 365 or Azure AD organizations that require managed devices where your organization doesn't trust their conditional access settings.

We recommend using caution when requiring compliant or hybrid Azure AD joined devices because this will block many external collaboration scenarios. Be sure all of your partner organizations manage their devices and that your organization trusts their settings.

## Set up conditional access requirements for people outside your organization

To require conditional access for people outside your organization, do the following:

1. [Choose conditional access settings to trust from other organizations](#choose-conditional-access-settings-to-trust-from-other-organizations).
1. [Set up conditional access for people outside your organization](#set-up-conditional-access-for-people-outside-your-organization).

## Choose conditional access settings to trust from other organizations

You can choose to trust conditional access settings from all other Microsoft 365 and Azure AD organizations or only from those you specify.

> [!NOTE]
> Changes to cross-tenant access settings may take two hours to take effect.

### Trust conditional access settings from all Azure Active Directory organizations

If you want to trust conditional access settings from all organizations, follow this procedure.

To trust conditional access settings from all Azure Active Directory organizations
1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the **Default settings** tab.
1. Under **Inbound access settings**, select **Edit inbound defaults**.
1. Select the **Trust settings** tab.
1. Choose which settings you want your conditional access policies to accept from other organizations.
1. Select **Save** and close the **Default settings** blade.

### Trust conditional access settings from a specific organization

If you want to trust conditional access settings from a specific organization, follow this procedure.

To trust conditional access settings from a specific organization
1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the **Inbound access** settings for the organization where you want to trust conditional access settings.
1. Select the **Trust settings** tab.
1. Select the **Customize settings** option.
1. Choose which settings you want your conditional access policies to accept from other organizations.
1. Select **Save** and close the **Default settings** blade.

## Set up conditional access for people outside your organization

Setting up a conditional access policy for people outside your organization affects the following:

- People using guest accounts (Azure AD B2B collaboration users)
- External participants in Teams shared channels (Azure AD B2B direct connect users)

> [!IMPORTANT]
> Only select the **Require device to be marked compliant** or **Require Hybrid Azure AD joined device** if everyone outside your organization is using a device that is managed by your organization or by a trusted Microsoft 365 or Azure AD organization.

To set up conditional access for people outside your organization
1. Go to [Azure conditional access policies](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ConditionalAccessBlade).
1. On the **Conditional Access | Policies** blade, click **New policy**.
1. In the **Name** field, type a name.
1. Under **Assignments**, click **Users and groups**.
1. On the **Users and groups** blade, select **Select users and groups**, select the **All guests and external users** check box.
1. Under **Assignments**, click **Cloud apps or actions**.
1. On the **Cloud apps or actions** blade, select **All cloud apps** on the **Include** tab.
1. Under **Access controls**, click **Grant**.
1. On the **Grant** blade, select the options that you want to require for people outside your organization, and then click **Select**.
1. On the **New** blade, under **Enable policy**, click **On**, and then click **Create**.

## Related topics

[Tutorial: Enforce multi-factor authentication for B2B guests](/azure/active-directory/external-identities/b2b-tutorial-require-mfa)
