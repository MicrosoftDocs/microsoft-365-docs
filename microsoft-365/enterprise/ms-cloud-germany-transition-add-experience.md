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

## Office 365 Portal Services between phase 2 and phase 3

Between Phase 2 and phase 3, Partner Portal may not be accessible. During this time, Partner may not be able to access the tenant's information on the Partner Portal. Since each migration is different, the duration of in-accessibility could be in hours.

## Exchange Online Set-UserPhoto during phase 5

**Applies to:** All customers storing user photos in Exchange Online and are  using **Set-UserPhoto**:

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| The new region "Germany" is added to an existing Exchange Online organization setup, and mailboxes are moved to Office 365 services. | Exchange Online configuration adds the new go-local German region to the transitioning organization. This Office 365 services region is set as default, which enables the internal load-balancing service to redistribute mailboxes to the appropriate default region in Office 365 services. In this transition, users on either side (Germany or Office 365 services) are in the same organization and can use either URL endpoint. | If a user mailbox has been migrated but an administrator mailbox hasn't been migrated, or vice-versa, administrators won't be able to run **Set-UserPhoto**, a PowerShell cmdlet. In this situation, an admin must pass an additional string in `ConnectionUri` during connection set up by using the following syntax: <br> `https://outlook.office.de/PowerShell-LiveID?email=<user_email>` <br> where `<user_email>` is the placeholder for the email-ID of the user whose photo needs to be changed by using **Set-UserPhoto**. |
||||

## Post-migration

### Azure AD phase 9

**Applies to:** All customers synchronizing identities with Azure AD connect

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Update Azure AD Connect. | After the cut over to Azure AD is complete, the organization is fully using Office 365 services and is no longer connected to Microsoft Cloud Deutschland. At this point, the customer needs to ensure that the delta sync process has been finalized, and after that, change the string value of `AzureInstance` from 3 (Microsoft Cloud Deutschland) to 0 in the registry path `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Azure AD Connect`. | Change the value of `AzureInstance`, the registry key. Failing to do so, will lead to objects not being synchronized after the Microsoft Cloud Deutschland endpoints are no longer available. |
|||||

**Applies to:** All customers using federated authentication with ADFS

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Remove relying party trusts from Microsoft Cloud Deutschland AD FS. | After the cut-over to Azure AD is complete, the organization is fully using Office 365 services and is no longer connected to Microsoft Cloud Deutschland. At this point, the customer needs to remove the relying party trust to the Microsoft Cloud Deutschland endpoints. This can only be done when none of the customer's applications points to Microsoft Cloud Deutschland endpoints when Azure AD is leveraged as an Identity Provider (IdP). | Federated Authentication organizations | None. |
||||

<!--
    Question from ckinder
    The following paragraph is not clear
-->
**Applies to:** End-users whose Azure AD group approval requests weren't approved in the last 30 days before migration 

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Requests to join an Azure AD group in the last 30 days before migration will need to be requested again if the original request wasn't approved. | End-user customers will need to use the Access panel to submit a request to join an Azure AD group again if those requests weren't approved in the last 30 days before the migration. |  As an end-user: <ol><li>Navigate to [Access panel](https://account.activedirectory.windowsazure.com/r#/joinGroups).</li><li>Find an Azure AD group for which membership approval was pending during the 30 days before migration.</li><li>Request to join the Azure AD group again.</li></ol> Requests to join a group that are active less than 30 days before migration cannot be approved, unless they're requested again after migration. |
||||

<!--
    Question from ckinder
    The following paragraph is not clear
-->
**Applies to:**  All customer managing their own DNS zones

| Step(s) | Description | Impact |
|:------|:-------|:-------|
| Update on-premises DNS services for Office 365 services endpoints. | Customer-managed DNS entries that point to Microsoft Cloud Deutschland need to be updated to point to the Office 365 Global services endpoints. | Failure to do so may result in failure of the service or of software clients. |
||||

**Applies to:** Customers using  third-party services for Office 365 services endpoints

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Update partners and third-party services for Office 365 services endpoints. | <ul><li>Third-party services and partners that point to Office 365 Germany need to be updated to point to the Office 365 services endpoints. Example: Re-register, in alignment with your vendors and partners, the gallery app version of applications, if available. </li><li>Point all custom applications that leverage Graph API from `graph.microsoft.de` to `graph.microsoft.com`. Other APIs with changed endpoints also need to be updated, if leveraged. </li><li>Change all non-first-party enterprise applications to redirect to the worldwide endpoints. </li></ul>| Required action. Failure to do so may result in failure of the service or of software clients. |
||||

### SharePoint Online post migration

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Republish SharePoint 2013 workflows. | In the pre-migration work, we reduced the number of SharePoint 2013 workflows. Now with migration complete, the customer can republish the workflows. | This is a required action. Failure to do so may result in user confusion and help desk calls. |
| Share items via Outlook | Sharing items in  SharePoint Online and OneDrive for Business via Outlook no longer works after tenant cutover. |<ul><li>In SharePoint Online and OneDrive for Business, you can share items via Outlook. After pressing the Outlook button, a shareable link is created and pushed into a new message in the Outlook Web App.</li><li>After tenant cutover, this method of sharing won't work. We recognize this is a known issue. However, since this Outlook feature is in the path of deprecation, fixing the issue is not planned until the deprecation is rolled out. </li></ul>|
||||

### Exchange Online post migration

If you're using a hybrid Exchange configuration:

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Rerun Hybrid Configuration wizard (HCW) against Office 365 services. | The existing HCW configuration is meant to support Microsoft Cloud Deutschland. With migration of Exchange services complete, we decouple on-premises configuration from Microsoft Cloud Deutschland. |<ul><li>Required action. Failure to do so may result in failure of the service or of software clients. Before Exchange mailbox migration begins (with 5 or more days of notice), notify clients that they should stop and delete any onboarding or offboarding moves of their mailboxes.  If they don't, they'll see errors in their move requests. </li><li>After Exchange mailbox migration is complete, notify clients that they can resume onboarding and offboarding moves. <br> Running **Test-MigrationServerAvailabiilty**, a PowerShell cmdlet, during migration of Exchange from Microsoft Cloud Deutschland to Office 365 services might not work. However, it will work properly after migration is complete. </li><li>If clients run into issues with credentials or authorization after mailboxes are migrated, users can reenter their on-premises administrator credentials in the migration endpoint by running `Set-MigrationEndpoint endpointName -Credential $(Get-Credential)`, or by setting the same by using Exchange Control Panel (ECP). </li></ul>|

### eDiscovery post migration

**Applies to:** All customers who use eDiscovery

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
|  All SharePoint Online, OneDrive for Business, and Exchange Online locations have been migrated along with Security and Compliance Center (SCC). | All eDiscovery activity should be run from the worldwide tenant. Searches will now be 100% successful.  Any failures or errors should follow normal support channels. | None |
||||

**Applies to:**  All customers who applied a retention policy as part of pre-migration steps

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Remove organization-wide retention policies that were created during pre-migration steps | Customers can remove the organization-wide retention policies that were created during the customers' pre-migration work. | None |
||||

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

- [Dynamics 365 migration program information](/dynamics365/get-started/migrate-data-german-region)
- [Power BI migration program information](/power-bi/admin/service-admin-migrate-data-germany)
- [Getting started with your Microsoft Teams upgrade](/microsoftteams/upgrade-start-here)