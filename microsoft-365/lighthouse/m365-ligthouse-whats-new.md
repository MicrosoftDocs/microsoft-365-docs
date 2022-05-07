---
title: "What's new in Microsoft 365 Lighthouse?"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, see what's new in Microsoft 365 Lighthouse."
---

# What's new in Microsoft 365 Lighthouse?

We're continuously adding new features to [Microsoft 365 Lighthouse](m365-lighthouse-overview.md), fixing issues we learn about, and making changes based on your feedback. Take a look below to see what's available for you today. Some features get rolled out at different speeds to our customers. If you aren't seeing a feature yet, you should see it soon.

## April 2022

### Delegated access type and roles on Tenants page

We've updated the Tenants page to list the Managed Service Provider (MSP)'s delegated access type (None, DAP, GDAP, or Both DAP & GDAP) per customer under the **Delegated access** column. We've also added a new column titled **Your roles** that lists the DAP and GDAP roles per customer for a signed-in user. These two enhancements to the Tenants page will make it easier for partner technicians to understand which types of delegated administrative permissions are available for each customer and which delegated roles have explicitly been granted to them.

To learn more, see [Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md).

**Add screenshot here**

> [!NOTE]
> This functionality is being rolled out and may not be immediately available in all tenants.

## March 2022

### Windows 365 Business integration and management actions

Based on user feedback, we integrated the Windows 365 Business edition into Lighthouse. This will help you manage and monitor all your customers' Cloud PCs from a single place. 

In addition to integrating with Windows 365 Business Cloud PCs in Lighthouse, you can now take the following management actions:

- Restart
- Reprovision
- Rename
 
To learn more about the new features, see [Overview of the Windows 365 (Cloud PCs) page in Microsoft 365 Lighthouse](m365-lighthouse-win365-page-overview.md).

### Microsoft 365 Lighthouse partner amendment

Now that Microsoft 365 Lighthouse is in General Availability, we require our current partners to sign an updated Microsoft 365 Lighthouse partner amendment. All Lighthouse partners that signed up during the preview period will be prompted to complete this new agreement in the coming weeks. Completion will require global administrator rights in the partner tenant and must be completed within 90 days to continue accessing the Lighthouse portal.

## February 2022

### Granular Delegated Access Permissions (GDAP) roles

Microsoft 365 Lighthouse now includes the capability for MSPs to use Granular Delegated Access Permissions (GDAP) roles. With the latest update, MSPs can leverage GDAP roles for their technicians that enable the principle of least privilege access in Lighthouse. This capability reduces the risks inherent in the broad permissions of the Delegated Access Permissions (DAP) role of the Admin Agent by enabling granular controls on the customers' data and settings that each technician will be able to work with.

To learn more about GDAP in Lighthouse, see [Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md).

### Capability to notify users to act on non-compliant devices

As part of the device compliance baseline step, we added the capability to notify users in a customer tenant to act on non-compliant devices. With this change, once you apply the device compliance deployment step for any customer tenant, the device compliance policy created in that tenant will automatically send a notification to users when their device becomes non-compliant reminding them to take appropriate action to bring the device back into compliance.

**Add screenshot here**

### Deployment validation and reporting

Microsoft 365 Lighthouse can now test tenant configurations for deployment steps with Conditional Access policies!  

This new functionality works by detecting existing policies within the tenants you manage and comparing them to your deployment plan. Lighthouse then provides status designations for deployment steps and deployment step processes to help you understand which deployment processes have already been completed, which ones need to be addressed, and where the settings prescribed by the deployment plan are equal to, missing from, or in conflict with the settings included in the existing policies. Knowing this information makes identifying, prioritizing, and resolving policy conflicts faster, easier, and more effective.

### Deployment step to configure Microsoft Defender Firewall

Microsoft 365 Lighthouse has added the Configure Microsoft Defender Firewall deployment step to its default baseline. This step helps MSPs secure their tenant's devices through the default firewall configuration for Windows 10 (and later) devices. Microsoft Defender Firewall blocks unauthorized network traffic flowing into or out of your tenant's devices and reduces the risk of network security threats. A Microsoft Defender Firewall Rules feature is currently under development.

Microsoft Defender Firewall is on by default on Windows 10 (and later) devices. If your customer tenant doesn't have this configured, do the following:

1. On the **Tenants** page in Lighthouse, select the customer tenant to open the tenant's **Overview** page.
2. Select the **Deployment Plan** tab.
3. From the list of deployment steps, select **Configure Microsoft Defender Firewall**.
4. Select **Review and deploy** to deploy this configuration to the customer tenant. 

**Add screenshot here**

### Increase in maximum license limit

We're making it possible to manage more of your customers in Microsoft 365 Lighthouse by increasing the maximum license limit for customer onboarding. Customers with up to 1000 user licenses can now be onboarded to Lighthouse. We'll continue to evaluate this requirement in future Lighthouse releases.

For more information, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

### Support for Advisor customers

We've changed our onboarding requirements to allow existing customer tenants with Advisor relationships to be onboarded to Microsoft 365 Lighthouse.  Customers with both reseller and advisor contracts are now eligible to be in Lighthouse if they meet the requirements for delegated access permissions, have the required licenses, and do not exceed the maximum user count.

For more information, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

## January 2022

### Capability to review audit logs in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse now includes the capability to look at audit logs. You can review past actions to find misconfigurations and risky actions for remediation, support process and security investigation, train employees, and meet compliance and auditing requirements. With the latest update, you can:

- View audit logs to see all actions taken inside Microsoft 365 Lighthouse including what changed in which customer tenants, when and by whom.
- Search and filter audit logs to find specific information.
- Export logs so you can analyze and retain them.
 
In the left navigation pane of Lighthouse, select **Audit logs**. Or, [go directly to the Audit logs page now](https://lighthouse.microsoft.com/#blade/Microsoft_Intune_MTM/Audit.ReactView) to check it out.

## November 2021

### Microsoft 365 services usage data

You can now view usage data for Microsoft 365 services from Microsoft 365 Lighthouse! Understanding how customers use their Microsoft 365 services is critical to helping them get the most out of their IT investments. Instead of using multiple resources to view information across your customers' various productivity, security, and compliance services, Microsoft 365 Lighthouse aggregates them into one simple, powerful view.  

These insights can help inform your customer engagements and deliver additional value to your customers by empowering you to help them understand which services their users actively use and where there may be opportunities to enhance their security or productivity. 

For more information, see [Overview of the Tenants page in Microsoft 365 Lighthouse: Microsoft 365 usage card](m365-lighthouse-tenants-page-overview.md#microsoft-365-usage-card).

### Exchange Online Protection and Microsoft Defender for Office 365 default baseline step

We've added a new step to the default baseline to include guidance for enabling Security Policies for Exchange Online Protection (EOP) and Microsoft Defender for Office 365 (MDO). EOP and MDO help protect users from spam, phishing, and malware emails by sending the emails to the user's quarantine or junk mail folder (coming soon). The deployment plan guides you in setting up EOP and MDO, further expanding your security stance during your next customer tenant deployment plan review.

**Add screenshot here**

### Default tenant tags

You can now designate certain tenant tags as *default* from the **Manage tags** pane on the **Tenants** page, so the next time you sign in to Microsoft 365 Lighthouse, all your views and insights will be filtered by default to show only the tenants that have a default tag. Default tags can help you focus on insights for high-priority customer tenants.

**Add screenshot here**

## October 2021

### Capability to filter by multiple tenant tags

It's now possible to filter data by multiple tenant tags at the same time. This can help you more easily filter the existing views and insights that are available in Microsoft 365 Lighthouse to show relevant customer tenants.

**Add screenshot here**

