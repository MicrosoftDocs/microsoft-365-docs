---
title: "What's new in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: crimora
ms.date: 08/24/2023
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, see what's been added, changed, and fixed in Microsoft 365 Lighthouse each month."
---

# What's new in Microsoft 365 Lighthouse

We're continuously adding new features to [Microsoft 365 Lighthouse](m365-lighthouse-overview.md), fixing issues we learn about, and making changes based on your feedback. Review this article to discover what we've been working on.

> [!NOTE]
> Features get rolled out at different speeds to our customers. If you aren't seeing a feature yet, you should see it soon.
>
> To see which new features are currently available in your partner tenant, go to the **Home** page of Microsoft 365 Lighthouse, and then either select the **What's new** link in the upper-right corner of the page or select **What's new** on the **What's new & learning resources** card.

## August 2023

### Microsoft Secure Score

Microsoft Secure Score, which is a representation of an organization's security posture, is now integrated into Microsoft 365 Lighthouse. Lighthouse provides an aggregate view of the Secure Score across all your managed tenants, as well as Secure Score details for each individual tenant. You can access Secure Score via a new card on the **Home** page or by selecting a tenant on the **Tenants** page. Once you select a tenant, select the **Scores** tab to see historical Secure Score data for the tenant.

To learn more, see [Microsoft Secure Score](../security/defender/microsoft-secure-score.md).

### Alerts in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse now provides a consolidated view of prioritized alerts so you can quickly view the top alerts you should act on across your managed tenants. You can also configure alert rules based on the data within Lighthouse, which allows you to prioritize items that need immediate attention.

Lighthouse also now supports the ability to configure customized push-alerts to allow integration with your existing ticketing and support systems.

To access this functionality, in the left navigation pane in Lighthouse, select **Alerts**.

To learn more, see [Overview of the Alerts page in Microsoft 365 Lighthouse](m365-lighthouse-alerts-overview.md).

## July 2023

### Sales Advisor is now part of Microsoft 365 Lighthouse

Sales Advisor, formerly known as Project Orland in Partner Center Insights, is now integrated into Microsoft 365 Lighthouse.

Sales Advisor helps you harness the power of AI-driven insights to fuel business growth and deliver scalable managed services to your customers. With Sales Advisor, you can discover proactive, actionable, and personalized recommendations for acquiring new customers, boosting customer retention, and expanding your business with premium offers.

To view Sales Advisor in Lighthouse, in the left navigation pane, select **Sales Advisor** > **Opportunities**. To learn more, see [Overview of Sales Advisor in Microsoft 365 Lighthouse](m365-lighthouse-sales-advisor-overview.md).

## June 2023

### Deployment task for managing Windows updates

You can now deploy Windows update deployment policies to ensure customer tenant devices have the latest security patches, bug fixes, and performance improvements. You'll also gain insight into which tenants are missing the Windows update deployment policies, which tenants are in the process of implementing the policies, and which ones have successfully implemented the policies.

To learn more, see [Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md).

### Access to admin centers from Lighthouse

We've added admin center links to Microsoft 365 Lighthouse so you can more efficiently manage your customers. The admin center links let you to go directly from Lighthouse to the applicable admin center for the selected customer tenant.

You can access the admin center links from the **Tenants** page or by using the **Tenants** filter that's available throughout Lighthouse. On the **Tenants** page, select the three dots (more actions) next to the customer tenant whose services you want to manage, and then select **Manage services** to open the list of admin center links. To use the **Tenants** filter, open the filter, search for the customer tenant whose services you want to manage, and then select the **>** symbol next to the tenant name to open the list of admin center links. 

To learn more, see [Overview of the Tenants page in Microsoft 365 Lighthouse](m365-lighthouse-tenants-page-overview.md).

### "What's new" is now customized for your tenant

Since new features are rolled out gradually across Microsoft 365 Lighthouse partners, we've changed our "What's new" notifications to let you know when new features are available in your partner tenant.

To see which new features are available in your partner tenant, go to the **Home** page of Lighthouse, and then either select the **What's new** link in the upper-right corner of the page or select **What's new** on the **What's new & learning resources** card.

For a complete list of the latest features in Lighthouse, which may or may not yet be available in your partner tenant, refer to the list in this article.

### Risky users for all tenants

The **Risky users** page has been updated to show risky user information for all your onboarded customer tenants, even if the customer tenants don't have Azure Active Directory Premium P1 or above. For example, if a tenant only has a license for Microsoft Defender for Business or Windows 365 Business, you'll still be able to view the user accounts that have been flagged for risky behavior in that tenant.

To see this updated functionality, in the left navigation pane in Microsoft 365 Lighthouse, select **Users** > **Risky users**. 

[Go to the Risky users page now](https://lighthouse.microsoft.com/#view/Microsoft_Intune_MTM/RiskyUsers.ReactView) 

To learn more, see [View and manage risky users in Microsoft 365 Lighthouse](m365-lighthouse-view-manage-risky-users.md).

### Detailed user metrics

You can now view detailed metrics of all your managed user accounts by going to **Users** > **Account management** > **User metrics**. You can see how many users, licensed users, guest users, Global Administrators, inactive users, and unblocked shared mailboxes you have across your customer tenants. This data can help you more efficiently and more effectively manage user accounts to maintain the health of your customer tenants.

From the **User metrics** page, you can also quickly access the Microsoft 365 admin center, where you can view comprehensive user information and take additional actions.

To learn more, see [Overview of the Users page in Microsoft 365 Lighthouse](m365-lighthouse-users-page-overview.md).

## May 2023

### GDAP Setup now checks for required roles

We've updated GDAP Setup in Microsoft 365 Lighthouse to check whether you have the required roles before getting started. If you don't have the required roles, a message will alert you.  

To access GDAP Setup in Lighthouse, go to the **GDAP Setup** card on the **Home** page, and then select **Set up GDAP**.

To learn more, see [Set up GDAP for your customers in Microsoft 365 Lighthouse](m365-lighthouse-setup-gdap.md).

## April 2023

### Configuration drift reporting

Microsoft 365 Lighthouse now has the capability to identify deployment tasks that have regressed&mdash;or drifted&mdash;from a *Compliant* or *Dismissed* state to a state of *Not compliant* or *Not licensed*. 

Deployment tasks can drift from a preferred state for any number of reasons that can be difficult to detect, and understanding how a customer tenant's configuration has drifted from the preferred state can be a complex and labor-intensive process.  

Microsoft 365 Lighthouse not only lets you know which deployment tasks have drifted from which tenants' deployment plans, but it also lets you see which settings, within which configurations, for which users, have drifted from the preferred state so that you can efficiently and effectively restore the tenant to a healthy, productive, and secure state.

### Addition of OneDrive sync configuration to deployment plans

You can now deploy OneDrive policies by using a deployment task within the default baseline. The addition of this configuration helps protect your customer tenants' data by restricting syncing in OneDrive to properly authenticated users.

### New GDAP management capabilities

Managed Service Provider (MSP) technicians responsible for managing granular delegated admin privileges (GDAP) can now get at-a-glance details of all their customers' delegated relationships in Microsoft 365 Lighthouse. This new capability helps ensure GDAP is set up correctly for all of your customers. 

To view the status of your customers' delegated relationships, including delegated access type, whether a GDAP template has been assigned, number of active and pending relationships, nearest expiration date, and security groups with access to manage the customer tenant, go to **Permissions** > **Delegated access**.

## March 2023

### Microsoft Defender for Endpoint multi-tenant threat and vulnerability management

Microsoft Defender Vulnerability Management helps proactively identify and build a secure foundation for devices through the remediation of software vulnerabilities and misconfigurations in customer environments. Microsoft 365 Lighthouse now includes Vulnerability Management capabilities. Go to **Devices** > [Vulnerability management](https://lighthouse.microsoft.com/#view/Microsoft_Intune_MTM/VulnerabilityManagement.ReactView) to see the exposure score across all your managed tenants that have been onboarded to Microsoft Defender for Endpoint. To see security recommendations for how to reduce tenants' exposure to vulnerabilities, select the **Recommendations** tab.

### Device security insights from Microsoft Defender for Business and Microsoft Defender for Endpoint

Microsoft 365 Lighthouse now surfaces summarized insights into the various security alerts from Microsoft Defender for Business and Microsoft Defender for Endpoint across your managed tenants. To access these insights, go to **Devices** > **Device security** > [Overview](https://lighthouse.microsoft.com/#view/Microsoft_Intune_MTM/MDE.ReactView). These insights can help you assess the overall status, severity, and category of the various security alerts in your tenants before drilling into the full list of alerts.

### Tenants page improvements

We've updated the [Tenants page](https://lighthouse.microsoft.com/#view/Microsoft_Intune_MTM/Tenants.ReactView) to help you more easily manage your customer tenants in Microsoft 365 Lighthouse. Using the new List options feature, which you access by selecting the icon next to the search box, you can now view your customer tenants by domain name or tenant ID. We've also updated the Tenants page to reflect the new Granular Delegated Admin Privileges (GDAP) setup and Lighthouse management capabilities.

You'll notice that customer tenants that don't meet the criteria to be fully managed in Microsoft 365 Lighthouse (for example, they don't have GDAP set up or they're missing a required subscription) show a Lighthouse management status of **Limited**. These tenants are eligible for only a limited set of experiences in Microsoft 365 Lighthouse, including GDAP setup and management, user search, user details, tenant tagging, and service health.

Lastly, we've added a new pane that details the customer criteria for each of your customer tenants. For customers with a **Limited** Lighthouse management status, for example, you can select the tenant name to open this pane and see a detailed status and recommended next steps.

### Deployment status reporting

Microsoft 365 Lighthouse now provides a deployment plan status for each active tenant to help you optimize and prioritize your deployment efforts. The deployment plan status is found on the Tenants page and on the new Deployment insights page.

## February 2023

### App insights from Endpoint analytics  

We've added insights from Endpoint analytics to Microsoft 365 Lighthouse to help you proactively take measures to improve the health of user devices and apps within managed tenants. The insights from Endpoint analytics inform a deployment sub-task called **Enable Device Health Monitoring** within the default baseline under the **Set up device enrollment** task. Once the new sub-task is enabled and the deployment task is deployed, select **Apps** > **App performance** in the left navigation pane in Microsoft 365 Lighthouse to see the Endpoint analytics insights.  

For more information, see [What is Endpoint analytics?](/mem/analytics/overview).

### Device insights from Endpoint analytics  

We've added insights from Endpoint analytics to Microsoft 365 Lighthouse to help you proactively take measures to improve the health of user devices and apps within managed tenants. The insights from Endpoint analytics inform a deployment sub-task called **Enable Device Health Monitoring** within the default baseline under the **Set up device enrollment** task. Once the new sub-task is enabled and the deployment task is deployed, select **Devices** > **Device health** in the left navigation pane in Microsoft 365 Lighthouse to see the Endpoint analytics insights.  

For more information, see [What is Endpoint analytics?](/mem/analytics/overview).

### Multi-tenant exposure score and recommendations  

We've brought multi-tenant threat and vulnerability management capabilities from Microsoft Defender for Endpoint (MDE) into Microsoft 365 Lighthouse. To see the exposure levels of all your managed tenants onboarded to MDE, go to **Devices** > **Vulnerability management** in Microsoft 365 Lighthouse.  

### Persistent deployment status detection and configuration drift analysis 

We've enhanced Microsoft 365 Lighthouse to provide persistent configuration detection and deployment status to monitor your tenants&mdash;even when you're offline&mdash;and identify any updates to a tenant configuration that results in a regression of the deployment status for any of the assigned tasks.   

Microsoft 365 Lighthouse also provides *who*, *where*, and *when* details about user activity that caused the detected drift so that you can efficiently and effectively restore the tenant to the desired state.  

This insight helps you effectively engage fellow tenant admins&mdash;either in your organization or in the customer's organization&mdash;to educate them about the impact of their activity and how to mitigate future risks associated with configuration drift.   

### Deployment insights Home page card 

The Microsoft 365 Lighthouse Home page now includes a Deployment insights card that provides actionable insights around the deployment state of the tenants you manage. These insights can help identify where to focus deployment activities to optimize tenant health and security.

:::image type="content" source="../media/m365-lighthouse-whats-new/deployment-insights-card.png" alt-text="Screenshot of the Deployment insights card on the Home page.":::

### Deployment progress by user  

Microsoft 365 Lighthouse now reports deployment progress by user so you can see the deployment status for every applicable deployment task. The ability to see which users are compliant with, not compliant with, not targeted for, not licensed for, or excluded from each deployment task across all your managed tenants can help you to more efficiently and effectively help each user be secure and productive. 

## January 2023

### Automation of Intune device enrollment through the default baseline

The default baseline now provides a mobile device management (MDM) and mobile application management (MAM) deployment sub-task to automate the enrollment of Windows devices in Intune. Previously, this was a manual task that provided instructions only.  

For any tenant, go to the **Deployment plan** page, expand the **Set up device enrollment** task, select the **Configure device enrollment** sub-task to open the task details pane, and then select **Deploy**. 

### User search improvements

The **Account management** > **Search users** page now shows search results as soon as a matching user is found within any tenant. The prior version of the page showed search results only after searching across all tenants. 

## November 2022

### Changes to Microsoft Defender Firewall and Microsoft Defender Antivirus deployment tasks

We've updated the Microsoft Defender Firewall and Microsoft Defender Antivirus policy settings in our default baseline to provide enhanced protection for your customer tenants. If you previously deployed the **Configure Microsoft Defender Firewall for Windows 10 and later** or the **Configure Microsoft Defender Antivirus for Windows 10 and later** tasks, your customer tenants are still protected with the original policy settings. However, on the Deployment plan page, the deployment steps for these two tasks will show a status of **Not compliant** until you deploy the new enhanced policy settings. To activate these enhanced policy settings, you'll need to go through the deployment process again for both the Microsoft Defender Firewall and Microsoft Defender Antivirus deployment tasks. Once deployed, the deployment step statuses will show as **Compliant** again.

### Capability to set up granular delegated admin privileges (GDAP)

You can now establish GDAP relationships with multiple reseller customers at once from within Microsoft 365 Lighthouse and assign users in the partner tenant to security groups with various roles and levels of permissions. To do this, you'll create reusable templates based on tiers of support for your customers and for various groups of technicians. You'll see recommended roles for each tier of support during this process. Once created, these templates can then be reapplied as needed to new customers. This functionality allows you to quickly establish GDAP with your customers by using a least-privileged approach for users as a replacement for delegated admin privileges (DAP).

For more information on GDAP in Microsoft 365 Lighthouse, see [Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md).

For more information on GDAP across all services, see [Introduction to granular delegated admin privileges (GDAP) - Partner Center](/partner-center/gdap-introduction).

### Capability to collect diagnostics from Windows devices

We've added the capability to collect diagnostics from Windows devices. You can access this feature from the Device compliance page. The Collect diagnostics remote action lets you collect and download logs without interrupting the user.

### Manage shared mailboxes

You can now manage all shared mailboxes and meeting rooms across your managed tenants under **Users** > **Account management** > **Shared mailboxes**. From this page, you can perform common management actions like delegating access to other users and securing shared mailboxes by blocking direct access.

### File exclusion support in the antivirus policy

You can now exclude certain non-malicious threats from showing up for tenants on the Threat management page in Microsoft 365 Lighthouse. Go to the tenant's deployment plan, select **Configure a Microsoft Defender Antivirus baseline policy**, and then specify the file, folder, or file-type exclusions.

### Deployment status

Microsoft 365 Lighthouse now provides a deployment status for each tenant's deployment plan so you can optimize and prioritize your deployment efforts accordingly.

### Deployment insights

Microsoft 365 Lighthouse now provides deployment insights to help you understand how consistently and effectively you're establishing and maintaining the health and security of the tenants you manage. The insights provide tenant-specific and multi-tenant visibility into the deployment progress of each tenant, task, and user.

These insights help you:

- Establish and maintain a robust security posture across your entire portfolio.
- Prioritize deployment activities to maximize security and minimize risk.
- Audit exceptions like task dismissals and user exclusions.

### Enhanced baseline deployment with direct links to existing configurations

We've enhanced the baseline deployment experience to make it faster and easier to ensure your managed tenants are healthy and secure. We've added links to detected managed tenant configurations so you can easily find, review, and modify these tenant configurations in the applicable management portal.

### Enhanced deployment progress reporting

Microsoft 365 Lighthouse now provides visibility into each managed tenant's deployment progress from the Tenants page so you can see how many of the assigned tasks are:

- **Compliant** - All settings included in the task are Compliant.
- **Not Compliant** - One or more settings included in the task are either Missing or Not compliant.
- **Dismissed** - The task has been dismissed.
- **Not Licensed** - The tenant is not licensed for the services required to deploy the configuration associated with the task.

## October 2022

### App protection policies

Managed Service Providers (MSPs) can now deploy app protection policies for their managed tenants from within the default baseline in Microsoft 365 Lighthouse, which allows greater protection of the tenants' company data. These policies use Mobile Application Management (MAM) on iOS and Android devices to provide the most secure protection for company data.

### Device health monitoring

We've added a new deployment sub-task called **Enable Device Health Monitoring** within the default baseline under the **Set up device enrollment** task. Once the new sub-task is enabled and the deployment task is deployed, Endpoint analytics in Microsoft Intune will be able to analyze device data and can recommend software, help improve startup performance, and fix common support issues.

For more information, see [What is Endpoint analytics?](/mem/analytics/overview).

## September 2022

### Fully automated setup of Microsoft Defender for Business

We've added a fully automated step to the default baseline that helps you set up your customer tenants with Microsoft Defender for Business. This step automatically provisions your tenant for Microsoft Defender for Business and automatically onboards Intune-enrolled devices to Microsoft Defender for Business.

### Capability to filter the Multifactor Authentication (MFA) list to show relevant user accounts

The Multifactor Authentication page now supports filtering the user account list by account type (such as by Admin, Member, or Guest). You can also exclude other accounts from the list, like service accounts or emergency access accounts. To access this functionality, go to **Users** > **Multifactor authentication**, select a tenant from the list to open the tenant details pane, and then select the **Users not registered for MFA** tab. These filtering and exclusion capabilities help you focus on relevant user accounts.

### Capability to act on security incidents and alerts

You can now act on the incidents and alerts shown on the **Device security** > **Incidents and alerts** page. The actions currently supported include assigning the incident or alert to yourself or resolving the incident or alert.

## August 2022

### View and manage inactive user accounts

Microsoft 365 Lighthouse now provides a list of all the inactive user accounts in your managed tenants. To access the list, select **Users** > **Inactive users** in the left navigation pane in Microsoft 365 Lighthouse. You can reduce security risks by using this list to track and clean up accounts that are still enabled but that haven't been used in the past six months.

### Microsoft Edge policy deployment

We've added a Microsoft Edge policy deployment task to the default baseline. This deployment task allows you to secure your customer tenant's browsers with Edge security settings, which include built-in protection against phishing and malware. Microsoft Edge has been proven to be more secure than Google Chromium for small- and medium-sized businesses with devices running Windows 10 or later.

For more information, see [Microsoft Edge security for your business](/deployedge/ms-edge-security-for-business).

## July 2022

### Enhanced baseline deployment

Microsoft 365 Lighthouse now makes the deployment of baselines to all of your managed tenants faster and easier by:

- Automatically detecting and reporting the status of each assigned task
- Consolidating the status reporting and simplifying the logic that determines deployment status
- Reporting which tasks are complete and which tasks need your attention
- Reporting user-level deployment status for applicable tasks
- Detecting existing configurations from within the tenant and comparing them to the baseline
- Providing details around tasks that have been dismissed
- Identifying where additional licensing is required to complete an assigned task

## June 2022

### Support for Microsoft 365 E5 customers

We've changed our onboarding requirements to allow you to onboard Microsoft 365 E5 customers to Microsoft 365 Lighthouse. The expanded list of licenses that Microsoft 365 Lighthouse supports for onboarding includes Microsoft 365 Business Premium, Microsoft 365 E3, Microsoft 365 E5, Microsoft Defender for Business, and Windows 365 for Business. Customers who have at least one of any of these licenses, meet the requirements for delegated access privileges, and don't exceed the maximum number of licensed users can be managed in Microsoft 365 Lighthouse.

For a full list of requirements, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

### Microsoft Defender for Business integration

Microsoft 365 Lighthouse now integrates with Microsoft Defender for Business to bring you related insights and management capabilities for all of your customer tenants that have Microsoft Defender for Business. To see the list of customer devices that have been onboarded to Microsoft Defender for Business, select **Devices** in the left navigation pane in Microsoft 365 Lighthouse. To see the list of incidents and alerts flagged across your customer tenants, go to **Devices** > **Device Security**, and then select the **Incidents and alerts** tab.

We've also added a step to the default baseline to help you set up Microsoft Defender for Business for your customer tenants. To see this step, select **Baselines** in the left navigation pane in Microsoft 365 Lighthouse or view the deployment plan for any of your customer tenants.

### Status of quarantined email messages

We've added new functionality around email quarantine data for your managed tenants. Accessible by selecting **Data protection** in the left navigation pane in Microsoft 365 Lighthouse, this feature gives you visibility into the status of quarantined email messages across your customer tenants. You can see consolidated information for total quarantine volumes and detailed information for each managed tenant to help you prioritize any tenants that may require action.

### Increase in maximum license limit

We're making it possible to manage more of your customers in Microsoft 365 Lighthouse by once again increasing the maximum license limit for customer onboarding. Customers with up to 2500 user licenses can now be onboarded to Microsoft 365 Lighthouse. We'll continue to evaluate this requirement in future Microsoft 365 Lighthouse releases.

For more information, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

## May 2022

### Redesigned left navigation pane

We've given the left navigation pane in Microsoft 365 Lighthouse a new look. You'll notice a sleeker design, with top-level nodes like Tenants, Users, and Devices that expand to show related subnodes, like Risky users, Device compliance, and Threat management. This navigation model aligns with the model used by other Microsoft 365 admin centers.

### Enriched user details pane

We've redesigned the user details pane to include more user information and more actions that you can take to better manage users. It now has the same look and feel as the user details pane in the Microsoft 365 admin center. To access the user details pane in Microsoft 365 Lighthouse, select **Users** in the left navigation pane, and then select either **Search users** or **Risky users**. Select any user to open the details pane.

## April 2022

### Delegated access type and roles on Tenants page

We've updated the **Tenants** page to list the Managed Service Provider (MSP)'s delegated access type (None, DAP, GDAP, or Both DAP & GDAP) per customer under the **Delegated access** column. We've also added a new column titled **Your roles** that lists the DAP and GDAP roles per customer for a signed-in user. These two enhancements to the **Tenants** page will make it easier for MSP technicians to understand which types of delegated admin privileges are available for each customer and which delegated roles have explicitly been granted to them.

To learn more, see [Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md).

## March 2022

### Windows 365 Business integration and management actions

Based on user feedback, we've integrated Windows 365 Business into Microsoft 365 Lighthouse. This integration will help you manage and monitor all of your customers' Cloud PCs from a single location.

In addition to integrating with Windows 365 Business Cloud PCs in Microsoft 365 Lighthouse, you can now take the following management actions:

- Restart
- Reprovision
- Rename

To learn more about the new features, see [Overview of the Windows 365 (Cloud PCs) page in Microsoft 365 Lighthouse](m365-lighthouse-win365-page-overview.md).

### Microsoft 365 Lighthouse partner amendment

Now that Microsoft 365 Lighthouse is in General Availability, we require our current partners to sign an updated Microsoft 365 Lighthouse partner amendment. All Microsoft 365 Lighthouse partners who signed up during the preview period will be prompted to complete this new agreement in the coming weeks. Completion will require Global Administrator rights in the partner tenant and must be completed within 90 days to continue accessing the Microsoft 365 Lighthouse portal.

## February 2022

### Granular delegated admin privileges (GDAP) roles

Microsoft 365 Lighthouse now includes the capability for MSPs to use granular delegated admin privileges (GDAP) roles. With the latest update, MSPs can leverage GDAP by assigning roles to their technicians to enforce the principle of least privilege access in Microsoft 365 Lighthouse. This capability reduces the risks inherent in the broad permissions of the delegated admin privileges (DAP) role of the Admin Agent by enabling granular controls on the customers' data and settings that each technician will be able to work with.

To learn more about GDAP in Microsoft 365 Lighthouse, see [Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md).

### Capability to notify users to act on noncompliant devices

As part of the device compliance baseline step, we've added the capability to notify users in a customer tenant to act on noncompliant devices. With this change, once you apply the device compliance deployment step for any customer tenant, the device compliance policy created in that tenant will automatically send a notification to users when their device becomes noncompliant reminding them to take appropriate action to bring the device back into compliance.

### Deployment validation and reporting

Microsoft 365 Lighthouse can now test tenant configurations for deployment steps with Conditional Access policies.

This new functionality detects existing policies within the customer tenants that you manage and compares them to your deployment plan. Microsoft 365 Lighthouse then provides status designations for deployment steps and deployment step processes to help you understand which deployment processes have already been completed, which ones need to be addressed, and where the settings prescribed by the deployment plan are equal to, missing from, or in conflict with the settings included in the existing policies. Knowing this information makes identifying, prioritizing, and resolving policy conflicts faster, easier, and more effective.

### Deployment step to configure Microsoft Defender Firewall

Microsoft 365 Lighthouse has added the Configure Microsoft Defender Firewall deployment step to its default baseline. This step helps MSPs secure customer tenant devices through the default firewall configuration for Windows 10 (and later) devices. Microsoft Defender Firewall blocks unauthorized network traffic flowing into or out of customer tenant devices and reduces the risk of network security threats. A Microsoft Defender Firewall Rules feature is currently under development.

Microsoft Defender Firewall is turned on by default on Windows 10 (and later) devices. If your customer tenant doesn't have this configured, follow these steps:

1. On the **Tenants** page in Microsoft 365 Lighthouse, select the customer tenant to open the tenant's **Overview** page.
2. Select the **Deployment Plan** tab.
3. From the list of deployment steps, select **Configure Microsoft Defender Firewall**.
4. Select **Review and deploy** to deploy this configuration to the customer tenant.

### Increase in maximum license limit

We're making it possible to manage more of your customers in Microsoft 365 Lighthouse by increasing the maximum license limit for customer onboarding. Customers with up to 1000 user licenses can now be onboarded to Microsoft 365 Lighthouse. We'll continue to evaluate this requirement in future Microsoft 365 Lighthouse releases.

For more information, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

### Support for advisor customers

We've changed our onboarding requirements to allow existing customer tenants with advisor relationships to be onboarded to Microsoft 365 Lighthouse. Customers with both reseller and advisor contracts are now eligible to be in Microsoft 365 Lighthouse if they meet the requirements for delegated access privileges, have the required licenses, and don't exceed the maximum user count.

For more information, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

## January 2022

### Capability to view audit logs in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse now includes the capability to view audit logs. You can review past actions to find misconfigurations and risky actions for remediation, support process and security investigation, train employees, and meet compliance and auditing requirements. With the latest update, you can:

- View audit logs to see all actions taken inside Microsoft 365 Lighthouse, including what changed in which customer tenant, when it was changed, and who changed it.
- Search and filter audit logs to find specific information.
- Export logs so you can analyze and retain them.

In the left navigation pane of Microsoft 365 Lighthouse, select **Audit logs**. Or, [go directly to the Audit logs page now](https://lighthouse.microsoft.com/#blade/Microsoft_Intune_MTM/Audit.ReactView) to check it out.

## November 2021

### Microsoft 365 services usage data

You can now view usage data for Microsoft 365 services from within Microsoft 365 Lighthouse. Understanding how customers use their Microsoft 365 services is critical to helping them get the most out of their IT investments. Instead of using multiple resources to view information across your customers' various productivity, security, and compliance services, Microsoft 365 Lighthouse aggregates them into one simple, powerful view.

These insights can help inform your customer engagements and deliver more value to your customers by empowering you to help them understand which services their users actively use and where there may be opportunities to enhance their security or productivity.

For more information, see [Overview of the Tenants page in Microsoft 365 Lighthouse: Microsoft 365 services usage section](m365-lighthouse-tenants-page-overview.md#microsoft-365-services-usage-section).

### Exchange Online Protection and Microsoft 365 Defender for Office 365 default baseline step

We've added a new step to the default baseline to include guidance for enabling Security Policies for Exchange Online Protection (EOP) and Microsoft Defender for Office 365 (MDO). EOP and MDO help protect users from spam, phishing, and malware emails by sending the emails to the user's quarantine or junk mail folder (coming soon). The deployment plan guides you in setting up EOP and MDO, further expanding your security stance during your next customer tenant deployment plan review.

### Default tenant tags

You can now designate certain tenant tags as *default* from the **Manage tags** pane on the **Tenants** page, so the next time you sign in to Microsoft 365 Lighthouse, all your views and insights will be filtered by default to show only the tenants that have a default tag. Default tags can help you focus on insights for high-priority customer tenants.

## October 2021

### Capability to filter by multiple tenant tags

It's now possible to filter data by multiple tenant tags at the same time. This functionality can help you more easily filter the existing views and insights that are available in Microsoft 365 Lighthouse to show relevant customer tenants.

### Capability to assign baseline configurations to specific Azure Active Directory groups

We've added the capability to assign baseline configurations to specific Azure Active Directory (Azure AD) groups of your customer tenants from within Microsoft 365 Lighthouse. From any deployment step page, browse and select the specific Azure AD groups that you want to include or exclude, and then deploy the configurations to your customer tenant.

### Improvements to Risky users page

You can now easily view and understand the reasons for a user's risk from within Microsoft 365 Lighthouse. In the left navigation pane of Microsoft 365 Lighthouse, select **Users**, and then select the **Risky users** tab. Select **View risk detections** in the **Details** column for any user. From here, you can review the details of the risk and then select **Confirm user compromised** or **Dismiss user risk**. You can also confirm or dismiss a risk for multiple users at the same time from the **Risky users** page. The ability to dismiss a user's risk can be useful when password reset isn't an option or if you believe the affected user is no longer at risk.

### Capability to provide feedback on Microsoft 365 Lighthouse

Your feedback matters and is important to us, so we've added new feedback functionality that will occasionally (no more than once a month) prompt you to provide feedback. You can also provide feedback at any time by selecting the feedback icon in the upper-right corner of Microsoft 365 Lighthouse.

## September 2021

### Tenant filter changes

We've made some changes to the tenant filtering experience to help you quickly view and manage tenants and tags from any page within Microsoft 365 Lighthouse. Select the **Tenants** filter at the top of any page and then browse or enter the tenant or tag name that you want to filter by.

## August 2021

### In-product email workflows to communicate with users

We've made it easier to communicate with users in your customer tenants about actions they're required to take. From the list of users not registered for multifactor authentication (MFA) or self-service password reset (SSPR), you can now select one or more users and send them an email message using a downloadable email template.

### Capability to take action on noncompliant devices

We've introduced the capability to sync or restart one or more devices across multiple customer tenants. This functionality helps ensure that your customers' devices are protected from risk. To check out this functionality, select **Devices** in the left navigation pane in Microsoft 365 Lighthouse, and then select the **Devices** tab. Look for the **Sync** and **Restart** options above the devices list. You can also access these options from the device details pane of any device.

### Capability to monitor and manage Windows 365 Cloud PCs

We've added the capability to monitor on-premises connections and provision and manage Windows 365 Cloud PCs across all of your customer tenants. The new **Windows 365** page provides detailed information about all of your tenants' Cloud PCs in one convenient location.

### Support for Microsoft 365 E3 customers

We've changed our onboarding requirements to allow you to onboard Microsoft 365 E3 customers to Microsoft 365 Lighthouse. To qualify to be managed in Microsoft 365 Lighthouse, each customer must meet the following requirements:

- Must have delegated access set up for the MSP to be able to manage the customer tenant
- Must have at least one Microsoft 365 Business Premium or Microsoft 365 E3 license
- Must have no more than 500 licensed users

For more information about requirements, see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

## June 2021

### Capability to add custom tags to customer tenants

You can now create and apply custom tags to the customer tenants that you manage in Microsoft 365 Lighthouse. Use these tags to help you organize your tenants, or use them to more easily filter your tenant list to show insights for relevant sets of customer tenants.

### Baselines to standardize your customer tenant deployments

With the new baselines feature, you can now deploy standard configurations to help secure users, devices, and data in customer tenants. The default baseline currently contains the following deployment steps (with more coming soon):

- Require MFA for admins
- Require MFA for users
- Block Legacy Authentication
- Enroll Windows Devices in Microsoft Intune – Azure AD Join
- Configure Defender AV policy for Windows devices
- Configure Compliance Policy for Windows devices

To act on these deployment steps, select **Tenants** in the left navigation pane in Microsoft 365 lighthouse, select a tenant from the list of tenants, and then select the **Deployment plan** tab.

## May 2021

### Enhancements to Tenants page

We've made the following enhancements to the **Tenants** page:

- Added a list of total counts by issue to the top of the page
- Provided the capability to hover over a status in the **Status** column of the tenants list to see restriction details
- Improved the status labels
