---
title: "Migration phases actions and impacts for the migration from Microsoft Cloud Deutschland (general)"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 12/15/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
f1.keywords:
- CSH
ms.custom:
- Ent_TLGs
description: "Summary: Understand the migration phases actions and impacts of moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region."
---

# Migration phases actions and impacts for the migration from Microsoft Cloud Deutschland (general)

Tenant migrations from Microsoft Cloud Deutschland to the Germany region of Microsoft's Office 365 services are executed as a set of phases and their configured actions for each workload. This figure shows the nine phases of migration to the new German datacenters.

![The nine phases of migration to the new Germany datacenters](../media/ms-cloud-germany-migration-opt-in/migration-organization.png)

The phases and their actions ensure that critical data and experiences are migrated to the Office 365 services. After your tenant is added to the migration queue, each workload will be completed as a set of steps that are executed on the backend service. Some workloads may require actions by the administrator (or user), or the migration may affect usage for the phases that are executed and discussed in [How is the migration organized?](ms-cloud-germany-transition.md#how-is-the-migration-organized)

The following sections contain actions and effects for workloads as they progress through various phases of the migration. Review the tables and determine which actions or effects are applicable to your organization. Ensure that you're prepared to execute the steps in the respective phases as required. Failure to complete necessary steps may result in service outage and might delay completion of the migration to the Office 365 services.

## Exchange Online (Phase 5 of 9)

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| New Germany region is added to existing organization setup, and mailboxes are moved to Office 365 services. | Exchange Online configuration adds the new go-local German region to the transitioning organization. This Office 365 services region is set as default, which enables the internal load-balancing service to redistribute mailboxes to the appropriate default region in Office 365 services. In this transition, users on either side (Germany or Office 365 services) are in the same organization and can use either URL endpoint. | Exchange Online | - Transition users and services from Germany URLs to Office 365 services URLs (`https://outlook.office365.com`). <br><br> - Users will continue to access the service via legacy Germany URLs during the migration. No immediate action needed. <br><br> - Users should begin to use the office.com portal for Office Online features (Calendar, Mail, People). Navigation to services that aren't yet migrated to Office 365 services won't function until migrated. <br><br> - Outlook Web App won't provide the public folder experience during migration. |
|||||

Additional considerations:

- `myaccount.msft.com` will only work after the cutover of Office 365. Links will produce "something went wrong" error messages until that time.

- Users of Outlook Web App that access a shared mailbox in the other environment (for example, a user in the Germany environment accesses a shared mailbox in the global environment) will be prompted to authenticate a second time. The user must first authenticate and access their mailbox in `outlook.office.de`, then open the shared mailbox that is in `outlook.office365.com`. They'll need to authenticate a second time when accessing the shared resources that are hosted in the other service.

- For existing Microsoft Cloud Deutschland customers or those in transition, when a shared mailbox is added to Outlook by using **File > Info > Add Account**, viewing calendar permissions may fail (the Outlook client attempts to use the Rest API `https://outlook.office.de/api/v2.0/Me/Calendars`.) Customers who want to add an account to view calendar permissions can add the registry key as described in [User experience changes for sharing a calendar in Outlook](https://support.microsoft.com/office/user-experience-changes-for-sharing-a-calendar-in-outlook-5978620a-fe6c-422a-93b2-8f80e488fdec) to ensure this action will succeed. This registry key can be deployed organization-wide by using Group Policy.

- During the migration phase, using the PowerShell cmdlets **New-migrationEndpoint**, **Set-MigrationEndpoint**, and **Test-MigrationsServerAvailability** can result in errors (error on proxy). This happens when the arbitration mailbox has migrated to worldwide but the admin mailbox hasn't or vice-versa. To resolve this, while creating the tenant PowerShell session, use the arbitration mailbox as the routing hint in the **ConnectionUri**. For example: `New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid?email=Migration.8f3e7716-2011-43e4-96b1-aba62d229136@TENANT.onmicrosoft.de" -Credential $UserCredential -Authentication Basic -AllowRedirection`

- If you're using Exchange Online hybrid:

    - You must rerun the Hybrid Configuration wizard (HCW) to update on-premises configuration against Microsoft Cloud Deutschland before the transition, and rerun the HCW upon cleanup against the Office 365 services. Additional DNS updates may be required if you use custom domains.

To find out more about the differences for organizations in migration and after Exchange Online resources are migrated, review the information in [Customer experience during the migration to Office 365 services in the new German datacenter regions](ms-cloud-germany-transition-experience.md).

## Exchange Online Protection (Phase 6 of 9)

Back-end Exchange Online Protection (EOP) features are copied to new Germany region. 

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Migration of Exchange Online routing and historical message detail. | Exchange Online enables routing from external hosts to Office 365. The external MX records are transitioned to route to the EOP service. Tenant configuration and historical details are migrated. | Exchange Online customers | - Microsoft–managed DNS entries are updated from Office 365 Germany EOP to Office 365 services. <br><br> - Customers should wait for 30 days after EOP dual write for EOP migration. Otherwise, there may be data loss. |
|||||

## SharePoint Online (Phase 4 of 9)

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| SharePoint and OneDrive are transitioned. | SharePoint and OneDrive are migrated from Microsoft Cloud Deutschland to Office 365 services in this phase. Existing Microsoft Cloud Deutschland URLs are preserved (for example, `contoso.sharepoint.de`). Tokens that were issued by Microsoft Cloud Deutschland or Office 365 services are valid during the transition. | SharePoint customers | - Content will be read-only for two brief periods during migration. During this time, expect a "you can't edit content" banner in SharePoint. <br><br> - The search index won't be preserved, and may take up to 10 days to be rebuilt. <br><br> - SharePoint/OneDrive content will be read-only for two brief periods during migration. Users will see a "you can't edit content" banner briefly during this time. <br><br> - The search index may be unavailable while the index is rebuilt. During this period, search queries might not return complete results. <br><br> - Existing sites are preserved. |
|||||

Additional considerations:

- Upon completion of the SharePoint Online migration to the German region, data indexes are rebuilt. Features that are dependent on search indexes may be affected while reindexing completes.

- If your organization still uses SharePoint 2010 workflows, they'll no longer function after December 31, 2021. SharePoint 2013 workflows will remain supported, although turned off by default for new tenants starting on November 1, 2020. After migration to the SharePoint Online service is complete, we recommend that you to move to Power Automate or other supported solutions.

- Upon completion of the OneDrive migration to the German region, data indexes are rebuilt. Features that depend on search indexes may be affected while reindexing is in progress.

- Microsoft Cloud Deutschland customers whose SharePoint Online instance is not yet migrated need to stay on SharePoint Online PowerShell module/Microsoft.SharePointOnline.CSOM version 16.0.20616.12000 or below. Otherwise, connections to SharePoint Online via PowerShell or the client-side object model will fail.

- Microsoft Cloud Deutschland customers whose SharePoint Online instance is migrated must update SharePoint Online PowerShell module/Microsoft.SharePointOnline.CSOM to version 16.0.20717.12000 or above. Otherwise, connections to SharePoint Online via PowerShell or the client-side object model will fail.


## Skype for Business Online (Phase 7 of 9)

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Migration of Skype for Business to Teams. | Existing Skype for Business customers are migrated to Office 365 services in Europe and then transitioned to Microsoft Teams in the Germany region of Office 365 services. | Skype for Business customers | - Users won't be able to sign in to Skype for Business on the migration date. Ten days before migration, we'll post to the Admin center to let you know about when the migration will take place, and again when we begin the migration. <br><br> - Policy configuration is migrated. <br><br> - Users will be migrated to Teams and will no longer have Skype for Business after migration. <br><br> - Users must have the Teams desktop client installed. Installation will happen during the 10 days via policy on the Skype for Business infrastructure, but if this fails, users will still need to download the client or connect with a supported browser. <br><br> - Contacts and meetings will be migrated to Teams. <br><br> - Users won't be able to sign in to Skype for Business between time service transitions to Office 365 services, and not until customer DNS entries are completed. <br><br> - Contacts and existing meetings will continue to function as Skype for Business meetings. |
|||||

## Office Services

The most recently used (MRU) service in Office is a cutover from the Germany service to Office 365 services, not a migration. Only MRU links from the Office 365 services side will be visible after migration from the Office.com portal. MRU links from the Germany service aren't visible as MRU links in Office 365 services. In Office 365, MRU links are accessible only after the tenant migration is complete.

## Subscription

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| We can't migrate customers without consent. | Microsoft gains the right to migrate in one of two ways, which enables Microsoft to orchestrate the transition of data and services to the Office 365 services instance. <br> The admin opts-in to the Microsoft-driven migration. <br> Customers renew any subscriptions in their Microsoft Cloud Deutschland tenant after May 1, 2020. We'll notify these customers of the migration right each month, wait 30 days to give customers a chance to cancel, and then directly opt-in, tracked in ICM. | All Office Customers | - Tenant is marked as consented for migration, and Admin Center displays confirmation. <br><br> - Acknowledgment is posted to Cloud Germany Message Center Tenant. Service configuration continues from Microsoft Cloud Deutschland endpoints. <br><br> - Monitor Message Center for updates on Migration phase status. |
| Subscriptions are transferred, and licenses are reassigned. | After the tenant is transitioned to Office 365 services, corresponding Office 365 services subscriptions are purchased for the transferred Microsoft Cloud Deutschland subscriptions. Users with assigned Microsoft Cloud Deutschland licenses will be assigned Office 365 services licenses. Legacy Microsoft Cloud Deutschland subscriptions are removed from the Office 365 services tenant on completion. | All Office customers | - Changes to existing subscriptions will be blocked (for example, no new subscription purchases or seat count changes) during this phase. <br><br> - License assignment changes will be blocked. <br><br> - The Microsoft Cloud Deutschland subscription will be migrated to corresponding Office 365 services subscription. The Office 365 services offer of that subscription is defined by Microsoft (also known as _Offer mapping_). <br><br> - The number of features (service plans) offered by Office 365 services can be larger than in the original Microsoft Cloud Deutschland offer. User licenses in Office 365 services will be equivalently assigned to similar Microsoft Cloud Deutschland features (service plans). User licenses of all users will be automatically assigned to the new features. The admin needs to take an explicit action to disable those licenses, if needed. <br><br> - When subscription migration is complete, both Office 365 services and Germany subscriptions will be visible in the Office 365 Admin Portal, with the status of Germany subscriptions as _deprovisioned_. <br><br> - Users will be reassigned licenses that are tied to the new Office 365 services subscriptions. Any customer processes that have dependencies on Germany subscriptions or SKU GUIDs will be broken and need to be revised with the Office 365 services offering. <br><br> - New subscriptions in the Office 365 services will be purchased with the new term (monthly/quarterly/yearly), and the customer will receive a prorated refund for the unused balance of the Microsoft Cloud Deutschland subscription. <br><br> - Partner Microsoft Cloud Deutschland tenants won't be migrated. CSP customers will be migrated to Office 365 services under the new Office 365 services tenant of the same partner. After customer migration, the partner can manage this customer only from the Office 365 services tenant. <br><br> - Additional functionality is available (for example, Microsoft Planner and Microsoft Flow), unless disabled by tenant admin. For information about how to disable service plans that are assigned to users' licenses, see [Disable access to Microsoft 365 services while assigning user licenses](disable-access-to-services-while-assigning-user-licenses.md).  |
|||||

## Next step

[Perform additional pre-work](ms-cloud-germany-transition-add-pre-work.md)

## More information

Getting started:

- [Migration from Microsoft Cloud Deutschland to Office 365 services in the new German datacenter regions](ms-cloud-germany-transition.md)
- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](ms-cloud-germany-migration-opt-in.md)
- [Customer experience during the migration](ms-cloud-germany-transition-experience.md)

Moving through the transition:

- [Additional pre-work](ms-cloud-germany-transition-add-pre-work.md)
- Additional information for [Azure AD](ms-cloud-germany-transition-azure-ad.md), [devices](ms-cloud-germany-transition-add-devices.md), [experiences](ms-cloud-germany-transition-add-experience.md), and [AD FS](ms-cloud-germany-transition-add-adfs.md).

Cloud apps:

- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
