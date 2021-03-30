---
title: "Migration phases actions and impacts for the migration from Microsoft Cloud Deutschland (general)"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 03/05/2021
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

Tenant migrations from Microsoft Cloud Deutschland (MCD) to the region "Germany" of Microsoft's Office 365 Global services are executed as a set of phases and their configured actions for each workload. This figure shows the ten phases of migration to the new German datacenters.

![The ten phases of migration to the new Germany datacenters](../media/ms-cloud-germany-migration-opt-in/migration-organization.png)

The migration process will complete over many weeks depending on the overall size and complexity of the organization. While the migration is underway, users and administrators are able to continue utilizing the services with notable changes detailed in this documentation. The graphic and table define phases and steps during the migration.

|Step|Duration|Responsible party|Description|
|:--------|:--------|:--------|:--------|
|Opt-In|Hours|Customer|Opt your organization into the migration.|
|Pre-Work|Days|Customer|Complete the work needed to prepare users, workstations, and network for migration.|
|Azure Active Directory (Azure AD)|1-2 days|Microsoft|Migrate Azure AD organization to worldwide.|
|Azure|Weeks|Customer|Create new worldwide Azure subscriptions and transition Azure services.|
|Subscription & License Transition|1-2 days|Microsoft|Purchase worldwide subscriptions, cancel Microsoft Cloud Deutschland subscriptions, and transition user licenses.|
|SharePoint and OneDrive|15+ days|Microsoft|Migrate SharePoint and OneDrive for Business content, persisting sharepoint.de URLs.|
|Exchange Online|15+ days|Microsoft|Migrate Exchange Online content and transition to worldwide URLs.|
|Security & Compliance|1-2 days|Microsoft|Transition security & compliance policies and content.|
|Skype for Business|1-2 days|Microsoft|Transition from Skype for Business to Microsoft Teams.|
|Power BI & Dynamics 365|15+ days|Microsoft|Migrate Power BI and Dynamics 365 content.|
|Finalize Azure AD|1-2 days|Microsoft|Complete tenant cutover to worldwide.|
|Clean-Up|1-2 days|Customer|Clean up legacy connections to Microsoft Cloud Deutschland, such as Active Directory Federation Services (AD FS) Relying Party Trust, Azure AD Connect, and Office client restarts.|
|Endpoints Disabled|30 days|Microsoft|30 days after the finalization of Azure AD, the Microsoft Cloud Deutschland Azure AD service will stop endpoint access for the transitioned organization. Endpoint requests such as Authentication will fail from this point forward against the Microsoft Cloud Deutschland service. |


The phases and their actions ensure that critical data and experiences are migrated to the Office 365 Global services. After your tenant is added to the migration queue, each workload will be completed as a set of steps that are executed on the backend service. Some workloads may require actions by the administrator (or user), or the migration may affect usage for the phases that are executed and discussed in [How is the migration organized?](ms-cloud-germany-transition.md#how-is-the-migration-organized)

The following sections contain actions and effects for workloads as they progress through various phases of the migration. Review the tables and determine which actions or effects are applicable to your organization. Ensure that you're prepared to execute the steps in the respective phases as required. Failure to complete necessary steps may result in service outage and might delay completion of the migration to the Office 365 services.

## Opt-In

**Applies to**: All customers with an Office 365 tenant hosted in the Microsoft Cloud Deutschland (MCD)

| Step(s) | Description | Impact |
|:-------|:-----|:-------|
| We can't migrate Office 365 tenants hosted in the MCD without consent. | Microsoft gains the right to migrate in one of two ways, which enables Microsoft to orchestrate the transition of data and services to the Office 365 Global services instance. <ol><li>The Office 365 tenant administrator opts-in to the Microsoft-driven migration. </li><li> Customers renew any subscriptions in their MCD Office 365 tenant after May 1, 2020. We'll notify these customers of the migration right each month, wait 30 days to give customers a chance to cancel, and then directly opt-in.</li></ol> | <ul><li>Tenant is marked as consented for migration, and Admin Center displays confirmation. </li><li>Acknowledgment is posted to the Office 365 tenant Message Center. Service configuration continues from Microsoft Cloud Deutschland endpoints. </li><li>The tenant administrator must monitor the Office 365 Message Center for updates on the migration phase status. </li></ul>|

## Before the migration starts

Make sure that you are familiar with the [migration preparation steps that apply to all customers](ms-cloud-germany-transition-add-pre-work.md).

In case you have set a DNS CNAME called _msoid_ in one or many DNS namespaces that you own, you have to remove the CNAME until the end of phase 8 at the latest. You can remove the CNAME _msoid_ any time before the end of phase 8. See the [prework for DNS](ms-cloud-germany-transition-add-pre-work.md#dns).

In case you are using single sign on for Office 365 and Azure in the Microsoft Cloud Deutschland instance, you must prepare and schedule your Azure subscription migration accordingly. Make sure that you understand the [prework for Microsoft Azure](ms-cloud-germany-transition-add-pre-work.md#microsoft-azure).

## Before Phase 2 starts

If you are using ADFS, make sure to [back up your ADFS configuration before and after adding the relying party trust](ms-cloud-germany-transition-azure-ad.md) for the Office 365 Global service.

## Subscription transfer (Phase 3)

**Applies to**: All customers with an Office 365 tenant hosted in the Microsoft Cloud Deutschland (MCD)

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Subscriptions are transferred, and licenses are reassigned. | Corresponding Office 365 Global services subscriptions are purchased in the Office 365 Global instance for the transferred Microsoft Cloud Deutschland subscriptions. Users with assigned Microsoft Cloud Deutschland licenses will be assigned licenses in the Office 365 Global instance. Legacy Microsoft Cloud Deutschland subscriptions are removed from the Office 365 services tenant on completion.| <ul><li>Changes to existing subscriptions will be blocked (for example, no new subscription purchases or seat count changes) during this phase.</li><li>License assignment changes will be blocked.</li><li>The Microsoft Cloud Deutschland subscription will be migrated to corresponding Office 365 Global services subscription. The Office 365 Global services offer of that subscription is defined by Microsoft (also known as _Offer mapping_).</li><li>The number of features (service plans) offered by Office 365 services can be larger than in the original Microsoft Cloud Deutschland offer. User licenses in Office 365 services will be equivalently assigned to similar Microsoft Cloud Deutschland features (service plans). User licenses of all users will be automatically assigned to the new features. The admin needs to take an explicit action to disable those licenses, if needed. </li><li>When subscription migration is complete, both Office 365 services and Microsoft Cloud Deutschland subscriptions will be visible in the Office 365 Admin Portal, with the status of Microsoft Cloud Deutschland subscriptions as _deprovisioned_. </li><li>Users will be reassigned licenses that are tied to the new Office 365 services subscriptions. Any customer processes that have dependencies on Microsoft Cloud Deutschland subscriptions or SKU GUIDs will be broken and need to be revised with the Office 365 services offering. </li><li>New subscriptions in the Office 365 services will be purchased with the new term (monthly/quarterly/yearly), and the customer will receive a prorated refund for the unused balance of the Microsoft Cloud Deutschland subscription. </li><li>Partner Microsoft Cloud Deutschland tenants won't be migrated. CSP customers will be migrated to Office 365 services under the new Office 365 services tenant of the same partner. After customer migration, the partner can manage this customer only from the Office 365 services tenant. </li><li>Additional functionality is available (for example, Microsoft Planner and Microsoft Flow), unless disabled by tenant admin. For information about how to disable service plans that are assigned to users' licenses, see [Disable access to Microsoft 365 services while assigning user licenses](disable-access-to-services-while-assigning-user-licenses.md).</li></ul> |
||||

## SharePoint Online (Phase 4)

**Applies to**: All customers using SharePoint Online

In case you are still using SharePoint 2013 workflows, limit the use of SharePoint 2013 workflows during the SharePoint Online migration.

| Step(s) | Description | Impact |
|:-------|:-----|:-------|
| SharePoint and OneDrive are transitioned | SharePoint Online and OneDrive for Business are migrated from Microsoft Cloud Deutschland to Office 365 Global services in this phase.<br><ul><li>Existing Microsoft Cloud Deutschland URLs are preserved (for example, `contoso.sharepoint.de`).</li><li>Existing sites are preserved.</li><li>Client-side authentication tokens that were issued by the Security Token Service (STS) in the Microsoft Cloud Deutschland or Office 365 Global services instance are valid during the transition.</li></ul>|<ul><li>Content will be read-only for two brief periods during migration. During this time, expect a "you can't edit content" banner in SharePoint.</li><li>The search index won't be preserved, and may take up to 10 days to be rebuilt.</li><li>SharePoint Online and OneDrive for Business content will be read-only for two brief periods during migration. Users will see a "you can't edit content" banner briefly during this time.</li><li>Upon completion of the SharePoint Online migration, the search results for SharePoint Online and OneDrive for Business content may be unavailable while the index is rebuilt. During this period, search queries might not return complete results. Features that are dependent on search indexes, such as SharePoint Online News, may be affected while reindexing completes.</li><li>SharePoint 2013 workflows will be broken during migration and must be republished after migration.</li></ul>|
||||

Additional considerations:

- If your organization still uses SharePoint 2010 workflows, they'll no longer function after December 31, 2021. SharePoint 2013 workflows will remain supported, although turned off by default for new tenants starting on November 1, 2020. After migration to the SharePoint Online service is complete, we recommend that you to move to Power Automate or other supported solutions.

- Microsoft Cloud Deutschland customers whose SharePoint Online instance is not yet migrated need to stay on SharePoint Online PowerShell module/Microsoft.SharePointOnline.CSOM version 16.0.20616.12000 or below. Otherwise, connections to SharePoint Online via PowerShell or the client-side object model will fail.

- Microsoft Cloud Deutschland customers whose SharePoint Online instance is migrated must update SharePoint Online PowerShell module/Microsoft.SharePointOnline.CSOM to version 16.0.20717.12000 or above. Otherwise, connections to SharePoint Online via PowerShell or the client-side object model will fail.

> [!NOTE]
> In case you are using eDiscovery, make sure you are aware of the [eDiscovery migration experience](ms-cloud-germany-transition-add-experience.md#ediscovery-phase-4-to-the-end-of-phase-9).

## Exchange Online (Phase 5)

**Applies to:** All customers using Exchange Online

If you're using Exchange Online hybrid: Exchange Online Hybrid administrators  **must execute the Hybrid Configuration wizard (HCW) multiple times** as part of this transition. Apply the [Exchange prework](ms-cloud-germany-transition-add-pre-work.md#exchange-online-hybrid-configuration) **before the migration step phase 5 begins**. Exchange Online hybrid customers must run the latest version of the Exchange Hybrid Configuration Wizard (HCW) in "Office 365 Germany" mode to prepare the on-premises configuration for the migration to Office 365 global services.

Upon **completion of the migration phase 9** (when the Message Center notice is published), you need to run the HCW again using Office 365 Worldwide settings to point your on-premises systems to the Office 365 Global services.

If you want to modify user photos during phase 5, see [Exchange Online Set-UserPhoto during phase 5](ms-cloud-germany-transition-add-experience.md#exchange-online-set-userphoto-during-phase-5)

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
|Stop or delete any onboarding or offboarding mailbox moves, namely don't move mailboxes between Exchange on-premises and Exchange Online.  | This ensures the mailbox move requests don't fail with an error. | Failure to do so may result in failure of the service or Office clients. |
| Exchange Online mailboxes are moved from Microsoft Cloud Deutschland to Office 365 Global services.| Exchange Online configuration adds the new go-local German region to the transitioning organization. The Office 365 Global services region is set as default, which enables the internal load-balancing service to redistribute mailboxes to the appropriate default region in Office 365 services. In this transition, users on either side (MCD or Global services) are in the same organization and can use either URL endpoint. |<ul><li>Transition users and services from your legacy MCD URLs (outlook.office.de) to new Office 365 services URLs (`https://outlook.office365.com`).</li><li>Users may continue to access the service through legacy MCD URLs during the migration, however they need to stop using the legacy URLs on completion of the migration.</li><li>Users should transition to using the worldwide Office portal for Office Online features (Calendar, Mail, People). Navigation to services that aren't yet migrated to Office 365 services won't function until they are migrated. </li><li>The Outlook Web App won't provide the public folder experience during migration. </li></ul>|
| Update custom DNS Settings for AutoDiscover| Customer-managed DNS settings for AutoDiscover that currently point to Microsoft Cloud Deutschland need to be updated to refer to the Office 365 Global endpoint on completion of the Exchange Online phase (phase 5). <br> Existing DNS entries with CNAME pointing to autodiscover-outlook.office.de need to be updated to point to autodiscover.outlook.com. |  Availability requests and service discovery calls via AutoDiscover point directly to the Office 365 services. Customers who do not perform these DNS updates may experience Autodiscover service issues when the migration is finalized. |
| Users must update POP3, IMAP4, SMTP client configuration. | Users who have device connections to Microsoft Cloud Deutschland endpoints for client protocols POP3, IMAP4, SMTP are required to manually update their client devices to switch to the [Office 365 worldwide endpoints](https://docs.microsoft.com/en-us/microsoft-365/enterprise/urls-and-ip-address-ranges?view=o365-worldwide) concurrent with their mailbox migration to Office 365 Germany region. <br> smtp.office365.com : SMTP (TCP:587), outlook.office365.com : IMAP4 (TCP:993), POP3 (TCP:995)| Users of these protocols must either switch to use Outlook mobile or Outlook on the web while their mailbox is transioned and update IMAP4, POP3, SMTP settings on client devices to the new endpoints on completion. Failure to update client endpoints will result in client connection failures against Microsoft Cloud Deutschland when user mailboxes are migrated. |
||||

Additional considerations:
<!--
    The statement below is not clear. What does myaccount.microsoft.com mean?
-->

- `myaccount.microsoft.com` will only work after the tenant cutover in phase 9. Links will produce "something went wrong" error messages until that time.

- Users of Outlook Web App that access a shared mailbox in the other environment (for example, a user in the MCD environment accesses a shared mailbox in the Global environment) will be prompted to authenticate a second time. The user must first authenticate and access their mailbox in `outlook.office.de`, then open the shared mailbox that is in `outlook.office365.com`. They'll need to authenticate a second time when accessing the shared resources that are hosted in the other service.

- For existing Microsoft Cloud Deutschland customers or those in transition, when a shared mailbox is added to Outlook by using **File > Info > Add Account**, viewing calendar permissions may fail (the Outlook client attempts to use the Rest API `https://outlook.office.de/api/v2.0/Me/Calendars`). Customers who want to add an account to view calendar permissions can add the registry key as described in [User experience changes for sharing a calendar in Outlook](https://support.microsoft.com/office/user-experience-changes-for-sharing-a-calendar-in-outlook-5978620a-fe6c-422a-93b2-8f80e488fdec) to ensure this action will succeed. This registry key can be deployed organization-wide by using Group Policy.

- During the migration phase, using the PowerShell cmdlets **New-migrationEndpoint**, **Set-MigrationEndpoint**, and **Test-MigrationsServerAvailability** can result in errors (error on proxy). This happens when the arbitration mailbox has migrated to worldwide but the admin mailbox hasn't or vice-versa. To resolve this, while creating the tenant PowerShell session, use the arbitration mailbox as the routing hint in the **ConnectionUri**. For example:

```powershell
New-PSSession 
    -ConfigurationName Microsoft.Exchange 
    -ConnectionUri "https://outlook.office365.com/powershell-liveid?email=Migration.8f3e7716-2011-43e4-96b1-aba62d229136@TENANT.onmicrosoft.de"
    -Credential $UserCredential
    -Authentication Basic
    -AllowRedirection
```

To find out more about the differences for organizations in migration and after Exchange Online resources are migrated, review the information in [Customer experience during the migration to Office 365 services in the new German datacenter regions](ms-cloud-germany-transition-experience.md).

## Exchange Online Protection / Security and Compliance (Phase 6)

**Applies to:** All customers using Exchange Online<br>

Back-end Exchange Online Protection (EOP) features are copied to the new region "Germany".

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Migration of Exchange Online routing and historical message detail. | Exchange Online enables routing from external hosts to Office 365. The external MX records are transitioned to route to the EOP service. Tenant configuration and historical details are migrated. |<ul><li>Microsoft–managed DNS entries are updated from Office 365 Germany EOP to Office 365 services.</li><li>Customers should wait for 30 days after EOP dual write for EOP migration. Otherwise, there may be data loss.</li></ul>|
||||

## Skype for Business Online (Phase 7)

**Applies to:** All customers using Skype for Business Online

Make sure that you are familiar with the [prework for your Skype for Business Online migration](ms-cloud-germany-transition-add-pre-work.md#skype-for-business-online) procedure.

<!--
    Question from ckinder
    the PowerShell command seems to be incomplete
-->

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Migration of Skype for Business to Teams. | Existing Skype for Business customers are migrated to Office 365 Global services in Europe and then transitioned to Microsoft Teams in the region "Germany" of Office 365 services. |<ul><li>Users won't be able to sign in to Skype for Business on the migration date. Ten days before migration, we'll post to the Admin center to let you know about when the migration will take place, and again when we begin the migration.</li><li> Policy configuration is migrated. </li><li>Users will be migrated to Teams and will no longer have Skype for Business after migration. </li><li>Users must have the Teams desktop client installed. Installation will happen during the 10 days via policy on the Skype for Business infrastructure, but if this fails, users will still need to download the client or connect with a supported browser. </li><li>Contacts and meetings will be migrated to Teams.</li><li>Users won't be able to sign in to Skype for Business between time service transitions to Office 365 services, and not until customer DNS entries are completed. </li><li>Contacts and existing meetings will continue to function as Skype for Business meetings. </li></ul>|
||||

If you have to connect to Skype for Business Online with PowerShell after migration phase 9 has been completed, use the following code to connect:

```powershell
Import-Module MicrosoftTeams
$userCredential = Get-Credential
Connect-MicrosoftTeams -Credential $userCredential -OverridePowershellUri "https://admin4E.online.lync.com/OcsPowershellOAuth"
```

## Dynamics 365 (Phase 8)

**Applies to:** All customers using Microsoft Dynamics 365

Make sure that you are familiar with the [prework for your Microsoft Dynamics 365 installation](ms-cloud-germany-transition-add-pre-work.md#dynamics365) procedure.

Customers with Dynamics 365 require additional engagement to migrate the organization's Dynamics organizations independently.

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Microsoft Dynamics resources | Customers with Microsoft Dynamics will be engaged by Microsoft Engineering or Microsoft FastTrack to transition Microsoft Dynamics 365 to the Office 365 Global services instance.* |<ul><li>After migration, the admin validates the organization. <</li><li>The admin modifies workflows, as necessary. </li><li>The admin clears AdminOnly mode as appropriate.</li><li>The admin changes the organization type from _Sandbox_, as appropriate</li><li>Notify end users of the new URL to access the instance (org).</li><li>Update any inbound connections to the new endpoint URL. </li><li>The Dynamics service will be unavailable to users during the transition. </li><li>Users are required to validate the org health and features after migration of each org.</li></ul>|
||||

\*
(i) Customers with Microsoft Dynamics 365 must take action in this migration scenario as defined by the migration process provided. (ii) Failure by the customer to take action will mean that Microsoft will be unable to complete the migration. (iii) When Microsoft is unable to complete the migration due to the customer's inaction, then the customer's subscription will expire on October 29, 2021.

## Power BI (Phase 8)

**Applies to:** All customers using Microsoft Power BI (PBI)

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Migration of Power BI resources | Customers with Microsoft Power BI (PBI) will be engaged by Microsoft Engineering or Microsoft FastTrack after manually triggering an existing PBI migration tool to transition Power BI to the Office 365 Global services instance.\*\* |<ul><li>The following Power BI items will _not_ be transitioned, and they'll have to be re-created: <</li><li>Real-time datasets (for example, streaming or push datasets). </li><li>Power BI on-premises data gateway configuration and data source. </li><li>Reports built on top of the real-time datasets won't be available after migration and are required to be recreated. </li><li>Power BI services will be unavailable to users during the transition. The unavailability of the service shouldn't be more than 24 hours.</li><li>Users will be required to reconfigure data sources and their on-premise data gateways with the Power BI service after migration.  Until they do so, users will be unable to use these data sources to perform scheduled refresh and/or direct queries against these data sources. </li><li>Capacities and premium workspaces cannot be migrated. Customers need to delete all capacities before migration and re-create them after migration. Move workspaces back to capacities as desired.</li></ul>  |
||||

\*\*
  (i) Customers with Microsoft Power BI must take action in this migration scenario as defined by the Migration process provided. (ii) Failure by the customer to take action will mean that Microsoft will be unable to complete the migration. (iii) When Microsoft is unable to complete the migration due to the customer's inaction, then the customer's subscription will expire on October 29, 2021.

## Azure AD Finalization (Phase 9, 10)

**Applies to:** All customers

When the Office 365 tenant completes the final step of the migration [Azure AD Finalization (Phase 9)] all services are transitioned to worldwide. No application or user should be accessing resources for the tenant against any of the Microsoft Cloud Deutschland endpoints. Automatically, 30 days after the finalization completes, the Microsoft Cloud Deutschland Azure AD service will stop endpoint access for the transitioned tenant. Endpoint requests such as Authentication will fail from this point forward against the Microsoft Cloud Deutschland service. 

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Update user endpoints | Ensure all users access the service using the proper Microsoft worldwide endpoints |30 days after the migration finalizes, the Microsoft Cloud Deutschland endpoints will stop honoring requests; client or application traffic will fail.  |
| Update Azure AD application endpoints | You must update Authentication, Azure Active Directory (Azure AD) Graph, and MS Graph endpoints for your applications to those of the Microsoft Worldwide service. | 30 days after the migration finalizes, the Microsoft Cloud Deutschland endpoints will stop honoring requests; client or application traffic will fail. |
||||

## Office Apps

**Applies to:** All customers using Office desktop applications (Word, Excel, PowerPoint, Outlook, ...)

Office 365 tenants transitioning to the region "Germany" require all users to close, sign out from Office 365 and back in for all Office desktop applications (Word, Excel, PowerPoint, Outlook, etc.) and OneDrive for Business client after the tenant migration has reached phase 9. Signing out and in, allows the Office services to obtain new authentication tokens from the global Azure AD service.

Make sure you have completed the [prework for mobile devices](ms-cloud-germany-transition-add-pre-work.md#mobile-device-management) procedure.

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Clients, Office Online during Office client cutover, Azure AD finalizes the tenant scope to point to the Office 365 services. | This configuration change enables Office clients to update and point to the Office 365 services endpoints. | <ul><li>Notify users to close _all_ Office apps and then sign back in (or force clients to restart and users to sign in) to enable Office clients to pick up the change. </li><li>Notify users and help desk staff that users *may* see an Office banner that prompts them to reactivate Office apps within 72 hours of the cutover. </li><li>All Office applications on personal machines must be closed, and users must sign out then sign in again. In the Yellow activation bar, sign in to reactivate against Office 365 services.</li><li>Shared machines will require actions that are similar to personal machines, and won't require a special procedure. </li><li>On mobile devices, users must sign out of apps, close them, and then sign in again.</li></ul>|
||||

## Line-of-business apps

In case you have line-of-business apps, make sure you have completed the [prework for line-of-business apps](ms-cloud-germany-transition-add-pre-work.md#line-of-business-apps) procedure.

## Office Services

The most recently used (MRU) service in Office is a cutover from the Microsoft Cloud Deutschland to Office 365 Global services, not a migration. Only MRU links from the Office 365 Global services side will be visible after migration from the Office.com portal. MRU links from the Microsoft Cloud Deutschland aren't visible as MRU links in Office 365 Global services. In Office 365 Global services, MRU links are accessible only after the tenant migration has reached phase 9.

## Post migration

Make sure you read the [post migration activities](ms-cloud-germany-transition-add-experience.md#post-migration) article and execute them accordingly.

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

- [Dynamics 365 migration program information](/dynamics365/get-started/migrate-data-german-region)
- [Power BI migration program information](/power-bi/admin/service-admin-migrate-data-germany)
- [Getting started with your Microsoft Teams upgrade](/microsoftteams/upgrade-start-here)
