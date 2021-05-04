---
title: "Additional Azure Active Directory information for the migration from Microsoft Cloud Deutschland"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 12/15/2020
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
description: "Summary: Additional Azure Active Directory information when moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region."
---

# Additional Azure Active Directory information for the migration from Microsoft Cloud Deutschland

To complete the move from the Azure German cloud to the Azure public cloud we recommend that the authentication endpoint, Azure Active Directory (Azure AD) Graph, and MS Graph endpoints for your applications be updated to those of the commercial cloud when the OpenID Connect (OIDC) endpoint, `https://login.microsoftonline.com/\<TenantIdOrDomain\>/.well-known/openid-configuration`, starts reporting commercial cloud endpoints. 
 
**When should I make this change?**

You'll receive a notification in Azure/Office portal when your tenant completes migration from German cloud to the commercial cloud. You have 30 days after receiving this notification to complete these updates so that your app continues to work for tenants that are migrated from Azure Germany cloud to Azure Public cloud.
 
There are three preconditions to updating your sign-in authority:

 - OIDC discovery endpoint for your tenant `https://login.microsoftonline.com/\<TenantIdOrDomain\>/.well-known/openid-configuration` returns Azure AD public cloud endpoints.

 - If your tenant is set up for federation, Active Directory Federation Services (AD FS) is updated to sync with Azure AD Public. You can follow instructions to update Azure AD Connect settings for making this change.

 - Resource applications, if any, used by your applications are modified to accept tokens that are signed by both Azure AD Germany and Azure AD Public.
 
**What kind of applications?**

An application could be any of the following:

- [Single-page app (SPA)](/azure/active-directory/develop/scenario-spa-overview)
- [Web app that signs in users](/azure/active-directory/develop/scenario-web-app-sign-user-overview)
- [Web app that calls web APIs](/azure/active-directory/develop/scenario-web-app-call-api-overview)
- [Protected web API](/azure/active-directory/develop/scenario-protected-web-api-overview)
- [Web API that calls web APIs](/azure/active-directory/develop/scenario-web-api-call-api-overview)
- [Desktop app](/azure/active-directory/develop/scenario-desktop-overview)
- [Daemon app](/azure/active-directory/develop/scenario-daemon-overview)
- [Mobile app](/azure/active-directory/develop/scenario-mobile-overview)
 
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

    - [Azure PowerShell](/powershell/azure/install-az-ps)
    - [Azure AD PowerShell (MSOnline)](/powershell/azure/active-directory/overview)
    - [Azure AD PowerShell (AzureAD)](/powershell/azure/active-directory/install-adv2)
    - [Azure CLI](/cli/azure/install-azure-cli)
 
**What about applications that I publish?**

If you publish an application that is available to users who are outside of your tenant, you may need to change your application registration to ensure continuity. Other tenants that use your application may be moved at a different time than your tenant. To ensure that they never lose access to your application, you'll need to consent to your app being synchronized from Azure Germany to Azure public.

## Additional considerations

Here are some additional considerations for Azure AD:

- For federated authentication:

  - You must not create, promote, or demote a federated domain while the tenant transition is in process. After the migration to the Azure AD service is complete (the tenant is fully complete), you can resume managing federated domains.

  - If you're using federated authentication with Active Directory Federation Services (AD FS), you shouldn't make changes to Issuer URIs used for all authentication with your on-premises Active Directory Domain Services (AD DS) during migration. Changing issuer URIs will lead to authentication failures for users in the domain. Issuer URIs can be changed directly in AD FS or when a domain is converted from managed to federated and vice versa. Microsoft recommends customers don't add, remove, or convert a federated domain in the Azure AD tenant being migrated. Issuer URIs can be changed after the migration is fully complete.

- For networking:

  - Creating IPv6-named networks doesn't work in the Azure portal, `http://portal.microsoftazure.de/`. Use the Azure portal at `https://portal.azure.com` to create IPv6-named networks.
 
   - You can't create trusted IP address ranges for Azure Multi-Factor Authentication (MFA) service settings from the Microsoft Cloud Deutschland portal. Use the Azure AD portal for Office 365 services to create Azure MFA trusted IP address ranges.


- For Conditional Access: 

  - Conditional Access policies with the following grant controls aren't supported until migration to Office 365 services is complete (after the [Finalize Azure AD](ms-cloud-germany-transition.md#how-is-the-migration-organized) migration phase):

    - Require Compliant Device
    - Require Approved App
    - Require App Protection Policy
    
  - The Conditional Access policy interface gives a false warning about security defaults being enabled for the tenant even when it's disabled, and Conditional Access policies already exist for the tenant. You should ignore the warning or use the Office 365 services portal to manage Conditional Access policies. 

- Intune scenarios are supported only against worldwide endpoints after tenant migration is complete, including all office workloads migrations.

- Microsoft Cloud Deutschland users who use the Mobile App Notification method for MFA requests see the user's ObjectId (a GUID) instead of the user principal name (UPN) in the Microsoft Authenticator app. After migration of the Azure AD tenant is complete and hosted in Office 365 services, new Microsoft Authenticator activations will display users' UPNs. Existing Microsoft Authenticator accounts will continue to display the user ObjectId, but they'll continue to work for mobile app notifications. 

- For tenants that are created after October 22, 2019, security defaults may be auto-enabled for the tenant when it's migrated to the Office 365 service. Tenant admins can choose to leave security defaults enabled and register for MFA, or they can disable the feature. For more information, see [Disabling security defaults](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults#disabling-security-defaults). 

  > [!NOTE]
  > Organizations that are not auto-enabled during migration may still be auto-enrolled in the future as the feature to enable security defaults is rolled out in the Office 365 service. Admins who choose to explicitly disable or enable security defaults may do so by updating the feature under **Azure Active Directory > Properties**. After the feature is explicitly enabled by the admin, it will not be auto-enabled.

- There will be warning about the version of Azure AD Connect in the Office 365 Germany portal as well as in the Office 365 portal once the tenant is in migration. This can be ignored if the version warning is no longer showing the warning after the migration is complete. If there's a warning, either before or after migration, in either portal, Azure AD Connect must be updated. The warning message says: "We detected you're using an outdated directory sync tool. We recommend you go to the Microsoft Download Center to get the latest version of Azure AD Connect."

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