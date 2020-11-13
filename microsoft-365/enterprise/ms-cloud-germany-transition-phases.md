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

Tenant migrations from Microsoft Cloud Deutschland to the Germany region of Microsoft’s Office 365 services are executed as a set of configured actions for each workload that ensure critical data and experiences are migrated to the Office 365 services. After your tenant is added to the migration queue, each workload migration will complete as a set of steps executed on the backend service and some may require actions by the admin (or user) or may impact usage for the phases executed and discussed in [How is the migration organized?](ms-cloud-germany-transition.md#how-is-the-migration-organized)).

The following sections contain actions and impacts for workloads as they progress through various phases of the migration. Review the tables and determine which actions or impact are applicable to your organization and ensure you are prepared to execute the steps in the respective phase as required. Failure to complete necessary steps may result in service outage and delay to complete the migration to the Office 365 services.

## Exchange Online

TABLE WITH INDENTED BULLETS

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| New Germany region is added to existing organization setup and mailboxes are moved to Office 365 services | Exchange Online configuration adds the new go-local German region to the transitioning organization. This Office 365 services region is set as ‘default’, which enables the internal load balancing service to re-distribute mailboxes to the appropriate default region in Office 365 services. In this transition, users on either side (Germany or Office 365 services) are in the same organization and can use either URL endpoint. | Exchange Online | <ul><li> Transition users and services off Germany URLs to Office 365 services URLs (https://outlook.office365.com). </li><li> Users will continue to access the service via legacy Germany URLs during the migration. No immediate action needed. </li><li> Users should begin to use the office.com portal for Office Online features (Calendar, Mail, People). Navigation to services not yet migrated to Office 365 services will not function until migrated. </li><li> Public folder Outlook Web Access experience during migration is not available. </li></ul> |
|||||

TABLE WITH DASH MARKS FOR BULLETS BUT NO INDENTING

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| New Germany region is added to existing organization setup and mailboxes are moved to Office 365 services | Exchange Online configuration adds the new go-local German region to the transitioning organization. This Office 365 services region is set as ‘default’, which enables the internal load balancing service to re-distribute mailboxes to the appropriate default region in Office 365 services. In this transition, users on either side (Germany or Office 365 services) are in the same organization and can use either URL endpoint. | Exchange Online | - Transition users and services off Germany URLs to Office 365 services URLs (https://outlook.office365.com). <br><br> - Users will continue to access the service via legacy Germany URLs during the migration. No immediate action needed. <br><br> - Users should begin to use the office.com portal for Office Online features (Calendar, Mail, People). Navigation to services not yet migrated to Office 365 services will not function until migrated. <br><br> - Public folder Outlook Web Access experience during migration is not available. |
|||||

TABLE WITH NO INDENTING

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| New Germany region is added to existing organization setup and mailboxes are moved to Office 365 services | Exchange Online configuration adds the new go-local German region to the transitioning organization. This Office 365 services region is set as ‘default’, which enables the internal load balancing service to re-distribute mailboxes to the appropriate default region in Office 365 services. In this transition, users on either side (Germany or Office 365 services) are in the same organization and can use either URL endpoint. | Exchange Online | Transition users and services off Germany URLs to Office 365 services URLs (https://outlook.office365.com). <br><br> Users will continue to access the service via legacy Germany URLs during the migration. No immediate action needed. <br><br> Users should begin to use the office.com portal for Office Online features (Calendar, Mail, People). Navigation to services not yet migrated to Office 365 services will not function until migrated. <br><br> Public folder Outlook Web Access experience during migration is not available. |
|||||

<!--

--> 


To find out more information about the differences for organizations in migration and after Exchange Online resources are migrated, review the [Customer experience during the migration to Office 365 services in the new German datacenter regions](ms-cloud-germany-transition-experience.md).

## Exchange Online Protection

Backend Exchange Online Protection features are copied to new Germany region.

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Migration of Exchange Online routing and historical message detail | Exchange Online enables routing from external hosts to Office365. The external MX records are transitioned to route to Office 365 services EOP services. Tenant configuration and historical details are migrated. | Exchange Online customers | <ul><li> Microsoft managed DNS entries update from Office365 Germany Exchange Online Protection to Office 365 services. </li><li> Customer should wait for 30 days after EOP dual write for EOP migration, otherwise may cause data loss. </li></ul> |
|||||

## SharePoint Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| SharePoint and OneDrives are transitioned | SharePoint and OneDrives are migrated from Microsoft Cloud Deutschland to Office 365 services in this phase. Existing Microsoft Cloud Deutschland URLs are preserved (contoso.sharepoint.de). Tokens issued by Microsoft Cloud Deutschland or Office 365 services token issuer are valid during the transition. | SharePoint customers | <ul><li> Content will be read-only for two brief periods during migration (less than x minutes), expect “you can’t edit content” banner in SharePoint. </li><li> Search index will not be preserved, may take up to 10 days to rebuild. </li><li> SharePoint/OneDrive content will be read-only for two brief periods during migration (less than x minutes). Users will see “you can’t edit content” banner briefly during this window. </li><li> Search Index may be unavailable while re-index completes. During this period search queries may not return complete results </li><li> Existing sites are preserved </li></ul> |
|||||

## Skype for Business Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Migration of Skype for Business to Teams | Existing Skype for Business customers are migrated to Office 365 services in Europe and then transitioned to Microsoft Teams in the Germany region of Office 365 services.  | Skype for Business customers | <ul><li> Users will no longer be able to sign-into Skype for Business on migration date. 10 days prior to migration we will notify end users via inband on the Skype for Business client that they will be upgraded to Teams. We will also post in Admin Center that these changes will occur after the 10 days. </li><li> Policy configuration is migrated </li><li> Users will be migrated to Teams and will no longer have Skype for Business post migration </li><li> Users must have Teams desktop client installed. This will happen during the 10 days via policy on the Skype for Business infrastructure, but if this fails they will still need to download the client or have to connect with a supported browser </li><li> Contacts and meetings will be migrated to Teams. </li><li> Users will not be able to sign in to Skype for Business between time service transitions to Office 365 services and customer DNS entries are completed. </li><li>  </li><li> Contacts and existing meetings will continue to function as Skype for Business meetings. </li></ul> |
|||||
 		
## Subscription

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| We cannot migrate customers without consent. | Microsoft gains the right to migrate in one of two ways, which enables Microsoft to orchestrate the transition of data and services to the Office 365 services instance. <br> Admin opts-in to the Microsoft-driven migration. <br> Customer renews any subscription in their Microsoft Cloud Deutschland tenant after May 1, 2020. We will notify these customers of the migration right each month, wait 30 days to give customers a chance to cancel, and then directly opt-in, tracked in ICM. | All Office Customers | <ul><li> Tenant is marked as consented for migration and confirmation displayed in Admin Center. </li><li> Acknowledgment is posted to Cloud Germany Message Center Tenant / Service configuration continues from Microsoft Cloud Deutschland endpoints. </li><li> Monitor Message Center for updates on Migration phase status </li></ul> |
| Subscription are Transferred and Licenses Re-Assigned | After the tenant is transitioned to Office 365 services, corresponding Office 365 services subscriptions are purchased for transferred Microsoft Cloud Deutschland subscriptions. Users with Microsoft Cloud Deutschland licenses assigned will be assigned Office 365 services licenses. Legacy Microsoft Cloud Deutschland subscriptions are removed from the Office 365 services tenant on completion. | All Office customers | <ul><li> Changes to existing subscriptions will be blocked (e.g., no new subscription purchases, seat count changes) during this phase </li><li> License assignment changes will be blocked </li><li> Black Forest subscription will be migrated to corresponding Office 365 services subscription. The Office 365 services offer of that subscription is defined by Microsoft (aka Offer mapping) </li><li> The Office 365 services offer features’ number (Service plans) can be larger than in the original Black Forest offer. User licenses in Office 365 services will be equivalently assigned to similar Black Forest features (service plans). User licenses of All users will be automatically assigned to the new features. Admin needs to take an explicit action to disable those licenses, if needed. </li><li> When subscription migration is complete, both Office 365 services and Germany subscriptions will be visible in the Office365 Admin Portal, with the status of Germany subscriptions as deprovisioned. </li><li> Users will be reassigned licenses tied to the new Office 365 services subscriptions. Any Customer processes with dependencies taken on Germany subscriptions or SKU GUIDs will be broken and need to be revised with the Office 365 services offering. </li><li> New Subscriptions in the Office 365 services will be purchased with the new term (monthly/quarterly/yearly) and the customer will receive prorated refund for the balance not used in Black Forest subscription. </li><li> Partner Microsoft Cloud Deutschland Tenant will not be migrated. CSP Customers will be migrated to Office 365 services under new Office 365 services Tenant of the same Partner. After Customer migration the Partner can manage this customer only  from the Office 365 services tenant. </li><li> Additional functionality available (e.g., Microsoft Planner, Microsoft Flo*w, etc) [Unless disabled by tenant admin, see [Disable access to Microsoft 365 services while assigning user licenses](disable-access-to-services-while-assigning-user-licenses.md) for references on how to disable service plans assigned to users’ licenses. </li></ul>  |
|||||

## More information

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
