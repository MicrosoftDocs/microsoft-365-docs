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

### Message when trying to access Lighthouse: "Microsoft 365 Lighthouse doesn't support indirect providers at this time, you must be an indirect reseller or direct-bill partner to use this service"

**Cause:** You attempted to access Lighthouse as an indirect-bill partner. At this time, Lighthouse supports only indirect resellers and direct-bill partners.

**Resolution:** For a complete list of qualifications and requirements, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md). If you're not an indirect provider and believe you received this message in error, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md).

### Message when trying to access Lighthouse: "You must be an indirect reseller or direct-bill partner to use this service"

**Cause:** You attempted to access Lighthouse and aren't a Microsoft partner. You must be enrolled in the Cloud Solution Provider (CSP) program as an indirect reseller or direct-bill partner to use Lighthouse.

**Resolution:** For a complete list of qualifications and requirements, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md). If you qualify to access Lighthouse and believe you received this message in error, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md).

### Message when signing in to Lighthouse: "Microsoft 365 Lighthouse was removed for your organization"

**Cause:** Microsoft 365 Lighthouse is disabled in your partner tenant.

**Resolution:** To allow the use of Microsoft 365 Lighthouse, reach out to an admin in your partner tenant and ask them to follow these steps:

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a> and sign in using your partner tenant credentials.
    
2. In the left navigation pane, select **Settings** > **Org settings**.

3. On the **Services** tab, select **Microsoft 365 Lighthouse** from the list of services, and then select the option to allow the use of Microsoft 365 Lighthouse customer management experiences in your tenant.

4. Select **Save**.

## Customer tenant onboarding  

### Customer tenants show a status other than "Managed" in the tenant list  

**Cause:** Your customer tenants don't meet the following criteria:

- Must have delegated access set up for the Managed Service Provider (MSP) to be able to manage the customer tenant*
- Must have at least one Enterprise, Business, Frontline, or Education subscription of Microsoft 365, Office 365, Exchange Online, Windows 365 Business, or Microsoft Defender for Business
- Must have no more than 2500 licensed users
- Must reside in the same geographic region (Americas, European Union, or Asia plus Australia) as the partner organization that manages them

**Resolution:** The following table describes the different tenant statuses that require action and explains how to resolve them.

Either granular delegated administrative privileges (GDAP) plus an indirect reseller relationship or a delegated administrative privileges (DAP) relationship is required to onboard customers to Lighthouse. If DAP and GDAP coexist in a customer tenant, GDAP permissions take precedence for MSP technicians in GDAP-enabled security groups. Coming soon, customers with GDAP-only relationships (without indirect reseller relationships) will be able to onboard to Lighthouse.<br><br>

| Status | Description | Resolution |
|--|--|--|
| Limited | This customer tenant has access to only a limited set of experiences in Lighthouse, including GDAP setup and management, user search, user details, tenant tagging, and service health. | Select the tenant name to see a detailed status of Lighthouse management requirements. For more information, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md). |
| Removed by partner | Your organization has excluded this customer tenant from Lighthouse management. | You need to reactivate the tenant for management by Lighthouse. On the **Tenants** page, select the three dots (more actions) next to the tenant that you want to manage, and then select **Manage tenant**. It can take 24–48 hours for initial customer data to appear in Lighthouse. |
| Removed by customer | The customer chose to disallow the use of Microsoft 365 Lighthouse to manage their tenant. | An admin in the customer tenant needs to go to **Org settings** in the Microsoft 365 admin center, select **Microsoft 365 Lighthouse** on the **Services** tab, and then select the option to allow the use of Microsoft 365 Lighthouse customer management experiences in their tenant. |
| Error | An error occurred during the onboarding process for this customer tenant and we're working on a fix. | If this error persists for more than 48 hours, please contact Support. |

If you confirmed that your customer tenant meets the onboarding criteria and they're still not showing as **Managed** in Lighthouse, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md).

## Access and permissions

### Message when trying to access Lighthouse: "Not Authorized" or "Insufficient privileges" or "Access Restriction: Insufficient or lack of permissions is causing access restriction" 

**Cause:** You don't belong to the correct security group in Microsoft Entra ID, or you haven't been assigned the correct role in Partner Center to be able to access Lighthouse.

**Resolution:** Make sure that an admin from your partner tenant assigned you to the correct GDAP security group in Microsoft Entra ID and assigned you the correct role in Partner Center. Also, keep in mind that some actions in Lighthouse require you to hold the Administrator role in Lighthouse. To learn more about the GDAP roles and what each role can do, see [Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md). For a detailed description of all Microsoft Entra built-in roles and permissions for GDAP, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

For customers with DAP relationships, the partner admin will need to assign you to either the Admin agent or Helpdesk agent role in Partner Center. For a detailed description of all Partner Center roles and permissions, see [Assign roles and permissions to users - Partner Center](/partner-center/permissions-overview).

### I don't see complete data in certain areas of Lighthouse, or I can't perform certain tasks, or I can't access certain tenants

**Cause:** You have limited GDAP access based on the roles assigned to the Microsoft Entra security group that you're in.

**Resolution:** Make sure that an admin from your partner tenant assigned you to the correct GDAP security group in Microsoft Entra ID. Also, keep in mind that some actions in Lighthouse require you to hold the Administrator role in Lighthouse. To learn more about the GDAP roles and what each role can do, see [Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md). For a detailed description of all Microsoft Entra built-in roles and permissions for GDAP, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

## GDAP setup and management

### Message when running GDAP Setup: "Failed to Create Relationship"

**Cause:** You don't have the required roles to set up GDAP in Lighthouse, or settings in the partner or customer tenants are preventing you from completing GDAP setup.

**Resolution:** Make sure you have the required roles to run GDAP Setup, including Administrator (assigned in Lighthouse) and Admin agent (assigned in Partner Center). Also, make sure your account meets security requirements to run GDAP Setup, including making sure you're not a Risky User and that you have multifactor authentication (MFA) set up. To check for and remediate risks in your account, see [Remediate risks and unblock users](/azure/active-directory/identity-protection/howto-identity-protection-remediate-unblock). For instructions on how to mandate MFA, see [Mandating MFA for your partner tenant - Partner Center](/partner-center/partner-security-requirements-mandating-mfa).

You should also make sure Conditional Access policies configured in the customer tenants aren't blocking your ability to establish a GDAP relationship with them. For step-by-step guidance on how to confirm this, see [What is the recommended next step if the conditional access policy set by the customer blocks all external access?](/partner-center/gdap-bulk-migration-tool-faq#what-is-the-recommended-next-step-if-the-conditional-access-policy-set-by-the-customer-blocks-all-external-access-including-csps-access-aobo-to-the-customers-tenant).

### Security groups aren't assigned to GDAP relationships after running GDAP Setup

**Cause:** You didn't complete all steps of GDAP Setup, or the GDAP relationship created by GDAP Setup still requires customer approval.

**Resolution:** You must complete each step of GDAP Setup in order for all settings to apply, and make sure you select **Finish** when done. On the last page of GDAP Setup, customers with an *Active* status will have security groups assigned. If you don't have consent to administer services for any of your customers, you'll need to send them an admin relationship request. Once they approve the request, re-run GDAP Setup to assign the security groups to the GDAP relationship created for those customers.

### Some users in my partner tenant are missing when configuring alerts or assigning users to security groups in GDAP Setup

**Cause:** The **User type** field in your Microsoft Entra ID account is either blank or set to *Guest*.

**Resolution:** Make sure that an admin from your partner tenant has set **User type** to *Member* in your Microsoft Entra ID account.

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

## Sales Advisor

### Message when viewing the Sales Advisor Opportunities page in Lighthouse: "You don't have permission to view the information on this page"

**Cause:** You don't have the correct permissions in Partner Center to view the Sales Advisor pages in Lighthouse.

**Resolution:** Verify that you hold the Account Manager role in Lighthouse. If you don't hold the Account Manager role, reach out to someone who holds the Administrator role in Lighthouse and ask them to assign the role to you. For more information, see [Get access to Sales Advisor within Microsoft 365 Lighthouse](m365-lighthouse-get-access-to-sales-advisor.md).

### Message when viewing the Sales Advisor Opportunities page in Lighthouse: "There are no opportunities"

**Cause 1:** Sales Advisor's propensity model may not be generating new recommendations for your customers. This means that there are currently no opportunities for you to view or act on.

**Resolution:** Check back in two weeks to see if any new recommendations have been generated.

**Cause 2:** There's a technical problem on our backend that's preventing opportunities from being displayed.

**Resolution:** Open a service request by following the instructions in [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md). To create a Lighthouse service request, make sure you have a partner tenant role and at least one Microsoft Entra role assigned to you with the following property set: **microsoft.office365.supportTickets/allEntities/allTasks**. For a complete list of Microsoft Entra roles, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

### Message when trying to access Lighthouse from the Partner Insights tab of Sales advisor: "You must be an indirect reseller or direct-bill partner to use this service" or I'm redirected to the Lighthouse Home page but can't sign in

**Cause 1:** Microsoft 365 Lighthouse hasn't been deployed in your partner tenant yet.

**Resolution:** Work with someone who holds the Administrator role in Lighthouse to deploy Lighthouse in your partner tenant. For more information, see [Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md).

**Cause 2:** Your organization has multiple partner tenants and you attempted to access Lighthouse using credentials for a partner tenant that hasn't yet deployed Lighthouse.

**Resolution:** Use the same Microsoft Entra credentials that you used to sign in to Partner Center to access Lighthouse. If you're unsure, reach out to someone in your partner tenant who has the appropriate permissions to confirm which partner tenants have deployed Lighthouse. If needed, have them deploy Lighthouse to the partner tenant that you're trying to use. For more information, see [Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md). 

**Cause 3:** You attempted to access Lighthouse from a partner tenant that isn't qualified to use Lighthouse. At this time, Lighthouse supports only indirect resellers and direct-bill partners.

**Resolution:** For a complete list of qualifications and requirements, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md). If you're not an indirect provider and believe you received this message in error, contact Support. For more information, see [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md).

### Data or opportunities displayed on Sales Advisor pages seem inaccurate

**Cause:** If you see an opportunity with a customer that you don't recognize, you may have incomplete or incorrect information regarding the partner relationship that your organization has with that customer.

**Resolution:** Open a service request by following the instructions in [Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md). To create a Lighthouse service request, make sure you have a partner tenant role and at least one Microsoft Entra role assigned to you with the following property set: **microsoft.office365.supportTickets/allEntities/allTasks**. For a complete list of Microsoft Entra roles, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

## Related content

[Known issues with Microsoft 365 Lighthouse](m365-lighthouse-known-issues.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md) (article)
