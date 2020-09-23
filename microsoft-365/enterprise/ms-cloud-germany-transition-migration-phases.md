---
title: "Migration phases actions and impacts"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 09/30/2020
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
ms.assetid: 706d5449-45e5-4b0c-a012-ab60501899ad
description: "Summary: Understand the set of configured actions for each workload to migrate your Office 365 services."
---

# Migration phases actions and impacts

Tenant migrations from Microsoft Cloud Deutschland to the Germany region of Microsoft&#39;s Office 365 services are executed as a set of configured actions for each workload that ensure critical data and experiences are migrated to the Office 365 services. After your tenant is added to the migration queue, each workload migration will complete as a set of steps executed on the backend service and some may require actions by the admin (or user) or may impact usage for the phases executed and discussed in How is the migration organized?

The following sections contain actions and impacts for workloads as they progress through various phases of the migration. Review the tables and determine which actions or impact are applicable to your organization and ensure you are prepared to execute the steps in the respective phase as required. Failure to complete necessary steps may result in service outage and delay to complete the migration to the Office 365 services.

## Your pre-migration work

Here are the actions that should be done _before tenant migration begins_.
<table width="100%">
<tbody>
<tr>
<td width="23%">
<p>Step(s)</p>
</td>
<td width="26%">
<p>Description</p>
</td>
<td width="24%">
<p>Applies to</p>
</td>
<td width="25%">
<p>Impact</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Ensure network connectivity to <a href="https://aka.ms/o365urls">&nbsp;Office 365 services URLS and IP addresses</a></p>
<p>&nbsp;</p>
</td>
<td width="26%">
<p>All clients and services hosted by the customer used to access Office365 service must be able to access the Office 365 Services endpoints.</p>
</td>
<td width="24%">
<p>All transitioning customers; <br /> Customers with network access restricted to Microsoft Cloud Deutschland</p>
</td>
<td width="25%">
<p>Required action &ndash; non action may result in service / client failure.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Uninstall previous Hybrid Configuration Wizard (HCW). Install and Execute HCW latest version (17.00.5186.000 &nbsp;or above) from <a href="https://aka.ms/hybridwizard">https://aka.ms/hybridwizard</a>.</p>
<p>&nbsp;</p>
</td>
<td width="26%">
<p>Latest version of the HCW includes necessary updates to support customers transitioning from Microsoft Cloud Deutschland to Office 365 Services.</p>
<p>Updates include changes to SendConnector and ReceiveConnector on-premises certificate settings.</p>
</td>
<td width="24%">
<p>Exchange Online customers running Hybrid deployment</p>
</td>
<td width="25%">
<p>Required action &ndash; non action may result in service / client failure.</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Notify external &lsquo;partners&rsquo; of upcoming transition to Office365 Office 365 Services</p>
</td>
<td width="26%">
<p>Availability Address Space configurations allow sharing of Free Busy with Office365</p>
</td>
<td width="24%">
<p>Exchange Online customers with Calendar/Availability Address Space sharing enabled</p>
</td>
<td width="25%">
<p>Required action &ndash; non action may result in service / client failure at a later stage of customer migration.</p>
</td>
</tr>
<tr>
<td width="23%">&nbsp;</td>
<p>Review and prepare for migration-related DNS changes</p>
</td>
<td width="26%">
<p>Customer prepare DNS entries for Exchange Online/Exchange online protection (MX record, etc.)</p>
</td>
<td width="24%">
<p>Exchange Online customers</p>
</td>
<td width="25%">
<p>This is recommended action. No action means migrated customers&rsquo; email may route through Microsoft Cloud Deutschland until Microsoft Cloud Deutschland services are disabled.</p>
</td>
</tr>
<tr>
<td width="23%">&nbsp;</td>
<p>Review and prepare for migration-related DNS changes</p>
</td>
<td width="26%">&nbsp;</td>
<td width="24%">
<p>Skype For Business Online customers</p>
</td>
<td width="25%">
<p>It is recommended to update customer owned domain DNS record TTLs to 5 minutes so as to expedite the DNS record refresh, however the Microsoft managed cutover associated with this DNS change may occur anytime with in the provided 24 hour change window.</p>
<p>Future availability service disruption possible. Users will not be able to log into Skype for Business be redirected to the migrated Teams experience in the Office 365 services.</p>
</td>
</tr>
<tr>
<td width="23%">&nbsp;</td>
<p>Prepare End User and Administration training and readiness for the transition to Microsoft Teams</p>
</td>
<td width="26%">
<p>Be successful in your transition from Skype to Teams by planning user communication and readiness.</p>
</td>
<td width="24%">
<p>Skype For Business Online customers</p>
</td>
<td width="25%">
<p>Clients need to be aware of the new services and how to use once their services are transitioned to the Office 365 services.</p>
<p>After DNS changes are made for both the customer vanity domains and the initial domain, users would sign into Skype for Business and see that they now are migrated to Teams. This would also download the desktop client for Teams in the background.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Prepare End user and Administration training about users removing and re-adding their account to Outlook Mobile</p>
</td>
<td width="26%">
<p>Outlook Mobile accounts configured with mailboxes in Microsoft Cloud Deutschland may have to be removed and re-added to Outlook in order to properly sync the new Office 365 Services configuration.</p>
</td>
<td width="24%">
<p>Outlook Mobile customers</p>
</td>
<td width="25%">
<p>Outlook mailboxes previously configured for Microsoft Cloud Deutschland may not pick up the new Office 365 Services configuration, leading to errors and other user experience degradation. IT admins are encouraged to provide proactive documentation instructing users to remove and re-add their accounts to Outlook Mobile if login or mail syncing issues are experienced post migration.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Prepare to notify users about restarting and signing out/in of their clients post-migration</p>
<p>&nbsp;</p>
</td>
<td width="26%">
<p>Office client licensing will transition from Microsoft Cloud Deutschland to Office 365 Services in the migration. Clients pick-up a new valid license after log-out/in of Office clients.</p>
</td>
<td width="24%">
<p>Microsoft 365 Apps customers</p>
</td>
<td width="25%">
<p>Users&rsquo; Office products need to refresh licenses from the Office 365 Services service. Failing to act the Office products may experience license validation errors.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Cancel any trial subscriptions</p>
</td>
<td width="26%">
<p>Trial subscriptions will not be migrated and will block paid subscription transfer.</p>
</td>
<td width="24%">
<p>All customers</p>
</td>
<td width="25%">
<p>Trial services are expired, non-functioning if accessed by users once cancelled.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Deploy Teams Desktop client for users accessing Skype for Business in Germany</p>
</td>
<td width="26%">
<p>Migration to Global brings the move to Teams for collaboration, calling and chat. Either, deploy the Teams Desktop client or ensure that a supported browser is available</p>
</td>
<td width="24%">
<p>Skype for Business customers</p>
</td>
<td width="25%">
<p>Non action will result in unavailability of Teams collaboration services.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Limit SharePoint 2013 workflows, use during the SharePoint Online migration</p>
</td>
<td width="26%">
<p>Reduce SharePoint 2013 workflows and complete in-flight workflows before transitions</p>
</td>
<td width="24%">
<p>SharePoint Online Customers</p>
</td>
<td width="25%">
<p>Non action may result in user confusion, helpdesk calls.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>If you are using a third-party mobile device management (MDM) solution, determine if any reconfiguration is required post-migration</p>
</td>
<td width="26%">
<p>MDM solutions may target outlook.de endpoints. In this transition to Office 365 Services, client profiles should update to the Office 365 Services outlook.office365.com URL.</p>
</td>
<td width="24%">
<p>Exchange Online and MDM customers</p>
</td>
<td width="25%">
<p>Clients may continue to function while &ldquo;outlook.de&rdquo; endpoint is accessible but will fail if Microsoft Cloud Deutschland endpoints are no longer available.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>If using a third-party service or Line of Business (LOB) apps integrated with Office365, determine if any reconfiguration is required post-migration</p>
</td>
<td width="26%">
<p>3<sup>rd</sup> party services and applications that integrate with Office365 may be coded to expect Microsoft Cloud Deutschland IPs, URLs</p>
</td>
<td width="24%">
<p>All customers</p>
</td>
<td width="25%">
<p>Required action &ndash; non action may result in service / client failure.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Determine which Azure services are in use and prepare for future migration from Germany to the Office 365 Services tenant by working with your partners. Follow steps described in the <a href="https://docs.microsoft.com/en-us/azure/germany/germany-migration-main">Azure migration playbook</a></p>
<p>&nbsp;</p>
</td>
<td width="26%">
<p>Migration of Azure resources is a customer responsibility and requires manual effort following prescribed steps. Understanding what services are in use in the organization is key to a success migration of Azure services.<br /> Office365 Germany customers with Azure subscriptions under the same identity partition (organization) must follow the Microsoft prescribed order when they can begin subscription and services migration.</p>
</td>
<td width="24%">
<p>Azure Customers</p>
</td>
<td width="25%">
<p>Customers may have multiple Azure subscriptions, each subscription containing infrastructure, Services and platform components.</p>
<p>Administrators should identify subscriptions and stakeholders to ensure prompt migration and validation is possible as part of this migration event.<br /> Failing to successfully complete migration of these subscriptions and Azure components within the prescribed timeline will affect completion of the Office and Azure AD transition to the Office 365 services and may result in data loss.&nbsp;</p>
<p>A Message center notification will signal the point at which customer-led migration can begin.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Analyze License Feature differences between Office365 Germany and Office 365 Services</p>
</td>
<td width="26%">
<p>Office365 services include additional features, services not available in the current Microsoft Cloud Deutschland. During subscription transfer, new features will be available to users.</p>
</td>
<td width="24%">
<p>All customers</p>
</td>
<td width="25%">
<p>Analyze License Feature differences between Microsoft Cloud Deutschland and Office 365 Services. Start with the <a href="https://docs.microsoft.com/en-us/office365/servicedescriptions/office-365-platform-service-description/office-365-platform-service-description">Office 365 platform Service Description</a>.</p>
<p>&nbsp;</p>
<p>Determine if any new Office 365 Services features should be initially disabled to limit user impact on user change management &amp; alter user license assignments as needed</p>
<p>&nbsp;</p>
<p>Prepare user and helpdesk readiness about new services and features associated to Office 365 Services subscriptions.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>For Dynamics sandbox organizations, ensure to download production environment of Dynamics SQL instance from Dynamics 365 Microsoft Cloud Deutschland. The latest production backup should be restored to sandbox before sandbox migration</p>
</td>
<td width="26%">
<p>Migration of Dynamics 365 requires customers to ensure that the Sandbox environment is refreshed with the latest Prod DB.</p>
</td>
<td width="24%">
<p>Microsoft Dynamics customers</p>
</td>
<td width="25%">
<p>FastTrack team will assist customers to perform dry runs to validate the version upgrade from 8.x to 9.1.x.</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Removal of objects from Power Bi subscriptions that will not be migrated between Power BI Microsoft Cloud Deutschland and Office 365 Services</p>
</td>
<td width="26%">
<p>Migration of Power BI services will require customer action to delete certain artifacts like datasets and dashboards.</p>
</td>
<td width="24%">
<p>Power BI customers</p>
</td>
<td width="25%">
<p>Admins may have to remove the below items from their subscription:</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Real-Time datasets (e.g., streaming or push datasets)</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Power BI on-premises Data Gateway configuration and data source</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Create organization-wide&nbsp;<a href="https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Fretention-policies%23a-policy-that-applies-to-entire-locations&amp;data=04%7C01%7Cmahage%40microsoft.com%7Cb24c0601b09a4469c8ef08d74c067382%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637061468969562472%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C-1&amp;sdata=oFRoKU52BMfZiL9G3SeSr5GmfXmk1Ic1PnlYO8e4EX0%3D&amp;reserved=0">Retention Policy</a>&nbsp;</p>
<p>to protect from inadvertent deletion of content during migration&nbsp;</p>
</td>
<td width="26%">
<p>To ensure content isn&rsquo;t inadvertently deleted by end users during the migration, customers may choose to enable an organization-wide retention policy.&nbsp;<br /> </p>
<p>Although not necessary since holds placed anytime during the migration should work as expected, this is a back-up safety mechanism and may not be utilized by all customers, especially those who are concerned about over preservation.</p>
</td>
<td width="24%">
<p>Office customers</p>
</td>
<td width="25%">
<p>Apply retention policy as described <a href="https://docs.microsoft.com/en-us/microsoft-365/compliance/retention-policies#a-policy-that-applies-to-entire-locations">here.&nbsp;</a></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Review and prepare for DNS change if current DNS has MSOID CName entry</p>
</td>
<td width="26%">
<p>Customer owned DNS zone changes</p>
</td>
<td width="24%">
<p>customers</p>
</td>
<td width="25%">
<p>Update customer owned DNS record Time to Live (TTL) &nbsp;to 5 min if MSOID CName exists</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Generate Relying Party Trust for global AAD endpoints</p>
</td>
<td width="26%">
<p>Customers need to manually create a Relying Party Trust (RPT) to global endpoints. This is done by adding a new RPT via GUI by leveraging the <a href="https://nexus.microsoftonline-p.com/federationmetadata/2007-06/federationmetadata.xml">global </a>&nbsp;federation metadata URL and then use <a href="https://adfshelp.microsoft.com/AadTrustClaims/ClaimsGenerator#:~:text=%20Azure%20AD%20RPT%20Claim%20Rules%20%201,Azure%20AD.%20This%20will%20be%20what...%20More%20">AD FS Help</a> to generate the claim rules and import them into the RPT.</p>
</td>
<td width="24%">
<p>Federated Authentication organizations</p>
</td>
<td width="25%">
<p>Required Action &ndash; non action will result in service impact during the migration</p>
</td>
</tr>
<tr>
<td width="23%">
<p>Backup of AD FS Farm for disaster recovery scenarios</p>
</td>
<td width="26%">
<p>Customers need to back up the AD FS farm appropriately to ensure the Relying Party Trusts to global &amp; Germany endpoints can be restored without touching the Issuer URI of the domains. Microsoft recommends leveraging using AD FS Rapid Restore Tool for a backup of the farm and the respective restore, if necessary.</p>
</td>
<td width="24%">
<p>Federated Authentication organizations</p>
</td>
<td width="25%">
<p>Required Action &ndash; non action will result in service impact during the migration in case the AD FS farm of the customer breaks.</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>

To find out more information about any actions needed during the migration phase of this workload or impact to administration or usage, review the [Azure AD](#_Azure_Active_Directory_1) section of Migration Phases Actions and Impacts.

## Azure Active Directory

Here are the actions that should be done after your pre-migration work that impacts Azure AD tenant migration.
<table width="100%">
<tbody>
<tr>
<td width="24%">
<p>Step(s)</p>
</td>
<td width="26%">
<p>Description</p>
</td>
<td width="24%">
<p>Applies to</p>
</td>
<td width="25%">
<p>Impact</p>
</td>
</tr>
<tr>
<td width="24%">
<p>Microsoft Cloud Deutschland Azure AD tenant copied to Office 365 Services</p>
</td>
<td width="26%">
<p>Azure AD copies tenant to Office 365 Services. Tenant and User identifiers are preserved.&nbsp; AAD service calls are redirected from Microsoft Cloud Deutschland to Office 365 Services transparent to services.</p>
</td>
<td width="24%">
<p>All Office customers</p>
</td>
<td width="25%">
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tenant admin can now sign in with existing credentials to http://portal.microsoftazure.de/ and https://portal.azure.com.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Azure Cloud Germany subscriptions are visible only in Germany portal and vice versa.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GDPR Data Subject Requests (DSRs) are executed from Office 365 Services Azure Admin portal for future requests. Any legacy/non-customer diagnostic data information resident Microsoft Cloud Deutschland is deleted at or before 30 days.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Azure AD tenant transition to Office 365 Services represents the &lsquo;point of no return&rsquo; for the tenant.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Azure Sign-In are presented in the portal where the user attempts access. Audit Logs are available from only the Office 365 services endpoint after transition.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sign-in and Audit logs from the Microsoft Cloud Deutschland portal should be saved by the admin prior to completion of migration</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; All customers using federated authentications with Active Directory Federation Services (AD FS), should not make changes to Issuer URIs used for all authentications with on-premises Active Directory during migration. Changing Issuer URIs will lead to authentication failures for users in the domain. Issuer URIs can be changed directly in AD FS or when a domain is converted from managed to federated and vice versa. Microsoft recommends customers do not add/remove/convert a federated domain in the Azure AD tenant been migrated. Issuer URIs can be changed once the migration is fully complete.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; External sharing with non-migrated tenants (those present still in Microsoft Cloud Deutschland Azure AD) will no longer work</p>
<p>&nbsp;</p>
<p>Password resets, password changes, password reset by admin for managed (non AD FS) organizations must be performed via the Office 365 services portals.</p>
</td>
</tr>
<tr>
<td width="24%">
<p>Establish AuthServer in on-premises pointing to global STS service</p>
</td>
<td width="26%">
<p>This ensures that requests from users who migrate to the Microsoft Cloud Deutschland service for Exchange availability requests targeting the hybrid on-premises environment are authenticated to access the on-premises service.</p>
<p>&nbsp;</p>
</td>
<td width="24%">
<p>Exchange Online customers with Hybrid (on-premises) deployments</p>
</td>
<td width="25%">
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; After Azure AD migration is signaled complete, the administrator of the on-premises Exchange (hybrid) topology must add a new authentication service endpoint for the Office 365 services. Using the below commandlet from Exchange Powershell, replace &lt;tenantID&gt; with your organizations Tenant ID (found in Azure portal/AAD blade)</p>
<p>New-AuthServer</p>
<p>&nbsp;GlobalMicrosoftSts&nbsp;-AuthMetadataUrl</p>
<p>https://accounts.accesscontrol</p>
<p>.windows.net/&lt;TenantId&gt;/metadata/</p>
<p>json/1</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Failing to complete this task, as Mailbox users migrate from Microsoft Cloud Deutschland to Office 365 services their hybrid free-busy requests may fail to provide information.</p>
</td>
</tr>
<tr>
<td width="24%">
<p>Migration of Azure resources</p>
</td>
<td width="26%">
<p>Customers using Office 365 and Azure resources (e.g., Networking, Compute, Storage, etc) <a href="#_ftn1" name="_ftnref1"></a></p>
</td>
<td width="24%">
<p>Azure Customers</p>
</td>
<td width="25%">
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For Azure migrations, see <a href="https://docs.microsoft.com/en-us/azure/germany/germany-migration-main">Azure migration playbook</a></p>
</td>
</tr>
<tr>
<td width="24%">
<p>Azure AD cutover to Office 365 services is completed</p>
</td>
<td width="26%">
<p>Azure AD tenant is finalized against the Office 365 services. Microsoft Cloud Deutschland services no longer recognize the transitioned organization.</p>
</td>
<td width="24%">
<p>All Office Customers</p>
</td>
<td width="25%">
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tenant admin can only sign in with existing credentials to services in the Office 365 services instance (eg <a href="https://portal.azure.com">https://portal.azure.com</a>).</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; External sharing with non-migrated tenants (those present still in Microsoft Cloud Deutschland Azure AD) will no longer work.</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="24%">
<p>Update AADConnect</p>
</td>
<td width="26%">
<p>Once AAD cutover is completed, the organization is fully Office 365 services organization (no longer connected to Microsoft Cloud Deutschland). At this point the customer needs to uninstall and then re-install AAD Connect to repoint to the WW AAD endpoints for sync. If no re-installation is possible, the string value &ldquo;AzureInstance&rdquo; needs to be set from 3 (Black Forest) to 0 in the registry path &ldquo;Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Azure AD Connect&rdquo;. Once the registry value has been changed, the AAD Sync service has to be restarted.</p>
</td>
<td width="24%">
<p>Hybrid AAD connected organizations</p>
</td>
<td width="25%">
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Re-run AAD Connect installation or change registry key value (incl. service restart).</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Failing to do so, will lead to users not being synced once the Microsoft Cloud Deutschland endpoints are not available anymore.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Failing to do so, will lead to users not being synced once the Black Forest endpoints are not available anymore.</p>
</td>
</tr>
<tr>
<td width="24%">
<p>Remove Black Forest AD FS Relying Party Trusts</p>
</td>
<td width="26%">
<p>Once AAD cutover is completed, the organization is fully Office 365 services organization (no longer connected to Microsoft Cloud Deutschland). At this point the customer will need to remove the Relying Party Trust to the Black Forest endpoints. This can only be done, when no applications of the customer point to Black Forest endpoints when AAD is leveraged as IdP.</p>
</td>
<td width="24%">
<p>Federated Authentication organizations</p>
</td>
<td width="25%">
<p>None</p>
</td>
</tr>
<tr>
<td width="24%">
<p>Request to join a group in last 30 days before migration will need to be requested again if the original request was not approved</p>
</td>
<td width="26%">
<p>End user customer will need to use <a href="https://account.activedirectory.windowsazure.com/r#/joinGroups">Access panel</a> to submit request to join a group again if those requests were not approved in the last 30 days before the migration.</p>
</td>
<td width="24%">
<p>End users whose group approval requests were not approved in last 30 days before migration</p>
</td>
<td width="25%">
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; As an end user, navigate to <a href="https://account.activedirectory.windowsazure.com/r#/joinGroups">Access panel</a>.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Find the group for which membership approval was pending in 30 days before migration.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Request to join the group again.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Active group membership requests which are less than 30 days before migration cannot be approved, unless they are re-requested post migration</p>
</td>
</tr>
<tr>
<td width="24%">
<p>Remove legacy Application URI and ReplyURL</p>
</td>
<td width="26%">
<p>&nbsp;</p>
</td>
<td width="24%">
<p>&nbsp;</p>
</td>
<td width="25%">
<p>None</p>
</td>
</tr>
<tr>
<td width="24%">
<p>Update on-premises DNS services for Office 365 services endpoints</p>
</td>
<td width="26%">
<p>Customer managed DNS entries which point to Office365 Germany need to repoint to the Office 365 services endpoints.</p>
</td>
<td width="24%">
<p>All Office customers</p>
</td>
<td width="25%">
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Required action &ndash; non action may result in service / client failure.</p>
</td>
</tr>
<tr>
<td width="24%">
<p>Update partners and 3<sup>rd</sup> party services for Office 365 services endpoints</p>
</td>
<td width="26%">
<p>3<sup>rd</sup> party services and partners which point to Office365 Germany need to repoint to the Office 365 services endpoints. Example given:</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Re-Register, in alignment with your vendors/partners, gallery app version of applications, if available</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Point all custom applications which leverage e.g. Graph API from graph.microsoft.de to graph.microsoft.com. Other APIs with changed endpoints also need to be adjusted, if leveraged.</p>
<p>&nbsp;</p>
</td>
<td width="24%">
<p>All Office customers</p>
</td>
<td width="25%">
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Required action &ndash; non action may result in service / client failure.</p>
</td>
</tr>
<tr>
<td width="24%">
<p>Office Clients, Office Online</p>
</td>
<td width="26%">&nbsp;</td>
<td width="24%">
<p>All Office customers</p>
</td>
<td width="25%">
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Remove MSOID CName from customer owned DNS if existed.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Notify users to close ALL Office apps and then sign back in (or force client restart, user sign-in) to enable Office clients to pick up the change.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Notify users/helpdesk that users &lsquo;may&rsquo; see office banner prompting them to re-activate Office apps within 72 hours of cutover.</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Personal machines must close all Office applications, sign out, then back in. In the Yellow activation bar sign-in to re-activate against the Office 365 services service</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shared machines &ndash; No extra impact. Similar experience as Personal machines</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mobile devices &ndash; Mobile devices must close then sign out and back into mobile applications.</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1"></a>&nbsp;</p>
<p>&nbsp;</p>

To find out more information about the differences for organizations in migration and after Azure Active Directory is migrated, review the [Customer experience during the migration to Office 365 services in the new German datacenter regions](#_Azure_Active_Directory)

## Exchange Online

| Step(s) | Description | Applies to | Impact |
| --- | --- | --- | --- |
| New Germany region is added to existing organization setup and mailboxes are moved to Office 365 services | Exchange Online configuration adds the new go-local German region to the transitioning organization. This Office 365 services region is set as &#39;default&#39;, which enables the internal load balancing service to re-distribute mailboxes to the appropriate default region in Office 365 services. In this transition, users on either side (Germany or Office 365 services) are in the same organization and can use either URL endpoint. | Exchange Online |
- Transition users and services off Germany URLs to Office 365 services URLs ([https://outlook.office365.com](https://outlook.office365.com/)) to aide in future retirement of the Germany service endpoints.
- In case, user mailbox has been migrated but admin mailbox has not been migrated and vice-versa, Admins won&#39;t be able to run Set-UserPhoto cmdlet . Admin need to pass additional string in ConnectionUri during connection setup.Below syntax mentions the change –  https://outlook.office.de/PowerShell-LiveID?email=\&lt;user\_email \&gt;
  - Here user\_email is the placeholder for email-id of the user whose Photo needs to be changed using Set-UserPhoto cmdlet.
- Users will continue to access the service via legacy Germany URLs. No immediate action needed. [see admin impact]
- Users should begin to use the office.com portal for Office Online features (Calendar, Mail, People). Navigation to services not yet migrated to Office 365 services (eg Dynamics) will not function until migrated.
- Public folder Outlook Web Access experience during migration is not available.|
| Stop / delete any onboarding or offboarding moves of their mailboxes.
 | This ensures the move requests don&#39;t fail with error. | Exchange Online customers with Hybrid (on-premises) deployments |
- Required action – non action may result in service / client failure.
- Before Exchange mailbox migration begins (+5 days&#39; notice) clients to be notified that they should stop / delete any onboarding or offboarding moves of their mailboxes. [If they don&#39;t, they&#39;ll see errors in their move request]
- After Exchange mailbox migration is complete, again clients are to be signaled that they can resume onboarding/offboarding moves.
Running Test-MigrationServerAvailabiilty cmdlet during Microsoft Cloud Deutschland to Office 365 services Migration of Exchange may not work. It will work properly after migration completion
If clients run into credential / authorization issues after mailbox migrations, they can re-enter the on-prem admin credentials in the migration endpoint by:Running &quot;Set-MigrationEndpoint endpointName -Credential $(Get-Credential)&quot; or by setting the same using ECP|
| New Germany region is added to existing organization setup and mailboxes are moved to Office 365 services | Exchange Online configuration adds the new go-local German region to the transitioning organization. The Germany region continues set as &#39;default&#39;. Individual mailboxes tagged with the Germany region in Office 365 services will migrate automatically by the Load Balancing service when set by Customer during initial validation. Subsequently changing the &quot;default&quot; to the appropriate Office 365 services region will move the bulk of mailboxes at scale. In this transition, users on either side (Microsoft Cloud Deutschland or Office 365 services) are in the same organization and can use either URL endpoint. | Exchange Online; Deutsche Telekom |
- Stamp MailboxRegion on individual mailboxes to Germany region code &quot;GER&quot; to individually move specific mailboxes during &#39;validation&#39; phase.
- Transition users and services off Microsoft Cloud Deutschland URLs to Office 365 services URLs ([https://outlook.office365.com](https://outlook.office365.com/)) to aide in future retirement of the Germany service endpoints.
- Upon completion of validation phase, the DefaultMailboxRegion is changed to GER to allow all mailboxes to rebalance to Office 365 services.
- Users will continue to access the service via legacy Germany URLs. No immediate action needed. [see admin impact]|
| Re-run Hybrid Configuration Wizard against Office 365 services
 | Existing Hybrid Configuration Wizard configuration is configured to support Microsoft Cloud Deutschland. With migration complete of Exchange services, we decouple on-premises configuration from Microsoft Cloud Deutschland. | Exchange Online customers running Hybrid deployment |
- Required action – non action may result in service / client failure.|

To find out more information about the differences for organizations in migration and after Exchange Online resources are migrated, review the [Customer experience during the migration to Office 365 services in the new German datacenter regions](#_Exchange_Online)

## Exchange Online Protection

Backend Exchange Online Protection features are copied to new Germany region.

| Step(s) | Description | Applies to | Impact |
| --- | --- | --- | --- |
| During migration, eDiscovery searches will fail or return 0 results for SharePoint Online, OneDrive for Business and Exchange Online locations that have been migrated | During migration, customers can continue to create cases, holds, searches and exports in the [Security &amp; Compliance Center](https://docs.microsoft.com/en-us/microsoft-365/compliance/manage-legal-investigations), including [Content Search](https://docs.microsoft.com/en-us/microsoft-365/compliance/search-for-content).  However, searches against SharePoint Online, OneDrive for Business and Exchange Online locations that have been migrated will either return 0 results or produce an error.  See steps column to the right for remediation.  | All customers using eDiscovery  | In the event that a search returns 0 results or an error during migration, please take the following action.
- SharePoint Online - Download sites directly from SharePoint Online/ OneDrive for Business site using  [Download files and folders from OneDrive or SharePoint](https://support.office.com/en-us/article/download-files-and-folders-from-onedrive-or-sharepoint-5c7397b7-19c7-4893-84fe-d02e8fa5df05) - this will require SharePoint Online admin or R/O permissions on the site
If limits are exceeded, explained in the above documentation, customer can utilize the OneDrive for Business sync client following [this guidance](https://support.office.com/en-us/article/sync-sharepoint-files-with-the-new-onedrive-sync-app-6de9ede8-5b6e-4503-80b2-6190f3354a88).
- Exchange Online - [In-Place eDiscovery in Exchange Server](https://docs.microsoft.com/en-us/Exchange/policy-and-compliance/ediscovery/ediscovery?view=exchserver-2019)|
| All SharePoint Online, OneDrive for Business and Exchange Online locations have been migrated along with SCC.  | Searches will now be 100% successful.  Any failures or errors should follow normal support channels  | All customers using eDiscovery  | None |
| Migration of Exchange Online routing and historical message detail. | Exchange Online enables routing from external hosts to Office365. The external MX records are transitioned to route to Office 365 services EOP services. Tenant configuration and historical details are migrated. | Exchange Online customers |
- Microsoft managed DNS entries update from Office365 Germany EOP to Office 365 services.
- \&lt;placeholder for SCC\&gt;
- Customer should wait for 30 days after EOP dual write for EOP migration, otherwise may cause data loss.|
| Remove org-wide retention policy created during pre-steps  | Customer can remove the org-wide [Retention Policy](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Fretention-policies%23a-policy-that-applies-to-entire-locations&amp;data=04%7C01%7Cmahage%40microsoft.com%7Cb24c0601b09a4469c8ef08d74c067382%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637061468969562472%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C-1&amp;sdata=oFRoKU52BMfZiL9G3SeSr5GmfXmk1Ic1PnlYO8e4EX0%3D&amp;reserved=0) created during Customer Pre-Work steps  | All customers who applied a retention policy during pre-work steps  | None |

## SharePoint Online

| Step(s) | Description | Applies to | Impact |
| --- | --- | --- | --- |
| SharePoint and OneDrives are transitioned | SharePoint and OneDrives are migrated from Microsoft Cloud Deutschland to Office 365 services in this phase. Existing Microsoft Cloud Deutschland URLs are preserved (contoso.sharepoint.de). Tokens issued by Microsoft Cloud Deutschland or Office 365 services token issuer are valid during the transition. | SharePoint customers |
- Content will be read-only for two brief periods during migration (\&lt;x minutes), expect &quot;you can&#39;t edit content&quot; banner in SharePoint.
- Search index will not be preserved, may take up to 10 days to rebuild.
- Inflight SharePoint 2013 workflows will be broken during migration and must be republished post-migration
- SharePoint/OneDrive content will be read-only for two brief periods during migration (\&lt;x minutes). Users will see &quot;you can&#39;t edit content&quot; banner briefly during this window.
- Search Index may be unavailable while re-index completes. During this period search queries may not return complete results.
- Existing site are preserved|
| Republish SharePoint 2013 workflows | In Pre-work we reduced SharePoint 2013 workflows. Now with migration complete, the customer can republish the workflows. | All Office customers |
- Required action – non action may result in user confusion, helpdesk calls.|


## Skype for Business Online

| Step(s) | Description | Applies to | Impact |
| --- | --- | --- | --- |
| Migration of Skype for Business to Teams | Existing Skype for Business customers are migrated to Office 365 services in Europe and then transitioned to Microsoft Teams in the Germany region of Office 365 services. | Skype for Business customers |
- Users will no longer be able to sign-into Skype for Business on migration date. 10 days prior to migration we will notify end users via inband on the Skype for Business client that they will be upgraded to Teams. We will also post in Admin Center that these changes will occur after the 10 days.
- Policy configuration is migrated
- Users will be migrated to Teams and will no longer have Skype for Business post migration
- Users must have Teams desktop client installed. This will happen during the 10 days via policy on the Skype for Business infrastructure, but if this fails they will still need to download the client or have to connect with a supported browser
- Contacts and meetings will be migrated to Teams.
- Users will not be able to sign in to Skype for Business between time service transitions to Office 365 services and customer DNS entries are completed.
- Contacts and existing meetings will continue to function as Skype for Business meetings.

## Dynamics

| Step(s) | Description | Applies to | Impact |
| --- | --- | --- | --- |
| Microsoft of Dynamics resources | Customers with Microsoft Dynamics will be engaged by Engineering or FastTrack to perform transition of Dynamics to the Office 365 services instance.
 | Microsoft Dynamics 365 customers |
- Post migration Admin validates organization
- Admin modifies workflows as necessary
- Admin clears AdminOnly mode as appropriate
- Admin changes organization type from Sandbox as appropriate
- Notify end-users of the new URL to access the Instance (Org).
- Update any &quot;inbound&quot; connections to the new endpoint URL.
- Dynamics service will be unavailable to users during the transition.
- Users are required to validate the org health and features after migration of each org.|

## Power BI

| Step(s) | Description | Applies to | Impact |
| --- | --- | --- | --- |
| Microsoft of Power BI resources | Customers with Microsoft Power BI will be engaged by Engineering or FastTrack after manually triggering an existing PBI migration tool to transition of Power BI to the Office 365 services instance.
 | Microsoft Power BI customers |
- The following Power BI items will NOT be transitioned and they will have to be re-created.
Real-Time datasets (e.g., streaming or push datasets).
- Power BI on-premises Data Gateway configuration and data source.
- The reports built on top of the real-time datasets will not be
available after migration and are required to be recreated.
- Power BI services will be unavailable to users during the transition. The unavailability of the service should not be more than 24 hrs.
- Users will be required to reconfigure data sources and their on-premise data gateways with the Power BI Service after migration. Until they do so, users will be unable to use these data sources to perform scheduled refresh and/or Direct Query against these data sources.
- Capacities and Premium workspaces cannot be migrated. Customer needs to delete all the capacities before the migration, re-create them after the migration and move the workspaces back to capacities as desired.|

## Subscription

| Step(s) | Description | Applies to | Impact |
| --- | --- | --- | --- |
| We cannot migrate customers without consent. | Microsoft gains the right to migrate in one of two ways, which enables Microsoft to orchestrate the transition of data and services to the Office 365 services instance.
Admin [opts-in](https://docs.microsoft.com/en-us/microsoft-365/enterprise/ms-cloud-germany-migration-opt-in?view=o365-worldwide) to the Microsoft-driven migration.
Customer renews any subscription in their Microsoft Cloud Deutschland tenant after May 1, 2020. We will notify these customers of the migration right each month, wait 30 days to give customers a chance to cancel, and then directly opt-in, tracked in ICM.
 | All Office Customers |
- Tenant is marked as consented for migration and confirmation displayed in Admin Center.
- Acknowledgment is posted to Cloud Germany Message Center Tenant / Service configuration continues from Microsoft Cloud Deutschland endpoints.
- Monitor Message Center for updates on Migration phase status.|
| Subscription are Transferred and Licenses Re-Assigned | After the tenant is transitioned to Office 365 services, corresponding Office 365 services subscriptions are purchased for transferred Microsoft Cloud Deutschland subscriptions. Users with Microsoft Cloud Deutschland licenses assigned will be assigned Office 365 services licenses. Legacy Microsoft Cloud Deutschland subscriptions are removed from the Office 365 services tenant on completion. | All Office customers |
- Changes to existing subscriptions will be blocked (e.g., no new subscription purchases, seat count changes) during this phase
- License assignment changes will be blocked
- Black Forest subscription will be migrated to corresponding Office 365 services subscription. The Office 365 services offer of that subscription is defined by Microsoft (aka Offer mapping)
- The Office 365 services offer features&#39; number (Service plans) can be larger than in the original Black Forest offer. User licenses in Office 365 services will be equivalently assigned to similar Black Forest features (service plans). User licenses of All users will be automatically assigned to the new features. Admin needs to take an explicit action to disable those licenses, if needed.
- When subscription migration is complete, both Office 365 services and Germany subscriptions will be visible in the Office365 Admin Portal, with the status of Germany subscriptions as deprovisioned.
- Users will be reassigned licenses tied to the new Office 365 services subscriptions. Any Customer processes with dependencies taken on Germany subscriptions or SKU GUIDs will be broken and need to be revised with the Office 365 services offering.
- New Subscriptions in the Office 365 services will be purchased with the new term (monthly/quarterly/yearly) and the customer will receive prorated refund for the balance not used in Black Forest subscription.
- Partner Black Forest Tenant will not be migrated. CSP Customers will be migrated to Office 365 services under new Office 365 services Tenant of the same Partner. After Customer migration the Partner can manage this customer only from the Office 365 services tenant.
- Additional functionality available (e.g., Microsoft Planner, Microsoft Flo\*w, etc) [Unless disabled by tenant admin, see [https://docs.microsoft.com/en-us/office365/enterprise/powershell/disable-access-to-services-while-assigning-user-licenses](https://docs.microsoft.com/en-us/office365/enterprise/powershell/disable-access-to-services-while-assigning-user-licenses) for references on how to disable service plans assigned to users&#39; licenses].|

[1](#sdfootnote1anc) (i) Customers with Azure resources must take action in this migration scenario as defined by the Azure Migration Playbook. (ii) Failure by the customer to take action will mean that Microsoft will be unable to complete the migration. (iii)When Microsoft is unable to complete the migration due to the customer&#39;s inaction, then the customer&#39;s subscription will expire on October 29, 2021.

[2](#sdfootnote2anc) (i) Customers with Microsoft Dynamics 365 must take action in this migration scenario as defined by the Migration process provided. (ii) Failure by the customer to take action will mean that Microsoft will be unable to complete the migration. (iii)When Microsoft is unable to complete the migration due to the customer&#39;s inaction, then the customer&#39;s subscription will expire on September 30, 2020.

[3](#sdfootnote3anc) (i) Customers with Microsoft Power BI must take action in this migration scenario as defined by the Migration process provided. (ii) Failure by the customer to take action will mean that Microsoft will be unable to complete the migration. (iii)When Microsoft is unable to complete the migration due to the customer&#39;s inaction, then the customer&#39;s subscription will expire on September 30, 2020.

