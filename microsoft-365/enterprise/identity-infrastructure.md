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

* Azure AD Connect (PHS) [DOC](/azure/active-directory/connect/active-directory-aadconnect#install-azure-ad-connect)
   * Implement Password Hash Sync [DOC](/azure/active-directory/connect/active-directory-aadconnectsync-implement-password-hash-synchronization)
   * Implement Azure AD Connect Health [DOC](/azure/active-directory/connect-health/active-directory-aadconnect-health)
* Designate more than one global admin (break glass account)
   * Refer to this doc: [DOC](/azure/active-directory/users-groups-roles/directory-emergency-access)
* Use non-global administrative roles
   * [DOC](/azure/active-directory/users-groups-roles/directory-assign-admin-roles)
   * Which specific features are needed, then you are likely needed to configure the following. Base it off golden config as an example?
* Turn on Identity Protection to view reports [DOC](/azure/active-directory/identity-protection/enable)
   * Remediate the users at risk (admin activity in the portal)
   * Take action on risky sign-ins (admin activity in the portal)
* Turn on PIM to view reports [DOC](/azure/active-directory/privileged-identity-management/pim-getting-started)
* Credential Management
   * Enable self-service password reset [DOC](/azure/active-directory/authentication/quickstart-sspr)
   * Password policy - Use same guidance from PDF + below NEED A DOC
      * Do not expire passwords, do not require long passwords, password complexity replaced by password protection
      * Force PW writeback (already included in pre-reqs)
   * Deploy Password Protection (preview) [DOC](/azure/active-directory/authentication/concept-password-ban-bad)
   * For ADFS, use Smart Lockout (2016) or Extranet Lockout (2012)
      * Why we do not recommend account lockout policies (not a modern way of managing accounts)
      * Azure AD Smart Lockout for non-ADFS [DOC](/azure/active-directory/authentication/howto-password-smart-lockout)
   * CA based MFA [DOC](/azure/active-directory/authentication/howto-mfa-getstarted)
   * SSPR/MFA Converged registration [DOC](/azure/active-directory/authentication/concept-registration-mfa-sspr-converged)

## Plan and deploy: Day 31-90

* Enable sign in risk and user risk policy automation (based on golden config recs) NEED A DOC
* Decide on device join strategy [DOC](/azure/active-directory/devices/overview)
   * Use Azure AD Join with Windows 10 devices [DOC](/azure/active-directory/devices/azuread-joined-devices-frx)
   * *Use B2B for new external users* [DOC](/azure/active-directory/b2b/add-user-without-invite)
* Decide on external user strategy [DOC](/azure/active-directory/b2b/what-is-b2b)
* Decide on user lifecycle management strategy NEED A DOC
* Enable Windows Hello for Business on all Windows 10 PCs + Authenticator App for passwordless [DOC](/windows/security/identity-protection/hello-for-business/hello-identity-verification)

## Plan and deploy: Day 90 and beyond

* Remove just in time access eligible admins that no longer need access
   * Refer to [DOC](/azure/active-directory/privileged-identity-management/pim-how-to-add-role-to-user)
* Require just in time access for global administrators
   * Refer to [DOC](/azure/active-directory/privileged-identity-management/pim-how-to-add-role-to-user)
* Configure reoccurring access reviews for all administrator roles
   * Refer to [DOC](/azure/active-directory/privileged-identity-management/pim-how-to-start-security-review)
* Manage the user lifecycle holistically
   * Azure AD has an approach to managing Identity lifecycle NEED A DOC
   * Remove manual steps from your employee account lifecycle everywhere you can to prevent unauthorized access:
      * Synchronize identities from your source of truth (HR System) to Azure AD. link to supported HR systems) NEED A DOC
      * Use Dynamic Groups to automatically assign users to groups based on their attributes from HR (or your source of truth), such as department, title, region, and other attributes. [DOC](/azure/active-directory/users-groups-roles/groups-dynamic-membership)
      * Use group-based licensing to assign services to your users automatically as soon as they arrive in the cloud. [DOC](/azure/active-directory/users-groups-roles/licensing-groups-assign)
         * Consider as pre-req
      * Use group-based access management/ provisioning to automatically provision users for SaaS applications. [DOC](/azure/active-directory/manage-apps/what-is-access-management)
   * Migrate your external accounts to Azure AD B2B collaboration [DOC](/azure/active-directory/b2b/hybrid-cloud-to-on-premises)

## Next steps
