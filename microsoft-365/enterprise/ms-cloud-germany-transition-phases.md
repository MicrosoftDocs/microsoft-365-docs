---
title: "Migration phases actions and impacts"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 12/01/2020
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

# Migration phases actions and impacts

Tenant migrations from Microsoft Cloud Deutschland to the Germany region of Microsoft’s Office 365 services are executed as a set of configured actions for each workload. These actions ensure that critical data and experiences are migrated to the Office 365 services. After your tenant is added to the migration queue, each workload will be completed as a set of steps that are executed on the backend service. Some workloads may require actions by the admin (or user), or the migration may affect usage for the phases that are executed and discussed in [How is the migration organized?](ms-cloud-germany-transition.md#how-is-the-migration-organized).

The following sections contain actions and effects for workloads as they progress through various phases of the migration. Review the tables and determine which actions or effects are applicable to your organization. Ensure that you're prepared to execute the steps in the respective phases as required. Failure to complete necessary steps may result in service outage and delay completion of the migration to the Office 365 services.

## Exchange Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| New Germany region is added to existing organization setup, and mailboxes are moved to Office 365 services. | Exchange Online configuration adds the new go-local German region to the transitioning organization. This Office 365 services region is set as default, which enables the internal load-balancing service to redistribute mailboxes to the appropriate default region in Office 365 services. In this transition, users on either side (Germany or Office 365 services) are in the same organization and can use either URL endpoint. | Exchange Online | - Transition users and services from Germany URLs to Office 365 services URLs (https://outlook.office365.com). <br><br> - Users will continue to access the service via legacy Germany URLs during the migration. No immediate action needed. <br><br> - Users should begin to use the office.com portal for Office Online features (Calendar, Mail, People). Navigation to services that aren't yet migrated to Office 365 services won't function until migrated. <br><br> - Outlook Web App won't provide the public folder experience during migration. |
|||||

To find out more about the differences for organizations in migration and after Exchange Online resources are migrated, review the [Customer experience during the migration to Office 365 services in the new German datacenter regions](ms-cloud-germany-transition-experience.md).

## Exchange Online Protection

Backend Exchange Online Protection (EOP) features are copied to new Germany region. <!--v-gmoor: Is this the proper name for the service? What about "Microsoft Defender for Office 365"? https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/exchange-online-protection-overview?view=o365-worldwide -->

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Migration of Exchange Online routing and historical message detail. | Exchange Online enables routing from external hosts to Office 365. The external MX records are transitioned to route to Office 365 services<!--v-gmoor: Do we need "Office 365 services" before "EOP services"?--> EOP services. Tenant configuration and historical details are migrated. | Exchange Online customers | - Microsoft–managed DNS entries are updated from Office 365 Germany EOP to Office 365 services. <br><br> - Customers should wait for 30 days after EOP dual write for EOP migration. Otherwise, there may be data loss. |
|||||

## SharePoint Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| SharePoint and OneDrive are transitioned. | SharePoint and OneDrive are migrated from Microsoft Cloud Deutschland to Office 365 services in this phase. Existing Microsoft Cloud Deutschland URLs are preserved (for example, contoso.sharepoint.de). Tokens that were issued by Microsoft Cloud Deutschland or Office 365 services are valid during the transition. | SharePoint customers | - Content will be read-only for two brief periods during migration (less than x minutes).<!--v-gmoor: How many is "x" minutes?--> During this time, expect a “you can’t edit content” banner in SharePoint. <br><br> - The search index won't be preserved, and may take up to 10 days to be rebuilt. <br><br> - SharePoint/OneDrive content will be read-only for two brief periods during migration (less than x minutes).<!--v-gmoor: How many is "x" minutes?--> Users will see a “you can’t edit content” banner briefly during this time. <br><br> - The search index may be unavailable while the index is rebuilt. During this period, search queries might not return complete results. <br><br> - Existing sites are preserved. |
|||||

## Skype for Business Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Migration of Skype for Business to Teams. | Existing Skype for Business customers are migrated to Office 365 services in Europe and then transitioned to Microsoft Teams in the Germany region of Office 365 services. | Skype for Business customers | - Users won't be able to sign in to Skype for Business on the migration date. Ten days before migration, we'll notify end users via in-band on the Skype for Business client that they'll be upgraded to Teams. We'll also post in Admin Center that these changes will occur after the 10 days. <br><br> - Policy configuration is migrated. <br><br> - Users will be migrated to Teams and will no longer have Skype for Business after migration. <br><br> - Users must have the Teams desktop client installed. This<!--v-gmoor: What is "this"? Automatic installation of Teams?--> will happen during the 10 days via policy on the Skype for Business infrastructure, but if this fails, users will still need to download the client or connect with a supported browser. <br><br> - Contacts and meetings will be migrated to Teams. <br><br> - Users won't be able to sign in to Skype for Business between time service transitions to Office 365 services, and not until customer DNS entries are completed. <br><br> - Contacts and existing meetings will continue to function as Skype for Business meetings. |
|||||
 		
## Subscription

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| We can't migrate customers without consent. | Microsoft gains the right to migrate in one of two ways, which enables Microsoft to orchestrate the transition of data and services to the Office 365 services instance. <br> The admin opts-in to the Microsoft-driven migration. <br> Customers renew any subscriptions in their Microsoft Cloud Deutschland tenant after May 1, 2020. We'll notify these customers of the migration right each month, wait 30 days to give customers a chance to cancel, and then directly opt-in, tracked in ICM. | All Office Customers | - Tenant is marked as consented for migration, and Admin Center displays confirmation. <br><br> - Acknowledgment is posted to Cloud Germany Message Center Tenant. Service configuration continues from Microsoft Cloud Deutschland endpoints. <br><br> - Monitor Message Center for updates on Migration phase status. |
| Subscriptions are transferred, and licenses are reassigned. | After the tenant is transitioned to Office 365 services, corresponding Office 365 services subscriptions are purchased for the transferred Microsoft Cloud Deutschland subscriptions. Users with assigned Microsoft Cloud Deutschland licenses will be assigned Office 365 services licenses. Legacy Microsoft Cloud Deutschland subscriptions are removed from the Office 365 services tenant on completion. | All Office customers | - Changes to existing subscriptions will be blocked (for example, no new subscription purchases or seat count changes) during this phase. <br><br> - License assignment changes will be blocked. <br><br> - The Microsoft Cloud Deutschland subscription will be migrated to corresponding Office 365 services subscription. The Office 365 services offer of that subscription is defined by Microsoft (also known as _Offer mapping_). <br><br> - <!--original: "The Office 365 services offer features’ number (Service plans) can be larger than in the original Microsoft Cloud Deutschland offer." v-moor: What modifies what in this sentence? Following is a proposed replacement.--> The number of features (service plans) offered by Office 365 services can be larger than in the original Microsoft Cloud Deutschland offer. User licenses in Office 365 services will be equivalently assigned to similar Microsoft Cloud Deutschland features (service plans). User licenses of all users will be automatically assigned to the new features. The admin needs to take an explicit action to disable those licenses, if needed. <br><br> - When subscription migration is complete, both Office 365 services and Germany subscriptions will be visible in the Office 365 Admin Portal, with the status of Germany subscriptions as _deprovisioned_. <br><br> - Users will be reassigned licenses that are tied to the new Office 365 services subscriptions. Any customer processes that have dependencies on Germany subscriptions or SKU GUIDs will be broken and need to be revised with the Office 365 services offering. <br><br> - New subscriptions in the Office 365 services will be purchased with the new term (monthly/quarterly/yearly), and the customer will receive a prorated refund for the unused balance of the Microsoft Cloud Deutschland subscription. <br><br> - Partner Microsoft Cloud Deutschland tenants won't be migrated. CSP customers will be migrated to Office 365 services under the new Office 365 services tenant of the same partner. After customer migration, the partner can manage this customer only from the Office 365 services tenant. <br><br> - Additional functionality is available (for example, Microsoft Planner and Microsoft Flow), unless disabled by tenant admin. For information about how to disable service plans that are assigned to users’ licenses, see [Disable access to Microsoft 365 services while assigning user licenses](disable-access-to-services-while-assigning-user-licenses.md) .  |
|||||

## More information

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
