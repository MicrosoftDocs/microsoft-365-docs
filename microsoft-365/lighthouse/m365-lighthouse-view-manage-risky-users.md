---
title: "View and manage risky users in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: ragovind
ms.date: 06/09/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to view and manage risky users."
---

# View and manage risky users in Microsoft 365 Lighthouse

Microsoft collects and analyzes trillions of user sign-in signals each day. These signals are used to help build good user sign-in behavior patterns and identify potential risky sign-in attempts. Azure Active Directory (Azure AD) Identity Protection uses these signals to review user sign-in attempts and take action if there's suspicious activity.

Microsoft 365 Lighthouse helps manage risks detected by Azure AD Identity Protection by providing a single view of risky users across all your managed tenants. You can quickly secure risky users by either resetting their password or blocking them from signing in to their Microsoft 365 account. You can also view insights to better understand a user's risk and determine next steps.

Azure AD Identity Protection identifies risks of many types, including:

- Leaked credentials
- Anonymous IP use
- Atypical travel
- Signing in from infected devices
- Signing in from IP addresses with suspicious activity
- Signing in from unfamiliar locations

## Before you begin

The following conditions must be met before users can appear in the risky users list:

- The customer tenant must have an Azure AD Premium license for each user. For more information on which licenses support Azure AD Identity Protection, see [What is Identity Protection?](/azure/active-directory/identity-protection/overview-identity-protection)

- The customer tenant must be active within Microsoft 365 Lighthouse. To determine if a tenant is active, see [Overview of the Windows 365 (Cloud PCs) page in Microsoft 365 Lighthouse](m365-lighthouse-tenant-list-overview.md).

## Review detected risks and take action

In Azure AD Identity Protection, risk detections include any identified suspicious actions related to user accounts in Azure AD.

1. In the left navigation pane in Lighthouse, select **Users** > **Risky users**.

2. On the **Risky Users** page, review the users in the list with a risk state of **At risk**.

3. Select **View risk detections** to get detailed information about the risks detected for each user. For more information about risk types and detection, see [What is risk?](/azure/active-directory/identity-protection/concept-identity-protection-risks).

4. For each user, assess the risk detections and select one of the following actions, as appropriate:

    - Reset password – change or reset the user password.

    - Block sign-in - prevent anyone from signing in as this user.

    - Confirm user compromised – set risk state to confirmed compromised.

    - Dismiss user risk - set risk state to dismissed.

## Take action on multiple user accounts at once

To take action on multiple affected users at once:

1. In the left navigation pane in Lighthouse, select **Users** > **Risky users**.

2. On the **Risky Users** page, select the set of users you want to take action on.

3. Choose one of the following actions to perform:

    - Reset password

    - Block sign-in

    - Confirm user compromised

    - Dismiss user risk

> [!NOTE]
> If the organization you are managing has an Azure AD Premium P2 license, it is recommended you enable User risk-based conditional access policies. For more information, see [Conditional Access: User risk-based Conditional Access](/azure/active-directory/conditional-access/howto-conditional-access-policy-risk-user).

## Related content
[Tutorial: Use risk detections for user sign-ins to trigger Azure AD Multi-Factor Authentication or password changes](/azure/active-directory/authentication/tutorial-risk-based-sspr-mfa) (article)\
[What is risk?](/azure/active-directory/identity-protection/concept-identity-protection-risks) (article) \
[Remediate risks and unblock users](/azure/active-directory/identity-protection/howto-identity-protection-remediate-unblock) (article)
