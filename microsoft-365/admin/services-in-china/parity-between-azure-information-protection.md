---
title: "Parity between Azure Information Protection for Office 365 operated by 21Vianet and commercial offerings"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
audience: Admin
ms.topic: overview
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_NonTOC
ms.custom: AdminSurgePortfolio
search.appverid:
- MET150
- GEU150
- GEA150
description: "Learn more about Azure Information Protection for Office 365 operated by 21Vianet and how to configure it for customers in China."
monikerRange: 'o365-21vianet'
---

# Parity between Azure Information Protection for Office 365 operated by 21Vianet and commercial offerings

While our goal is to deliver all commercial features and functionality to customers in China with our Azure Information Protection for Office 365 operated by 21Vianet offer, there is some missing functionality that we'd like to highlight.

The following list includes the existing gaps between Azure Information Protection for Office 365 operated by 21Vianet and our commercial offerings as of July 2019:

- Information Rights Management (IRM) is supported only for Microsoft 365 Apps for enterprise (build 11731.10000 or higher). Office 2010, Office 2013, and other Office 2016 versions are not supported.

- Migration from Active Directory Rights Management Services (AD RMS) to Azure Information Protection is currently not available.
  
- Sharing of protected emails to users in the commercial cloud is supported.
  
- Sharing of documents and email attachments to users in the commercial cloud is currently not available. This includes Office 365 operated by 21Vianet users in the commercial cloud, non-Office 365 operated by 21Vianet users in the commercial cloud, and users with an RMS for Individuals license.
  
- IRM with SharePoint (IRM-protected sites and libraries) is currently not available.
  
- The Rights Management Connector is currently not available.
  
- The Mobile Device Extension for AD RMS is currently not available.

## Configuring Azure Information Protection for customers in China

### Enable Rights Management for the tenant

For the encryption to work correctly, the RMS must be enabled for the tenant.

- Check if the RMS is enabled:
  1. Launch PowerShell as an administrator.
  2. If the AIPService module is not installed, run `Install-Module AipService`.
  3. Import the module using `Import-Module AipService`.
  4. Connect to the service using `Connect-AipService -environmentname azurechinacloud`.
  5. Run `(Get-AipServiceConfiguration).FunctionalState` and check if the state is `Enabled`.

- If the functional state is `Disabled`, run `Enable-AipService`.

### DNS configuration for encryption (Windows)

For encryption to work correctly, Office client applications must connect to the China instance of the service and bootstrap from there. To redirect client applications to the right service instance, the tenant admin must configure a DNS SRV record with information about the Azure RMS URL. Without the DNS SRV record, the client application will attempt to connect to the public cloud instance by default and will fail.

Also, the assumption is that users will log in with a username based off the tenant-owned domain (for example, `joe@contoso.cn`), and not the `onmschina` username (for example, `joe@contoso.onmschina.cn`). The domain name from the username is used for DNS redirection to the correct service instance.

- Get the RMS ID:
  1. Launch PowerShell as an administrator.
  2. If the AIPService module is not installed, run `Install-Module AipService`.
  3. Connect to the service using `Connect-AipService -environmentname azurechinacloud`.
  4. Run `(Get-AipServiceConfiguration).RightsManagementServiceId` to get the RMS ID.

- Log in to your DNS provider, navigate to the DNS settings for the domain, and then add a new SRV record.
  - Service = `_rmsredir`
  - Protocol = `_http`
  - Name = `_tcp`
  - Target = `[GUID].rms.aadrm.cn` (where GUID is the RMS ID)
  - Priority, Weight, Seconds, TTL = default values

- Associate the custom domain with the tenant in the [Azure portal](https://portal.azure.cn/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Domains). This will add an entry in DNS, which might take several minutes to get verified after you add the value to the DNS settings.

- Log in to the Microsoft 365 admin center with the corresponding global admin credentials and add the domain (for example, `contoso.cn`) for user creation. In the verification process, additional DNS changes might be required. Once verification is done, users can be created.

### DNS configuration for encryption (Mac, iOS, Android)

- Log in to your DNS provider, navigate to the DNS settings for the domain, and then add a new SRV record.
  - Service = `_rmsdisco`
  - Protocol = `_http`
  - Name = `_tcp`
  - Target = `api.aadrm.cn`
  - Port = `80`
  - Priority, Weight, Seconds, TTL = default values
