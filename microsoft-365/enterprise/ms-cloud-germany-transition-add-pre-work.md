---
title: "Additional pre-work information for the migration from Microsoft Cloud Deutschland"
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
description: "Summary: Additional pre-work information when moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region."
---

# Additional pre-work information for the migration from Microsoft Cloud Deutschland

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Ensure network connectivity to [Office 365 services URLs and IP addresses](https://aka.ms/o365urls). | All clients and services hosted by the customer that are used to access Office 365 service must be able to access the Office 365 services endpoints. | All transitioning customers, and customers with network access restricted to Microsoft Cloud Deutschland. | Required action. Inaction may result in failures of the service or client software. |
| Review and prepare for migration-related DNS changes. | Customer prepares DNS entries for Exchange Online and Exchange Online Protection (MX record, etc.). | Exchange Online customers | This is a recommended action. No action means migrated customers' email may route through Microsoft Cloud Deutschland until Microsoft Cloud Deutschland services are disabled. |
| Review and prepare for migration-related DNS changes. | Customer-owned DNS zone changes for Skype for Business Online. | Skype For Business Online customers | - We recommend that you update the Time-to-Live (TTL) for any  customer-owned domain DNS records to 5 minutes to expedite the refreshing of DNS records. However, the Microsoft-managed cutover associated with this DNS change may occur anytime within the provided 24-hour change window. <br><br> - Disruption of service is possible in the future. Users won't be able to log into Skype for Business and will be redirected to the migrated Teams experience in the Office 365 services. |
| Prepare End User and Administration training and readiness for the transition to Microsoft Teams. | Be successful in your transition from Skype to Teams by planning user communication and readiness. | Skype For Business Online customers | - Clients need to be aware of the new services and how to use once their services are transitioned to the Office 365 services. <br><br> - After DNS changes are made for both the customer vanity domains and the initial domain, users would sign into Skype for Business and see that they now are migrated to Teams. This would also download the desktop client for Teams in the background. |
| Prepare end-user and administration training about users removing and re-adding their account to Microsoft Outlook for iOS and Android. | Microsoft Outlook for iOS and Android accounts configured with mailboxes in Microsoft Cloud Deutschland may have to be removed and added again to Outlook in order to properly synchronize the new Office 365 services configuration. | Microsoft Outlook for iOS and Android customers | Outlook mailboxes previously configured for Microsoft Cloud Deutschland may not pick up the new Office 365 Services configuration, leading to errors and degraded performance of other user experiences. IT admins are encouraged to provide documentation that proactively instructs users to remove and re-add their accounts to Microsoft Outlook for iOS and Android if issues with signing in or synchronizing mail occur after migration. |
| Prepare to notify users about restarting and signing in to and out of their clients after migration. | Office client licensing will transition from Microsoft Cloud Deutschland to Office 365 services in the migration. Clients pick up a new valid license after signing out of and in to Office clients. | Microsoft 365 Apps customers | 	Users' Office products need to refresh licenses from Office 365 services. If licenses aren't refreshed, Office products may experience license validation errors. |
| Cancel any trial subscriptions. | Trial subscriptions will not be migrated and will block transfer of paid subscriptions. | All customers | Trial services are expired and non-functioning if accessed by users after cancellation. |
| Deploy Teams desktop client for users who access Skype for Business in Germany. | Migration moves users to Teams for collaboration, calling, and chat. Either, deploy the Teams desktop client or ensure that a supported browser is available. | Skype for Business customers | Inaction will result in unavailability of Teams collaboration services. |
| Analyze differences in license features between Microsoft Cloud Deutschland and Office 365 Services. | Office 365 services include additional features and services not available in the current Microsoft Cloud Deutschland. During subscription transfer, new features will be available to users. | All customers | - Analyze the different features provided by the licenses for Microsoft Cloud Deutschland and Office 365 Services. Start with the [Office 365 platform Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-platform-service-description/office-365-platform-service-description). <br><br> - Determine if any new features of Office 365 services should be initially disabled to limit effects on users or on user change management, and alter user license assignments as needed. <br><br> - Prepare users and help desk staff for new services and features provided by Office 365 services. |
| Create organization-wide [retention policies](https://docs.microsoft.com/microsoft-365/compliance/retention) to protect from inadvertent deletion of content during migration.  | - To ensure that content isn't inadvertently deleted by end users during the migration, customers may choose to enable an organization-wide retention policy. <br><br> - Although retention isn't required, since holds placed at any time during the migration should work as expected, having a retention policy is a back-up safety mechanism. At the same time, a retention policy might not be used by all customers, especially those who are concerned about over preservation. | Office customers | Apply retention policy as described in [Learn about retention policies and retention labels](https://docs.microsoft.com/microsoft-365/compliance/retention-policies). |
| Backup of Active Directory Federation Services (AD FS) farm for disaster recovery scenarios. | Customers need to back up the AD FS farm appropriately to ensure the relying party trusts to global & Germany endpoints can be restored without touching the issuer URI of the domains. Microsoft recommends using AD FS Rapid Restore for a backup of the farm and the respective restore, if necessary. | Federated Authentication organizations | Required Action. Inaction will result in service impact during the migration if the AD FS farm of the customer fails. |


## Exchange Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Notify external partners of the upcoming transition to Office 365 services. | Availability address space configurations allow sharing of free/busy information with Office 365. | Exchange Online customers who have enabled sharing calendar and availability address space. | Required action.  Failure to do so may result in service or client failure at a later phase of customer migration. |
|||||

If you have hybrid Exchange:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Uninstall previous versions of Hybrid Configuration wizard (HCW), and then install and execute the latest version, 17.0.5378.0, from [https://aka.ms/hybridwizard](https://aka.ms/hybridwizard). | The latest version of the HCW includes necessary updates to support customers who are transitioning from Microsoft Cloud Deutschland to Office 365 Services. <br><br> Updates include changes to on-premises certificate settings for Send connector and Receive connector. | Exchange Online customers running Hybrid deployment | Required action. Failure to do so may result in service or client failure. |
|||||

## SharePoint Online

If you have SharePoint 2013:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Limit SharePoint 2013 workflows, use during the SharePoint Online migration. | Reduce SharePoint 2013 workflows and complete in-flight workflows before transitions. | SharePoint Online Customers | Inaction may result in user confusion and help desk calls. |
|||||

<!--
[Reference:  If Pre-Work][ SharePoint 2013 ]
--> 

## Mobile

If you're using a third-party mobile device management (MDM) solution:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Determine if any reconfiguration is required after migration. | MDM solutions may target `outlook.de` endpoints. In this transition to Office 365 Services, client profiles should update to the Office 365 services URL, `outlook.office365.com`. | Exchange Online and MDM customers | Clients may continue to function while the `outlook.de` endpoint is accessible, but they'll fail if Microsoft Cloud Deutschland endpoints are no longer available. |
|||||

<!--
[Reference:  If Pre-Work][ Mobile]
-->  			

## Line-of-business apps

If you're using a third-party service or line-of-business (LOB) apps that are integrated with Office 365: 

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Determine if any reconfiguration is required after migration. | Third-party services and applications that integrate with Office 365 may be coded to expect Microsoft Cloud Deutschland IP addresses and URLs. | All customers | Required action. Inaction may result in failures of the service or client software. |
|||||

<!--
[Reference:  If Pre-Work][ LOB]
--> 

## Azure 

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Determine which Azure services are in use and prepare for future migration from Germany to the Office 365 services tenant by working with your partners. Follow the steps described in the [Azure migration playbook](https://docs.microsoft.com/azure/germany/germany-migration-main). | Migration of Azure resources is a customer responsibility and requires manual effort following prescribed steps. Understanding what services are in use in the organization is key to successful migration of Azure services. <br><br> Office 365 Germany customers who have Azure subscriptions under the same identity partition (organization) must follow the Microsoft-prescribed order when they can begin subscription and services migration. | Azure Customers | - Customers may have multiple Azure subscriptions, each subscription containing infrastructure, services, and platform components. <br><br> - Administrators should identify subscriptions and stakeholders to ensure prompt migration and validation is possible as part of this migration event. <br><br> Failing to successfully complete migration of these subscriptions and Azure components within the prescribed timeline will affect completion of the Office and Azure AD transition to Office 365 services and may result in data loss.  <br><br> - A Message center notification will signal the point at which customer-led migration can begin. |
|||||

<!--
[Reference:  If Azure Pre-Work][ Azure]
-->  

## Dynamics	365

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| For Dynamics 365 sandbox subscriptions, be sure to download the production environment of the Dynamics SQL instance from your Dynamics 365 subscription in Microsoft Cloud Deutschland. The latest production backup should be restored to the sandbox before sandbox migration. | Migration of Dynamics 365 requires customers to ensure that the Sandbox environment is refreshed with the latest production database. | Microsoft Dynamics customers | The FastTrack team will assist customers in performing dry runs to validate the version upgrade from 8.x to 9.1.x. |
|||||

<!--
[Reference: Prework][Dynamics]
-->   			

## Power BI

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Removal of objects from Power BI subscriptions that won't be migrated from Power BI Microsoft Cloud Deutschland to Office 365 services. | Migration of Power BI services will require customer action to delete certain artifacts, such as datasets and dashboards. | Power BI customers | Admins may have to remove the following items from their subscription: <br> - Real-Time datasets (for example, streaming or push datasets) <br> - Power BI on-premises Data Gateway configuration and data source |
|||||

<!--
[Reference: Prework][Power BI]
--> 

## DNS

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Review and prepare for DNS change if the current DNS has an MSOID CName entry. | Customer-owned DNS zone changes | Office client services customers | Update the Time to Live (TTL) for customer-owned DNS records to 5 minutes if an MSOID CName exists. |
|||||

<!--
[Reference: Prework][DNS]
-->  			

## Federated identity

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Generate relying party trust for global Azure AD endpoints. | Customers need to manually create a relying party trust (RPT) to [global](https://nexus.microsoftonline-p.com/federationmetadata/2007-06/federationmetadata.xml) endpoints. This is done by adding a new RPT via GUI by leveraging the global federation metadata URL and then using [Azure AD RPT Claim Rules](https://adfshelp.microsoft.com/AadTrustClaims/ClaimsGenerator#:~:text=%20Azure%20AD%20RPT%20Claim%20Rules%20%201,Azure%20AD.%20This%20will%20be%20what...%20More%20) (in AD FS Help) to generate the claim rules and import them into the RPT. | Federated authentication organizations | Required Action. Inaction will result in service impact during the migration. |
|||||

<!--
[Reference: Prework][Federation]
-->  

## More information

Getting started:

- [Migration from Microsoft Cloud Deutschland to Office 365 services in the new German datacenter regions](ms-cloud-germany-transition.md)
- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](ms-cloud-germany-migration-opt-in.md)
- [Customer experience during the migration](ms-cloud-germany-transition-experience.md)

Moving through the transition:

- [Migration phases actions and impacts](ms-cloud-germany-transition-phases.md)
- [Additional pre-work](ms-cloud-germany-transition-add-pre-work.md)
- Additional information for [services](ms-cloud-germany-transition-add-general.md), [devices](ms-cloud-germany-transition-add-devices.md), and [experiences](ms-cloud-germany-transition-add-experience.md).

Cloud apps:

- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
