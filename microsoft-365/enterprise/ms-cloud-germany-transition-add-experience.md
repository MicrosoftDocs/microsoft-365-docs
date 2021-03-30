---
title: "Post migration activities"
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
description: "Summary:Post migration activities after moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region."
---

# Post migration activities

The following sections provide post migration activities for multiple services after moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region.

## Azure AD

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

**Applies to:** Customers using third-party services for Office 365 services endpoints

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Update partners and third-party services for Office 365 services endpoints. | <ul><li>Third-party services and partners that point to Office 365 Germany need to be updated to point to the Office 365 services endpoints. Example: Re-register, in alignment with your vendors and partners, the gallery app version of applications, if available. </li><li>Point all custom applications that leverage Graph API from `graph.microsoft.de` to `graph.microsoft.com`. Other APIs with changed endpoints also need to be updated, if leveraged. </li><li>Change all non-first-party enterprise applications to redirect to the worldwide endpoints. </li></ul>| Required action. Failure to do so may result in failure of the service or of software clients. |
||||

## SharePoint Online
**Applies to**: Customers using SharePoint 2013 Workflows
| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Republish SharePoint 2013 workflows. | In the pre-migration work, we reduced the number of SharePoint 2013 workflows. Now with migration complete, the customer can republish the workflows. | This is a required action. Failure to do so may result in user confusion and help desk calls. |
| Share items via Outlook | Sharing items in  SharePoint Online and OneDrive for Business via Outlook no longer works after tenant cutover. |<ul><li>In SharePoint Online and OneDrive for Business, you can share items via Outlook. After pressing the Outlook button, a shareable link is created and pushed into a new message in the Outlook Web App.</li><li>After tenant cutover, this method of sharing won't work. We recognize this is a known issue. However, since this Outlook feature is in the path of deprecation, fixing the issue is not planned until the deprecation is rolled out. </li></ul>|
||||

## Exchange Online
**Applies to**: Customers using a hybrid Exchange configuration

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Rerun Hybrid Configuration wizard (HCW) against Office 365 services. | The existing HCW configuration is meant to support Microsoft Cloud Deutschland. With migration of Exchange services complete, we decouple on-premises configuration from Microsoft Cloud Deutschland. |<ul><li>Required action. Failure to do so may result in failure of the service or of software clients. Before Exchange mailbox migration begins (with 5 or more days of notice), notify clients that they should stop and delete any onboarding or offboarding moves of their mailboxes.  If they don't, they'll see errors in their move requests. </li><li>After Exchange mailbox migration is complete, notify clients that they can resume onboarding and offboarding moves. <br> Running **Test-MigrationServerAvailabiilty**, a PowerShell cmdlet, during migration of Exchange from Microsoft Cloud Deutschland to Office 365 services might not work. However, it will work properly after migration is complete. </li><li>If clients run into issues with credentials or authorization after mailboxes are migrated, users can reenter their on-premises administrator credentials in the migration endpoint by running `Set-MigrationEndpoint endpointName -Credential $(Get-Credential)`, or by setting the same by using Exchange Control Panel (ECP). </li></ul>|
<!--
Must be moved/merged with eDiscovery page
-->
## eDiscovery

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