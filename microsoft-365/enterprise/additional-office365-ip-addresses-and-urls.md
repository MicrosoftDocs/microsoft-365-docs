---
title: "Additional endpoints not included in the Office 365 IP Address and URL Web service"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 04/19/2021
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
f1.keywords:
- CSH
ms.custom: Adm_O365
search.appverid:
- MET150
- MOE150
- MED150
- MBS150
- MOM160
- BCS160
ms.assetid: 
description: "Summary: The new endpoint Web service does not include a small number of endpoints for specific scenarios."
hideEdit: true
---

# Additional endpoints not included in the Office 365 IP Address and URL Web service

Some network endpoints were previously published and have not been included in the [Office 365 IP Address and URL Web Service](microsoft-365-ip-web-service.md). The web service scope is network endpoints that are required for connectivity from a user of Office 365 across an enterprise perimeter network. This currently does not include:

1. Network connectivity that may be required from a Microsoft datacenter to a customer network (inbound hybrid server network traffic).
2. Network connectivity from servers on a customer network across the enterprise perimeter (outbound server network traffic).
3. Uncommon scenarios for network connectivity requirements from a user.
4. DNS resolution connectivity requirement (not listed below).
5. Internet Explorer or Microsoft Edge Trusted Sites.

Apart from DNS, these are all optional for most customers unless you need the specific scenario that is described.

| Row | Purpose | Destination | Type |
|:-----|:-----|:-----|:-----|
| 1  | [Import Service](https://support.office.com/article/use-network-upload-to-import-your-organization-pst-files-to-office-365-103f940c-0468-4e1a-b527-cc8ad13a5ea6) for PST and file ingestion | Refer to the [Import Service](https://support.office.com/article/use-network-upload-to-import-your-organization-pst-files-to-office-365-103f940c-0468-4e1a-b527-cc8ad13a5ea6) for additional requirements. | Uncommon outbound scenario |
| 2  | [Microsoft Support and Recovery Assistant for Office 365](https://diagnostics.office.com/#/)  | https<span>://</span>autodiscover.outlook.com <BR> <span>https://</span>officecdn.microsoft.com <BR> <span>https://</span>api.diagnostics.office.com <BR> <span>https://</span>apibasic.diagnostics.office.com <BR> <span>https://</span>autodiscover-s.outlook.com <BR> <span>https://</span>cloudcheckenabler.azurewebsites.net <BR> <span>https://</span>login.live.com <BR> <span>https://</span>login.microsoftonline.com <BR> <span>https://</span>login.windows.net <BR> <span>https://</span>o365diagtelemetry.trafficmanager.net <BR> <span>https://</span>odc.officeapps.live.com <BR> <span>https://</span>offcatedge.azureedge.net <BR> <span>https://</span>officeapps.live.com <BR> <span>https://</span>outlook.office365.com <BR> <span>https://</span>outlookdiagnostics.azureedge.net | Outbound server traffic |
| 3  | Azure AD Connect (w/SSO option) – WinRM & remote PowerShell | Customer STS environment (AD FS Server and AD FS Proxy) \| TCP ports 80 & 443 | Inbound server traffic |
| 4  | STS such as AD FS Proxy server(s) (for federated customers only) | Customer STS (such as AD FS Proxy) \| Ports TCP 443 or TCP 49443 w/ClientTLS | Inbound server traffic |
| 5  | [Exchange Online Unified Messaging/SBC integration](/exchange/voice-mail-unified-messaging/telephone-system-integration-with-um/configuration-notes-for-session-border-controllers) | Bidirectional between on-premises Session Border Controller and *.um.outlook.com | Outbound server only traffic |
| 6  | Mailbox Migration. When mailbox migration is initiated from on-premises [Exchange Hybrid](/exchange/exchange-deployment-assistant) to Office 365, Office 365 will connect to your published Exchange Web Services (EWS)/Mailbox Replication Services (MRS) server. If you need the NAT IP addresses used by Exchange Online servers to restrict inbound connections from specific source IP ranges, they are listed in [Office 365 URL & IP ranges](urls-and-ip-address-ranges.md) under the "Exchange Online" service area. Care should be taken to ensure that access to published EWS endpoints like OWA is not impacted by ensuring the MRS proxy resolves to a separate FQDN and public IP address before restricting TCP 443 connections from specific source IP ranges. | Customer on-premises EWS/MRS Proxy<br> TCP port 443 | Inbound server traffic |
| 7  | [Exchange Hybrid](/exchange/exchange-deployment-assistant) co-existence functions such as Free/Busy sharing. | Customer on-premises Exchange server | Inbound server traffic |
| 8  | [Exchange Hybrid](/exchange/exchange-deployment-assistant) proxy authentication | Customer on-premises STS | Inbound server traffic |
| 9  | Used to configure [Exchange Hybrid](/exchange/exchange-deployment-assistant), using the [Exchange Hybrid Configuration Wizard](/exchange/hybrid-configuration-wizard) <br> Note: These endpoints are only required to configure Exchange hybrid  | domains.live.com on TCP ports 80 & 443, only required for Exchange 2010 SP3 Hybrid Configuration Wizard<BR> <BR> GCC High, DoD IP addresses: 40.118.209.192/32; 168.62.190.41/32 <BR> <BR> Worldwide Commercial & GCC: *.store.core.windows.net; asl.configure.office.com; tds.configure.office.com; mshybridservice.trafficmanager.net ; <BR> aka.ms/hybridwizard; <BR> shcwreleaseprod.blob.core.windows.net/shcw/\*;<BR>  | Outbound server only traffic |
| 10  | The AutoDetect service is used in [Exchange Hybrid](/exchange/exchange-deployment-assistant) scenarios with [Hybrid Modern Authentication with Outlook for iOS and Android](/Exchange/clients/outlook-for-ios-and-android/use-hybrid-modern-auth) <BR> <BR> ```*.acompli.net``` <BR> <BR> ```*.outlookmobile.com``` <BR> <BR> ```*.outlookmobile.us``` <BR> <BR> ```52.125.128.0/20``` <BR> ```52.127.96.0/23``` <BR> | Customer on-premises Exchange server on TCP 443 | Inbound server traffic |
| 11  | Exchange hybrid Azure AD authentication | *.msappproxy.net | TCP outbound server only traffic |
| 12  | Skype for Business in Office 2016 includes video based screen sharing which uses UDP ports. Prior Skype for Business clients in Office 2013 and earlier used RDP over TCP port 443. | TCP port 443 open to 52.112.0.0/14 | Skype for Business older client versions in Office 2013 and earlier |
| 13  | Skype for Business hybrid on-premises server connectivity to Skype for Business Online | 13.107.64.0/18, 52.112.0.0/14  <BR> UDP ports 50,000-59,999 <BR>  TCP ports 50,000-59,999; 5061 | Skype for Business on-premises server outbound connectivity |
| 14  | Cloud PSTN with on-premises hybrid connectivity requires network connectivity open to the on-premises hosts. For more details about Skype for Business Online hybrid configurations  | See [Plan hybrid connectivity between Skype for Business Server and Office 365](/skypeforbusiness/hybrid/plan-hybrid-connectivity) | Skype for Business on-premises hybrid inbound |
| 15  | **Authentication and identity FQDNs** <br> The FQDN ```secure.aadcdn.microsoftonline-p.com``` needs to be in your client's Internet Explorer (IE) or Edge Trusted Sites Zone to function. |  | Trusted Sites |
| 16  |  **Microsoft Teams FQDNs** <br> If you are using Internet Explorer or Microsoft Edge, you need to enable first and third-party cookies and add the FQDNs for Teams to your Trusted Sites. This is in addition to the suite-wide FQDNs, CDNs, and telemetry listed in row 14. See [Known issues for Microsoft Teams](/microsoftteams/known-issues) for more information. |  | Trusted Sites |
| 17  |  **SharePoint Online and OneDrive for Business FQDNs** <br> All '.sharepoint.com' FQDNs with '\<tenant>' in the FQDN need to be in your client's IE or Edge Trusted Sites Zone to function. In addition to the suite-wide FQDNs, CDNs, and telemetry listed in row 14, you'll need to also add these endpoints. |  | Trusted Sites |
| 18  | **Yammer**  <br> Yammer is only available in the browser and requires the authenticated user to be passed through a proxy. All Yammer FQDNs need to be in your client's IE or Edge Trusted Sites Zone to function. |  | Trusted Sites |
| 19  | Use [Azure AD Connect](/azure/active-directory/hybrid/) to sync on-premises user accounts to Azure AD. | See [Hybrid Identity Required Ports and Protocols](/azure/active-directory/hybrid/reference-connect-ports), [Troubleshoot Azure AD connectivity](/azure/active-directory/hybrid/tshoot-connect-connectivity), and [Azure AD Connect Health Agent Installation](/azure/active-directory/hybrid/how-to-connect-health-agent-install#outbound-connectivity-to-the-azure-service-endpoints). | Outbound server only traffic |
| 20  | [Azure AD Connect](/azure/active-directory/hybrid/) with 21 ViaNet in China to sync on-premises user accounts to Azure AD. | \*.digicert.com:80 <BR> \*.entrust.net:80 <BR> \*.chinacloudapi.cn:443 <BR> secure.aadcdn.partner.microsoftonline-p.cn:443 <BR>*.partner.microsoftonline.cn:443 <BR> <BR>Also see [Troubleshoot ingress with Azure AD connectivity issues](https://docs.azure.cn/zh-cn/active-directory/hybrid/tshoot-connect-connectivity). | Outbound server only traffic |
| 21  | Microsoft Stream (needs the Azure AD user token). <BR> Office 365 Worldwide (including GCC) | \*.cloudapp.net <BR> \*.api.microsoftstream.com <BR> \*.notification.api.microsoftstream.com <BR> amp.azure.net <BR> api.microsoftstream.com <BR> az416426.vo.msecnd.net <BR> s0.assets-yammer.com <BR> vortex.data.microsoft.com <BR> web.microsoftstream.com <BR> TCP port 443  | Inbound server traffic |
| 22  | Use MFA server for multifactor authentication requests, both new installations of the server and setting it up with Active Directory Domain Services (AD DS). | See [Getting started with the Azure AD Multi-Factor Authentication Server](/azure/active-directory/authentication/howto-mfaserver-deploy#plan-your-deployment).  | Outbound server only traffic |
| 23  | Microsoft Graph Change Notifications | Developers can leverage [change notifications](/graph/webhooks?context=graph%2fapi%2f1.0&view=graph-rest-1.0) to subscribe to events in the Microsoft Graph. | *.cloudapp.net<BR> 104.43.130.21, 137.116.169.230, 13.79.38.63, 104.214.39.228, Public Cloud: 168.63.250.205, 52.161.9.202, 40.68.103.62, 13.89.60.223, 23.100.95.104, 40.113.95.219, 104.214.32.10, 168.63.237.145, 52.161.110.176, 52.174.177.183, 13.85.192.59, 13.85.192.123, 13.86.37.15, 13.89.108.233, 13.89.104.147, 20.44.210.83, 20.44.210.146, 40.76.162.99, 40.76.162.42, 40.74.203.28, 40.74.203.27, 51.104.159.213, 51.104.159.181, 51.124.75.43, 51.124.73.177, 51.138.90.7, 51.138.90.52, 52.139.153.222, 52.139.170.157, 52.139.170.47, 52.142.114.29, 52.142.115.31, 52.147.213.251, 52.147.213.181, 52.148.24.136, 52.148.27.39, 52.148.115.48, 52.148.114.238, 52.154.246.238, 52.159.23.209, 52.159.17.84, 52.184.94.140 <BR> Microsoft Cloud for US Government: 52.244.231.173, 52.238.76.151, 52.244.250.211, 52.238.78.108, 52.243.147.249, 52.243.148.19, 52.243.157.104, 52.243.157.105, 52.244.33.45, 52.244.35.174, 52.244.111.156, 52.244.111.170 <BR> Microsoft Cloud Germany: 51.4.231.136, 51.5.243.223, 51.4.226.154, 51.5.244.215, 51.4.150.206, 51.4.150.235, 51.5.147.130, 51.5.148.103 <BR> Microsoft Cloud China operated by 21Vianet: 139.219.15.33, 42.159.154.223, 42.159.88.79, 42.159.155.77, 40.72.155.199, 40.72.155.216, 40.125.138.23, 40.125.136.69, 42.159.72.35, 42.159.72.47, 42.159.180.55, 42.159.180.56<BR> TCP port 443 <BR> Note: Developers can specify different ports when creating the subscriptions.  | Inbound server traffic |
|||||

## Related Topics

[Managing Office 365 endpoints](managing-office-365-endpoints.md)
  
[Monitor Microsoft 365 connectivity](./monitor-connectivity.md)
  
[Client connectivity](https://support.office.com/article/client-connectivity-4232abcf-4ae5-43aa-bfa1-9a078a99c78b)
  
[Content delivery networks](https://support.office.com/article/content-delivery-networks-0140f704-6614-49bb-aa6c-89b75dcd7f1f)
  
[Azure IP Ranges and Service Tags – Public Cloud](https://www.microsoft.com/download/details.aspx?id=56519)

[Azure IP Ranges and Service Tags – US Government Cloud](https://www.microsoft.com/download/details.aspx?id=57063)

[Azure IP Ranges and Service Tags – Germany Cloud](https://www.microsoft.com/download/details.aspx?id=57064)

[Azure IP Ranges and Service Tags – China Cloud](https://www.microsoft.com/download/details.aspx?id=57062)
  
[Microsoft Public IP Space](https://www.microsoft.com/download/details.aspx?id=53602)