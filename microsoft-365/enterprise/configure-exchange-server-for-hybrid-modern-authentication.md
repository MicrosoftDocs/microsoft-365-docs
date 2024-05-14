---
title: "How to configure Exchange Server on-premises to use Hybrid Modern Authentication"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 02/01/2024
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

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Hybrid Modern Authentication (HMA) is a method of identity management that offers more secure user authentication and authorization, and is available for Exchange server on-premises hybrid deployments.

## Enabling Hybrid Modern Authentication

Turning on HMA requires that your environment meets the following:

1. Make sure you meet the prerequisites before you begin.

2. Since many prerequisites are common for both Skype for Business and Exchange, review them in [Hybrid Modern Authentication overview and prerequisites for using it with on-premises Skype for Business and Exchange servers](hybrid-modern-auth-overview.md). Do this before you begin any of the steps in this article.
Requirements about linked mailboxes to be inserted.

3. Add on-premises web service URLs as **Service Principal Names (SPNs)** in Microsoft Entra ID. In case Exchange on-premises is in hybrid with **multiple tenants**, these on-premises web service URLs must be added as SPNs in the Microsoft Entra ID of all the tenants, which are in hybrid with Exchange on-premises.

4. Ensure all Virtual Directories are enabled for HMA

5. Check for the EvoSTS Auth Server object

6. Ensure that the [Exchange Server OAuth certificate](/exchange/plan-and-deploy/integration-with-sharepoint-and-skype/maintain-oauth-certificate) is valid

7. Ensure that all user identities are synchronized with Microsoft Entra ID

8. Enable HMA in Exchange on-premises.

> [!NOTE]
> Does your version of Office support MA? See [How modern authentication works for Office 2013 and Office 2016 client apps](modern-auth-for-office-2013-and-2016.md).

> [!WARNING]
> Publishing Outlook Web App and Exchange Control Panel through Microsoft Entra application proxy is unsupported.

<a name='add-on-premises-web-service-urls-as-spns-in-azure-ad'></a>

## Add on-premises web service URLs as SPNs in Microsoft Entra ID

Run the commands that assign your on-premises web service URLs as Microsoft Entra SPNs. SPNs are used by client machines and devices during authentication and authorization. All the URLs that might be used to connect from on-premises to Microsoft Entra ID must be registered in Microsoft Entra ID (including both internal and external namespaces).

1. First, run the following commands on your Microsoft Exchange Server:

    ```powershell
    Get-MapiVirtualDirectory -ADPropertiesOnly | fl server,*url*
    Get-WebServicesVirtualDirectory -ADPropertiesOnly | fl server,*url*
    Get-ClientAccessService | fl Name, AutodiscoverServiceInternalUri
    Get-OABVirtualDirectory -ADPropertiesOnly | fl server,*url*
    Get-AutodiscoverVirtualDirectory -ADPropertiesOnly | fl server,*url*
    Get-OutlookAnywhere -ADPropertiesOnly | fl server,*hostname*
    ```

    Ensure the URLs clients might connect to are listed as HTTPS service principal names in Microsoft Entra ID. In case Exchange on-premises is in hybrid with **multiple tenants**, these HTTPS SPNs should be added in the Microsoft Entra ID of all the tenants in hybrid with Exchange on-premises.

2. Install the Microsoft Graph PowerShell module:

   ```powershell
   Install-Module Microsoft.Graph -Scope AllUsers
   ```

3. Next, connect to Microsoft Entra ID with [these instructions](connect-to-microsoft-365-powershell.md). To consent to the required permissions, run the following command:

   ```powershell
   Connect-MgGraph -Scopes Application.Read.All, Application.ReadWrite.All
   ```

4. For your Exchange-related URLs, type the following command:

   ```powershell
   Get-MgServicePrincipal -Filter "AppId eq '00000002-0000-0ff1-ce00-000000000000'" | select -ExpandProperty ServicePrincipalNames
   ```

   Take a note of (and screenshot for later comparison) the output of this command, which should include an `https://*autodiscover.yourdomain.com*` and `https://*mail.yourdomain.com*` URL, but mostly consist of SPNs that begin with `00000002-0000-0ff1-ce00-000000000000/`. If there are `https://` URLs from your on-premises that are missing, those specific records should be added to this list.

5. If you don't see your internal and external `MAPI/HTTP`, `EWS`, `ActiveSync`, `OAB`, and `Autodiscover` records in this list, you must add them. Use the following command to add all URLs that are missing:

   > [!IMPORTANT]
   >  In our example, the URLs that will be added are `mail.corp.contoso.com` and `owa.contoso.com`. Make sure that they are replaced by the URLs that are configured in your environment.

   ```powershell
   $x = Get-MgServicePrincipal -Filter "AppId eq '00000002-0000-0ff1-ce00-000000000000'"
   $ServicePrincipalUpdate = @(
   "https://mail.corp.contoso.com/","https://owa.contoso.com/"
   )
   Update-MgServicePrincipal -ServicePrincipalId $x.Id -ServicePrincipalNames $ServicePrincipalUpdate
   ```

5. Verify your new records were added by running the `Get-MsolServicePrincipal` command from step 2 again, and looking through the output. Compare the list / screenshot from before to the new list of SPNs. You might also take a screenshot of the new list for your records. If you are successful, you'll see the two new URLs in the list. Going by our example, the list of SPNs now includes the specific URLs `https://mail.corp.contoso.com` and `https://owa.contoso.com`.

## Verify Virtual Directories are Properly Configured

Now verify OAuth is properly enabled in Exchange on all of the Virtual Directories Outlook might use by running the following commands:

```powershell
Get-MapiVirtualDirectory | FL server,*url*,*auth*
Get-WebServicesVirtualDirectory | FL server,*url*,*oauth*
Get-OABVirtualDirectory | FL server,*url*,*oauth*
Get-AutoDiscoverVirtualDirectory | FL server,*oauth*
```

Check the output to make sure **OAuth** is enabled on each of these VDirs, it looks something like this (and the key thing to look at is 'OAuth'):

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

Your output should show an AuthServer of the Name EvoSts with a GUID and the 'Enabled' state should be **True**. If not, you should download and run the most recent version of the Hybrid Configuration Wizard.

> [!NOTE]
> In case Exchange on-premises is in hybrid with **multiple tenants**, your output should show one AuthServer of the Name `EvoSts - {GUID}` for each tenant in hybrid with Exchange on-premises and the *Enabled* state should be **True** for all of these AuthServer objects.

> [!IMPORTANT]
> If you're running Exchange 2010 in your environment, the EvoSTS authentication provider won't be created.

## Enable HMA

Run the following command in the Exchange Management Shell, on-premises, replacing \<GUID\> in the command line with the GUID from the output of the last command you ran:

```powershell
Set-AuthServer -Identity "EvoSTS - <GUID>" -IsDefaultAuthorizationEndpoint $true
Set-OrganizationConfig -OAuth2ClientProfileEnabled $true
```

> [!NOTE]
> In older versions of the Hybrid Configuration Wizard the EvoSts AuthServer was simply named EvoSTS without a GUID attached. There is no action you need to take, just modify the preceding command line to reflect this by removing the GUID portion of the command:
>
> ```powershell
> Set-AuthServer -Identity EvoSTS -IsDefaultAuthorizationEndpoint $true
> ```

If the Exchange on-premises version is Exchange 2016 (CU18 or higher) or Exchange 2019 (CU7 or higher) and hybrid was configured with HCW downloaded after September 2020, run the following command in the Exchange Management Shell, on-premises:

```powershell
Set-AuthServer -Identity "EvoSTS - {GUID}" -DomainName "Tenant Domain" -IsDefaultAuthorizationEndpoint $true
Set-OrganizationConfig -OAuth2ClientProfileEnabled $true
```

> [!NOTE]
> In case Exchange on-premises is in hybrid with **multiple tenants**, there are multiple AuthServer objects present in Exchange on-premises with domains corresponding to each tenant.  The **IsDefaultAuthorizationEndpoint** flag should be set to true (using the **IsDefaultAuthorizationEndpoint** cmdlet) for any one of these AuthServer objects. This flag can't be set to true for all the Authserver objects and HMA would be enabled even if one of these AuthServer object's **IsDefaultAuthorizationEndpoint** flag is set to true.

> [!NOTE]
> For the **DomainName** parameter, use the tenant domain value, which is usually in the form `contoso.onmicrosoft.com`.

## Verify

Once you enable HMA, a client's next sign in will use the new auth flow. Just turning on HMA won't trigger a reauthentication for any client, and it might take a while for Exchange to pick up the new settings.

You should also hold down the CTRL key at the same time you right-click the icon for the Outlook client (also in the Windows Notifications tray) and select **Connection Status**. Look for the client's SMTP address against an **AuthN** type of `Bearer\*`, which represents the bearer token used in OAuth.

> [!NOTE]
> Need to configure Skype for Business with HMA? You'll need two articles: One that lists [supported topologies](/skypeforbusiness/plan-your-deployment/modern-authentication/topologies-supported), and one that shows you [how to do the configuration](configure-skype-for-business-for-hybrid-modern-authentication.md).

## Enable Hybrid Modern Authentication for OWA and ECP

Hybrid Modern Authentication can now also be enabled for `OWA` and `ECP`. Make sure that the [Prerequisites](#prerequisites-to-enable-hybrid-modern-authentication-for-owa-and-ecp) are fulfilled before you continue.

After the Hybrid Modern Authentication was enabled for `OWA` and `ECP`, each end user and administrator who tries to login into `OWA` or `ECP` will be redirected to the Microsoft Entra ID authentication page first. After the authentication was successful, the user will be redirected to `OWA` or `ECP`.

### Prerequisites to enable Hybrid Modern Authentication for OWA and ECP

To enable Hybrid Modern Authentication for `OWA` and `ECP`, all user identities must be synchronized with Microsoft Entra ID.
In addition to this it's important that OAuth setup between Exchange Server on-premises and Exchange Online has been established before further configuration steps can be done.

Customers who have already run the Hybrid Configuration Wizard (HCW) to configure hybrid, will have an OAuth configuration in place. If OAuth was not configured before, it can be done by running the HCW or by following the steps as outlined in the [Configure OAuth authentication between Exchange and Exchange Online organizations](/exchange/configure-oauth-authentication-between-exchange-and-exchange-online-organizations-exchange-2013-help) documentation.

It is recommended to document the `OwaVirtualDirectory` and `EcpVirtualDirectory` settings before making any changes. This documentation will enable you to restore the original settings if any issues arise after configuring the feature.

> [!IMPORTANT]
> All servers must have at least the [Exchange Server 2019 CU14](https://techcommunity.microsoft.com/t5/exchange-team-blog/released-2024-h1-cumulative-update-for-exchange-server/ba-p/4047506) update installed. They must also run the [Exchange Server 2019 CU14 April 2024 HU](https://support.microsoft.com/help/5037224) or a later update.

### Steps to enable Hybrid Modern Authentication for OWA and ECP

1. Query the `OWA` and `ECP` URLs that are configured on your Exchange Server on-premises . This is important because they must be added as reply url to Microsoft Entra ID:

   ```powershell
   Get-OwaVirtualDirectory -ADPropertiesOnly | fl name, *url*
   Get-EcpVirtualDirectory -ADPropertiesOnly | fl name, *url*
   ```

2. Install the Microsoft Graph PowerShell module if it has not yet been installed:

   ```powershell
   Install-Module Microsoft.Graph -Scope AllUsers
   ```

3. Connect to Microsoft Entra ID with [these instructions](connect-to-microsoft-365-powershell.md). To consent to the required permissions, run the following command:

   ```powershell
   Connect-Graph -Scopes User.Read, Application.ReadWrite.All
   ```

4. Specify your `OWA` and `ECP` URLs:

   ```powershell
   $replyUrlsToBeAdded = @(
   "https://YourDomain.contoso.com/owa","https://YourDomain.contoso.com/ecp"
   )
   ```

5. Update your application with the reply URLs:

   ```powershell
   $servicePrincipal = Get-MgServicePrincipal -Filter "AppId eq '00000002-0000-0ff1-ce00-000000000000'"
   $servicePrincipal.ReplyUrls += $replyUrlsToBeAdded
   Update-MgServicePrincipal -ServicePrincipalId $servicePrincipal.Id -AppId "00000002-0000-0ff1-ce00-000000000000" -ReplyUrls $servicePrincipal.ReplyUrls
   ```

6. Verify that the reply URLs have been added successfully:

   ```powershell
   (Get-MgServicePrincipal -Filter "AppId eq '00000002-0000-0ff1-ce00-000000000000'").ReplyUrls
   ```

7. To enable Exchange Server on-premises ability to perform Hybrid Modern Authentication, follow the steps outlined in the [Enable HMA](#enable-hma) section.

8. **(Optional)** Only required if [Download Domains](/exchange/plan-and-deploy/post-installation-tasks/security-best-practices/exchange-download-domains) are used:


   Create a new global setting override by running the following commands from an elevated Exchange Management Shell (EMS). Run these commands on one Exchange Server:

   ```powershell
   New-SettingOverride -Name "OWA HMA Download Domain Support" -Component "OAuth" -Section "OAuthIdentityCacheFixForDownloadDomains" -Parameters ("Enabled=true") -Reason "Enable support for OWA HMA when Download Domains are in use"
   Get-ExchangeDiagnosticInfo -Process Microsoft.Exchange.Directory.TopologyService -Component VariantConfiguration -Argument Refresh
   Restart-Service -Name W3SVC, WAS -Force
   ```

9. **(Optional)** Only required in [Exchange resource forest topology](/exchange/deploy-exchange-2013-in-an-exchange-resource-forest-topology-exchange-2013-help) scenarios:

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

10. To enable Hybrid Modern Authentication for `OWA` and `ECP`, you must first disable any other authentication method on these virtual directories. Run these commands for each `OWA` and `ECP` virtual directory on each Exchange Server:

      > [!IMPORTANT]
      > It's important to execute these commands in the given order. Otherwise, you'll see an error message when running the commands. After running these commands, login to `OWA` and `ECP` will stop work until the OAuth authentication for those virtual directories has been activated.
      >
      > Also, make sure that all accounts are synchronized, especially the accounts used for administration to Microsoft Entra ID. Otherwise, the login will stop working until they are synchronized. Note that accounts, such as the built-in Administrator, won’t be synchronized with Microsoft Entra ID and, therefore, can’t be used for administration once HMA for OWA and ECP has been enabled. This is due to the `isCriticalSystemObject` attribute, which is set to `TRUE` for some accounts.

      ```powershell
      Get-OwaVirtualDirectory -Server <computername> | Set-OwaVirtualDirectory -AdfsAuthentication $false –BasicAuthentication $false –FormsAuthentication $false –DigestAuthentication $false
      Get-EcpVirtualDirectory -Server <computername> | Set-EcpVirtualDirectory -AdfsAuthentication $false –BasicAuthentication $false –FormsAuthentication $false –DigestAuthentication $false
      ```

11. Enable OAuth for the `OWA` and `ECP` virtual directory. Run these commands for each `OWA` and `ECP` virtual directory on each Exchange Server:

      > [!IMPORTANT]
      > It's important to execute these commands in the given order. Otherwise, you'll see an error message when running the commands.

      ```powershell
      Get-EcpVirtualDirectory -Server <computername> | Set-EcpVirtualDirectory -OAuthAuthentication $true
      Get-OwaVirtualDirectory -Server <computername> | Set-OwaVirtualDirectory -OAuthAuthentication $true
      ```

## Using Hybrid Modern Authentication with Outlook for iOS and Android

If you're an on-premises customer using Exchange Server on TCP 443, allow network traffic from the following IP ranges:

```console
52.125.128.0/20
52.127.96.0/23
```

These IP address ranges are also documented in [Additional endpoints not included in the Office 365 IP Address and URL Web service](/microsoft-365/enterprise/additional-office365-ip-addresses-and-urls).

## Related articles

[Modern Authentication configuration requirements for transition from Office 365 dedicated/ITAR to vNext](/exchange/troubleshoot/modern-authentication/modern-authentication-configuration)
