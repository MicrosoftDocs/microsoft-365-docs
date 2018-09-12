---
title: "Phase 2: Identity"
description: The steps to deploy the identity infrastructure for Microsoft 365 Enterprise.

ms.service: o365-solutions
ms.audience: ITPro
ms.topic: article
ms.date: 09/11/2018

localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:

ms.author: joflore
author: MicrosoftGuyJFlo
manager: mtillman
---
# Phase 2: Identity

![](./media/deploy-foundation-infrastructure/identity_icon.png)

Deploying the functionality included in the Microsoft 365 suite inside your organization can be a daunting prospect. This guide breaks down the identity aspect of your deployment into manageable chunks based on feedback from customers and partners who have been successful.

We break things down into the following groupings:

* Day 1 - 30
* Day 31 - 90
* Day 91 and beyond

Customers who have already deployed an identity solution may wish to reflect on this guide to see if they may have missed anything or if guidance has changed.

## Prerequisites

This guide assumes you have Microsoft 365 E3 or E5 licenses. Much of the identity guidance will also work for those with Enterprise Mobility + Security E3 or E5. For more details about licensing see the following articles:

[Microsoft 365 Enterprise](https://www.microsoft.com/licensing/product-licensing/microsoft-365-enterprise.aspx)

[Enterprise Mobility + Security](https://www.microsoft.com/licensing/product-licensing/enterprise-mobility-security.aspx)

In Microsoft 365 Enterprise, a well-planned and executed identity infrastructure paves the way for stronger security and access to your productivity workloads and their data only by authenticated users and devices.

## Plan and deploy: Day 1-30

Azure AD Connect (PHS)
   Implement Azure AD Connect Health
Designate more than one global admin (break glass account)
   Refer to this doc: https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/directory-emergency-access
Use non-global administrative roles
   https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/directory-assign-admin-roles
   Which specific features are needed, then you are likely needed to configure the following. Base it off golden config as an example?
Turn on Identity Protection to view reports
   Remediate the users at risk (admin activity in the portal)
   Take action on risky sign-ins (admin activity in the portal)
Turn on PIM to view reports
Credential Management
   Enable self-service password reset
   Password policy - Use same guidance from PDF + below
      Do not expire passwords, do not require long passwords, password complexity replaced by password protection
      Force PW writeback (already included in pre-reqs)
   Deploy Password Protection (preview)
   For ADFS, use Smart Lockout (2016) or Extranet Lockout (2012)
      Why we do not recommend account lockout policies (not a modern way of managing accounts)
   CA based MFA
   SSPR/MFA registration

## Plan and deploy: Day 31-90

Enable sign in risk and user risk policy automation (based on golden config recs)
Decide on device join strategy
   Use Azure AD Join with Windows 10 devices
Decide on external user strategy
Decide on user lifecycle management strategy
Enable Windows Hello for Business on all Windows 10 PCs + Authenticator App for passwordless
*Use B2B for new external users*

## Plan and deploy: Day 90 and beyond

Remove just in time access eligible admins that no longer need access
   Refer to https://docs.microsoft.com/en-us/azure/active-directory/privileged-identity-management/pim-how-to-add-role-to-user
Require just in time access for global administrators
   Refer to https://docs.microsoft.com/en-us/azure/active-directory/privileged-identity-management/pim-how-to-add-role-to-user
Configure reoccurring access reviews for all administrator roles
   Easiest to get started with admin roles
   Refer to https://docs.microsoft.com/en-us/azure/active-directory/privileged-identity-management/pim-how-to-start-security-review
Manage the user lifecycle holistically
   Azure AD has an approach to managing Identity lifecycle
   Remove manual steps from your employee account lifecycle everywhere you can to prevent unauthorized access:
      Synchronize identities from your source of truth (HR System) to Azure AD. link to supported HR systems)
      Use Dynamic Groups to automatically assign users to groups based on their attributes from HR (or your source of truth), such as department, title, region, and other attributes.
      Use group-based licensing to assign services to your users automatically as soon as they arrive in the cloud. (Coming soon)
         Consider as pre-req
      Use group-based access management/ provisioning to automatically provision users for SaaS applications.
   Migrate your external accounts to Azure AD B2B collaboration








>[!Note]
>If you’ve already deployed an identity infrastructure, please see the [identity exit criteria](identity-exit-criteria.md) to make sure that you meet the required and optional conditions for Microsoft 365 Enterprise.
>

## Plan and deploy your Microsoft 365 Enterprise identity infrastructure 

Use the following steps to plan and deploy your new identity infrastructure in the cloud. You can also use these steps to adapt your existing on-premises or hybrid identity infrastructure to work with Microsoft 365 Enterprise. 


|||
|:-------|:-----|
|![](./media/stepnumbers/Step1.png)| [Plan for users and groups](identity-plan-users-groups.md) |
|![](./media/stepnumbers/Step2.png)| [Synchronize directories](identity-azure-ad-connect.md) |
|![](./media/stepnumbers/Step3.png)| [Customize the Office 365 sign-in page](identity-customize-office-365-sign-in.md) |
|![](./media/stepnumbers/Step4.png)| [Monitor synchronization health](identity-azure-ad-connect-health.md) |
|![](./media/stepnumbers/Step5.png)| [Protect global administrator accounts](identity-designate-protect-admin-accounts.md) |
|![](./media/stepnumbers/Step6.png)| [Set up on-demand global administrators](identity-privileged-identity-management.md) |
|![](./media/stepnumbers/Step7.png)| [Set up multi-factor authentication](identity-multi-factor-authentication.md) |
|![](./media/stepnumbers/Step8.png)| [Simplify user sign-in](identity-single-sign-on.md) |
|![](./media/stepnumbers/Step9.png)| [Simplify password updates](identity-password-writeback.md) |
|![](./media/stepnumbers/Step10.png)| [Simplify password resets](identity-password-reset.md) |
|![](./media/stepnumbers/Step11.png)| [Set up automatic licensing](identity-group-based-licensing.md) |
|![](./media/stepnumbers/Step12.png)| [Set up dynamic group membership](identity-automatic-group-membership.md) |
|![](./media/stepnumbers/Step13.png)| [Monitor tenant and sign-in activity](identity-azure-ad-access-usage-reporting.md) |
|![](./media/stepnumbers/Step14.png)| [Allow users to create and manage their own groups](identity-self-service-group-management.md) |
|![](./media/stepnumbers/Step15.png)| [Protect against credential compromise](identity-azure-ad-identity-protection.md) |
|![](./media/stepnumbers/Step16.png)| [Provide secure remote access to users](identity-azure-ad-application-proxy.md) |

When you've completed these steps, go to the [exit criteria](identity-exit-criteria.md) for this phase to ensure that you meet the required and optional conditions for Microsoft 365 Enterprise.

## How Microsoft does Microsoft 365 Enterprise

Learn how IT experts at Microsoft planned for and deployed the identity capabilities of Microsoft 365 Enterprise with these resources:

- [Managing user identities and secure access at Microsoft](https://www.microsoft.com/itshowcase/Article/Content/931/Managing-user-identities-and-secure-access-at-Microsoft)
- [Using Azure AD Privileged Identity Management for elevated access](https://www.microsoft.com/itshowcase/Article/Content/887/Using-Azure-AD-Privileged-Identity-Management-for-elevated-access)

## Next step

|||
|:-------|:-----|
|![](./media/stepnumbers/Step1.png)| [Plan for users and groups](identity-plan-users-groups.md) |
