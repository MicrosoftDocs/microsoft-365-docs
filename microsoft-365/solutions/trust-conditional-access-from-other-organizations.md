---
title: "Require conditional access for people outside your organization"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.collection: 
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

Configure whether your Conditional Access policies will accept claims from other Azure AD organizations when external users access your resources. The default settings apply to all external Azure AD organizations except those with organization-specific settings.

You'll first need to configure Conditional Access for guest users on all cloud apps if you want to require multi-factor authentication or require a device to be compliant or hybrid Azure AD joined.





- Trust multifactor authentication from other Azure AD tenants
- Trust compliant devices
- Trust hybrid Azure AD joined devices


Multifactor authentication can be used with any external account. If your organization doesn't trust multifactor authentication from other Azure AD organizations, users from those organizations will have to perform multifactor authentication when accessing resources in your organization. People with third party email addresses (not hosted by Microsoft) will always be prompted for multifactor authentication.

The options **Require device to be marked compliant** and **Require Hybrid Azure AD joined device** require devices that are managed in Azure AD. If you choose to enable these options, people outside your organization must be using devices that are managed by your organization or by an organization that you trust. People without managed devices will be blocked, including:

- People with third party or consumer email addresses
- People from Microsoft 365 or Azure AD organizations that don't manage devices


- Choose which conditional access claims you want to trust from other organizations
- Configure a conditional access policy to require conditional access from people outside the organization


## Trust conditional access settings from all Azure Active Directory organizations

Once you've 

1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the **Default settings** tab.
1. Under **Inbound access settings**, select **Edit inbound defaults**.
1. Select the **Trust settings** tab.
1. Choose which claims you want your conditional access policies to accept from other organizations.
1. Select **Save** and close the **Default settings** blade.


## Trust conditional access settings from a specific organization



We recommend only choosing multifactor authentication 
1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the **Inbound access** settings for the organization where you want to trust conditional access settings.
1. Select the **Trust settings** tab.
1. Select the **Customize settings** option.
1. Choose which claims you want your conditional access policies to accept from other organizations.
1. Select **Save** and close the **Default settings** blade.



## Set up conditional access for people outside the organization

Setting up a conditional access policy for people outside your organization affects the following:

- People using guest accounts (Azure AD B2B collaboration users)
- External participants in Teams shared channels (Azure AD B2B direct connect users)


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

[Tutorial: Enforce multi-factor authentication for B2B guest users](/azure/active-directory/external-identities/b2b-tutorial-require-mfa)
