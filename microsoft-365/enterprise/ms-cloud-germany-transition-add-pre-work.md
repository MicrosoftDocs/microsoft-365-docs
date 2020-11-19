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
| Ensure network connectivity to [Office 365 services URLs and IP addresses](https://aka.ms/o365urls). | All clients and services hosted by the customer used to access Office 365 service must be able to access the Office 365 Services endpoints. | All transitioning customers, customers with network access restricted to Microsoft Cloud Deutschland | Required action. Failure to do so may result in service or client failure. |
| Review and prepare for migration-related DNS changes. | Customer prepares DNS entries for Exchange Online/Exchange online protection (MX record, etc.) | Exchange Online customers | This is recommended action. No action means migrated customers’ email may route through Microsoft Cloud Deutschland until Microsoft Cloud Deutschland services are disabled. |
| Review and prepare for migration-related DNS changes. | Customer owned DNS zone changes for Skype for Business Online | Skype For Business Online customers | - It is recommended to update customer owned domain DNS record TTLs to 5 minutes so as to expedite the DNS record refresh, however the Microsoft managed cutover associated with this DNS change may occur anytime with in the provided 24-hour change window. <br><br> - Future availability service disruption possible. Users will not be able to log into Skype for Business be redirected to the migrated Teams experience in the Office 365 services. |
| Prepare End User and Administration training and readiness for the transition to Microsoft Teams. | Be successful in your transition from Skype to Teams by planning user communication and readiness. | Skype For Business Online customers | - Clients need to be aware of the new services and how to use once their services are transitioned to the Office 365 services. <br><br> - After DNS changes are made for both the customer vanity domains and the initial domain, users would sign into Skype for Business and see that they now are migrated to Teams. This would also download the desktop client for Teams in the background. |
| Prepare End user and Administration training about users removing and re-adding their account to Outlook Mobile. | Outlook Mobile accounts configured with mailboxes in Microsoft Cloud Deutschland may have to be removed and re-added to Outlook in order to properly sync the new Office 365 Services configuration. | Outlook Mobile customers | Outlook mailboxes previously configured for Microsoft Cloud Deutschland may not pick up the new Office 365 Services configuration, leading to errors and other user experience degradation. IT admins are encouraged to provide proactive documentation instructing users to remove and re-add their accounts to Outlook Mobile if login or mail syncing issues are experienced post migration. |
| Prepare to notify users about restarting and signing out/in of their clients post-migration. | Office client licensing will transition from Microsoft Cloud Deutschland to Office 365 Services in the migration. Clients pick-up a new valid license after log-out/in of Office clients. | Microsoft 365 Apps customers | 	Users’ Office products need to refresh licenses from the Office 365 Services service. Failing to act the Office products may experience license validation errors. |
| Cancel any trial subscriptions. | Trial subscriptions will not be migrated and will block paid subscription transfer. | All customers | Trial services are expired, non-functioning if accessed by users once cancelled. |
| Deploy Teams Desktop client for users accessing Skype for Business in Germany. | Migration to Global brings the move to Teams for collaboration, calling and chat. Either, deploy the Teams Desktop client or ensure that a supported browser is available | Skype for Business customers | Non action will result in unavailability of Teams collaboration services. |
| Analyze License Feature differences between Microsoft Cloud Deutschland and Office 365 Services. | Office 365 services include additional features, services not available in the current Microsoft Cloud Deutschland. During subscription transfer, new features will be available to users. | All customers | - Analyze License Feature differences between Microsoft Cloud Deutschland and Office 365 Services. Start with the [Office 365 platform Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-platform-service-description/office-365-platform-service-description). <br><br> - Determine if any new Office 365 Services features should be initially disabled to limit user impact on user change management & alter user license assignments as needed <br><br> - Prepare user and helpdesk readiness about new services and features associated to Office 365 Services subscriptions. |
| Create organization-wide [Retention Policy](https://docs.microsoft.com/emicrosoft-365/compliance/retention#a-policy-that-applies-to-entire-locations) to protect from inadvertent deletion of content during migration.  | - To ensure content isn’t inadvertently deleted by end users during the migration, customers may choose to enable an organization-wide retention policy. <br><br> - Although not necessary since holds placed anytime during the migration should work as expected, this is a back-up safety mechanism and may not be utilized by all customers, especially those who are concerned about over preservation. | Office customers | Apply retention policy as described [here](https://docs.microsoft.com/microsoft-365/compliance/retention-policies#a-policy-that-applies-to-entire-locations). |
| Backup of AD FS Farm for disaster recovery scenarios. | Customers need to back up the AD FS farm appropriately to ensure the Relying Party Trusts to global & Germany endpoints can be restored without touching the Issuer URI of the domains. Microsoft recommends leveraging using AD FS Rapid Restore Tool for a backup of the farm and the respective restore, if necessary. | Federated Authentication organizations | Required Action – inaction will result in service impact during the migration in case the AD FS farm of the customer breaks. |


## Exchange Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
|  Notify external ‘partners’ of upcoming transition to Office 365 Office 365 Services. | Availability Address Space configurations allow sharing of Free Busy with Office 365 | Exchange Online customers with Calendar/Availability Address Space sharing enabled | Required action – failure to do so may result in service / client failure at a later stage of customer migration. |
|||||

If you have hybrid Exchange:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Uninstall previous Hybrid Configuration Wizard (HCW). Install and Execute HCW latest version 17.0.5378.0  from [https://aka.ms/hybridwizard](https://aka.ms/hybridwizard). | The latest version of the HCW includes necessary updates to support customers transitioning from Microsoft Cloud Deutschland to Office 365 Services. <br><br> Updates include changes to SendConnector and ReceiveConnector on-premises certificate settings. | Exchange Online customers running Hybrid deployment | Required action. Failure to do so may result in service or client failure. |
|||||

## SharePoint Online

If you have SharePoint 2013:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Limit SharePoint 2013 workflows, use during the SharePoint Online migration. | Reduce SharePoint 2013 workflows and complete in-flight workflows before transitions | SharePoint Online Customers | Non action may result in user confusion, helpdesk calls. |
|||||

<!--
[Reference:  If Pre-Work][ SharePoint 2013 ]
--> 

## Mobile

If you are using a third-party mobile device management (MDM) solution:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Determine if any reconfiguration is required post-migration. | MDM solutions may target outlook.de endpoints. In this transition to Office 365 Services, client profiles should update to the Office 365 Services outlook.office365.com URL. | Exchange Online and MDM customers | Clients may continue to function while “outlook.de” endpoint is accessible but will fail if Microsoft Cloud Deutschland endpoints are no longer available. |
|||||

<!--
[Reference:  If Pre-Work][ Mobile]
-->  			

## Line of business apps

If using a third-party service or Line of Business (LOB) apps integrated with Office 365: 

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Determine if any reconfiguration is required post-migration. | 3rd party services and applications that integrate with Office 365 may be coded to expect Microsoft Cloud Deutschland IPs, URLs | All customers | Required action – inaction may result in service / client failure. |
|||||

<!--
[Reference:  If Pre-Work][ LOB]
--> 

## Azure 

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Determine which Azure services are in use and prepare for future migration from Germany to the Office 365 Services tenant by working with your partners. Follow steps described in the [Azure migration playbook](https://docs.microsoft.com/azure/germany/germany-migration-main). | Migration of Azure resources is a customer responsibility and requires manual effort following prescribed steps. Understanding what services are in use in the organization is key to a success migration of Azure services. <br> Office 365 Germany customers with Azure subscriptions under the same identity partition (organization) must follow the Microsoft prescribed order when they can begin subscription and services migration. | Azure Customers | - Customers may have multiple Azure subscriptions, each subscription containing infrastructure, Services and platform components. <br><br> - Administrators should identify subscriptions and stakeholders to ensure prompt migration and validation is possible as part of this migration event. <br> Failing to successfully complete migration of these subscriptions and Azure components within the prescribed timeline will affect completion of the Office and Azure AD transition to the Office 365 services and may result in data loss.  <br><br> - A Message center notification will signal the point at which customer-led migration can begin. |
|||||

<!--
[Reference:  If Azure Pre-Work][ Azure]
-->  

## Dynamics	

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| For Dynamics sandbox organizations, ensure to download production environment of Dynamics SQL instance from Dynamics 365 Microsoft Cloud Deutschland. The latest production backup should be restored to sandbox before sandbox migration | Migration of Dynamics 365 requires customers to ensure that the Sandbox environment is refreshed with the latest Prod DB. | Microsoft Dynamics customers | FastTrack team will assist customers to perform dry runs to validate the version upgrade from 8.x to 9.1.x. |
|||||

<!--
[Reference: Prework][Dynamics]
-->   			

## PowerBI

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Removal of objects from Power BI subscriptions that will not be migrated between Power BI Microsoft Cloud Deutschland and Office 365 Services | Migration of Power BI services will require customer action to delete certain artifacts like datasets and dashboards. | Power BI customers | Admins may have to remove the below items from their subscription: <ul><li> Real-Time datasets (e.g., streaming or push datasets) </li><li> Power BI on-premises Data Gateway configuration and data source </li></ul> |
|||||

<!--
[Reference: Prework][Power BI]
--> 

## DNS

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Review and prepare for DNS change if current DNS has MSOID CName entry | Customer owned DNS zone changes | Office Client Services customers | Update customer owned DNS record Time to Live (TTL)  to 5 min if MSOID CName exists |
|||||

<!--
[Reference: Prework][DNS]
-->  			

## Federated identity

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Generate Relying Party Trust for global Azure AD endpoints | Customers need to manually create a Relying Party Trust (RPT) to [global](https://nexus.microsoftonline-p.com/federationmetadata/2007-06/federationmetadata.xml) endpoints. This is done by adding a new RPT via GUI by leveraging the global  federation metadata URL and then use [AD FS Help](https://adfshelp.microsoft.com/AadTrustClaims/ClaimsGenerator#:~:text=%20Azure%20AD%20RPT%20Claim%20Rules%20%201,Azure%20AD.%20This%20will%20be%20what...%20More%20) to generate the claim rules and import them into the RPT. | Federated Authentication organizations | Required Action – inaction will result in service impact during the migration |
|||||

<!--
[Reference: Prework][Federation]
-->  


## More information

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
