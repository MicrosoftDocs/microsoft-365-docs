---
title: "Migration from Microsoft Cloud Deutschland references"
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
description: "Summary: Understand the experiences for moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region. (fix)"
---

# Migration from Microsoft Cloud Deutschland references


## General

### Azure AD

Here are some additonal considerations for Azure AD.

- If you are using federated authentication:

  - You must not create promote, or demote a federated domain while the tenant transition is in process. After the migration to the Office 365 services Azure service is complete (the tenant is fully completed), you can resume managing federated domains.

  - If you are using federated authentication with Active Directory Federation Services (AD FS), you should not make changes to Issuer URIs used for all authentication with your on-premises Active Directory Domain Services (AD DS) during migration. Changing Issuer URIs will lead to authentication failures for users in the domain. Issuer URIs can be changed directly in AD FS or when a domain is converted from managed to federated and vice versa. Microsoft recommends customers do not add, remove, or convert a federated domain in the Azure AD tenant being migrated. Issuer URIs can be changed once the migration is fully complete.

- For networking:

  - Creating IPv6 named networks does not work in the http://portal.microsoftazure.de/ Azure portal. Use Azure portal at https://portal.azure.com to create IPv6 named networks.
 
   - You cannot create trusted IP ranges from DE portal when establishing Azure Multi-Factor Authentication service settings. Use the Office 365 services Azure AD portal to create Azure Multi-Factor Authentication trusted IP ranges.


- For Conditional Access: 

  - Conditional Access policies with the following grant controls are not supported until migration to Office 365 services is completed (after Azure AD Finalize):

    - Require Compliant Device
    - Require Approved App
    - Require App Protection Policy
    
  - The Conditional Access policy blade gives a false warning () about security defaults being enabled for the tenant even when it is disabled, and Conditional Access policies already exist for the tenant. You should ignore the warning or use the Office 365 services portal to manage Conditional Access policies. 

- Intune scenarios are supported only against WW endpoints, once tenant migration, including all office workloads migrations are completed
- Microsoft Cloud Deutschland users who use the Mobile App Notification method for multi-factor authentication (MFA) requests see the UserObjectId (GUID) instead of the Username (UPN) in the Microsoft Authenticator app.  Once migration of the Azure AD tenant is completed and hosted in Office 365 services, new Microsoft Authenticator activations will display Username (UPN). Existing Microsoft Authenticator accounts will continue to display the UserObjectId (GUID) but will continue to work for Mobile App Notifications. 
- For tenants created after October 22nd 2019, Security Defaults may be auto-enabled for the tenant when it is migrated to the Office 365 service. Tenant admins can choose to leave Security Defaults enabled and register for MFA, or they can disable the feature. For more information see https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/concept-fundamentals-security-defaults#disabling-security-defaults. Note: Organizations which are not auto-enabled during migration may still be auto-enrolled in the future as the feature to enable security defaults is rolled out in the Office 365 service. Admins choosing to explicitly disable or enable Security Defaults may do so by updating the feature under Azure Active Directory > Properties. Once the feature enablement state is explicitly by the admin, it will not be auto-enabled.
- There will be an Azure AD Connect version warning in the Office 365 Germany portal as well as the Office 365 portal once the tenant is in migration. This can be ignored if the version warning is no longer show the warning after the migration is completed. In case there is a warning either before or after migration in the respective portal, an Azure AD Connect update needs to be performed. The warning displays “We detected you’re using an outdated directory sync tool. We recommend you go to the Microsoft Download Center to get the latest version of Azure AD Connect”. 

### Exchange Online 

- Users in OWA that access a shared mailbox in the other environment (for example, a user in the Germany environment accesses a shared mailbox in the global environment) will be prompted to authenticate a second time. The user must first authenticate and access their mailbox in outlook.office.de, then open the shared mailbox that is in outlook.office365.com. They will need to authenticate a second time when accessing the shared resources that are hosted in the other service.
- For existing Microsoft Cloud Deutschland customers or those in transition, when a shared mailbox is added to Outlook using “File->Info->Add Account”, viewing calendar permissions may fail. (The Outlook client attempts to use the Rest API https://outlook.office.de/api/v2.0/Me/Calendars) Customers wishing to add an account to view calendar permissions can add the registry key as mentioned at https://support.microsoft.com/en-us/office/user-experience-changes-for-sharing-a-calendar-in-outlook-5978620a-fe6c-422a-93b2-8f80e488fdec to ensure this action will succeed. [This Registry Key can be deployed Organization wide using Group Policy ]

- If you are using Exchange Online hybrid:

    - You must re-run the Hybrid Configuration Wizard (HCW) to update on-premises configuration against Microsoft Cloud Deutschland before the transition, and re-execution of the HCW upon cleanup against the Office 365 services. Additional DNS updates may be required if you use custom domains.

- During Migration Phase, cmdlets New-migrationEndpoint, Set-MigrationEndpoint and Test-MigrationsServerAvailability can give error [Error on proxy]. This happens when the arbitration mailbox has migrated to Office 365 services but the admin mailbox has not or vice versa. To resolve this, while creating the tenant powershell session use the arbitration mailbox as routing hint in the connectionuri. Eg: New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid?email=Migration.8f3e7716-2011-43e4-96b1-aba62d229136@TENANT.onmicrosoft.de" -Credential $UserCredential -Authentication Basic -AllowRedirection

To find out more information about any actions needed during the migration phase of this workload or impact to administration or usage, review the Exchange Online section of Migration Phases Actions and Impacts.

### Office Services

- The Office Most Recently Used (MRU) service is a cutover from the Germany service to Office 365 services, not a migration. Only MRU links from the Office 365 services side will be visible after migration from the Office.com portal. MRU links from Germany service are not visible as MRU links in Office 365 services. Office 365 services MRU links are accessible only after the tenant migration is complete.

### SharePoint Online and OneDrive

- Upon completion of the SharePoint Online migration to the German region, data indexes are rebuilt. Features dependent on search indexes may be impacted while reindexing completes.
- If your organization still uses SharePoint 2010 workflows, they will no longer function after December 31, 2021. SharePoint 2013 workflows will remain supported, although turned off by default for new tenants starting November 1, 2020. After migration to the Office 365 services SharePoint Online service is complete, we recommend that you to move to Power Automate or other supported solutions.
- Upon completion of the OneDrive migration to the German region, data indexes are rebuilt. Features dependent on search indexes may be impacted while reindexing is in progress.


## Pre-work


| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Ensure network connectivity to [Office 365 services URLS and IP addresses](https://aka.ms/o365urls) | All clients and services hosted by the customer used to access Office 365 service must be able to access the Office 365 Services endpoints. | All transitioning customers, customers with network access restricted to Microsoft Cloud Deutschland | Required action – failure to do so may result in service / client failure. |
| Review and prepare for migration-related DNS changes | Customer prepare DNS entries for Exchange Online/Exchange online protection (MX record, etc.) | Exchange Online customers | This is recommended action. No action means migrated customers’ email may route through Microsoft Cloud Deutschland until Microsoft Cloud Deutschland services are disabled. |
| Review and prepare for migration-related DNS changes | Customer owned DNS zone changes for Skype for Business Online | Skype For Business Online customers | It is recommended to update customer owned domain DNS record TTLs to 5minutes so as to expedite the DNS record refresh, however the Microsoft managed cutover associated with this DNS change may occur anytime with in the provided 24 hour change window. <br> Future availability service disruption possible. Users will not be able to log into Skype for Business be redirected to the migrated Teams experience in the Office 365 services. |
| Prepare End User and Administration training and readiness for the transition to Microsoft Teams | Be successful in your transition from Skype to Teams by planning user communication and readiness. | Skype For Business Online customers | Clients need to be aware of the new services and how to use once their services are transitioned to the Office 365 services. <br> After DNS changes are made for both the customer vanity domains and the initial domain, users would sign into Skype for Business and see that they now are migrated to Teams. This would also download the desktop client for Teams in the background. |
| Prepare End user and Administration training about users removing and re-adding their account to Outlook Mobile | Outlook Mobile accounts configured with mailboxes in Microsoft Cloud Deutschland may have to be removed and re-added to Outlook in order to properly sync the new Office 365 Services configuration. | Outlook Mobile customers | Outlook mailboxes previously configured for Microsoft Cloud Deutschland may not pick up the new Office 365 Services configuration, leading to errors and other user experience degradation. IT admins are encouraged to provide proactive documentation instructing users to remove and re-add their accounts to Outlook Mobile if login or mail syncing issues are experienced post migration. |
| Prepare to notify users about restarting and signing out/in of their clients post-migration | Office client licensing will transition from Microsoft Cloud Deutschland to Office 365 Services in the migration. Clients pick-up a new valid license after log-out/in of Office clients. | Microsoft 365 Apps customers | 	Users’ Office products need to refresh licenses from the Office 365 Services service. Failing to act the Office products may experience license validation errors. |
| Cancel any trial subscriptions | Trial subscriptions will not be migrated and will block paid subscription transfer. | All customers | Trial services are expired, non-functioning if accessed by users once cancelled. |
| Deploy Teams Desktop client for users accessing Skype for Business in Germany | Migration to Global brings the move to Teams for collaboration, calling and chat. Either, deploy the Teams Desktop client or ensure that a supported browser is available | Skype for Business customers | Non action will result in unavailability of Teams collaboration services. |
| Analyze License Feature differences between Microsoft Cloud Deutschland and Office 365 Services | Office 365 services include additional features, services not available in the current Microsoft Cloud Deutschland. During subscription transfer, new features will be available to users. | All customers | Analyze License Feature differences between Microsoft Cloud Deutschland and Office 365 Services. Start with the [Office 365 platform Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-platform-service-description/office-365-platform-service-description). <br> Determine if any new Office 365 Services features should be initially disabled to limit user impact on user change management & alter user license assignments as needed <br> Prepare user and helpdesk readiness about new services and features associated to Office 365 Services subscriptions. |
| Create organization-wide [Retention Policy](https://docs.microsoft.com/emicrosoft-365/compliance/retention?view=o365-worldwide#a-policy-that-applies-to-entire-locations) to protect from inadvertent deletion of content during migration  | To ensure content isn’t inadvertently deleted by end users during the migration, customers may choose to enable an organization-wide retention policy. <br> Although not necessary since holds placed anytime during the migration should work as expected, this is a back-up safety mechanism and may not be utilized by all customers, especially those who are concerned about over preservation. | Office customers | Apply retention policy as described here. |
| Backup of AD FS Farm for disaster recovery scenarios | Customers need to back up the AD FS farm appropriately to ensure the Relying Party Trusts to global & Germany endpoints can be restored without touching the Issuer URI of the domains. Microsoft recommends leveraging using AD FS Rapid Restore Tool for a backup of the farm and the respective restore, if necessary. | Federated Authentication organizations | Required Action – non action will result in service impact during the migration in case the AD FS farm of the customer breaks. |


### Exchange Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
|  Notify external ‘partners’ of upcoming transition to Office 365 Office 365 Services | Availability Address Space configurations allow sharing of Free Busy with Office 365 | Exchange Online customers with Calendar/Availability Address Space sharing enabled | Required action – failure to do so may result in service / client failure at a later stage of customer migration. |
|||||

If you have hybrid Exchange:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Uninstall previous Hybrid Configuration Wizard (HCW). Install and Execute HCW latest version 17.0.5378.0  from https://aka.ms/hybridwizard. | Latest version of the HCW includes necessary updates to support customers transitioning from Microsoft Cloud Deutschland to Office 365 Services. <br> Updates include changes to SendConnector and ReceiveConnector on-premises certificate settings. | Exchange Online customers running Hybrid deployment | Required action – failure to do so may result in service / client failure. |
|||||

### SharePoint Online

If you have SharePoint 2013:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Limit SharePoint 2013 workflows, use during the SharePoint Online migration | Reduce SharePoint 2013 workflows and complete in-flight workflows before transitions | SharePoint Online Customers | Non action may result in user confusion, helpdesk calls. |
|||||

[Reference:  If Pre-Work][ SharePoint 2013 ] 			

### Mobile

If you are using a third-party mobile device management (MDM) solution:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Determine if any reconfiguration is required post-migration | MDM solutions may target outlook.de endpoints. In this transition to Office 365 Services, client profiles should update to the Office 365 Services outlook.office365.com URL. | Exchange Online and MDM customers | Clients may continue to function while “outlook.de” endpoint is accessible but will fail if Microsoft Cloud Deutschland endpoints are no longer available. |
|||||

[Reference:  If Pre-Work][ Mobile] 			

### Line of business apps

If using a third-party service or Line of Business (LOB) apps integrated with Office 365: 

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Determine if any reconfiguration is required post-migration | 3rd party services and applications that integrate with Office 365 may be coded to expect Microsoft Cloud Deutschland IPs, URLs | All customers | Required action – non action may result in service / client failure. |
|||||

[Reference:  If Pre-Work][ LOB]

### Azure 

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Determine which Azure services are in use and prepare for future migration from Germany to the Office 365 Services tenant by working with your partners. Follow steps described in the Azure migration playbook | Migration of Azure resources is a customer responsibility and requires manual effort following prescribed steps. Understanding what services are in use in the organization is key to a success migration of Azure services. <br> Office 365 Germany customers with Azure subscriptions under the same identity partition (organization) must follow the Microsoft prescribed order when they can begin subscription and services migration. | Azure Customers | Customers may have multiple Azure subscriptions, each subscription containing infrastructure, Services and platform components. 
Administrators should identify subscriptions and stakeholders to ensure prompt migration and validation is possible as part of this migration event. <br> Failing to successfully complete migration of these subscriptions and Azure components within the prescribed timeline will affect completion of the Office and Azure AD transition to the Office 365 services and may result in data loss.  <br> A Message center notification will signal the point at which customer-led migration can begin. |
|||||

[Reference:  If Azure Pre-Work][ Azure] 

### Dynamics	

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| For Dynamics sandbox organizations, ensure to download production environment of Dynamics SQL instance from Dynamics 365 Microsoft Cloud Deutschland. The latest production backup should be restored to sandbox before sandbox migration | Migration of Dynamics 365 requires customers to ensure that the Sandbox environment is refreshed with the latest Prod DB. | Microsoft Dynamics customers | FastTrack team will assist customers to perform dry runs to validate the version upgrade from 8.x to 9.1.x. |
|||||

[Reference: Prework][Dynamics]  			

### PowerBI

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Removal of objects from Power BI subscriptions that will not be migrated between Power BI Microsoft Cloud Deutschland and Office 365 Services | Migration of Power BI services will require customer action to delete certain artifacts like datasets and dashboards. | Power BI customers | Admins may have to remove the below items from their subscription: <ul><li> Real-Time datasets (e.g., streaming or push datasets) </li><li> Power BI on-premises Data Gateway configuration and data source </li></ul> |
|||||

[Reference: Prework][Power BI]

### DNS

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Review and prepare for DNS change if current DNS has MSOID CName entry | Customer owned DNS zone changes | Office Client Services customers | Update customer owned DNS record Time to Live (TTL)  to 5 min if MSOID CName exists |
|||||

[Reference: Prework][DNS] 			

### Federated identity

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Generate Relying Party Trust for global Azure AD endpoints | Customers need to manually create a Relying Party Trust (RPT) to global endpoints. This is done by adding a new RPT via GUI by leveraging the global  federation metadata URL and then use AD FS Help to generate the claim rules and import them into the RPT. | Federated Authentication organizations | Required Action – non action will result in service impact during the migration |
|||||

[Reference: Prework][Federation] 

## Experience

### Azure AD


| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|

| Microsoft Cloud Deutschland Azure AD tenant copied to Office 365 Services | Azure AD copies tenant to Office 365 Services. Tenant and User identifiers are preserved.  Azure AD service calls are redirected from Microsoft Cloud Deutschland to Office 365 Services transparent to services. | All Office customers | <ul><li> GDPR Data Subject Requests (DSRs) are executed from Office 365 Services Azure Admin portal for future requests. Any legacy/non-customer diagnostic data information resident Microsoft Cloud Deutschland is deleted at or before 30 days. </li><li> All customers using federated authentications with Active Directory Federation Services (AD FS), should not make changes to Issuer URIs used for all authentications with on-premises Active Directory during migration. Changing Issuer URIs will lead to authentication failures for users in the domain. Issuer URIs can be changed directly in AD FS or when a domain is converted from managed to federated and vice versa. Microsoft recommends customers do not add/remove/convert a federated domain in the Azure AD tenant been migrated. Issuer URIs can be changed once the migration is fully complete. </li><li> Multi-Factor Auth requests using the Microsoft Authenticator application display as UserObjectID (GUID) while the tenant is copied to Office 365 services. MFA requests will perform as expected despite this display behavior.   Microsoft Authenticator accounts activated using Office 365 services endpoints will display Username (UPN).  Accounts added using Microsoft Cloud Deutschland endpoints will display UserObjectID (GUID) but will work with both Microsoft Cloud Deutschland and Office 365 services endpoints. </li></ul> |

| Establish AuthServer in on-premises pointing to global STS service | This ensures that requests from users who migrate to the Microsoft Cloud Deutschland service for Exchange availability requests targeting the hybrid on-premises environment are authenticated to access the on-premises service. Similarly this will ensure authentication of requests from onprem to Office 365 services endpoints | Exchange Online customers with Hybrid (on-premises) deployments | <ul><li> After Azure AD migration is signaled complete, the administrator of the on-premises Exchange (hybrid) topology must add a new authentication service endpoint for the Office 365 services. Using the below commandlet from Exchange Powershell, replace <tenantID> with your organizations Tenant ID (found in Azure portal/Azure AD blade). <br> `New-AuthServer` <br> `GlobalMicrosoftSts -AuthMetadataUrl https://accounts.accesscontrol
.windows.net/[TenantId]/metadata/json/1` </li><li> Failing to complete this task, as Mailbox users migrate from Microsoft Cloud Deutschland to Office 365 services hybrid free-busy requests may fail to provide information. </li></ul>  |

| Migration of Azure resources | Customers using Office 365 and Azure resources (e.g., Networking, Compute, Storage, etc) will perform the migration of resources to the Office 365 Services instance. This migration is customer responsibility. Message Center posts will signal start.  and migration must be completed prior to finalization of the Azure AD organization in the Office 365 services environment. | Azure Customers | For Azure migrations, see the [Azure migration playbook](https://docs.microsoft.com/en-us/azure/germany/germany-migration-main) |

|||||

[Reference: Experience][Data Protection] Experience][
[Reference: Experience][Federation] 
[Reference: Experience][MFA]  


[Reference: Experience – Post Migration][Hybrid] 	
		

[Reference: Experience – During Migration] [Azure] 			•	


### Exchange Online

If using Set-UserPhoto:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| New Germany region is added to existing organization setup and mailboxes are moved to Office 365 services | Exchange Online configuration adds the new go-local German region to the transitioning organization. This Office 365 services region is set as ‘default’, which enables the internal load balancing service to re-distribute mailboxes to the appropriate default region in Office 365 services. In this transition, users on either side (Germany or Office 365 services) are in the same organization and can use either URL endpoint. |  Exchange Online | In case user mailbox has been migrated but admin mailbox has not been migrated and vice-versa, the admins will not be able to run `Set-UserPhoto` cmdlet. Admin need to pass additional string in ConnectionUri during connection setup. Below syntax mentions the change –  `https://outlook.office.de/PowerShell-LiveID?email=<user_email>` <br> Where user_email is the placeholder for email-id of the user whose Photo needs to be changed using Set-UserPhoto cmdlet. |
|||||

[Reference: Experience][Exchange Online]  [if using Set-UserPhoto]  

If hybrid:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
|Stop / delete any onboarding or offboarding moves of their mailboxes.  | This ensures the move requests don’t fail with error. | Exchange Online customers with Hybrid (on-premises) deployments | 	Required action – fail to do so may result in service / client failure. |
|||||

[Reference: Experience][Hybrid] 


### Dynamics

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Microsoft of Dynamics resources | Customers with Microsoft Dynamics will be engaged by Engineering or FastTrack to perform transition of Dynamics to the Office 365 services instance.* | Microsoft Dynamics 365 customers | <ul><li> Post migration Admin validates organization </li><li> Admin modifies workflows as necessary </li><li> Admin clears AdminOnly mode as appropriate </li><li> Admin changes organization type from Sandbox as appropriate </li><li> Notify end-users of the new URL to access the Instance (Org). </li><li> Update any “inbound” connections to the new endpoint URL. </li><li> Dynamics service will be unavailable to users during the transition. </li><li> Users are required to validate the org health and features after migration of each org. </li></ul> |
|||||

*
  (i) Customers with Microsoft Dynamics 365 must take action in this migration scenario as defined by the Migration process provided. (ii) Failure by the customer to take action will mean that Microsoft will be unable to complete the migration. (iii)When Microsoft is unable to complete the migration due to the customer’s inaction, then the customer’s subscription will expire on September 30, 2020. 


### PowerBI

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Microsoft of Power BI resources | Customers with Microsoft Power BI will be engaged by Engineering or FastTrack after manually triggering an existing PBI migration tool to transition of Power BI to the Office 365 services instance.** | Microsoft Power BI customers | <ul><li> The following Power BI items will NOT be transitioned and they will have to be re-created: <br> Real-Time datasets (e.g., streaming or push datasets). </li><li> Power BI on-premises Data Gateway configuration and data source. </li><li> The reports built on top of the real-time datasets will not be available after migration and are required to be recreated. </li><li> Power BI services will be unavailable to users during the transition. The unavailability of the service should not be more than 24 hrs. </li><li> Users will be required to reconfigure data sources and their on-premise data gateways with the Power BI Service after migration.  Until they do so, users will be unable to use these data sources to perform scheduled refresh and/or Direct Query against these data sources. </li><li> Capacities and Premium workspaces cannot be migrated. Customer needs to delete all the capacities before the migration, re-create them after the migration and move the workspaces back to capacities as desired. </li></ul> |
|||||

**
  (i) Customers with Microsoft Power BI must take action in this migration scenario as defined by the Migration process provided. (ii) Failure by the customer to take action will mean that Microsoft will be unable to complete the migration. (iii)When Microsoft is unable to complete the migration due to the customer’s inaction, then the customer’s subscription will expire on September 30, 2020. 


### Office Apps

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Clients, Office Online	During Office client cutover, Azure AD finalizes the tenant scope to point to the Office 365 services. | This configuration change enables Office clients to update and point to the Office 365 services endpoints. | All Office customers | <ul><li>  </li><li> Notify users to close ALL Office apps and then sign back in (or force client restart, user sign-in) to enable Office clients to pick up the change. </li><li> Personal machines must close all Office applications, sign out, then back in. In the Yellow activation bar sign-in to re-activate against the Office 365 services service </li><li> Mobile devices – Mobile devices must close then sign out and back into mobile applications. </li></ul> |
|||||

[Reference: Experience][Office Apps]

### During migration


#### Exchange Online

For eDiscovery

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| During migration, eDiscovery searches will fail or return 0 results for SharePoint Online, OneDrive for Business and Exchange Online locations that have been migrated | During migration, customers can continue to create cases, holds, searches and exports in the Security & Compliance Center, including Content Search.  However, searches against SharePoint Online, OneDrive for Business and Exchange Online locations that have been migrated will either return 0 results or produce an error.  See steps column to the right for remediation. | All customers using eDiscovery |  	In the event that a search returns 0 results or an error during migration, please take the following action. <ul><li> SharePoint Online - Download sites directly from SharePoint Online/ OneDrive for Business site using  Download files and folders from OneDrive or SharePoint - this will require SharePoint Online admin or R/O permissions on the site <br>
If limits are exceeded, explained in the above documentation, customer can utilize the OneDrive for Business sync client following this guidance. </li><li> Exchange Online - In-Place eDiscovery in Exchange Server </li></ul>|
|  |  |  |  |
|  |  |  |  |
|||||

[Reference: Experience – During Migration][ [eDiscovery] 	 	 


#### SharePoint Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| SharePoint and OneDrives are transitioned | SharePoint and OneDrives are migrated from Microsoft Cloud Deutschland to Office 365 services in this phase. Existing Microsoft Cloud Deutschland URLs are preserved (contoso.sharepoint.de). Tokens issued by Microsoft Cloud Deutschland or Office 365 services token issuer are valid during the transition. | SharePoint customers | Inflight SharePoint 2013 workflows will be broken during migration and must be republished post-migration |
|  |  |  |  |
|  |  |  |  |
|||||

[Reference: Experience – During Migration][ [SPO] 

#### Skype for Business Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Migration of Skype for Business to Teams | Existing Skype for Business customers are migrated to Office 365 services in Europe and then transitioned to Microsoft Teams in the Germany region of Office 365 services. | Skype for Business customers | The override is to specify which environment powershell will utilize to administer settings and policies for your tenant and users. When connectint to a powershell session the following needs to be added. `-OverridePowershellUri “https://admin4E.online.lync.com/OcsPowershellOAuth”` |
|  |  |  |  |
|  |  |  |  |
|||||

[Reference: Experience – During Migration][ [SfBO] 


### Post-migration

#### Azure AD

For hybrid:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Update Azure ADConnect | Once Azure AD cutover is completed, the organization is fully Office 365 services organization (no longer connected to Microsoft Cloud Deutschland). At this point the customer needs to ensure the delta sync process has finalized and after that have   the string value “AzureInstance” to be set from 3 (Black Forest) to 0 in the registry path “Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Azure AD Connect”. | Hybrid Azure AD connected organizations | Change the registry key value.
Failing to do so, will lead to objects not being synced once the Microsoft Cloud Deutschland endpoints are not available anymore. |
|||||

[Reference: Experience – Post Migration][Hybrid]

For federated authentication:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Remove MCD AD FS Relying Party Trusts | Once Azure AD cutover is completed, the organization is fully Office 365 services organization (no longer connected to Microsoft Cloud Deutschland). At this point the customer will need to remove the Relying Party Trust to the Black Forest endpoints. This can only be done, when no applications of the customer point to Black Forest endpoints when Azure AD is leveraged as IdP. | Federated Authentication organizations | None |
|||||

[Reference: Experience – Post Migration][Federated] 	 		

For Azure AD:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Request to join an Azure AD group in last 30 days before migration will need to be requested again if the original request was not approved | End user customer will need to use Access panel to submit request to join a an Azure AD group again if those requests were not approved in the last 30 days before the migration. | End users whose an Azure AD group approval requests were not approved in last 30 days before migration | <ol><li> As an end user, navigate to Access panel. </li><li> Find the an Azure AD group for which membership approval was pending in 30 days before migration. </li><li> Request to join the an Azure AD  group again. </li></ol><br> Active group membership requests which are less than 30 days before migration cannot be approved, unless they are re-requested post migration |
|||||

[Reference: Experience – Post Migration][Azure AD]

For DNS:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Update on-premises DNS services for Office 365 services endpoints | Customer managed DNS entries which point to Office 365 Germany need to repoint to the Office 365 services endpoints. | All Office customers | Required action – failure to do so may result in service / client failure. |
|||||

[Reference: Experience – Post Migration][DNS]

For 3rd Party services for Office 365 services endpoints:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Update partners and 3rd party services for Office 365 services endpoints | 3rd party services and partners which point to Office 365 Germany need to repoint to the Office 365 services endpoints. Example: <ul><li> Re-Register, in alignment with your vendors/partners, gallery app version of applications, if available </li><li>  </li><li> Point all custom applications which leverage e.g. Graph API from graph.microsoft.de to graph.microsoft.com. Other APIs with changed endpoints also need to be adjusted, if leveraged. </li><li> Change all non-first party Enterprise Applications to redirect to the WW endpoints. </li></ul> | All Office customers | Required action – failure to do so may result in service / client failure. |
|||||

[Reference: Experience – Post Migration][] 

#### Exchange Online

If you are using a hybrid Exchange configuration:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Re-run Hybrid Configuration Wizard against Office 365 services | Existing Hybrid Configuration Wizard configuration is configured to support Microsoft Cloud Deutschland. With migration complete of Exchange services, we decouple on-premises configuration from Microsoft Cloud Deutschland. | Exchange Online customers running Hybrid deployment | Required action – fail to do so may result in service / client failure. <ul><li> Before Exchange mailbox migration begins (+5 days’ notice) clients to be notified that they should stop / delete any onboarding or offboarding moves of their mailboxes.  If they don't, they'll see errors in their move request. </li><li> After Exchange mailbox migration is complete, again clients are to be signaled that they can resume onboarding/offboarding moves. <br> Running `Test-MigrationServerAvailabiilty` cmdlet during Microsoft Cloud Deutschland to Office 365 services Migration of Exchange may not work. It will work properly after migration completion. <br> If clients run into credential / authorization issues after mailbox migrations, they can re-enter the on-prem admin credentials in the migration endpoint by running `Set-MigrationEndpoint endpointName -Credential $(Get-Credential)` or by setting the same using ECP </li></ul> |
| New Germany region is added to existing organization setup and mailboxes are moved to Office 365 services | Exchange Online configuration adds the new go-local German region to the transitioning organization. The Germany region continues set as ‘default’. Individual mailboxes tagged with the Germany region in Office 365 services will migrate automatically by the Load Balancing service when set by Customer during initial validation. Subsequently changing the “default” to the appropriate Office 365 services region will move the bulk of mailboxes at scale. In this transition, users on either side (Microsoft Cloud Deutschland or Office 365 services) are in the same organization and can use either URL endpoint. | Exchange Online | <ul><li> Stamp MailboxRegion on individual mailboxes to Germany region code “GER” to individually move specific mailboxes during ‘validation’ phase. </li><li> Transition users and services off Microsoft Cloud Deutschland URLs to Office 365 services URLs (https://outlook.office365.com) to aide in future retirement of the Germany service endpoints. </li><li> Upon completion of validation phase, the DefaultMailboxRegion is changed to GER to allow all mailboxes to rebalance to Office 365 services. </li><li> Users will continue to access the service via legacy Germany URLs. No immediate action needed. </li></ul> |

[Reference: Experience – Post Migration][Hybrid]  

[Reference: Experience – Post Migration][Exchange Online]

For eDiscovery:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
|  All SharePoint Online, OneDrive for Business and Exchange Online locations have been migrated along with SCC. | Searches will now be 100% successful.  Any failures or errors should follow normal support channels | All customers using eDiscovery | None |
| Remove org-wide retention policy created during pre-steps | Customer can remove the org-wide Retention Policy created during Customer Pre-Work steps | All customers who applied a retention policy during pre-work steps | None |
|||||

[Reference: Experience – Post Migration][ [eDiscovery] 	 	 	

[Reference: Experience – Post Migration][ [eDiscovery]  	 	 	

#### SharePoint Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Republish SharePoint 2013 workflows | In Pre-work we reduced SharePoint 2013 workflows. Now with migration complete, the customer can republish the workflows. | All Office customers | This is a required action – failure to do so may result in user confusion, helpdesk calls. |
|||||

[Reference: Experience – Post Migration][ [SPO]


## More information

Additonal information about migrating to the new German datacenter regions is coming. Bookmark this page so that you can check in and keep current.

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
