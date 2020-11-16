---
title: "Additional experience information for the migration from Microsoft Cloud Deutschland"
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
description: "Summary: Additional customer experience information when moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region."
---

# Additional experience information for the migration from Microsoft Cloud Deutschland

The following sections provide additional information on customer experiences.

## Services

### Azure AD

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Microsoft Cloud Deutschland Azure AD tenant copied to Office 365 Services | Azure AD copies tenant to Office 365 Services. Tenant and User identifiers are preserved.  Azure AD service calls are redirected from Microsoft Cloud Deutschland to Office 365 Services transparent to services. | All Office customers | - GDPR Data Subject Requests (DSRs) are executed from Office 365 Services Azure Admin portal for future requests. Any legacy/non-customer diagnostic data information resident Microsoft Cloud Deutschland is deleted at or before 30 days. <br><br> - All customers using federated authentications with Active Directory Federation Services (AD FS), should not make changes to Issuer URIs used for all authentications with on-premises Active Directory during migration. Changing Issuer URIs will lead to authentication failures for users in the domain. Issuer URIs can be changed directly in AD FS or when a domain is converted from managed to federated and vice versa. Microsoft recommends customers do not add/remove/convert a federated domain in the Azure AD tenant been migrated. Issuer URIs can be changed once the migration is fully complete. <br><br> - Multi-Factor Auth requests using the Microsoft Authenticator application display as UserObjectID (GUID) while the tenant is copied to Office 365 services. MFA requests will perform as expected despite this display behavior.   Microsoft Authenticator accounts activated using Office 365 services endpoints will display Username (UPN).  Accounts added using Microsoft Cloud Deutschland endpoints will display UserObjectID (GUID) but will work with both Microsoft Cloud Deutschland and Office 365 services endpoints.  |
| Establish AuthServer in on-premises pointing to global STS service | This ensures that requests from users who migrate to the Microsoft Cloud Deutschland service for Exchange availability requests targeting the hybrid on-premises environment are authenticated to access the on-premises service. Similarly this will ensure authentication of requests from onprem to Office 365 services endpoints | Exchange Online customers with Hybrid (on-premises) deployments | After Azure AD migration is signaled complete, the administrator of the on-premises Exchange (hybrid) topology must add a new authentication service endpoint for the Office 365 services. With this command from Exchange Powershell, replace `TenantID` with your organizations Tenant ID (found in Azure portal/Azure AD blade). <br><br> - `New-AuthServer GlobalMicrosoftSts -AuthMetadataUrl https://accounts.accesscontrol.windows.net/<TenantId>/metadata/json/1` <br> <br> Failing to complete this task, as Mailbox users migrate from Microsoft Cloud Deutschland to Office 365 services hybrid free-busy requests may fail to provide information.   |
| Migration of Azure resources | Customers using Office 365 and Azure resources (e.g., Networking, Compute, Storage, etc) will perform the migration of resources to the Office 365 Services instance. This migration is customer responsibility. Message Center posts will signal start.  and migration must be completed prior to finalization of the Azure AD organization in the Office 365 services environment. | Azure Customers | For Azure migrations, see the [Azure migration playbook](https://docs.microsoft.com/azure/germany/germany-migration-main) |
|||||

<!--
[Reference: Experience][Data Protection] Experience][
[Reference: Experience][Federation] 
[Reference: Experience][MFA]  


[Reference: Experience – Post Migration][Hybrid] 	
		

[Reference: Experience – During Migration] [Azure] 
-->

### Exchange Online

If your are using Set-UserPhoto:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| New Germany region is added to existing organization setup and mailboxes are moved to Office 365 services | Exchange Online configuration adds the new go-local German region to the transitioning organization. This Office 365 services region is set as ‘default’, which enables the internal load balancing service to re-distribute mailboxes to the appropriate default region in Office 365 services. In this transition, users on either side (Germany or Office 365 services) are in the same organization and can use either URL endpoint. |  Exchange Online | In case user mailbox has been migrated but admin mailbox has not been migrated and vice-versa, the admins will not be able to run `Set-UserPhoto` cmdlet. Admin need to pass additional string in ConnectionUri during connection setup. Here is the syntax: <br><br> `https://outlook.office.de/PowerShell-LiveID?email=<user_email>` <br><br> `user_email` is the placeholder for email-id of the user whose Photo needs to be changed using Set-UserPhoto cmdlet. |
|||||

<!--
[Reference: Experience][Exchange Online]  [if using Set-UserPhoto] 
-->  

If you are using hybrid:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
|Stop / delete any onboarding or offboarding moves of their mailboxes.  | This ensures the move requests don’t fail with error. | Exchange Online customers with Hybrid (on-premises) deployments | 	Required action. Failure to do so may result in service / client failure. |
|||||

<!--
[Reference: Experience][Hybrid] 
--> 


### Dynamics

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Microsoft Dynamics resources | Customers with Microsoft Dynamics will be engaged by Engineering or FastTrack to perform transition of Dynamics to the Office 365 services instance.* | Microsoft Dynamics 365 customers | - Post migration Admin validates organization <br><br> - Admin modifies workflows as necessary <br><br> - Admin clears AdminOnly mode as appropriate <br><br> - Admin changes organization type from Sandbox as appropriate <br><br> - Notify end-users of the new URL to access the Instance (Org). <br><br> - Update any “inbound” connections to the new endpoint URL. <br><br> - Dynamics service will be unavailable to users during the transition. <br><br> - Users are required to validate the org health and features after migration of each org.  |
|||||

\* (i) Customers with Microsoft Dynamics 365 must take action in this migration scenario as defined by the Migration process provided. (ii) Failure by the customer to take action will mean that Microsoft will be unable to complete the migration. (iii)When Microsoft is unable to complete the migration due to the customer’s inaction, then the customer’s subscription will expire on October 29, 2021. 


### PowerBI

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Microsoft of Power BI resources | Customers with Microsoft Power BI will be engaged by Engineering or FastTrack after manually triggering an existing PBI migration tool to transition of Power BI to the Office 365 services instance.** | Microsoft Power BI customers | - The following Power BI items will NOT be transitioned and they will have to be re-created: <br><br> Real-Time datasets (e.g., streaming or push datasets). <br> Power BI on-premises Data Gateway configuration and data source. <br> The reports built on top of the real-time datasets will not be available after migration and are required to be recreated. <br><br> - Power BI services will be unavailable to users during the transition. The unavailability of the service should not be more than 24 hrs. <br><br> - Users will be required to reconfigure data sources and their on-premise data gateways with the Power BI Service after migration.  Until they do so, users will be unable to use these data sources to perform scheduled refresh and/or Direct Query against these data sources. <br><br> - Capacities and Premium workspaces cannot be migrated. Customer needs to delete all the capacities before the migration, re-create them after the migration and move the workspaces back to capacities as desired.  |
|||||

**
  (i) Customers with Microsoft Power BI must take action in this migration scenario as defined by the Migration process provided. (ii) Failure by the customer to take action will mean that Microsoft will be unable to complete the migration. (iii)When Microsoft is unable to complete the migration due to the customer’s inaction, then the customer’s subscription will expire on October 29, 2021. 


### Office Apps

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Clients, Office Online	During Office client cutover, Azure AD finalizes the tenant scope to point to the Office 365 services. | This configuration change enables Office clients to update and point to the Office 365 services endpoints. | All Office customers | - Remove MSOID CName from customer owned DNS if existed. <br><br> - Notify users to close ALL Office apps and then sign back in (or force client restart, user sign-in) to enable Office clients to pick up the change. <br><br> - Notify users/helpdesk that users *may* see an Office banner prompting them to re-activate Office apps within 72 hours of cutover. <br><br> - Personal machines must close all Office applications, sign out, then back in. In the Yellow activation bar sign-in to re-activate against the Office 365 services service. <br><br> - Shared machines – No extra impact. Similar experience as personal machines. <br><br> - Mobile devices – Mobile devices must close then sign out and back into mobile applications. |
|||||

<!--
[Reference: Experience][Office Apps]
--> 

## During migration


### Exchange Online

For eDiscovery:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| During migration, eDiscovery searches will fail or return 0 results for SharePoint Online, OneDrive for Business and Exchange Online locations that have been migrated | During migration, customers can continue to create cases, holds, searches and exports in the Security & Compliance Center, including Content Search.  However, searches against SharePoint Online, OneDrive for Business and Exchange Online locations that have been migrated will either return 0 results or produce an error.  See steps column to the right for remediation. | All customers using eDiscovery |  -	In the event that a search returns 0 results or an error during migration, please take the following action. SharePoint Online - Download sites directly from SharePoint Online/ OneDrive for Business site using  Download files and folders from OneDrive or SharePoint - this will require SharePoint Online admin or R/O permissions on the site <br> If limits are exceeded, explained in the above documentation, customer can utilize the OneDrive for Business sync client following this guidance. <br><br> - Exchange Online - In-Place eDiscovery in Exchange Server |
|||||

<!--
[Reference: Experience – During Migration][ [eDiscovery]
-->  	 	 


### SharePoint Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| SharePoint and OneDrives are transitioned | SharePoint and OneDrives are migrated from Microsoft Cloud Deutschland to Office 365 services in this phase. Existing Microsoft Cloud Deutschland URLs are preserved (contoso.sharepoint.de). Tokens issued by Microsoft Cloud Deutschland or Office 365 services token issuer are valid during the transition. | SharePoint customers | Inflight SharePoint 2013 workflows will be broken during migration and must be republished post-migration |
|||||

<!--
[Reference: Experience – During Migration][ [SPO]
-->  

### Skype for Business Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Migration of Skype for Business to Teams | Existing Skype for Business customers are migrated to Office 365 services in Europe and then transitioned to Microsoft Teams in the Germany region of Office 365 services. | Skype for Business customers | - The override is to specify which environment powershell will utilize to administer settings and policies for your tenant and users. When connectint to a powershell session the following needs to be added. <br><br> - `-OverridePowershellUri “https://admin4E.online.lync.com/OcsPowershellOAuth”` |
|||||

<!--
[Reference: Experience – During Migration][ [SfBO]
-->  


## Post-migration

### Azure AD

For hybrid:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Update Azure ADConnect | Once Azure AD cutover is completed, the organization is fully Office 365 services organization (no longer connected to Microsoft Cloud Deutschland). At this point the customer needs to ensure the delta sync process has finalized and after that have   the string value “AzureInstance” to be set from 3 (Microsoft Cloud Deutschland) to 0 in the registry path `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Azure AD Connect`. | - Hybrid Azure AD connected organizations | Change the registry key value. <br><br> - Failing to do so, will lead to objects not being synced once the Microsoft Cloud Deutschland endpoints are not available anymore. |
|||||

<!--
[Reference: Experience – Post Migration][Hybrid]
--> 

For federated authentication:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Remove MCD AD FS Relying Party Trusts | Once Azure AD cutover is completed, the organization is fully Office 365 services organization (no longer connected to Microsoft Cloud Deutschland). At this point the customer will need to remove the Relying Party Trust to the Microsoft Cloud Deutschland endpoints. This can only be done, when no applications of the customer point to Microsoft Cloud Deutschland endpoints when Azure AD is leveraged as IdP. | Federated Authentication organizations | None |
|||||

<!--
[Reference: Experience – Post Migration][Federated]
-->  	 		

For Azure AD:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Request to join an Azure AD group in last 30 days before migration will need to be requested again if the original request was not approved | End user customer will need to use Access panel to submit request to join a an Azure AD group again if those requests were not approved in the last 30 days before the migration. | End users whose an Azure AD group approval requests were not approved in last 30 days before migration |  As an end user: <ol><li> Navigate to Access panel. <li> Find the an Azure AD group for which membership approval was pending in 30 days before migration. <li> Request to join the an Azure AD  group again. </ol> Active group membership requests which are less than 30 days before migration cannot be approved, unless they are re-requested post migration |
|||||

<!--
[Reference: Experience – Post Migration][Azure AD]
--> 

For DNS:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Update on-premises DNS services for Office 365 services endpoints | Customer managed DNS entries which point to Office 365 Germany need to repoint to the Office 365 services endpoints. | All Office customers | Required action. Failure to do so may result in service or client failure. |
|||||

<!--
 [Reference: Experience – Post Migration][DNS]
-->

For third party services for Office 365 services endpoints:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Update partners and third party services for Office 365 services endpoints | - Third party services and partners which point to Office 365 Germany need to repoint to the Office 365 services endpoints. Example: Re-Register, in alignment with your vendors/partners, gallery app version of applications, if available. <br><br> -  Point all custom applications which leverage Graph API from graph.microsoft.de to graph.microsoft.com. Other APIs with changed endpoints also need to be adjusted, if leveraged. <br><br> - Change all non-first party Enterprise Applications to redirect to the world wide endpoints.  | All Office customers | Required action. Failure to do so may result in service or client failure. |
|||||

<!--
 [Reference: Experience – Post Migration][]
--> 

### Exchange Online

If you are using a hybrid Exchange configuration:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Re-run Hybrid Configuration Wizard against Office 365 services | Existing Hybrid Configuration Wizard configuration is configured to support Microsoft Cloud Deutschland. With migration complete of Exchange services, we decouple on-premises configuration from Microsoft Cloud Deutschland. | Exchange Online customers running Hybrid deployment | - Required action – fail to do so may result in service / client failure. Before Exchange mailbox migration begins (+5 days’ notice) clients to be notified that they should stop / delete any onboarding or offboarding moves of their mailboxes.  If they don't, they'll see errors in their move request. <br><br> - After Exchange mailbox migration is complete, again clients are to be signaled that they can resume onboarding/offboarding moves. <br> Running `Test-MigrationServerAvailabiilty` cmdlet during Microsoft Cloud Deutschland to Office 365 services Migration of Exchange may not work. It will work properly after migration completion. <br> If clients run into credential / authorization issues after mailbox migrations, they can re-enter the on-prem admin credentials in the migration endpoint by running `Set-MigrationEndpoint endpointName -Credential $(Get-Credential)` or by setting the same using ECP  |

<!--
[Reference: Experience – Post Migration][Hybrid]  
[Reference: Experience – Post Migration][Exchange Online]
--> 

For eDiscovery:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
|  All SharePoint Online, OneDrive for Business and Exchange Online locations have been migrated along with SCC. | Searches will now be 100% successful.  Any failures or errors should follow normal support channels | All customers using eDiscovery | None |
| Remove org-wide retention policy created during pre-steps | Customer can remove the org-wide Retention Policy created during Customer Pre-Work steps | All customers who applied a retention policy during pre-work steps | None |
|||||

<!--
 [Reference: Experience – Post Migration][ [eDiscovery] 	 	 	

[Reference: Experience – Post Migration][ [eDiscovery]
-->  	 	 	

### SharePoint Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Republish SharePoint 2013 workflows | In Pre-work we reduced SharePoint 2013 workflows. Now with migration complete, the customer can republish the workflows. | All Office customers | This is a required action. Failure to do so may result in user confusion and helpdesk calls. |
| Share items via Outlook | Share items via Outlook no longer works after tenant cutover | SharePoint Online and OneDrive for Business | - In SPO and OneDrive for Business you can share items via Outlook. After pressing the Outlook button, a shareable link will be created and pushed into a new mail in Outlook web app. <br><br> - After tenant cutover, this will not work anymore. We recognize this is a known issue however since the Outlook button feature is in the path of deprecation, it is decided not to fix this till the deprecation is rolled out. |

<!--
 [Reference: Experience – Post Migration][ [SPO]
-->


## More information

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
