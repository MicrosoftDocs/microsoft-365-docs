---
title: "Deploy your identity infrastructure for Microsoft 365"
f1.keywords:
- NOCSH
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 09/30/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: medium
ms.collection: 
- M365-identity-device-management
- Strat_O365_Enterprise
- m365initiative-coredeploy
ms.custom:
description: Deploy your identity infrastructure for Microsoft 365.
---

# Deploy your identity infrastructure for Microsoft 365

In Microsoft 365 for enterprise, a well-planned and executed identity infrastructure paves the way for stronger security, including restricting access to your productivity workloads and their data to only authenticated users and devices.

For an overview of identity models and authentication for Microsoft 365 for enterprise, watch this video.

<p> </p>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE2Pjwu]

For information about the identity features of each Microsoft 365 for enterprise plan, the role of Azure Active Directory, both the on-premises and cloud-based components, and the most common authentication configurations, see the [Identity Infrastructure poster](../downloads/m365e-identity-infra.pdf).

[![The Identity Infrastructure poster.](../downloads/m365e-identity-infra.png)](../downloads/m365e-identity-infra.pdf)

Review this two-page poster to quickly ramp up on identity concepts and configurations for Microsoft 365 for enterprise.

You can also [download this poster](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/m365e-identity-infra.pdf) and can print it in letter, legal, or tabloid (11 x 17) format.


## What’s in this solution

This solution steps you through the deployment of an identity infrastructure for yout Microsoft 365 tenant to provide access for your employees and protection against identity-based attacks.

![Deploy your identity infrastructure for Microsoft 365](../../media/deploy-identity-solution-overview/deploy-identity-solution-overview.png)

The steps in this solution are:

1. [Determine your identity model](deploy-identity-solution-identity-model.md)
2. [Protect your Microsoft 365 administrator accounts](protect-your-global-administrator-accounts.md)
3. [Protect your Microsoft 365 user accounts](microsoft-365-secure-sign-in.md)
4. [Deploy your identity model](cloud-only-identities.md)

This solution uses the principles of Zero Trust:

- Verify explicitly: Always authenticate and authorize based on all available data points.
- Use least privilege access: Limit user access with Just-In-Time and Just-Enough-Access (JIT/JEA), risk-based adaptive policies, and data protection.
- Assume breach: Minimize blast radius and segment access. Verify end-to-end encryption and use analytics to get visibility, drive threat detection, and improve defenses.

Unlike conventional intranet access, which trusts everything behind an organization's firewall, Zero Trust treats each sign-in and access as though it originated from an uncontrolled network, whether it's behind the organization firewall or on the Internet. Zero Trust requires protection for the network, infrastructure, identities, endpoints, apps, and data.

## Microsoft 365 capabilities and features

TO BE ADDED

## Next steps

Use these steps to deploy an identity model and authentication infrastructure your Microsoft 365 tenant:

1. [Determine your identity model](deploy-identity-solution-identity-model.md)
2. [Protect your Microsoft 365 administrator accounts](protect-your-global-administrator-accounts.md)
3. [Protect your Microsoft 365 user accounts](microsoft-365-secure-sign-in.md)
4. [Deploy your identity model](cloud-only-identities.md)

[![Determine the identity model to use for your Microsoft 365 tenant](../../media/deploy-identity-solution-overview/identity-solution-identity-model.png)](deploy-identity-solution-identity-model.md)

  
## Additional Microsoft 365 identity resources

### Manage

To manage your Microsoft 365 identity deployment, see:

- [User accounts](manage-microsoft-365-accounts.md)
- [Licenses](assign-licenses-to-user-accounts.md)
- [Passwords](manage-microsoft-365-passwords.md)
- [Groups](manage-microsoft-365-groups.md)
- [Governance](manage-microsoft-365-identity-governance.md)
- [Directory synchronization](view-directory-synchronization-status.md)

### How Microsoft does identity for Microsoft 365

Learn how IT experts at Microsoft [manage identities and secure access](https://www.microsoft.com/en-us/itshowcase/managing-user-identities-and-secure-access-at-microsoft).

>[!Note]
>This IT Showcase resource is available only in English.
>

### How Contoso did identity for Microsoft 365

For an example of how a fictional but representative multinational organization has deployed a hybrid identity infrastructure for Microsoft 365 cloud services, see [Identity for the Contoso Corporation](contoso-identity.md).

<!--

## Plan

To plan for your identity implementation:

- [Understand the different identity models](about-microsoft-365-identity.md)
- [Plan for hybrid identity and directory synchronization](plan-for-directory-synchronization.md)

## Deploy

To deploy your identity implementation:

- [Protect your global administrator accounts](protect-your-global-administrator-accounts.md)
- [Configure and use cloud-only identities](cloud-only-identities.md)
- [Configure and use hybrid identities](prepare-for-directory-synchronization.md)
- [Set up directory synchronization](set-up-directory-synchronization.md)
- If needed, deploy [hybrid identity scenarios](hybrid-solutions.md)

### Identity and device access recommendations

To help ensure a secure and productive workforce, Microsoft provides a set of recommendations for [identity and device access](../security/office-365-security/microsoft-365-policies-configurations.md). For identity, use the recommendations and settings in these articles:

- [Prerequisites](../security/office-365-security/identity-access-prerequisites.md)
- [Common identity and device access policies](../security/office-365-security/identity-access-policies.md)

--> 
