---
title: "Post-migration activities for the migration from Microsoft Cloud Deutschland"
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
description: "Summary: Post-migration activities after moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region."
---

# Post-migration activities for the migration from Microsoft Cloud Deutschland

The following sections provide post-migration activities for multiple services after moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region.

## Azure AD
<!-- This AAD Endpoints comparison table could be added to the documentation, not finally decided.
### Azure AD Endpoints
**Applies to:** All customers

After the cut over to Azure AD is complete, the organization is fully using Office 365 services and is no longer connected to Microsoft Cloud Deutschland and the endpoints cannot be used anymore. At this point, the customer needs to ensure that all applications are using the endpoints for the new German datacenter region.
The following table provides an overview about which endpoints will replace the previously used endpoints in Microsoft Cloud Germany (Microsoft Cloud Deutschland). 

|Endpoint in Microsoft Cloud Germany  |Endpoint in the new German datacenter region  |
|:---------|:---------|
|becws.microsoftonline.de<br>provisioningapi.microsoftonline.de |becws.microsoftonline.com<br>provisioningapi.microsoftonline.com |
|adminwebservice.microsoftonline.de |adminwebservice.microsoftonline.com |
|login.microsoftonline.de<br>logincert.microsoftonline.de<br>sts.microsoftonline.de |login.microsoftonline.com<br>login.windows.net<br>logincert.microsoftonline.com<br>accounts.accesscontrol.windows.net |
|enterpriseregistration.microsoftonline.de |enterpriseregistration.windows.net |
|graph.cloudapi.de |graph.windows.net |
|graph.microsoft.de |graph.microsoft.com |
|||
-->

### Azure AD federated authentication with AD FS
**Applies to:** All customers using federated authentication with AD FS

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Remove relying party trusts from Microsoft Cloud Deutschland AD FS. | After the cut-over to Azure AD is complete, the organization is fully using Office 365 services and is no longer connected to Microsoft Cloud Deutschland. At this point, the customer needs to remove the relying party trust to the Microsoft Cloud Deutschland endpoints. This can only be done when none of the customer's applications points to Microsoft Cloud Deutschland endpoints when Azure AD is leveraged as an Identity Provider (IdP). | Federated Authentication organizations | 
||||

<!--
    Question from ckinder
    The following paragraph is not clear
-->
### Group approvals
**Applies to:** End-users whose Azure AD group approval requests weren't approved in the last 30 days before migration 

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Requests to join an Azure AD group in the last 30 days before migration will need to be requested again if the original request wasn't approved. | End-user customers will need to use the Access panel to submit a request to join an Azure AD group again if those requests weren't approved in the last 30 days before the migration. |  As an end-user: <ol><li>Navigate to [Access panel](https://account.activedirectory.windowsazure.com/r#/joinGroups).</li><li>Find an Azure AD group for which membership approval was pending during the 30 days before migration.</li><li>Request to join the Azure AD group again.</li></ol> Requests to join a group that are active less than 30 days before migration cannot be approved, unless they're requested again after migration. |
||||

## Custom DNS updates
**Applies to:**  All customer managing their own DNS zones

| Step(s) | Description | Impact |
|:------|:-------|:-------|
| Update on-premises DNS services for Office 365 services endpoints. | Customer-managed DNS entries that point to Microsoft Cloud Deutschland need to be updated to point to the Office 365 Global services endpoints. Please refer to [Domains in the Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/Domains) and apply the changes in your DNS configuration. | Failure to do so may result in failure of the service or of software clients. |
||||

## Third-party services
**Applies to:** Customers using third-party services for Office 365 services endpoints

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Update partners and third-party services for Office 365 services endpoints. | <ul><li>Third-party services and partners that point to Office 365 Germany need to be updated to point to the Office 365 services endpoints. Example: Re-register, in alignment with your vendors and partners, the gallery app version of applications, if available. </li><li>Point all custom applications that leverage Graph API from `graph.microsoft.de` to `graph.microsoft.com`. Other APIs with changed endpoints also need to be updated, if leveraged. </li><li>Change all non-first-party enterprise applications to redirect to the worldwide endpoints. </li></ul>| Required action. Failure to do so may result in failure of the service or of software clients. |
||||