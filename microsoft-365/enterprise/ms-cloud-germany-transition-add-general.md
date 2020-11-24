---
title: "Additional general information for the migration from Microsoft Cloud Deutschland"
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
description: "Summary: Additional general information on services when moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region."
---

# Additional general information for the migration from Microsoft Cloud Deutschland

The following sections provide additional information on services, pre-work considerations, and customer experience.

## Azure Active Directory

To complete the move from the Azure German cloud to the Azure public cloud we recommend that the authentication endpoint, Azure Active Directory (Azure AD) Graph, and MS Graph endpoints for your applications be updated to those of the commercial cloud when the OpenID Connect (OIDC) endpoint, `https://login.microsoftonline.com/\<TenantIdOrDomain\>/.well-known/openid-configuration`, starts reporting commercial cloud endpoints. 
 
**When should I make this change?**

You'll receive a notification in Azure/Office portal when your tenant completes migration from German cloud to the commercial cloud. You have 30 days after receiving this notification to complete these updates so that your app continues to work for tenants that are migrated from Azure Germany cloud to Azure Public cloud.
 
There are three preconditions to updating your sign-in authority:

 - OIDC discovery endpoint for your tenant `https://login.microsoftonline.com/\<TenantIdOrDomain\>/.well-known/openid-configuration` returns Azure AD public cloud endpoints.

 - If your tenant is set up for federation, Active Directory Federation Services (AD FS) is updated to sync with Azure AD Public. You can follow instructions to update Azure AD Connect settings for making this change.

 - Resource applications, if any, used by your applications are modified to accept tokens that are signed by both Azure AD Germany and Azure AD Public.
 
**What kind of applications?**

An application could be any of the following:

- Single-page app (SPA)
- Web app that signs in users
- Web app that calls web APIs
- Protected web API
- Web API that calls web APIs
- Desktop app
- Daemon app
- Mobile app
 
> [!NOTE] 
> When an application switches to using `login.microsoftonline.com` as your authority, the tokens will be signed by this new authority. If you host any resource applications that other apps call into, you will need to allow for lax token validation. This means that your app needs to allow tokens that are signed by both the Azure AD Germany and Azure AD public clouds. This lax token validation is needed until all client applications that call your service are fully migrated to the Azure AD public cloud. After migration, your resource application only needs to accept tokens signed by the Azure AD public cloud.

**What do I need to update?**

1. If you're hosting an application in Azure Germany that is used to authenticate Azure Germany or Office 365 Germany users, ensure that `https://login.microsoftonline.com` is used as the authority in the authentication context.

    - See Azure AD authentication contexts.
    - This applies both to authentication to your application as well as authentication to any APIs that your application may be calling (that is, Microsoft Graph, Azure AD Graph, Azure Resource Manager).

2. Update Azure AD Graph endpoint to be `https://graph.windows.net`.

3. Update MS Graph endpoint to be `https://graph.microsoft.com`.

4. Update any German cloud endpoints (such as those for Exchange Online and SharePoint Online) that are used by your applications to be those of the public cloud.

5. Update environment parameters to be `AzurePublic` (instead of `AzureGermany`) in administrative tools and scripts for:

    - Azure PowerShell
    - Azure AD PowerShell (MSOnline)
    - Azure AD PowerShell (AzureAD)
    - Azure CLI
 
**What about applications that I publish?**

If you publish an application that is available to users who are outside of your tenant, you may need to change your application registration to ensure continuity. Other tenants that use your application may be moved at a different time than your tenant. To ensure that they never lose access to your application, you'll need to consent to your app being synchronized from Azure Germany to Azure public.

### Additional considerations

Here are some additional considerations for Azure AD:

- For federated authentication:

  - You must not create, promote, or demote a federated domain while the tenant transition is in process. After the migration to the Office 365 services Azure serviceis complete (the tenant is fully complete), you can resume managing federated domains.

  - If you're using federated authentication with Active Directory Federation Services (AD FS), you shouldn't make changes to Issuer URIs used for all authentication with your on-premises Active Directory Domain Services (AD DS) during migration. Changing issuer URIs will lead to authentication failures for users in the domain. Issuer URIs can be changed directly in AD FS or when a domain is converted from managed to federated and vice versa. Microsoft recommends customers don't add, remove, or convert a federated domain in the Azure AD tenant being migrated. Issuer URIs can be changed after the migration is fully complete.

- For networking:

  - Creating IPv6-named networks doesn't work in the Azure portal, `http://portal.microsoftazure.de/`. Use the Azure portal at `https://portal.azure.com` to create IPv6-named networks.
 
   - You can't create trusted IP address ranges from the Deutschland portal when establishing Azure multi-factor authentication (MFA) service settings. Use the Office 365 services Azure AD portal to create Azure MFA trusted IP address ranges.


- For Conditional Access: 

  - Conditional Access policies with the following grant controls aren't supported until migration to Office 365 services is complete (after Azure AD Finalize):

    - Require Compliant Device
    - Require Approved App
    - Require App Protection Policy
    
  - The Conditional Access policy interface gives a false warning about security defaults being enabled for the tenant even when it's disabled, and Conditional Access policies already exist for the tenant. You should ignore the warning or use the Office 365 services portal to manage Conditional Access policies. 

- Intune scenarios are supported only against worldwide endpoints after tenant migration is complete, including all office workloads migrations.

- Microsoft Cloud Deutschland users who use the Mobile App Notification method for MFA requests see the user's ObjectId (a GUID) instead of the user principal name (UPN) in the Microsoft Authenticator app. After migration of the Azure AD tenant is complete and hosted in Office 365 services, new Microsoft Authenticator activations will display users' UPNs. Existing Microsoft Authenticator accounts will continue to display the user ObjectId, but they'll continue to work for mobile app notifications. 

- For tenants that are created after October 22, 2019, security defaults may be auto-enabled for the tenant when it's migrated to the Office 365 service. Tenant admins can choose to leave security defaults enabled and register for MFA, or they can disable the feature. For more information, see [Disabling security defaults](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults#disabling-security-defaults). 

  > [!NOTE]
  > Organizations that are not auto-enabled during migration may still be auto-enrolled in the future as the feature to enable security defaults is rolled out in the Office 365 service. Admins who choose to explicitly disable or enable security defaults may do so by updating the feature under **Azure Active Directory > Properties**. After the feature is explicitly enabled by the admin, it will not be auto-enabled.

- There will be warning about the version of Azure AD Connect in the Office 365 Germany portal as well as in the Office 365 portal once the tenant is in migration. This can be ignored if the version warning is no longer showing the warning after the migration is complete. If there's a warning, either before or after migration, in either portal, Azure AD Connect must be updated. The warning message says: "We detected you're using an outdated directory sync tool. We recommend you go to the Microsoft Download Center to get the latest version of Azure AD Connect."

## Exchange Online 

- `myaccount.msft.com` will only work after the cutover of Office 365. Links will produce "something went wrong" error messages until that time.

- Users of Outlook Web App that access a shared mailbox in the other environment (for example, a user in the Germany environment accesses a shared mailbox in the global environment) will be prompted to authenticate a second time. The user must first authenticate and access their mailbox in `outlook.office.de`, then open the shared mailbox that is in `outlook.office365.com`. They'll need to authenticate a second time when accessing the shared resources that are hosted in the other service.

- For existing Microsoft Cloud Deutschland customers or those in transition, when a shared mailbox is added to Outlook by using **File > Info > Add Account**, viewing calendar permissions may fail (the Outlook client attempts to use the Rest API `https://outlook.office.de/api/v2.0/Me/Calendars`.) Customers who want to add an account to view calendar permissions can add the registry key as described in [User experience changes for sharing a calendar in Outlook](https://support.microsoft.com/office/user-experience-changes-for-sharing-a-calendar-in-outlook-5978620a-fe6c-422a-93b2-8f80e488fdec) to ensure this action will succeed. This registry key can be deployed organization-wide by using Group Policy.

- During the migration phase, using the PowerShell cmdlets **New-migrationEndpoint**, **Set-MigrationEndpoint**, and **Test-MigrationsServerAvailability** can result in errors (error on proxy). This happens when the arbitration mailbox has migrated to worldwide but the admin mailbox hasn't or vice-versa. To resolve this, while creating the tenant PowerShell session use the arbitration mailbox as routing hint in the **connectionuri**. For example: `New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid?email=Migration.8f3e7716-2011-43e4-96b1-aba62d229136@TENANT.onmicrosoft.de" -Credential $UserCredential -Authentication Basic -AllowRedirection`

- If you're using Exchange Online hybrid:

    - You must rerun the Hybrid Configuration wizard (HCW) to update on-premises configuration against Microsoft Cloud Deutschland before the transition, and re-execution of the HCW upon cleanup against the Office 365 services. Additional DNS updates may be required if you use custom domains.

For more information about actions that are required during the migration phase of this workload or about the impact to administration or usage, review the Exchange Online section of [Migration phases actions and impacts](ms-cloud-germany-transition-phases.md#exchange-online).

## Office Services

The most recently used (MRU) service in Office is a cutover from the Germany service to Office 365 services, not a migration. Only MRU links from the Office 365 services side will be visible after migration from the Office.com portal. MRU links from the Germany service aren't visible as MRU links in Office 365 services. In Office 365, MRU links are accessible only after the tenant migration is complete.

## SharePoint Online and OneDrive

- Upon completion of the SharePoint Online migration to the German region, data indexes are rebuilt. Features that are dependent on search indexes may be affected while reindexing completes.

- If your organization still uses SharePoint 2010 workflows, they'll no longer function after December 31, 2021. SharePoint 2013 workflows will remain supported, although turned off by default for new tenants starting on November 1, 2020. After migration to the Office 365 services SharePoint Online service is complete, we recommend that you to move to Power Automate or other supported solutions.

- Upon completion of the OneDrive migration to the German region, data indexes are rebuilt. Features that depend on search indexes may be affected while reindexing is in progress.


## More information

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
