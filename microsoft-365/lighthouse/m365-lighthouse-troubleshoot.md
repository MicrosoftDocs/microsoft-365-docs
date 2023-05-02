---
title: "Troubleshoot error messages and problems in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: crimora
ms.date: 05/02/2023
audience: Admin
ms.topic: troubleshooting
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, get help troubleshooting error messages and problems."
---

# Troubleshoot error messages and problems in Microsoft 365 Lighthouse

This article describes error messages and problems that you might encounter while using Microsoft 365 Lighthouse and provides troubleshooting steps you can take to resolve them.

## Partner onboarding

### Message when trying to access Lighthouse: "Microsoft 365 Lighthouse doesn't support indirect providers at this time, you must be an indirect reseller or direct bill partner to use this service"

**Cause:** You attempted to access Lighthouse as an indirect-bill partner. At this time, Lighthouse supports only indirect resellers and direct-bill partners.

**Resolution:** For a complete list of qualifications and requirements, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md). If you're not an indirect provider and believe you received this message in error, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md).

### Message when trying to access Lighthouse: "You must be an indirect reseller or direct-bill partner to use this service"

**Cause:** You attempted to access Lighthouse and aren't a Microsoft partner. You must be enrolled in the Cloud Solution Provider (CSP) program as an indirect reseller or direct-bill partner to use Lighthouse.

**Resolution:** For a complete list of qualifications and requirements, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md). If you qualify to access Lighthouse and believe you received this message in error, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md).

### Message when signing in to Lighthouse: "Accept the Partner Amendment"

**Cause:** You attempted to access Lighthouse before a Global Administrator in the partner tenant has signed the partner amendment.

**Resolution:** A Global Administrator must sign in to Lighthouse and accept the partner amendment before you can access and work in Lighthouse. If the error persists after a Global Administrator has signed the amendment, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md).

## Customer tenant onboarding  

### Customer tenants show a status other than "Active" in the tenant list  

**Cause:** Your customer tenants don't meet the following criteria:

- Must have delegated access set up for the Managed Service Provider (MSP) to be able to manage the customer tenant*
- Must have at least one Microsoft 365 Business Premium, Microsoft 365 E3, Microsoft 365 E5, Windows 365 Business, or Microsoft Defender for Business license
- Must have no more than 2500 licensed users
- Must reside in the same geographic region (Americas, European Union, or Asia plus Australia) as the partner organization that manages them

**Resolution:** The following table describes the different tenant statuses that require action and explains how to resolve them.

Either granular delegated admin privileges (GDAP) plus an indirect reseller relationship or a delegated admin privileges (DAP) relationship is required to onboard customers to Lighthouse. If DAP and GDAP coexist in a customer tenant, GDAP permissions take precedence for MSP technicians in GDAP-enabled security groups. Coming soon, customers with GDAP-only relationships (without indirect reseller relationships) will be able to onboard to Lighthouse.<br><br>

| Status | Description | Resolution |
|--|--|--|
| Inactive | Your organization has excluded this customer tenant from Lighthouse management. | You need to reactivate the tenant. On the **Tenants** page, select the three dots (more actions) next to the tenant that you want to reactivate, and then select **Activate tenant**. It can take 24–48 hours for initial customer data to appear in Lighthouse. |
| Limited | This customer tenant has access to only a limited set of experiences in Lighthouse, including GDAP setup and management, user search, user details, tenant tagging, and service health. | Select the tenant name to see a detailed status of Lighthouse management requirements. For more information, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md). |
| In process | An error occurred during the onboarding process for this customer tenant and we're working on a fix. | If this error persists for more than 48 hours, please contact Support. |

If you confirmed that your customer tenant meets the onboarding criteria and they're still not showing as **Active** in Lighthouse, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md).

## Access and permissions

### Message when trying to access Lighthouse: "Not Authorized" or "Insufficient privileges" or "Access Restriction: Insufficient or lack of permissions is causing access restriction" 

**Cause:** You don't belong to the correct security group in Azure AD, or you haven't been assigned the correct role in Partner Center to be able to access Lighthouse.

**Resolution:** Make sure that an admin from your partner tenant with the appropriate permissions has assigned you to the correct GDAP security group in Azure AD and assigned you the correct role in Partner Center. Also, keep in mind that some actions in Lighthouse require you to be a Global Administrator. To learn more about the GDAP roles and what each role can do, see [Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md). For a detailed description of all Azure AD built-in roles and permissions for GDAP, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).

For customers with DAP relationships, the partner admin will need to assign you to either the Admin agent or Helpdesk agent role in Partner Center. For a detailed description of all Partner Center roles and permissions, see [Assign roles and permissions to users](/partner-center/permissions-overview).

### I don't see complete data in certain areas of Lighthouse, or I can't perform certain tasks, or I can't access certain tenants

**Cause:** You have limited GDAP access based on the roles assigned to the Azure AD security group that you're in.

**Resolution:** Make sure that an admin from your partner tenant with the appropriate permissions has assigned you to the correct GDAP security group in Azure AD. Also, keep in mind that some actions in Lighthouse require you to be a Global admin. To learn more about the GDAP roles and what each role can do, see [Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md). For a detailed description of all Azure AD built-in roles and permissions for GDAP, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).

## GDAP setup and management

### Message when running GDAP Setup: "Failed to Create Relationship"

**Cause:** You don't have the required roles to set up GDAP in Lighthouse, or settings in the partner or customer tenants are preventing you from completing GDAP setup.

**Resolution:** Make sure you have the required roles to run GDAP Setup, including Global Administrator (assigned in Azure AD) and Admin agent (assigned in Partner Center). Also, make sure your account meets security requirements to run GDAP Setup, including making sure you're not a Risky User and that you have multifactor authentication (MFA) set up. To check for and remediate risks in your account, see [Remediate risks and unblock users](/azure/active-directory/identity-protection/howto-identity-protection-remediate-unblock). For instructions on how to mandate MFA, see [Mandating MFA for your partner tenant](/partner-center/partner-security-requirements-mandating-mfa).

You should also make sure Conditional Access policies configured in the customer tenants aren't blocking your ability to establish a GDAP relationship with them. For step-by-step guidance on how to confirm this, see [What is the recommended next step if the conditional access policy set by the customer blocks all external access?](/partner-center/gdap-bulk-migration-tool-faq#what-is-the-recommended-next-step-if-the-conditional-access-policy-set-by-the-customer-blocks-all-external-access-including-csps-access-aobo-to-the-customers-tenant).

### Security groups aren't assigned to GDAP relationships after running GDAP Setup

**Cause:** You didn't complete all steps of GDAP Setup, or the GDAP relationship created by GDAP Setup still requires customer approval.

**Resolution:** You must complete each step of GDAP Setup in order for all settings to apply, and make sure you select **Finish** when done. On the last page of GDAP Setup, customers with an *Active* status will have security groups assigned. If you don't have consent to administer services for any of your customers, you'll need to send them an admin relationship request. Once they approve the request, re-run GDAP Setup to assign the security groups to the GDAP relationship created for those customers.

## Customer tenant management  

### Customer tenant has no data showing in Lighthouse

**Cause:** You're attempting to view data in Lighthouse before tenant onboarding is complete.

**Resolution:** It can take 24–48 hours for initial customer data to appear in Lighthouse. If it's been more than 48 hours since you onboarded the tenant and you're still not able to view or load tenant data, or you're unable to view or load data that you had previously been able to, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md). Be prepared to provide relevant network logs and a list of any options that may have been modified.

### Customer tenant data isn't updating after making changes in the customer tenant

**Cause:** Changes that you make inside the customer tenant may take up to 4 hours to synchronize with the customer tenant data in Lighthouse.

**Resolution:** If it's been more than 4 hours and the customer tenant data is still not updated in Lighthouse, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md). Be prepared to provide customer tenant information.

### Message when applying a baseline to a customer tenant: "Process error occurred"  

**Cause:** You didn't successfully complete the configuration of Microsoft Intune within the customer tenant.

**Resolution:** Verify that you completed the basic configuration steps for Intune within the customer tenant. If the issue persists after verifying that Intune configuration is complete for the customer tenant, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md).

### Can't access partner tenant data in Lighthouse

**Cause**: Lighthouse supports viewing and managing of *customer* tenants only. It doesn't currently support viewing and managing of *partner* tenants.

**Resolution:** Continue using whatever method you've been using to view and manage your partner tenant.

## Device and threat management 

### I don't see any customer tenant data on the Device compliance and Threat management pages of Lighthouse

**Cause 1:** The customer tenant hasn't completed onboarding to Intune. Customer tenant data won't be available on the Device compliance or Threat management pages of Lighthouse until the customer tenant has completed onboarding to Intune.

**Resolution:** Verify that the customer tenant you're trying to view data for has completed onboarding to Intune. Once onboarding is complete in Intune, allow 4 hours for device data to appear in Lighthouse.

**Cause 2:** The customer tenant was recently onboarded to Lighthouse and data is still loading in Lighthouse.

**Resolution:** Once a customer tenant is onboarded to Lighthouse, allow 24–48 hours for initial customer data to appear.

**Cause 3:** The customer tenant device is new and device data is still loading in Lighthouse.

**Resolution:** When a tenant device is added, allow 4 hours for the device data to appear in Lighthouse.

If data is still not appearing on the Device compliance and Threat management pages after following the resolution instructions, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md).

## Related content

[Known issues with Microsoft 365 Lighthouse](m365-lighthouse-known-issues.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md) (article)
