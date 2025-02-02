---
title: "Configure Exchange Server to use Hybrid Modern Auth"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.reviewer: ninob
ms.date: 12/05/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.assetid: cef3044d-d4cb-4586-8e82-ee97bd3b14ad
ms.collection:
- scotvorg
- M365-security-compliance
- must-keep
f1.keywords:
- NOCSH
description: Learn how to configure an Exchange Server on-premises to use Hybrid Modern Authentication (HMA), offering you more secure user authentication and authorization.
ms.custom:
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
---

# How to configure Exchange Server on-premises to use Hybrid Modern Authentication

## Overview

Hybrid Modern Authentication (HMA) in Microsoft Exchange Server is a feature that allows users to access mailboxes, which are hosted on-premises, by using authorization tokens obtained from the cloud.

HMA enables Outlook to obtain Access and Refresh OAuth tokens from Microsoft Entra ID, either directly for password hash sync or Pass-Through Auth identities, or from their own Secure Token Service (STS) for federated identities. Exchange on-premises accepts these tokens and provide mailbox access. The method of obtaining these tokens and the credentials required are determined by the capabilities of the identity provider (iDP), which could range from simple username and password to more complex methods such as certificates, phone auth, or biometric methods.

For HMA to work, the user's identity must be present in Microsoft Entra ID, and some configuration is required, which is handled by the Exchange Hybrid Configuration Wizard (HCW).

In comparison to legacy authentication methods such as NTLM, HMA offers several advantages. It provides a more secure and flexible authentication method, leveraging the power of cloud-based authentication. Unlike NTLM, which relies on a challenge-response mechanism and doesn't support modern authentication protocols, HMA uses OAuth tokens, which are more secure and offer better interoperability.

HMA is a powerful feature that enhances the flexibility and security of accessing on-premises applications, leveraging the power of cloud-based authentication. It represents a significant improvement over legacy authentication methods, offering enhanced security, flexibility, and user convenience.

## Steps to follow to configure and enable Hybrid Modern Auth

To enable Hybrid Modern Authentication (HMA), you must ensure that your organization meets all necessary prerequisites. Additionally, you should confirm that your Office client is compatible with Modern Authentication. For more details, refer to the documentation on [How modern authentication works for Office 2013 and Office 2016 client apps](modern-auth-for-office-2013-and-2016.md).

1. Make sure you [meet the prerequisites](#exchange-server-specific-prerequisites) before you begin.

2. [Add on-premises web service URLs to Microsoft Entra ID](#add-on-premises-web-service-urls-as-spns-in-microsoft-entra-id). The URLs must be added as `Service Principal Names (SPNs)`. In case that your Exchange Server setup is in hybrid with **multiple tenants**, these on-premises web service URLs must be added as SPNs in the Microsoft Entra ID of all the tenants, which are in hybrid with Exchange Server on-premises.

3. [Ensure that all virtual directories are enabled for HMA](#verify-virtual-directories-are-properly-configured). If you want to configure [Hybrid Modern Authentication for Outlook on the Web (OWA) and Exchange Control Panel (ECP)](#enable-hybrid-modern-authentication-for-owa-and-ecp), it's important to also verify the respective directories.

4. [Check for the EvoSTS Auth Server object](#confirm-the-evosts-auth-server-object-is-present).

5. Ensure that the [Exchange Server OAuth certificate](/exchange/plan-and-deploy/integration-with-sharepoint-and-skype/maintain-oauth-certificate) is valid. The [MonitorExchangeAuthCertificate script](https://aka.ms/MonitorExchangeAuthCertificate) script can be utilized to verify the validity of the OAuth certificate. In the event of its expiration, the script assists in the renewal process.

6. Ensure that all user identities are synchronized with Microsoft Entra ID, especially all accounts, which are used for administration. Otherwise, the login stops working until they're synchronized. Accounts, such as the built-in Administrator, will never be synchronized with Microsoft Entra ID and, therefore, can't be used on any OAuth login once HMA has been enabled. This behavior is due to the `isCriticalSystemObject` attribute, which is set to `True` for some accounts including the default administrator.

7. (Optional) If you want to use the Outlook for iOS and Android client, make sure to [allow the AutoDetect service to connect to your Exchange Server](#using-hybrid-modern-authentication-with-outlook-for-ios-and-android).

8. [Enable HMA in Exchange on-premises](#enable-hma).

<a name='add-on-premises-web-service-urls-as-spns-in-azure-ad'></a>

## Prerequisites to enable Hybrid Modern Auth

In this section, we provide information and steps that need to be done to successfully configure and enable Hybrid Modern Auth in Microsoft Exchange Server.

### Exchange Server specific prerequisites

Your Exchange servers must fulfill the following requirements before Hybrid Modern Authentication can be configured and enabled. In case you have a hybrid configuration, you must run the latest Cumulative Update (CU) to be in a supported state. You can find the supported Exchange Server versions and build in the [Exchange Server supportability matrix](/exchange/plan-and-deploy/supportability-matrix#supported-versions-and-builds). Hybrid Modern Authentication must be configured uniformly across all Exchange servers within your organization. Partial implementation, where HMA is enabled on only a subset of servers, is not supported.

- Make sure that there are no end-of-life Exchange servers in the organization.
- Exchange Server 2016 must be running CU8 or later.
- Exchange Server 2019 must be running CU1 or later.
- Make sure that all servers can connect to the internet. If a proxy is required, [configure Exchange Server to use it](/powershell/module/exchange/set-exchangeserver#-internetwebproxy).
- If you already have a hybrid configuration, make sure it's a classic hybrid deployment as modern hybrid doesn't support HMA.
- Make sure that SSL Offloading is not used (it's unsupported). SSL Bridging, however, can be used and is supported.

More information can also be found in the [Hybrid Modern Authentication overview and prerequisites for using it with on-premises Skype for Business and Exchange servers](hybrid-modern-auth-overview.md) documentation.

### Protocols that work with Hybrid Modern Auth

Hybrid Modern Authentication works for the following Exchange Server protocols:

|Protocol|Hybrid Modern Auth Supported|
|--------|---------|
|MAPI over HTTP (MAPI/HTTP)|Yes|
|Outlook Anywhere (RPC/HTTP)|No|
|Exchange Active Sync (EAS)|Yes|
|Exchange Web Services (EWS)|Yes|
|Outlook on the Web (OWA)|Yes|
|Exchange Admin Center (ECP)|Yes|
|Offline Address Book (OAB)|Yes|
|IMAP|No|
|POP|No|

## Add on-premises web service URLs as SPNs in Microsoft Entra ID

Run the commands that assign your on-premises web service URLs as Microsoft Entra SPNs. SPNs are used by client machines and devices during authentication and authorization. All the URLs that might be used to connect from on-premises to Microsoft Entra ID must be registered in Microsoft Entra ID (including both internal and external namespaces).

1. First, run the following commands on your Microsoft Exchange Server:

    ```powershell
    Get-MapiVirtualDirectory -ADPropertiesOnly | fl server,*url*
    Get-WebServicesVirtualDirectory -ADPropertiesOnly | fl server,*url*
    Get-ClientAccessService | fl Name, AutodiscoverServiceInternalUri
    Get-OABVirtualDirectory -ADPropertiesOnly | fl server,*url*
    Get-AutodiscoverVirtualDirectory -ADPropertiesOnly | fl server,*url*
    Get-ActiveSyncVirtualDirectory -ADPropertiesOnly | fl server,*url*
    ```

    Ensure the URLs clients might connect to are listed as HTTPS service principal names in Microsoft Entra ID. In case Exchange on-premises is in hybrid with **multiple tenants**, these HTTPS SPNs should be added in the Microsoft Entra ID of all the tenants in hybrid with Exchange on-premises.

2. Install the Microsoft Graph PowerShell module:

   ```powershell
   Install-Module Microsoft.Graph -Scope AllUsers
   ```

3. Next, connect to Microsoft Entra ID by following [these instructions](connect-to-microsoft-365-powershell.md). To consent to the required permissions, run the following command:

   ```powershell
   Connect-MgGraph -Scopes Application.Read.All, Application.ReadWrite.All
   ```

4. For your Exchange-related URLs, type the following command:

   ```powershell
   Get-MgServicePrincipal -Filter "AppId eq '00000002-0000-0ff1-ce00-000000000000'" | select -ExpandProperty ServicePrincipalNames
   ```

   Note down the output of this command, which should include an `https://*autodiscover.yourdomain.com*` and `https://*mail.yourdomain.com*` URL, but mostly consist of SPNs that begin with `00000002-0000-0ff1-ce00-000000000000/`. If there are `https://` URLs from your on-premises that are missing, those specific records should be added to this list.

5. If you don't see your internal and external `MAPI/HTTP`, `EWS`, `ActiveSync`, `OAB`, and `AutoDiscover` records in this list, you must add them. Use the following command to add all URLs that are missing. In our example, the URLs that are added are `mail.corp.contoso.com` and `owa.contoso.com`. Make sure that they're replaced by the URLs that are configured in your environment.

   ```powershell
   $x = Get-MgServicePrincipal -Filter "AppId eq '00000002-0000-0ff1-ce00-000000000000'"
   $x.ServicePrincipalNames += "https://mail.corp.contoso.com/"
   $x.ServicePrincipalNames += "https://owa.contoso.com/"
   Update-MgServicePrincipal -ServicePrincipalId $x.Id -ServicePrincipalNames $x.ServicePrincipalNames
   ```

6. Verify that your new records were added by running the `Get-MgServicePrincipal` command from step 4 again, and validate the output. Compare the list from before to the new list of SPNs. You might also note down the new list for your records. If you're successful, you should see the two new URLs in the list. Going by our example, the list of SPNs now includes the specific URLs `https://mail.corp.contoso.com` and `https://owa.contoso.com`.

## Verify virtual directories are properly configured

Now verify OAuth is properly enabled in Exchange on all of the virtual directories Outlook might use by running the following commands:

```powershell
Get-MapiVirtualDirectory | fl server,*url*,*auth*
Get-WebServicesVirtualDirectory | fl server,*url*,*oauth*
Get-OABVirtualDirectory | fl server,*url*,*oauth*
Get-AutoDiscoverVirtualDirectory | fl server,*oauth*
Get-ActiveSyncVirtualDirectory | fl server,*url*,*auth*
```

Check the output to make sure `OAuth` is enabled for each of these virtual directories, it looks something like this (and the key thing to look at is `OAuth` as mentioned before):

```powershell
Get-MapiVirtualDirectory | fl server,*url*,*auth*

Server                        : EX1
InternalUrl                   : https://mail.contoso.com/mapi
ExternalUrl                   : https://mail.contoso.com/mapi
IISAuthenticationMethods      : {Ntlm, OAuth, Negotiate}
InternalAuthenticationMethods : {Ntlm, OAuth, Negotiate}
ExternalAuthenticationMethods : {Ntlm, OAuth, Negotiate}
```

If OAuth is missing from any server and any of the five virtual directories, you need to add it by using the relevant commands before proceeding ([Set-MapiVirtualDirectory](/powershell/module/exchange/set-mapivirtualdirectory), [Set-WebServicesVirtualDirectory](/powershell/module/exchange/set-webservicesvirtualdirectory), [Set-OABVirtualDirectory](/powershell/module/exchange/set-oabvirtualdirectory), [Set-AutodiscoverVirtualDirectory](/powershell/module/exchange/set-autodiscovervirtualdirectory)), and [Set-ActiveSyncVirtualDirectory](/powershell/module/exchange/set-activesyncvirtualdirectory).

## Confirm the EvoSTS Auth Server Object is Present

Now on the Exchange Server on-premises Management Shell (EMS) run this last command. You can validate that your Exchange Server on-premises returns an entry for the evoSTS authentication provider:

```powershell
Get-AuthServer | where {$_.Name -like "EvoSts*"} | ft name,enabled
```

Your output should show an AuthServer of the Name `EvoSts - <GUID>` and the `Enabled` state should be `True`. If that's not the case, you should download and run the most recent version of the [Hybrid Configuration Wizard](https://aka.ms/HybridWizard).

In case that Exchange Server on-premises runs a hybrid configuration with **multiple tenants**, your output shows one AuthServer with the Name `EvoSts - <GUID>` for each tenant in hybrid with Exchange Server on-premises and the `Enabled` state should be `True` for all of these AuthServer objects. Please make a note of the identifier `EvoSts - <GUID>`, as it will be required in the subsequent step.

## Enable HMA

Run the following commands in the Exchange Server on-premises Management Shell (EMS) and replace the `<GUID>` in the command line with the GUID from the output of the last command you ran. In older versions of the Hybrid Configuration Wizard the EvoSts AuthServer was named `EvoSTS` without a GUID attached. There's no action you need to take, just modify the preceding command line by removing the GUID portion of the command.

```powershell
Set-AuthServer -Identity "EvoSTS - <GUID>" -IsDefaultAuthorizationEndpoint $true
Set-OrganizationConfig -OAuth2ClientProfileEnabled $true
```

If the Exchange Server on-premises version is Exchange Server 2016 (CU18 or higher) or Exchange Server 2019 (CU7 or higher) and hybrid was configured by the help of the HCW downloaded **after September 2020**, run the following command in the Exchange Server on-premises Management Shell (EMS). For the `DomainName` parameter, use the tenant domain value, which is usually in the form `contoso.onmicrosoft.com`:

```powershell
Set-AuthServer -Identity "EvoSTS - <GUID>" -DomainName "Tenant Domain" -IsDefaultAuthorizationEndpoint $true
Set-OrganizationConfig -OAuth2ClientProfileEnabled $true
```

In case Exchange Server on-premises is in hybrid with **multiple tenants**, there are multiple AuthServer objects present in the Exchange Server on-premises organizations with domains corresponding to each tenant. The `IsDefaultAuthorizationEndpoint` flag should be set to `True` for any one of these AuthServer objects. The flag can't be set to true for all the AuthServer objects and HMA would be enabled even if one of these AuthServer object `IsDefaultAuthorizationEndpoint` flag is set to true.

> [!IMPORTANT]
> When working with **multiple tenants** they must all be in the same cloud environment such as all in `Global` or all in `GCC`. They cannot exist in mix environments such as one tenant in `Global` and another one in `GCC`.

## Verify

Once you enable HMA, a client's next sign in will use the new auth flow. Just turning on HMA won't trigger a reauthentication for any client, and it might take a while for Exchange Server to pick up the new settings. This process does not necessitate the creation of a new profile.

You should also hold down the `CTRL` key at the same time you right-click the icon for the Outlook client (also in the Windows Notifications tray) and select `Connection Status`. Look for the client's SMTP address against an `AuthN` type of `Bearer\*`, which represents the bearer token used in OAuth.

## Enable Hybrid Modern Authentication for OWA and ECP

Hybrid Modern Authentication can now also be enabled for `OWA` and `ECP`. Make sure that the [Prerequisites](#prerequisites-to-enable-hybrid-modern-authentication-for-owa-and-ecp) are fulfilled before you continue.

After the Hybrid Modern Authentication was enabled for `OWA` and `ECP`, each end user and administrator who tries to log in into `OWA` or `ECP` will be redirected to the Microsoft Entra ID authentication page first. After the authentication was successful, the user will be redirected to `OWA` or `ECP`.

### Prerequisites to enable Hybrid Modern Authentication for OWA and ECP

> [!IMPORTANT]
> All servers must have at least the [Exchange Server 2019 CU14](https://techcommunity.microsoft.com/t5/exchange-team-blog/released-2024-h1-cumulative-update-for-exchange-server/ba-p/4047506) update installed. They must also run the [Exchange Server 2019 CU14 April 2024 HU](https://support.microsoft.com/help/5037224) or a later update.

To enable Hybrid Modern Authentication for `OWA` and `ECP`, all user identities must be synchronized with Microsoft Entra ID.
In addition to this it's important that OAuth setup between Exchange Server on-premises and Exchange Online has been established before further configuration steps can be done.

Customers who have already run the Hybrid Configuration Wizard (HCW) to configure hybrid, have an OAuth configuration in place. If OAuth wasn't configured before, it can be done by running the HCW or by following the steps as outlined in the [Configure OAuth authentication between Exchange and Exchange Online organizations](/exchange/configure-oauth-authentication-between-exchange-and-exchange-online-organizations-exchange-2013-help) documentation.

It's recommended to document the `OwaVirtualDirectory` and `EcpVirtualDirectory` settings before making any changes. This documentation will enable you to restore the original settings if any issues arise after configuring the feature.

### Steps to enable Hybrid Modern Authentication for OWA and ECP

> [!WARNING]
> Publishing Outlook Web App (OWA) and Exchange Control Panel (ECP) through Microsoft Entra application proxy is unsupported.

1. Query the `OWA` and `ECP` URLs that are configured on your Exchange Server on-premises. This is important because they must be added as reply url to Microsoft Entra ID:

   ```powershell
   Get-OwaVirtualDirectory -ADPropertiesOnly | fl name, *url*
   Get-EcpVirtualDirectory -ADPropertiesOnly | fl name, *url*
   ```

2. Install the Microsoft Graph PowerShell module if it hasn't yet been installed:

   ```powershell
   Install-Module Microsoft.Graph -Scope AllUsers
   ```

3. Connect to Microsoft Entra ID with [these instructions](connect-to-microsoft-365-powershell.md). To consent to the required permissions, run the following command:

   ```powershell
   Connect-Graph -Scopes User.Read, Application.ReadWrite.All
   ```

4. Specify your `OWA` and `ECP` URLs and update your application with the reply URLs:

   ```powershell
   $servicePrincipal = Get-MgServicePrincipal -Filter "AppId eq '00000002-0000-0ff1-ce00-000000000000'"
   $servicePrincipal.ReplyUrls += "https://YourDomain.contoso.com/owa"
   $servicePrincipal.ReplyUrls += "https://YourDomain.contoso.com/ecp"
   Update-MgServicePrincipal -ServicePrincipalId $servicePrincipal.Id -AppId "00000002-0000-0ff1-ce00-000000000000" -ReplyUrls $servicePrincipal.ReplyUrls
   ```

5. Verify that the reply URLs have been added successfully:

   ```powershell
   (Get-MgServicePrincipal -Filter "AppId eq '00000002-0000-0ff1-ce00-000000000000'").ReplyUrls
   ```

6. To enable Exchange Server on-premises ability to perform Hybrid Modern Authentication, follow the steps outlined in the [Enable HMA](#enable-hma) section.

7. (Optional) Only required if [Download Domains](/exchange/plan-and-deploy/post-installation-tasks/security-best-practices/exchange-download-domains) are used:

   Create a new global setting override by running the following commands from an elevated Exchange Management Shell (EMS). Run these commands on one Exchange Server:

   ```powershell
   New-SettingOverride -Name "OWA HMA Download Domain Support" -Component "OAuth" -Section "OAuthIdentityCacheFixForDownloadDomains" -Parameters ("Enabled=true") -Reason "Enable support for OWA HMA when Download Domains are in use"
   Get-ExchangeDiagnosticInfo -Process Microsoft.Exchange.Directory.TopologyService -Component VariantConfiguration -Argument Refresh
   Restart-Service -Name W3SVC, WAS -Force
   ```

9. (Optional) Only required in [Exchange resource forest topology](/exchange/deploy-exchange-2013-in-an-exchange-resource-forest-topology-exchange-2013-help) scenarios:

   Add the following keys to the `<appSettings>` node of the `<ExchangeInstallPath>\ClientAccess\Owa\web.config` file. Do this on each Exchange Server:

   ```notepad
   <add key="OAuthHttpModule.ConvertToSidBasedIdentity" value="true"/>
   <add key="OAuthHttpModule.UseMasterAccountSid" value="true"/>
   ```

   Create a new global setting override by running the following commands from an elevated Exchange Management Shell (EMS). Run these commands on one Exchange Server:

   ```powershell
   New-SettingOverride -Name "OWA HMA AFRF Support" -Component "OAuth" -Section "OwaHMAFixForAfRfScenarios" -Parameters ("Enabled=true") -Reason "Enable support for OWA HMA in AFRF scenarios"
   Get-ExchangeDiagnosticInfo -Process Microsoft.Exchange.Directory.TopologyService -Component VariantConfiguration -Argument Refresh
   Restart-Service -Name W3SVC, WAS -Force
   ```

10. To enable Hybrid Modern Authentication for `OWA` and `ECP`, you must first disable any other authentication method on these virtual directories. It's important to perform the configuration in the given order. Failing to do so may result in an error message during the command execution.<br><br>Run these commands for each `OWA` and `ECP` virtual directory on each Exchange Server to disable all other authentication methods:

      ```powershell
      Get-OwaVirtualDirectory -Server <computername> | Set-OwaVirtualDirectory -AdfsAuthentication $false –BasicAuthentication $false –FormsAuthentication $false –DigestAuthentication $false
      Get-EcpVirtualDirectory -Server <computername> | Set-EcpVirtualDirectory -AdfsAuthentication $false –BasicAuthentication $false –FormsAuthentication $false –DigestAuthentication $false
      ```

      > [!IMPORTANT]
      > Ensure that all accounts are synchronized to Microsoft Entra ID, especially all accounts, which are used for administration. Otherwise, the login stops working until they're synchronized.
      > Accounts, such as the built-in Administrator, won't be synchronized with Microsoft Entra ID and, therefore, can't be used for administration once HMA for OWA and ECP has been enabled. This behavior is due to the `isCriticalSystemObject` attribute, which is set to `True` for some accounts.

11. Enable OAuth for the `OWA` and `ECP` virtual directory. It's important to perform the configuration in the given order. Failing to do so may result in an error message during the command execution. For each `OWA` and `ECP` virtual directory on every Exchange Server, these commands must be run:

      ```powershell
      Get-EcpVirtualDirectory -Server <computername> | Set-EcpVirtualDirectory -OAuthAuthentication $true
      Get-OwaVirtualDirectory -Server <computername> | Set-OwaVirtualDirectory -OAuthAuthentication $true
      ```

## Using Hybrid Modern Authentication with Outlook for iOS and Android

If you want to use the Outlook for iOS and Android client together with Hybrid Modern Authentication, make sure to allow the AutoDetect service to connect to your Exchange Server on `TCP 443` (HTTPS):

```console
<email_domain>.outlookmobile.com
<email_domain>.outlookmobile.us
52.125.128.0/20
52.127.96.0/23
```

The IP address ranges can also be found in the [Additional endpoints not included in the Office 365 IP Address and URL Web service](/microsoft-365/enterprise/additional-office365-ip-addresses-and-urls) documentation.

## Related articles

[Modern Authentication configuration requirements for transition from Office 365 dedicated/ITAR to vNext](/exchange/troubleshoot/modern-authentication/modern-authentication-configuration)
