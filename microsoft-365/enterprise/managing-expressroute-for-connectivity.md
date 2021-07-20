---
title: "Managing ExpressRoute for Office 365 connectivity"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 7/13/2017
audience: ITPro
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: Ent_O365
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365_Setup
 - seo-marvel-apr2020
search.appverid:
- MET150
- BCS160
ms.assetid: e4468915-15e1-4530-9361-cd18ce82e231
description: Learn how manage ExpressRoute for Office 365, including common areas to configure like prefix filtering, security, and compliance.
---

# Managing ExpressRoute for Office 365 connectivity

ExpressRoute for Office 365 offers an alternative routing path to reach many Office 365 services without needing all traffic to egress to the internet. Although the internet connection to Office 365 is still needed, the specific routes that Microsoft advertises through BGP to your network make the direct ExpressRoute circuit preferred unless there are other configurations in your network. The three common areas you may want to configure to manage this routing include prefix filtering, security, and compliance.
  
> [!NOTE]
> Microsoft changed how the Microsoft Peering routing domain is reviewed for Azure ExpressRoute. Starting July 31st, 2017, all Azure ExpressRoute customers can enable Microsoft Peering directly from the Azure Administrative console or via PowerShell. After enabling Microsoft Peering, any customer can create route filters to receive BGP route advertisements for Dynamics 365 Customer Engagement applications (Formerly known as CRM Online). Customers needing Azure ExpressRoute for Office 365 must obtain review from Microsoft before they can create route filters for Office 365. Please contact your Microsoft Account team to learn about how to request a review for enabling Office 365 ExpressRoute. Unauthorized subscriptions trying to create route filters for Office 365 will receive an [error message](https://support.microsoft.com/kb/3181709)
  
## Prefix filtering

Microsoft recommends that customers accept all BGP routes as advertised from Microsoft, the routes provided undergo a rigorous review and validation process removing any benefits to added scrutiny. ExpressRoute natively offers the recommended controls such as IP prefix ownership, integrity, and scale - with no inbound route filtering on the customer side.
  
If you require additional validation of route ownership across ExpressRoute public peering, you can check the advertised routes against the list of all IPv4 and IPv6 IP prefixes that represent [Microsoft's public IP ranges](https://www.microsoft.com/download/details.aspx?id=53602). These ranges cover the full Microsoft address space and change infrequently, providing a reliable set of ranges to filter against that also provides additional protection to customers who are concerned about non-Microsoft owned routes leaking into their environment. In the event there is a change, it will be made on the 1st of the month and the version number in the **details** section of the page will change every time the file is updated.
  
There are a number of reasons to avoid the use of the [Office 365 URLs and IP address ranges](./urls-and-ip-address-ranges.md) for generating prefix filter lists. Including the following:
  
- The Office 365 IP prefixes undergo lots of changes on a frequent basis.

- The Office 365 URLs and IP address ranges are designed for managing firewall allow lists and Proxy infrastructure, not routing.

- The Office 365 URLs and IP address ranges do not cover other Microsoft services that may be in scope for your ExpressRoute connections.

|**Option**|**Complexity**|**Change Control**|
|:-----|:-----|:-----|
|Accept all Microsoft routes  <br/> |**Low:** Customer relies upon Microsoft controls to ensure all routes are properly owned.  <br/> |None  <br/> |
|Filter Microsoft owned supernets  <br/> |**Medium:** Customer implements summarized prefix filter lists to allow only Microsoft owned routes.  <br/> |Customers must ensure the infrequent updates are reflected in route filters.  <br/> |
|Filter Office 365 IP ranges  <br/> [!CAUTION] Not-Recommended |**High:** Customer filters routes based on defined Office 365 IP prefixes.  <br/> |Customers must implement a robust change management process for the monthly updates.  <br/> [!CAUTION] This solution requires significant on-going changes. Changes not implemented in time will likely result in a service outage.   |

Connecting to Office 365 using Azure ExpressRoute is based on BGP advertisements of specific IP subnets that represent networks where Office 365 endpoints are deployed. Due to the global nature of Office 365 and the number of services that make up Office 365, customers often have a need to manage the advertisements they accept on their network. If you're concerned with number of prefixes advertised into your environment, the [BGP community](https://support.office.com/article/Using-BGP-communities-in-ExpressRoute-for-Office-365-scenarios-preview-9ac4d7d4-d9f8-40a8-8c78-2a6d7fe96099) feature allows you to filter the advertisements to a specific set of Office 365 services. This feature is now in preview.
  
Regardless of how you manage the BGP route advertisements coming from Microsoft, you won't gain any special exposure to Office 365 services when compared to connecting to Office 365 over an internet circuit alone. Microsoft maintains the same security, compliance, and performance levels regardless of the type of circuit a customer uses to connect to Office 365.
  
### Security

Microsoft recommends that you maintain your own network and security perimeter controls for connections going to and from ExpressRoute public and Microsoft peering, which includes connections to and from Office 365 services. Security controls should be in place for network requests that travel outbound from your network to Microsoft's network as well as inbound from Microsoft's network to your network.
  
#### Outbound from Customer to Microsoft
  
When computers connect to Office 365, they connect to the same set of endpoints regardless of whether the connection is made over an internet or ExpressRoute circuit. Regardless of the circuit being used, Microsoft recommends that you treat Office 365 services as more trusted than generic internet destinations. Your outbound security controls should focus on the ports and protocols to reduce exposure and minimize ongoing maintenance. The required port information is available in the [Office 365 endpoints](./urls-and-ip-address-ranges.md) reference article.
  
For added controls, you can use FQDN level filtering within your proxy infrastructure to restrict or inspect some or all network requests destined for the internet or Office 365. Maintaining the list of FQDNs as features are released and the Office 365 offerings evolve requires more robust change management and tracking of changes to the published [Office 365 endpoints](./urls-and-ip-address-ranges.md).
  
> [!CAUTION]
> Microsoft recommends you don't rely solely on IP prefixes to manage outbound security to Office 365.

|**Option**|**Complexity**|**Change Control**|
|:-----|:-----|:-----|
|No restrictions  <br/> |**Low:** Customer allows unrestricted outbound access to Microsoft.  <br/> |None  <br/> |
|Port restrictions  <br/> |**Low:** Customer restricts outbound access to Microsoft by the expected ports.  <br/> |Infrequent.  <br/> |
|FQDN restrictions  <br/> |**High:** Customer restricts outbound access to Office 365 based on the published FQDNs.  <br/> |Monthly changes.  <br/> |

#### Inbound from Microsoft to Customer
  
There are several optional scenarios that require Microsoft to initiate connections to your network.
  
- ADFS during password validation for sign-in.

- [Exchange Server Hybrid deployments](/exchange/exchange-hybrid).

- Mail from an Exchange Online tenant to an on-premises host.

- SharePoint Online Mail send from SharePoint Online to an on-premises host.

- [SharePoint federated hybrid search](/SharePoint/hybrid/display-hybrid-federated-search-results-in-sharepoint-online).

- [SharePoint hybrid BCS](/SharePoint/hybrid/deploy-a-business-connectivity-services-hybrid-solution).

- [Skype for Business hybrid](/skypeforbusiness/hybrid/plan-hybrid-connectivity?bc=%2fSkypeForBusiness%2fbreadcrumb%2ftoc.json&toc=%2fSkypeForBusiness%2ftoc.json) and/or [Skype for Business federation](/office365/servicedescriptions/skype-for-business-online-service-description/skype-for-business-online-features).

- [Skype for Business Cloud Connector](/skypeforbusiness/skype-for-business-hybrid-solutions/plan-your-phone-system-cloud-pbx-solution/plan-skype-for-business-cloud-connector-edition).

Microsoft recommends that you accept these connections over your internet circuit instead of your ExpressRoute circuit to reduce complexity. If your compliance or performance needs dictate these inbound connections must be accepted over an ExpressRoute circuit, using a firewall or reverse proxy to scope the accepted connections is recommended. You can use the [Office 365 endpoints](./urls-and-ip-address-ranges.md) to figure out the right FQDNs and IP prefixes.
  
### Compliance

We don't rely on the routing path you use for any of our compliance controls. Regardless of whether you connect to Office 365 services over an ExpressRoute or internet circuit, our compliance controls won't change. You should review the different compliance and security certification levels for Office 365 to figure out the best choice for meeting your organization's needs.
  
Here's a short link you can use to come back: [https://aka.ms/manageexpressroute365]()
  
## Related topics

[Content delivery networks](content-delivery-networks.md)
  
[Office 365 URLs and IP address ranges](https://support.office.com/article/8548a211-3fe7-47cb-abb1-355ea5aa88a2)
  
[Managing Office 365 endpoints](https://support.office.com/article/99cab9d4-ef59-4207-9f2b-3728eb46bf9a)
  
[Azure ExpressRoute for Office 365 Training](https://channel9.msdn.com/series/aer)