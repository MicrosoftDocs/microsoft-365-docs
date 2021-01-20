---
title: "Migration phases actions and impacts for the migration from Microsoft Cloud Deutschland (advanced)"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 12/11/2020
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

# Migration phases actions and impacts for the migration from Microsoft Cloud Deutschland (advanced) 

Tenant migrations from Microsoft Cloud Deutschland to the Germany region of Microsoft's Office 365 services are executed as a set of phases and their configured actions for each workload. This figure shows the nine phases of migration to the new German datacenters.

![The nine phases of migration to the new Germany datacenters](../media/ms-cloud-germany-migration-opt-in/migration-organization.png)

The following sections provide additional information on customer experiences when moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region.

## Services

### Azure AD

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Azure AD tenant in Microsoft Cloud Deutschland copied to Office 365 Services. | Azure AD copies the tenant to Office 365 services. Tenant and user identifiers are preserved. Azure AD service calls are redirected from Microsoft Cloud Deutschland to Office 365 services and are transparent to services. | All Office customers | - General Data Protection Regulation (GDPR) Data Subject Requests (DSRs) are executed from the Azure Admin portal for future requests. Any legacy or non-customer diagnostic data that is resident in Microsoft Cloud Deutschland is deleted at or before 30 days elapse. <br><br> - Customers who use federated authentications with Active Directory Federation Services (AD FS) shouldn't make changes to issuer URIs that are used for all authentications with on-premises Active Directory during migration. Changing issuer URIs will lead to authentication failures for users in the domain. Issuer URIs can be changed directly in AD FS or when a domain is converted from _managed_ to _federated_ and vice-versa. We recommend that customers do not add, remove, or convert a federated domain in the Azure AD tenant that has been migrated. Issuer URIs can be changed after the migration is fully complete. <br><br> - Multi-factor authentication (MFA) requests that use Microsoft Authenticator display as the user ObjectID (a GUID) while the tenant is copied to Office 365 services. MFA requests will perform as expected despite this display behavior.  Microsoft Authenticator accounts that were activated by using Office 365 services endpoints will display the user principal name (UPN).  Accounts added by using Microsoft Cloud Deutschland endpoints will display the user ObjectID but will work with both Microsoft Cloud Deutschland and Office 365 services endpoints.  |
| Establish AuthServer on-premises pointing to global STS service. | This ensures that requests from users who migrate to Microsoft Cloud Deutschland for Exchange availability requests that target the hybrid on-premises environment are authenticated to access the on-premises service. Similarly this will ensure authentication of requests from on-premises to Office 365 services endpoints. | Exchange Online customers with hybrid (on-premises) deployments | After Azure AD migration is complete, the administrator of the on-premises Exchange (hybrid) topology must add a new authentication service endpoint for the Office 365 services. With this command from Exchange PowerShell, replace `<TenantID>` with your organization's tenant ID (found in Azure portal on **Azure Active Directory**). <br><br> - `New-AuthServer GlobalMicrosoftSts -AuthMetadataUrl https://accounts.accesscontrol.windows.net/<TenantId>/metadata/json/1` <br> <br> Failing to complete this task may result in hybrid free-busy requests failing to provide information for mailbox users who have been migrated from Microsoft Cloud Deutschland to Office 365 services.  |
| Migration of Azure resources. | Customers who use Office 365 and Azure resources (for example, networking, compute, and storage) will perform the migration of resources to the Office 365 services instance. This migration is a responsibility for customers. Message Center posts will signal the start. Migration must be completed before finalization of the Azure AD organization in the Office 365 services environment. | Azure Customers | For Azure migrations, see the Azure migration playbook, [Overview of migration guidance for Azure Germany](https://docs.microsoft.com/azure/germany/germany-migration-main). |
|||||

### Exchange Online

If you're using **Set-UserPhoto**:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| The new Germany region is added to an existing organization setup, and mailboxes are moved to Office 365 services. | Exchange Online configuration adds the new go-local German region to the transitioning organization. This Office 365 services region is set as default, which enables the internal load-balancing service to redistribute mailboxes to the appropriate default region in Office 365 services. In this transition, users on either side (Germany or Office 365 services) are in the same organization and can use either URL endpoint. |  Exchange Online | If a user mailbox has been migrated but an administrator mailbox hasn't been migrated, or vice-versa, administrators won't be able to run **Set-UserPhoto**, a PowerShell cmdlet. In this situation, an admin must pass an additional string in `ConnectionUri` during connection set up by using the following syntax: <br><br> `https://outlook.office.de/PowerShell-LiveID?email=<user_email>` <br><br> where `<user_email>` is the placeholder for the email-ID of the user whose photo needs to be changed by using **Set-UserPhoto**. |
|||||

If you're using a hybrid, on-premises deployment:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
|Stop or delete any onboarding or offboarding moves of mailboxes.  | This ensures the move requests don't fail with an error. | Exchange Online customers with hybrid (on-premises) deployments | Required action. Failure to do so may result in failure of the service or of software clients. |
|||||

### Dynamics

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Microsoft Dynamics resources | Customers with Microsoft Dynamics will be engaged by Engineering or FastTrack to transition Dynamics to the Office 365 services instance.* | Microsoft Dynamics 365 customers | - After migration, the admin validates the organization. <br><br> - The admin modifies workflows, as necessary. <br><br> - The admin clears AdminOnly mode as appropriate. <br><br> - The admin changes the organization type from _Sandbox_, as appropriate <br><br> - Notify end users of the new URL to access the instance (org). <br><br> - Update any inbound connections to the new endpoint URL. <br><br> - The Dynamics service will be unavailable to users during the transition. <br><br> - Users are required to validate the org health and features after migration of each org.  |
|||||

\* (i) Customers with Microsoft Dynamics 365 must take action in this migration scenario as defined by the migration process provided. (ii) Failure by the customer to take action will mean that Microsoft will be unable to complete the migration. (iii) When Microsoft is unable to complete the migration due to the customer's inaction, then the customer's subscription will expire on October 29, 2021. 


### Power BI

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Migration of Power BI resources | Customers with Microsoft Power BI will be engaged by Engineering or FastTrack after manually triggering an existing PBI migration tool to transition Power BI to the Office 365 services instance.\*\* | Microsoft Power BI customers | - The following Power BI items will _not_ be transitioned, and they'll have to be re-created: <br><br> - Real-time datasets (for example, streaming or push datasets). <br> - Power BI on-premises data gateway configuration and data source. <br> - Reports built on top of the real-time datasets won't be available after migration and are required to be recreated. <br><br> - Power BI services will be unavailable to users during the transition. The unavailability of the service shouldn't be more than 24 hours. <br><br> - Users will be required to reconfigure data sources and their on-premise data gateways with the Power BI service after migration.  Until they do so, users will be unable to use these data sources to perform scheduled refresh and/or direct queries against these data sources. <br><br> - Capacities and premium workspaces cannot be migrated. Customers need to delete all capacities before migration and re-create them after migration. Move workspaces back to capacities as desired.  |
|||||

\*\*
  (i) Customers with Microsoft Power BI must take action in this migration scenario as defined by the Migration process provided. (ii) Failure by the customer to take action will mean that Microsoft will be unable to complete the migration. (iii) When Microsoft is unable to complete the migration due to the customer's inaction, then the customer's subscription will expire on October 29, 2021. 


### Office Apps

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Clients, Office Online during Office client cutover, Azure AD finalizes the tenant scope to point to the Office 365 services. | This configuration change enables Office clients to update and point to the Office 365 services endpoints. | All Office customers | - Remove MSOID CName from customer-owned DNS, if it exists. <br><br> - Notify users to close _all_ Office apps and then sign back in (or force clients to restart and users to sign in) to enable Office clients to pick up the change. <br><br> - Notify users and help desk staff that users *may* see an Office banner that prompts them to reactivate Office apps within 72 hours of the cutover. <br><br> - All Office applications on personal machines must be closed, and users must sign out then sign in again. In the Yellow activation bar, sign in to reactivate against Office 365 services. <br><br> - Shared machines will require actions that are similar to personal machines, and won't require a special procedure. <br><br> - On mobile devices, users must sign out of apps, close them, and then sign in again. |
|||||

## During migration


### Exchange Online

For eDiscovery:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| During migration, eDiscovery searches will fail or return 0 results for SharePoint Online, OneDrive for Business, and Exchange Online locations that have been migrated. | During migration, customers can continue to create cases, holds, searches, and exports in the [Security & Compliance Center](https://docs.microsoft.com/microsoft-365/compliance/manage-legal-investigations), including [Content Search](https://docs.microsoft.com/microsoft-365/compliance/search-for-content).  However, searches against SharePoint Online, OneDrive for Business, and Exchange Online locations that have been migrated will either return 0 results or produce an error. For remediation, see the _Impact_ column. | All customers using eDiscovery |  In the event that a search returns 0 results or an error during migration, please take the following action for SharePoint Online: <br><br>  Download sites directly from SharePoint Online/ OneDrive for Business site by following the instructions in [Download files and folders from OneDrive or SharePoint](https://support.office.com/article/download-files-and-folders-from-onedrive-or-sharepoint-5c7397b7-19c7-4893-84fe-d02e8fa5df05). This method will require SharePoint Online administrator permissions or read-only permissions on the site. <br><br> If limits are exceeded, as explained in [Download files and folders from OneDrive or SharePoint](https://support.office.com/article/download-files-and-folders-from-onedrive-or-sharepoint-5c7397b7-19c7-4893-84fe-d02e8fa5df05), customers can use the OneDrive for Business sync client by following the guidance in [Sync SharePoint and Teams files with your computer](https://support.office.com/article/sync-sharepoint-files-with-the-new-onedrive-sync-app-6de9ede8-5b6e-4503-80b2-6190f3354a88). <br><br> - Exchange Online <br><br> - [In-Place eDiscovery in Exchange Server](https://docs.microsoft.com/Exchange/policy-and-compliance/ediscovery/ediscovery) |
|||||


### SharePoint Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| SharePoint and OneDrive are transitioned. | SharePoint and OneDrive are migrated from Microsoft Cloud Deutschland to Office 365 services in this phase. Existing Microsoft Cloud Deutschland URLs are preserved (`contoso.sharepoint.de`). Tokens issued by Microsoft Cloud Deutschland or Office 365 services are valid during the transition. | SharePoint customers | Inflight SharePoint 2013 workflows will be broken during migration and must be republished after migration. |
|||||

### Skype for Business Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Migration of Skype for Business to Teams. | Existing Skype for Business customers are migrated to Office 365 services in Europe and then transitioned to Microsoft Teams in the Germany region of Office 365 services. | Skype for Business customers |  PowerShell will use to administer settings and policies for your tenant and users. When connecting to a PowerShell session, add the following: <br><br> `-OverridePowershellUri "https://admin4E.online.lync.com/OcsPowershellOAuth"` |
|||||


## Post-migration

### Azure AD

For hybrid:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Update Azure AD Connect. | After the cut over to Azure AD is complete, the organization is fully using Office 365 services and is no longer connected to Microsoft Cloud Deutschland. At this point, the customer needs to ensure that the delta sync process has been finalized, and after that, change the string value of `AzureInstance` from 3 (Microsoft Cloud Deutschland) to 0 in the registry path `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Azure AD Connect`. | Hybrid Azure AD–connected organizations | Change the value of `AzureInstance`, the registry key. Failing to do so, will lead to objects not being synchronized after the Microsoft Cloud Deutschland endpoints are no longer available. |
|||||

For federated authentication:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Remove relying party trusts from Microsoft Cloud Deutschland AD FS. | After the cut over to Azure AD is complete, the organization is fully using Office 365 services and is no longer connected to Microsoft Cloud Deutschland. At this point, the customer needs to remove the relying party trust to the Microsoft Cloud Deutschland endpoints. This can only be done when no applications of the customer point to Microsoft Cloud Deutschland endpoints when Azure AD is leveraged as an Identity Provider (IdP). | Federated Authentication organizations | None. |
|||||

For Azure AD:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Requests to join an Azure AD group in the last 30 days before migration will need to be requested again if the original request wasn't approved. | End-user customers will need to use the Access panel to submit request to join an Azure AD group again if those requests weren't approved in the last 30 days before the migration. | End users whose Azure AD group approval requests weren't approved in last 30 days before migration |  As an end user: <ol><li>Navigate to [Access panel](https://account.activedirectory.windowsazure.com/r#/joinGroups).</li><li>Find an Azure AD group for which membership approval was pending in 30 days before migration.</li><li>Request to join the Azure AD group again.</li></ol> Requests to join a group that are active less than 30 days before migration cannot be approved, unless they're re-requested after migration. |
|||||

For DNS:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Update on-premises DNS services for Office 365 services endpoints. | Customer-managed DNS entries that point to Office 365 Germany need to be updated to point to the Office 365 services endpoints. | All Office customers | Required action. Failure to do so may result in failure of the service or of software clients. |
|||||

For third-party services for Office 365 services endpoints:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Update partners and third-party services for Office 365 services endpoints. | - Third-party services and partners that point to Office 365 Germany need to be updated to point to the Office 365 services endpoints. Example: Re-register, in alignment with your vendors and partners, the gallery app version of applications, if available. <br><br> -  Point all custom applications that leverage Graph API from `graph.microsoft.de` to `graph.microsoft.com`. Other APIs with changed endpoints also need to be updated, if leveraged. <br><br> - Change all non-first-party enterprise applications to redirect to the worldwide endpoints.  | All Office customers | Required action. Failure to do so may result in failure of the service or of software clients. |
|||||

### Exchange Online

If you're using a hybrid Exchange configuration:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Rerun Hybrid Configuration wizard (HCW) against Office 365 services. | The existing HCW configuration is meant to support Microsoft Cloud Deutschland. With migration of Exchange services complete, we decouple on-premises configuration from Microsoft Cloud Deutschland. | Exchange Online customers who are running a hybrid deployment | - Required action. Failure to do so may result in failure of the service or of software clients. Before Exchange mailbox migration begins (with 5 or more days of notice), notify clients that they should stop and delete any onboarding or offboarding moves of their mailboxes.  If they don't, they'll see errors in their move requests. <br><br> - After Exchange mailbox migration is complete, notify clients that they can resume onboarding and offboarding moves. <br> Running **Test-MigrationServerAvailabiilty**, a PowerShell cmdlet, during migration of Exchange from Microsoft Cloud Deutschland to Office 365 services might not work. However, it will work properly after migration is complete. <br><br> If clients run into issues with credentials or authorization after mailboxes are migrated, users can reenter their on-premises administrator credentials in the migration endpoint by running `Set-MigrationEndpoint endpointName -Credential $(Get-Credential)`, or by setting the same by using Exchange Control Panel (ECP).  |

For eDiscovery:

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
|  All SharePoint Online, OneDrive for Business, and Exchange Online locations have been migrated along with Security and Compliance Center (SCC). | All eDiscovery activity should be run from the worldwide tenant. Searches will now be 100% successful.  Any failures or errors should follow normal support channels. | All customers who use eDiscovery | None. |
| Remove organization-wide retention policies that were created during pre-migration steps | Customers can remove the organization-wide retention policies that were created during the customers' pre-migration work. | All customers who applied a retention policy as part of pre-migration steps. | None. |
|||||

### SharePoint Online

| Step(s) | Description | Applies to | Impact |
|:-------|:-----|:-------|:-------|
| Republish SharePoint 2013 workflows. | In the pre-migration work, we reduced the number of SharePoint 2013 workflows. Now with migration complete, the customer can republish the workflows. | All Office customers | This is a required action. Failure to do so may result in user confusion and help desk calls. |
| Share items via Outlook | Sharing items via Outlook no longer works after tenant cutover. | SharePoint Online and OneDrive for Business | - In SharePoint Online and OneDrive for Business, you can share items via Outlook. After pressing the Outlook button, a shareable link is created and pushed into a new message in the Outlook Web App. <br><br> - After tenant cutover, this method of sharing won't work. We recognize this is a known issue. However, since this Outlook feature is in the path of deprecation, fixing the issue is not planned until the deprecation is rolled out. |

## Next step

[Understand migration phases actions and impacts](ms-cloud-germany-transition-phases.md)

## More information

Getting started:

- [Migration from Microsoft Cloud Deutschland to Office 365 services in the new German datacenter regions](ms-cloud-germany-transition.md)
- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](ms-cloud-germany-migration-opt-in.md)
- [Customer experience during the migration](ms-cloud-germany-transition-experience.md)

Moving through the transition:

- [Migration phases actions and impacts](ms-cloud-germany-transition-phases.md)
- [Additional pre-work](ms-cloud-germany-transition-add-pre-work.md)
- Additional information for [Azure AD](ms-cloud-germany-transition-azure-ad.md), [devices](ms-cloud-germany-transition-add-devices.md), [experiences](ms-cloud-germany-transition-add-experience.md), and [AD FS](ms-cloud-germany-transition-add-adfs.md).

Cloud apps:

- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
