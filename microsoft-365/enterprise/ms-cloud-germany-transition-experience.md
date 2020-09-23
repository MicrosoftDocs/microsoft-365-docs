---
title: "Customer experience during the migration to Office 365 services in the new German datacenter regions"
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
description: "Summary: Understand the considerations for each workload when migrating to the Office 365 services in the new German datacenter regions."
---

# Customer experience during the migration to Office 365 services in the new German datacenter regions

Tenant migrations are designed to have minimal impact to administrators and users. However, there are considerations for each workload. Please review the following sections to have a better understanding of the migration experience for the workloads.

## Azure Active Directory (Azure AD)

- Tenant initial domain (such as contoso.onmicrosoft.de) and tenant ID (GUID) and custom domains will persist after the migration.
- Authentication requests for resources that are migrated to Office 365 services are granted by the Office 365 services Azure authentication service (login.microsoftonline.com). During the migration, resources that remain still in Office365 Germany are authenticated by the existing Germany Azure service (login.microsoftonline.de)
- You should not create promote, or demote a federated domain while the tenant transition is in process. After the migration to the Office 365 services Azure service is complete (the tenant is fully completed), you can resume managing federated domains.
- If you are using federated authentication with Active Directory Federation Services (AD FS), you should not make changes to Issuer URIs used for all authentication with your on-premises Active Directory Domain Services (AD DS) during migration. Changing Issuer URIs will lead to authentication failures for users in the domain. Issuer URIs can be changed directly in AD FS or when a domain is converted from managed to federated and vice versa. Microsoft recommends customers do not add, remove, or convert a federated domain in the Azure AD tenant being migrated. Issuer URIs can be changed once the migration is fully complete.
- For _managed domain_ accounts, once the initial Azure AD tenant copy completes (the first step of Azure AD migration to the Office 365 services Azure AD service), password changes, Self-service password reset (SSPR) changes, and password resets by administrators must be executed from the Office 365 service portals. Requests to update passwords from the Germany service will not succeed at this point since the Azure AD tenant has been migrated to Office 365 services. Federated domain password resets are not affected as these are completed in the on-premises directory.
- Azure Sign-Ins are presented in the portal where the user attempts access. Audit Logs are available from only the Office 365 services endpoint after transition.You should save Sign-in and Audit logs from the Microsoft Cloud Deutschland portal prior to the completion of migration.
- Creating IPv6 named networks does not work in the [http://portal.microsoftazure.de/](http://portal.microsoftazure.de/) Azure portal. Use Azure portal at https://portal.azure.com to create IPv6 named networks.
- You cannot create trusted IP ranges from DE portal when establishing Azure Multi-Factor Authentication service settings. Use the Office 365 services Azure AD portal to create Azure Multi-Factor Authentication trusted IP ranges.
- Conditional Access policies with the following grant controls are not supported until migration to Office 365 services is completed (after Azure AD Finalize):
  - Require Compliant Device
  - Require Approved App
- The Conditional Access policy blade gives a false warning (Require App Protection Policy) about security defaults being enabled for the tenant even when it is disabled, and Conditional Access policies already exist for the tenant. You should ignore the warning or use the Office 365 services portal to manage Conditional Access policies.
- GDPR Data Subject Requests (DSRs) are executed from the Office 365 services Azure admin portal for future requests. Any legacy or non-customer diagnostic data information resident Microsoft Cloud Deutschland is deleted at or before 30 days.
- Microsoft Cloud Deutschland users who use the Mobile App Notification method for multi-factor authentication (MFA) requests see the UserObjectId (GUID) instead of the Username (UPN) in the Microsoft Authenticator app. Once migration of the Azure AD tenant is completed and hosted in Office 365 services, new Microsoft Authenticator activations will display Username (UPN). Existing Microsoft Authenticator accounts will continue to display the UserObjectId (GUID) but will continue to work for Mobile App Notifications.

- Password resets, password changes, password reset by admin for managed (non ADFS) organizations must be performed via the global portal. Attempts by users who access the Microsoft Cloud Deutschland
- For tenants created after October 22nd 2019, Security Defaults may be auto-enabled for the tenant when it is migrated to the Office 365 service. Tenant admins can choose to leave Security Defaults enabled and register for MFA, or they can disable the feature. For more information see https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/concept-fundamentals-security-defaults#disabling-security-defaults. Note: Organizations which are not auto-enabled during migration may still be auto-enrolled in the future as the feature to enable security defaults is rolled out in the Office 365 service. Admins choosing to explicitly disable or enable Security Defaults may do so by updating the feature under Azure Active Directory \&gt; Properties. Once the feature enablement state is explicitly by the admin, it will not be auto-enabled.

To find out more information about any actions needed during the migration phase of this workload or impact to administration or usage, review the [Azure AD](#_Azure_Active_Directory_1) section of Migration Phases Actions and Impacts.

## Subscriptions and licenses

- Office 365 and Dynamics subscriptions from Microsoft Cloud Deutschland are transitioned to the German region with the Azure AD relocation. The organization is then updated to reflect new Office 365 Services subscriptions. During the brief subscription transfer process, changes to subscriptions will be blocked.
- As the tenant is transitioned to Office 365 services, its Germany-specific subscriptions and licenses are standardized with new Office 365 services offerings. Corresponding Office 365 services subscriptions are purchased for the transferred Germany subscriptions. Users with Germany licenses assigned will be assigned Office 365 services licenses. Legacy Germany subscriptions are cancelled and removed from the current Office 365 services tenant upon completion.
- Additional functionality is made available through the Office 365 services (such as Microsoft Planner, and Microsoft Flow) as a result of the new Office 365 services subscriptions _and_ after migration of the individual workloads. If appropriate for your organization, the tenant or licensing admin can disable new service plans as you plan for change management to introduce the new services. Review this [guidance](https://docs.microsoft.com/en-us/office365/enterprise/powershell/disable-access-to-services-while-assigning-user-licenses) on how to disable service plans assigned to users&#39; licenses.

## Exchange Online

- Exchange resource URLs transition from the legacy Germany endpoint outlook.office.de to the Office 365 services endpoint outlook.office365.com after the migration. Your users may access their migrated mailbox using the legacy URL until the migration completes. Customers should transition users to the new URL as soon as possible after Exchange migration begins to avoid impact on retirement of the Germany environment. The Office 365 services URLs for Outlook services become available only after Exchange migration begins.
- If you have Exchange Online Hybrid, you must re-run the Hybrid Configuration Wizard (HCW) to update on-premises configuration against Microsoft Cloud Deutschland before the transition, and re-execution of the HCW upon cleanup against the Office 365 services. Additional DNS updates may be required if you use custom domains.
- Mailboxes are migrated as a backend process, users in your organization may be in either Microsoft Cloud Deutschland or German region during the transition and are part of the same Exchange organization (global address list [GAL]).
- Users in Outlook Web Access (OWA) who access the service with a URL where their mailbox does not reside will see an extra authentication prompt. For example, If the user mailbox is in the Office 365 services and the user&#39;s OWA connection uses the legacy endpoint outlook.office.de, the user will first authenticate to login.microsoftonline.de, then to login.microsoftonline.com. When the user transitions to the correct URL (https://outlook.office365.com), they will see only the one expected login request.
- Users in OWA that access a shared mailbox in the other environment (for example, a user in the Germany environment accesses a shared mailbox in the global environment) will be prompted to authenticate a second time. The user must first authenticate and access their mailbox in outlook.office.de, then open the shared mailbox that is in outlook.office365.com. They will need to authenticate a second time when accessing the shared resources that are hosted in the other service.
- For existing Microsoft Cloud Deutschland customers or those in transition, when a shared mailbox is added to Outlook using &quot;File-\&gt;Info-\&gt;Add Account&quot;, viewing calendar permissions may fail. (The Outlook client attempts to use the Rest API [https://outlook.office.de/api/v2.0/Me/Calendars](https://outlook.office.de/api/v2.0/Me/Calendars)) Customers wishing to add an account to view calendar permissions can add the registry key as mentioned at [https://support.microsoft.com/en-us/office/user-experience-changes-for-sharing-a-calendar-in-outlook-5978620a-fe6c-422a-93b2-8f80e488fdec](https://support.microsoft.com/en-us/office/user-experience-changes-for-sharing-a-calendar-in-outlook-5978620a-fe6c-422a-93b2-8f80e488fdec) to ensure this action will succeed. [This Registry Key can be deployed Organization wide using Group Policy]

To find out more information about any actions needed during the migration phase of this workload or impact to administration or usage, review the [Exchange Online](#_Exchange_Online_1) section of Migration Phases Actions and Impacts.

## Office Services

- Office Online services are accessible via office.de before and during the transition. After user mailboxes are transitioned to the Office 365 services, users should begin to use office.com URLs. As subsequent workloads migrate to Office 365 Services their interface from the office.com portal will begin to work.
- The Office Most Recently Used (MRU) service is a cutover from the Germany service to Office 365 services, not a migration. Only MRU links from the Office 365 services side will be visible after migration from the Office.com portal. MRU links from Germany service are not visible as MRU links in Office 365 services. Office 365 services MRU links are accessible only after the tenant migration is complete.

## Exchange Online Protection

- Back-end Exchange Online Protection features are copied to new Germany region.

## SharePoint Online

- SharePoint resource URLs will persist using \&lt;tenant\&gt;.sharepoint.de before and after the migration.
- Upon completion of the SharePoint Online migration to the German region, data indexes are rebuilt. Features dependent on search indexes may be impacted while reindexing completes.
- If your organization still uses SharePoint 2010 workflows, they will no longer function after December 31, 2021. SharePoint 2013 workflows will remain supported, although turned off by default for new tenants starting November 1, 2020. After migration to the Office 365 services SharePoint Online service is complete, we recommend that you to move to Power Automate or other supported solutions.

## OneDrive for Business

- OneDrive resource URLs will persist using \&lt;tenant\&gt;.sharepoint.de before and after the migration.
- Upon completion of the OneDrive migration to the German region, data indexes are rebuilt. Features dependent on search indexes may be impacted while reindexing is in progress.

## Skype for Business Online

- Existing Skype for Business Online customers will transition to Microsoft Teams. See [https://aka.ms/SkypeToTeams-Home](https://aka.ms/SkypeToTeams-Home) for more information.

## Office 365 Video

- Office 365 Video is being retired on March 1, 2021 and Office 365 Video will not be supported after the SharePoint Online migration to the new German datacenter regions is completed. Content from Office 365 Video will be migrated as part of the SharePoint Online migration. However, Videos in Office 365 Video will not play back in the Office 365 Video UI after the SharePoint migration. Learn [more](https://docs.microsoft.com/en-us/stream/migrate-from-office-365#microsoft-cloud-deutschland-timeline) on the Office 365 Video transition to Microsoft Stream.

## Key differences between Microsoft Cloud Deutschland and Office 365 services in the new German datacenter regions
<table width="100%">
<thead>
<tr>
<td width="20%">&nbsp;</td>
<td width="25%">
<p><strong>Microsoft Cloud Deutschland (Microsoft Cloud Deutschland)</strong></p>
</td>
<td width="53%">
<p><strong>Office 365 services in the new German datacenter regions</strong></p>
</td>
</tr>
</thead>
<tbody>
<tr>
<td width="20%">
<p>Microsoft 365 services available for subscription with just one Office 365 tenant</p>
</td>
<td width="25%">
<p>15 services (see [the FAQ](link to &ldquo;What is the service availability between the different Office 365 cloud service offerings?&rdquo; question in FAQ))</p>
</td>
<td width="53%">
<p>29 services (see [the FAQ](link to &ldquo;What is the service availability between the different Office 365 cloud service offerings?&rdquo; question in FAQ))</p>
</td>
</tr>
<tr>
<td width="20%">
<p>New features</p>
</td>
<td width="25%">
<p>No new features are available.</p>
</td>
<td width="53%">
<p>New features will be available consistent with Office 365 services.</p>
</td>
</tr>
<tr>
<td width="20%">
<p>Data trustee</p>
</td>
<td width="25%">
<p>Yes</p>
</td>
<td width="53%">
<p>No</p>
</td>
</tr>
<tr>
<td width="20%">
<p>Cross-tenant collaboration with global Office 365 tenants</p>
</td>
<td width="25%">
<p>No</p>
</td>
<td width="53%">
<p>Yes</p>
</td>
</tr>
<tr>
<td width="20%">
<p>Customer data residency</p>
</td>
<td width="25%">
<p>Customer Data will be stored solely within German Data Centers.</p>
</td>
<td width="53%">
<p>Microsoft will store the following Customer Data at rest exclusively within Germany:</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Exchange Online mailbox content (e-mail body, calendar entries, and the content of e-mail attachments)</p>
<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SharePoint Online site content and the files stored within that site, and files uploaded to OneDrive for Business</p>
</td>
</tr>
<tr>
<td width="20%">
<p>Applicable terms</p>
</td>
<td width="25%">
<p><a href="https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&amp;DocumentTypeId=46">Online Services Terms</a>&nbsp;with&nbsp;<a href="https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&amp;DocumentTypeId=64">supplement</a></p>
</td>
<td width="53%">
<p><a href="https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&amp;DocumentTypeId=46">Online Services Terms</a></p>
</td>
</tr>
<tr>
<td width="20%">&nbsp;</td>
<td width="25%">&nbsp;</td>
<td width="53%">&nbsp;</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
