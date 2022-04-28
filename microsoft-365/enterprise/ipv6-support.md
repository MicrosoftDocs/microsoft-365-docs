---
title: "IPv6 support in Microsoft 365 services"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/03/2021
audience: ITPro
ms.topic: conceptual
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: Ent_O365
f1.keywords:
- CSH
ms.custom: Adm_O365
search.appverid:
- MET150
- MOE150
- BCS160
ms.assetid: c08786fb-298e-437c-8222-dab7625fc815
description: "Summary: Describes IPv6 support in Microsoft 365 components and in Microsoft 365 government offerings."
---

# IPv6 support in Microsoft 365 services

Microsoft 365 supports both IPv6 and IPv4; however, not all Microsoft 365 features are fully enabled with IPv6. This means that you must use both IPv4 and IPv6 to connect to Microsoft 365. If you are filtering your outbound traffic to Microsoft 365, the full list of IPv6 addresses that are supported by Microsoft 365 can be found in the article [Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md). After your network is configured and the appropriate IPv6 addresses are allowed, you can download the [Microsoft 365 IPv6 test plan](https://go.microsoft.com/fwlink/?LinkId=293447) from the Microsoft Download Center.

> [!NOTE]
> Enabling customers to experience Microsoft 365 SaaS services from any location and any device is a priority for Microsoft. This includes allowing customers to connect and consume Microsoft 365 from IPv6 enabled and IPv6 only clients and information systems. It also includes enabling government customers meet IPv6 commitments on their networks while continuing to consume Microsoft 365 productivity scenarios without any interruption.  
> This article provides the list of Microsoft 365 SaaS services that allow direct IPv6 connectivity today. The scope of services allowing direct IPv6 connectivity is expected to continue to expand. Microsoft 365 services not explicitly mentioned for direct IPv6 support, to include Azure Active Directory (AAD) Authentication services, should be deemed requiring DNS64/NAT64 to be connected to from IPv6 only clients and environments.  This is in alignment with the intent currently outlined in existing NIST USGv6 documentation: Transition Mechanism Capability Requirements in [NIST Special Publication 500-267A Revision 1](https://nvlpubs.nist.gov/nistpubs/specialpublications/NIST.SP.500-267Ar1.pdf) NAT64/DNS64 are acceptable technologies to employ.
> - NAT64 support for transition mechanism NAT64 [RFC6146](https://datatracker.ietf.org/doc/html/rfc6146)
Stateful NAT64: Network Address and Protocol Translation from IPv6 Clients to IPv4 Servers
> - DNS64 support for transition mechanism DNS64. [RFC6147](https://datatracker.ietf.org/doc/html/rfc6147)
DNS64: DNS Extensions for Network Address Translation from IPv6 Clients to IPv4 Server

  
## IPv6 support in Microsoft 365 subscription service

### Exchange Online and IPv6

If the program that you use to connect to Exchange Online supports IPv6, it will use IPv6 by default on both wired and wireless networks. If you want to control communications to Exchange Online, use the IP address ranges in [Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md).
  
### SharePoint Online and IPv6

 **Microsoft 365 Government G1/G3/G4/K1** If the program that you use to connect to SharePoint Online supports IPv6, it will attempt to use IPv6 by default.
  
 **Public multi-tenant cloud** Microsoft enables SharePoint Online IPv6 at your request. You need to provide the CIDR notated IP addresses for your organization's DNS infrastructure. Keep in mind that this DNS infrastructure can't be shared by other organizations for IPv6 to be enabled for your tenant. After IPv6 is enabled, if the program that you use to connect to SharePoint Online supports IPv6, it uses IPv6 by default.
  
If the program that you use to connect to SharePoint Online supports IPv6, it will use IPv6 by default on both wired and wireless networks. If you want to control communications to SharePoint Online, use the IP address ranges in [Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md).
  
 
  
### Skype for Business and IPv6

Please be aware IPv6 is not supported in Skype for Business and can no longer be enabled.

### Microsoft Teams, SIP Gateway, and IPV6

Microsoft Teams Direct Routing and SIP Gateway only support IPv4. The Microsoft Teams service and client support both IPv4 and IPv6. If you want to control communications to Microsoft Teams, use the IP address ranges in [Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md).
  
### Exchange Online Protection and IPv6

Exchange Online Protection (EOP) supports IPv6 if the transmission occurs over Transport Layer Security Protocol. For the EOP range, use [Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md).
  
### IPv6 support for Microsoft 365 government offerings

Microsoft 365 IPv6 support for government offerings conforms to the Office of Management and Budget (OMB) Memorandum for Chief Information Officers of Executive Departments and Agencies, as well as the Federal Government Adoption of Internet Protocol Version 6 (IPv6) memorandum. [Microsoft Microsoft 365 for Government](https://go.microsoft.com/fwlink/p/?LinkId=325414) is a multi-tenant service that stores US government data in a segregated community cloud. Like other Microsoft 365 offerings, it provides productivity and collaboration services, including Exchange Online, Skype for Business, SharePoint Online, and Microsoft 365 Apps for enterprise. 

The Microsoft Microsoft 365 government offerings apply only for 2013 and later. For more information about the Microsoft 365 government offerings, see [Announcing Microsoft 365 for Government: A US Government Community Cloud](https://go.microsoft.com/fwlink/p/?LinkId=325414). International Traffic in Arms Regulations (ITAR) is a set of US government regulations that control the export and import of defense-related articles and services on the [United States Munitions List (USML)](https://go.microsoft.com/fwlink/p/?LinkId=325415). 

Microsoft Microsoft 365 for Enterprises provides dedicated hosting services for Microsoft productivity solutions that support the security, privacy, and regulatory compliance requirements for US federal agencies requiring Federal Information Security Management (FISMA) certification and commercial entities subject to ITAR.
  
## Things to consider when using IPv6 and Microsoft 365

We recommend that you do not disable IPv6. For more information, see this [guidance article](https://support.microsoft.com/help/929852/guidance-for-configuring-ipv6-in-windows-for-advanced-users). To determine what IP versions are being used on your network, consider the following:
  
- If the display of the **IPConfig** command at the command prompt contains rows named "IPv6 Address" or "Temporary IPv6 Address," you have IPv6 in your environment.

- If all the IPv6 addresses begin with "fe80" and correspond to rows named "Link-Local IPv6 Address," you don't have IPv6 in your environment.

These considerations might apply to your network:
  
- The public subscription service does not support purchase by credit card over IPv6. This does not apply to the Government Community Cloud (GCC) because governments have Enterprise Agreement (EA) licensing.

- IPv6 does not support some Rights Management Services (RMS) scenarios.

- IPv6 does not support BlackBerry® Enterprise Server (BES) because BlackBerry doesn't support IPv6.

- If you use Active Directory Federation Services (AD FS) with Microsoft 365, advertising your AD FS network endpoint to Microsoft 365 using IPv6 is not supported. You should not include AAAA records in the AD FS DNS entry when using Exchange Online. 

Here's a short link you can use to come back: [https://aka.ms/o365ip6]()

## See also

[IPv6 Learning Roadmap](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/gg250710(v%3dws.10))
  
[IPv6 Survival Guide](https://social.technet.microsoft.com/wiki/contents/articles/1728.ipv6-survival-guide.aspx)
