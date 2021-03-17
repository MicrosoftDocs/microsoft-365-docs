---
title: "How to configure Skype for Business on-premises to use Hybrid Modern Authentication"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 12/3/2019
audience: ITPro
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 522d5cec-4e1b-4cc3-937f-293570717bc6
ms.collection:
- M365-security-compliance
f1.keywords:
- NOCSH
description: Learn how to configure Skype for Business on-premises to use Hybrid Modern Authentication (HMA), offering you more secure user authentication and authorization.
ms.custom: seo-marvel-apr2020
---

# How to configure Skype for Business on-premises to use Hybrid Modern Authentication

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Modern Authentication, is a method of identity management that offers more secure user authentication and authorization, is available for Skype for Business server on-premises and Exchange server on-premises, and split-domain Skype for Business hybrids.
  
 **Important** Would you like to know more about Modern Authentication (MA) and why you might prefer to use it in your company or organization? Check [this document](hybrid-modern-auth-overview.md) for an overview. If you need to know what Skype for Business topologies are supported with MA, that's documented here!
  
 **Before we begin**, I use these terms:
  
- Modern Authentication (MA)

- Hybrid Modern Authentication (HMA)

- Exchange on-premises (EXCH)

- Exchange Online (EXO)

- Skype for Business on-premises (SFB)

- Skype for Business Online (SFBO)

Also, if a graphic in this article has an object that's grayed-out or dimmed that means the element shown in gray **isn't** included in MA-specific configuration.
  
## Read the summary

This summary breaks down the process into steps that might otherwise get lost during the execution, and is good for an overall checklist to keep track of where you are in the process.
  
1. First, make sure you meet all the prerequisites.

1. Since many **prerequisites** are common for both Skype for Business and Exchange, [see the overview article for your pre-req checklist](hybrid-modern-auth-overview.md). Do this  *before*  you begin any of the steps in this article.

1. Collect the HMA-specific info you'll need in a file, or OneNote.

1. Turn ON Modern Authentication for EXO (if it isn't already turned on).

1. Turn ON Modern Authentication for SFBO (if it isn't already turned on).

1. Turn ON Hybrid Modern Authentication for Exchange on-premises.

1. Turn ON Hybrid Modern Authentication for Skype for Business on-premises.

These steps turn on MA for SFB, SFBO, EXCH, and EXO - that is, all the products that can participate in an HMA configuration of SFB and SFBO (including dependencies on EXCH/EXO). In other words, if your users are homed in/have mailboxes created in any part of the Hybrid (EXO + SFBO, EXO + SFB, EXCH + SFBO, or EXCH + SFB), your finished product will look like this:
  
![A Mixed 6 Skype for business HMA topology has MA on in all four possible locations.](../media/ab89cdf2-160b-49ac-9b71-0160800acfc8.png)
  
As you can see there are four different places to turn on MA! For the best user experience, we recommend you turn on MA in all four of these locations. If you can't turn MA on in all these locations, adjust the steps so that you turn on MA only in the locations that are necessary for your environment.
  
See the [Supportability topic for Skype for Business with MA](/skypeforbusiness/plan-your-deployment/modern-authentication/topologies-supported) for supported topologies.
  
 **Important** Double-check that you've met all the prerequisites before you begin. You'll find that information in [Hybrid modern authentication overview and prerequisites](hybrid-modern-auth-overview.md).
  
## Collect all HMA-specific info you'll need

After you've double-checked that you meet the [prerequisites](hybrid-modern-auth-overview.md) to use Modern Authentication (see the note above), you should create a file to hold the info you'll need for configuring HMA in the steps ahead. Examples used in this article:
  
- **SIP/SMTP domain**

  - Ex. contoso.com (is federated with Office 365)

- **Tenant ID**

  - The GUID that represents your Office 365 tenant (at the login of contoso.onmicrosoft.com).

- **SFB 2015 CU5 Web Service URLs**

you'll need internal and external web service URLs for all SfB 2015 pools deployed. To obtain these, run the following from Skype for Business Management Shell:
  
```powershell
Get-CsService -WebServer | Select-Object PoolFqdn, InternalFqdn, ExternalFqdn | FL
```

- Ex. Internal: https://lyncwebint01.contoso.com

- Ex. External: https://lyncwebext01.contoso.com

If you're using a Standard Edition server, the internal URL will be blank. In this case, use the pool fqdn for the internal URL.
  
## Turn on Modern Authentication for EXO

Follow the instructions here: [Exchange Online: How to enable your tenant for modern authentication.](https://social.technet.microsoft.com/wiki/contents/articles/32711.exchange-online-how-to-enable-your-tenant-for-modern-authentication.aspx)﻿
  
## Turn on Modern Authentication for SFBO

Follow the instructions here: [﻿Skype for Business Online: Enable your tenant for modern authentication](https://social.technet.microsoft.com/wiki/contents/articles/34339.skype-for-business-online-enable-your-tenant-for-modern-authentication.aspx).﻿
  
## Turn on Hybrid Modern Authentication for Exchange on-premises

Follow the instructions here: [How to configure Exchange Server on-premises to use Hybrid Modern Authentication](configure-exchange-server-for-hybrid-modern-authentication.md).
  
## Turn on Hybrid Modern Authentication for Skype for Business on-premises

### Add on-premises web service URLs as SPNs in Azure Active Directory

Now you'll need to run commands to add the URLs (collected earlier) as Service Principals in SFBO.
  
 **Note** Service principal names (SPNs) identify web services and associate them with a security principal (such as an account name or group) so that the service can act on the behalf of an authorized user. Clients authenticating to a server make use of information that's contained in SPNs.
  
1. First, connect to Azure Active Directory (Azure AD) with [these instructions](/powershell/azure/active-directory/overview?view=azureadps-1.0).

2. Run this command, on-premises, to get a list of SFB web service URLs.

   Note that the AppPrincipalId begins with `00000004`. This corresponds to Skype for Business Online.

   Take note of (and screenshot for later comparison) the output of this command, which will include an SE and WS URL, but mostly consist of SPNs that begin with `00000004-0000-0ff1-ce00-000000000000/`.

```powershell
Get-MsolServicePrincipal -AppPrincipalId 00000004-0000-0ff1-ce00-000000000000 | Select -ExpandProperty ServicePrincipalNames
```

3. If the internal **or** external SFB URLs from on-premises are missing (for example, https://lyncwebint01.contoso.com and https://lyncwebext01.contoso.com) we will need to add those specific records to this list.

    Be sure to replace  *the example URLs* below with your actual URLs in the Add commands!
  
```powershell
$x= Get-MsolServicePrincipal -AppPrincipalId 00000004-0000-0ff1-ce00-000000000000
$x.ServicePrincipalnames.Add("https://lyncwebint01.contoso.com/")
$x.ServicePrincipalnames.Add("https://lyncwebext01.contoso.com/")
Set-MSOLServicePrincipal -AppPrincipalId 00000004-0000-0ff1-ce00-000000000000 -ServicePrincipalNames $x.ServicePrincipalNames
```
  
4. Verify your new records were added by running the **Get-MsolServicePrincipal** command from step 2 again, and looking through the output. Compare the list or screenshot from before to the new list of SPNs. You might also screenshot the new list for your records. If you were successful, you'll see the two new URLs in the list. Going by our example, the list of SPNs will now include the specific URLs https://lyncwebint01.contoso.com and https://lyncwebext01.contoso.com/.

### Create the EvoSTS Auth Server Object

Run the following command in the Skype for Business Management Shell.
  
```powershell
New-CsOAuthServer -Identity evoSTS -MetadataURL https://login.windows.net/common/FederationMetadata/2007-06/FederationMetadata.xml -AcceptSecurityIdentifierInformation $true -Type AzureAD
```

### Enable Hybrid Modern Authentication

This is the step that actually turns on MA. All the previous steps can be run ahead of time without changing the client authentication flow. When you're ready to change the authentication flow, run this command in the Skype for Business Management Shell.

```powershell
Set-CsOAuthConfiguration -ClientAuthorizationOAuthServerIdentity evoSTS
```

## Verify

Once you enable HMA, a client's next login will use the new auth flow. Note that just turning on HMA won't trigger a reauthentication for any client. The clients reauthenticate based on the lifetime of the auth tokens and/or certs they have.
  
To test that HMA is working after you've enabled it, sign out of a test SFB Windows client and be sure to click 'delete my credentials'. Sign in again. The client should now use the Modern Auth flow and your login will now include an **Office 365** prompt for a 'Work or school' account, seen right before the client contacts the server and logs you in.
  
You should also check the 'Configuration Information' for Skype for Business Clients for an 'OAuth Authority'. To do this on your client computer, hold down the CTRL key at the same time you right-click the Skype for Business Icon in the Windows Notification tray. Click **Configuration Information** in the menu that appears. In the 'Skype for Business Configuration Information' window that will appear on the desktop, look for the following:
  
![The Configuration information of a Skype for Business Client using Modern Authentication shows a Lync and EWS OAUTH Authority URL of https://login.windows.net/common/oauth2/authorize.](../media/4e54edf5-c8f8-4e7f-b032-5d413b0232de.png)
  
You should also hold down the CTRL key at the same time you right-click the icon for the Outlook client (also in the Windows Notifications tray) and click 'Connection Status'. Look for the client's SMTP address against an AuthN type of 'Bearer\*', which represents the bearer token used in OAuth.
  
## Related articles

[Link back to the Modern Authentication overview](hybrid-modern-auth-overview.md).
  
Do you need to know how to use Modern Authentication (ADAL) for your Skype for Business clients? We've got steps [here](./hybrid-modern-auth-overview.md).