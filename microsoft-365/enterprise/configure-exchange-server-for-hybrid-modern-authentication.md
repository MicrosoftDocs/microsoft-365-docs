---
title: "How to configure Exchange Server on-premises to use Hybrid Modern Authentication"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/27/2021
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.assetid: cef3044d-d4cb-4586-8e82-ee97bd3b14ad
ms.collection:
- scotvorg
- M365-security-compliance
f1.keywords:
- NOCSH
description: Learn how to configure an Exchange Server on-premises to use Hybrid Modern Authentication (HMA), offering you more secure user authentication and authorization.
ms.custom:
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
---

# How to configure Exchange Server on-premises to use Hybrid Modern Authentication

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Hybrid Modern Authentication (HMA) is a method of identity management that offers more secure user authentication and authorization, and is available for Exchange server on-premises hybrid deployments.

## Definitions

Before we begin, you should be familiar with some definitions:

- Hybrid Modern Authentication \> HMA

- Exchange on-premises \> EXCH

- Exchange Online \> EXO

Also, *if a graphic in this article has an object that's 'grayed-out' or 'dimmed' that means the element shown in gray is not included in HMA-specific configuration*.

## Enabling Hybrid Modern Authentication

Turning on HMA means:

1. Being sure you meet the prereqs before you begin.

1. Since many **prerequisites** are common for both Skype for Business and Exchange, [Hybrid Modern Authentication overview and prerequisites for using it with on-premises Skype for Business and Exchange servers](hybrid-modern-auth-overview.md). Do this before you begin any of the steps in this article.
Requirements about linked mailboxes to be inserted.

1. Adding on-premises web service URLs as **Service Principal Names (SPNs)** in Azure AD. In case EXCH is in hybrid with **multiple tenants**, these on-premises web service URLs must be added as SPNs in the Azure AD of all the tenants which are in hybrid with EXCH.

1. Ensuring all Virtual Directories are enabled for HMA

1. Checking for the EvoSTS Auth Server object

1. Enabling HMA in EXCH.

> [!NOTE]
> Does your version of Office support MA? See [How modern authentication works for Office 2013 and Office 2016 client apps](modern-auth-for-office-2013-and-2016.md).

## Make sure you meet all the prerequisites

Since many prerequisites are common for both Skype for Business and Exchange, review [Hybrid Modern Authentication overview and prerequisites for using it with on-premises Skype for Business and Exchange servers](hybrid-modern-auth-overview.md). Do this  *before*  you begin any of the steps in this article.

> [!NOTE]
> Outlook Web App and Exchange Control Panel do not work with hybrid Modern Authentication.  In addition, publishing Outlook Web App and Exchange Control Panel through Azure AD Application Proxy is unsupported.

## Add on-premises web service URLs as SPNs in Azure AD

Run the commands that assign your on-premises web service URLs as Azure AD SPNs. SPNs are used by client machines and devices during authentication and authorization. All the URLs that might be used to connect from on-premises to Azure Active Directory (Azure AD) must be registered in Azure AD (this includes both internal and external namespaces).

First, gather all the URLs that you need to add in AAD. Run these commands on-premises:

```powershell
Get-MapiVirtualDirectory | FL server,*url*
Get-WebServicesVirtualDirectory | FL server,*url*
Get-ClientAccessServer | fl Name, AutodiscoverServiceInternalUri
Get-OABVirtualDirectory | FL server,*url*
Get-AutodiscoverVirtualDirectory | FL server,*url*
Get-OutlookAnywhere | FL server,*hostname*
```

Ensure the URLs clients may connect to are listed as HTTPS service principal names in AAD. In case EXCH is in hybrid with **multiple tenants**, these HTTPS SPNs should be added in the AAD of all the tenants in hybrid with EXCH.

1. First, connect to AAD with [these instructions](connect-to-microsoft-365-powershell.md).

    > [!NOTE]
    > You need to use the _Connect-MsolService_ option from this page to be able to use the command below.

2. For your Exchange-related URLs, type the following command:

   ```powershell
   Get-MsolServicePrincipal -AppPrincipalId 00000002-0000-0ff1-ce00-000000000000 | select -ExpandProperty ServicePrincipalNames
   ```

   Take note of (and screenshot for later comparison) the output of this command, which should include an `https://*autodiscover.yourdomain.com*` and `https://*mail.yourdomain.com*` URL, but mostly consist of SPNs that begin with `00000002-0000-0ff1-ce00-000000000000/`. If there are `https://` URLs from your on-premises that are missing, those specific records should be added to this list.

3. If you don't see your internal and external MAPI/HTTP, EWS, ActiveSync, OAB, and Autodiscover records in this list, you must add them using the command below (the example URLs are `mail.corp.contoso.com` and `owa.contoso.com`, but you'd **replace the example URLs with your own**):

   ```powershell
   $x= Get-MsolServicePrincipal -AppPrincipalId 00000002-0000-0ff1-ce00-000000000000
   $x.ServicePrincipalnames.Add("https://mail.corp.contoso.com/")
   $x.ServicePrincipalnames.Add("https://owa.contoso.com/")
   Set-MSOLServicePrincipal -AppPrincipalId 00000002-0000-0ff1-ce00-000000000000 -ServicePrincipalNames $x.ServicePrincipalNames
   ```

4. Verify your new records were added by running the `Get-MsolServicePrincipal` command from step 2 again, and looking through the output. Compare the list / screenshot from before to the new list of SPNs. You might also take a screenshot of the new list for your records. If you were successful, you will see the two new URLs in the list. Going by our example, the list of SPNs will now include the specific URLs `https://mail.corp.contoso.com` and `https://owa.contoso.com`.

## Verify Virtual Directories are Properly Configured

Now verify OAuth is properly enabled in Exchange on all of the Virtual Directories Outlook might use by running the following commands:

```powershell
Get-MapiVirtualDirectory | FL server,*url*,*auth*
Get-WebServicesVirtualDirectory | FL server,*url*,*oauth*
Get-OABVirtualDirectory | FL server,*url*,*oauth*
Get-AutoDiscoverVirtualDirectory | FL server,*oauth*
```

Check the output to make sure **OAuth** is enabled on each of these VDirs, it will look something like this (and the key thing to look at is 'OAuth'):

```powershell
Get-MapiVirtualDirectory | fl server,*url*,*auth*

Server                        : EX1
InternalUrl                   : https://mail.contoso.com/mapi
ExternalUrl                   : https://mail.contoso.com/mapi
IISAuthenticationMethods      : {Ntlm, OAuth, Negotiate}
InternalAuthenticationMethods : {Ntlm, OAuth, Negotiate}
ExternalAuthenticationMethods : {Ntlm, OAuth, Negotiate}
```

If OAuth is missing from any server and any of the four virtual directories, you need to add it by using the relevant commands before proceeding ([Set-MapiVirtualDirectory](/powershell/module/exchange/set-mapivirtualdirectory), [Set-WebServicesVirtualDirectory](/powershell/module/exchange/set-webservicesvirtualdirectory), [Set-OABVirtualDirectory](/powershell/module/exchange/set-oabvirtualdirectory), and [Set-AutodiscoverVirtualDirectory](/powershell/module/exchange/set-autodiscovervirtualdirectory)).

## Confirm the EvoSTS Auth Server Object is Present

Return to the on-premises Exchange Management Shell for this last command. Now you can validate that your on-premises has an entry for the evoSTS authentication provider:

```powershell
Get-AuthServer | where {$_.Name -like "EvoSts*"} | ft name,enabled
```

Your output should show an AuthServer of the Name EvoSts with a GUID and the 'Enabled' state should be True. If you don't see this, you should download and run the most recent version of the Hybrid Configuration Wizard.

> [!NOTE]
> In case EXCH is in hybrid with **multiple tenants**, your output should show one AuthServer of the Name `EvoSts - {GUID}` for each tenant in hybrid with EXCH and the **Enabled** state should be True for all of these AuthServer objects.

> [!IMPORTANT]
> If you're running Exchange 2010 in your environment, the EvoSTS authentication provider won't be created.

## Enable HMA

Run the following command in the Exchange Management Shell, on-premises, replacing \<GUID\> in the command line with the string in your environment:

```powershell
Set-AuthServer -Identity "EvoSTS - <GUID>" -IsDefaultAuthorizationEndpoint $true
Set-OrganizationConfig -OAuth2ClientProfileEnabled $true
```

> [!NOTE]
> In older versions of the Hybrid Configuration Wizard the EvoSts AuthServer was simply named EvoSTS without a GUID attached. There is no action you need to take, just modify the command line above to reflect this by removing the GUID portion of the command:
>
> ```powershell
> Set-AuthServer -Identity EvoSTS -IsDefaultAuthorizationEndpoint $true
> ```

If the EXCH version is Exchange 2016 (CU18 or higher) or Exchange 2019 (CU7 or higher) and hybrid was configured with HCW downloaded after September 2020, run the following command in the Exchange Management Shell, on-premises:

```powershell
Set-AuthServer -Identity "EvoSTS - {GUID}" -DomainName "Tenant Domain" -IsDefaultAuthorizationEndpoint $true
Set-OrganizationConfig -OAuth2ClientProfileEnabled $true
```

> [!NOTE]
> In case EXCH is in hybrid with **multiple tenants**, there are multiple AuthServer objects present in EXCH with domains corresponding to each tenant.  The **IsDefaultAuthorizationEndpoint** flag should be set to true (using the **IsDefaultAuthorizationEndpoint** cmdlet) for any one of these AuthServer objects. This flag can't be set to true for all the Authserver objects and HMA would be enabled even if one of these AuthServer object's **IsDefaultAuthorizationEndpoint** flag is set to true.
> 
> For the **DomainName** parameter, use the tenant domain value, which is usually in the form `contoso.onmicrosoft.com`.

## Verify

Once you enable HMA, a client's next login will use the new auth flow. Note that just turning on HMA won't trigger a reauthentication for any client, and it might take a while for Exchange to pick up the new settings.

You should also hold down the CTRL key at the same time you right-click the icon for the Outlook client (also in the Windows Notifications tray) and click 'Connection Status'. Look for the client's SMTP address against an **Authn** type of `Bearer\*`, which represents the bearer token used in OAuth.

> [!NOTE]
> Need to configure Skype for Business with HMA? You'll need two articles: One that lists [supported topologies](/skypeforbusiness/plan-your-deployment/modern-authentication/topologies-supported), and one that shows you [how to do the configuration](configure-skype-for-business-for-hybrid-modern-authentication.md).

## Using hybrid Modern Authentication with Outlook for iOS and Android

If you are an on-premises customer using Exchange server on TCP 443, allow network traffic from the following IP ranges:

```console
52.125.128.0/20
52.127.96.0/23
```

These IP address ranges are also documented in [Additional endpoints not included in the Office 365 IP Address and URL Web service](/microsoft-365/enterprise/additional-office365-ip-addresses-and-urls).

## Related topics

[Modern Authentication configuration requirements for transition from Office 365 dedicated/ITAR to vNext](/exchange/troubleshoot/modern-authentication/modern-authentication-configuration)
