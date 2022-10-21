---
title: Other endpoints not included in the Office 365 IP Address and URL Web service
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 06/15/2022
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection:
- scotvorg
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
description: "Summary: The new endpoint Web service doesn't include a few endpoints for specific scenarios."
hideEdit: true
---

# Other endpoints not included in the Office 365 IP Address and URL Web service

Some network endpoints were previously published and haven't been included in the [Office 365 IP Address and URL Web Service](microsoft-365-ip-web-service.md). The web service publishes network endpoints that are required for Office 365 connectivity across an enterprise perimeter network. This scope currently doesn't include:

1. Network connectivity that may be required from a Microsoft datacenter to a customer network (inbound hybrid server network traffic).
2. Network connectivity from servers on a customer network across the enterprise perimeter (outbound server network traffic).
3. Uncommon scenarios for network connectivity requirements from a user.
4. DNS resolution connectivity requirement (not listed below).
5. Internet Explorer or Microsoft Edge Trusted Sites.

Apart from DNS, these instances are all optional for most customers unless you need the specific scenario that is described.

<br>

****

|Row|Purpose|Destination|Type|
|---|---|---|---|
|1|**[Import Service](https://support.office.com/article/use-network-upload-to-import-your-organization-pst-files-to-office-365-103f940c-0468-4e1a-b527-cc8ad13a5ea6) for PST and file ingestion**|Refer to the [Import Service](https://support.office.com/article/use-network-upload-to-import-your-organization-pst-files-to-office-365-103f940c-0468-4e1a-b527-cc8ad13a5ea6) for more requirements.|Uncommon outbound scenario|
|2|**[Microsoft Support and Recovery Assistant for Office 365](https://diagnostics.office.com/#/)**|`https://autodiscover.outlook.com` <br> <https://officecdn.microsoft.com> <br> <https://api.diagnostics.office.com> <br> `https://apibasic.diagnostics.office.com` <br> <https://autodiscover-s.outlook.com> <br> `https://cloudcheckenabler.azurewebsites.net` <br> <https://login.live.com> <br> <https://login.microsoftonline.com> <br> <https://login.windows.net> <br> <https://o365diagtelemetry.trafficmanager.net> <br> <https://odc.officeapps.live.com> <br> <https://offcatedge.azureedge.net> <br> <https://officeapps.live.com> <br> <https://outlook.office365.com> <br> <https://outlookdiagnostics.azureedge.net> <br> <https://sara.api.support.microsoft.com> |Outbound server traffic|
|3|**Azure AD Connect (w/SSO option)** <p> WinRM & remote PowerShell|Customer STS environment (AD FS Server and AD FS Proxy) \| TCP ports 80 & 443|Inbound server traffic|
|4|**STS** such as AD FS Proxy server(s) (for federated customers only)|Customer STS (such as AD FS Proxy) \| Ports TCP 443 or TCP 49443 w/ClientTLS|Inbound server traffic|
|5|**[Exchange Online Unified Messaging/SBC integration](/exchange/voice-mail-unified-messaging/telephone-system-integration-with-um/configuration-notes-for-session-border-controllers)**|Bidirectional between on-premises Session Border Controller and \*.um.outlook.com|Outbound server-only traffic|
|6|**Mailbox Migration**<p>When mailbox migration is initiated from on-premises [Exchange Hybrid](/exchange/exchange-deployment-assistant) to Office 365, Office 365 will connect to your published Exchange Web Services (EWS)/Mailbox Replication Services (MRS) server. If you need to allow inbound connections only from specific source IP ranges, create a permit rule for the IP addresses listed in the **Exchange Online** table in [Office 365 URL & IP ranges](urls-and-ip-address-ranges.md). <p> To ensure that connectivity to published EWS endpoints (like OWA) is not blocked, make sure the MRS proxy resolves to a separate FQDN and public IP address before you restrict connections.|Customer on-premises EWS/MRS Proxy <br> TCP port 443|Inbound server traffic|
|7|**[Exchange Hybrid](/exchange/exchange-deployment-assistant) coexistence functions** such as Free/Busy sharing.|Customer on-premises Exchange server|Inbound server traffic|
|8|**[Exchange Hybrid](/exchange/exchange-deployment-assistant) proxy authentication**|Customer on-premises STS|Inbound server traffic|
|9|Used to configure [Exchange Hybrid](/exchange/exchange-deployment-assistant), using the **[Exchange Hybrid Configuration Wizard](/exchange/hybrid-configuration-wizard)** <p> Note: These endpoints are only required to configure Exchange hybrid|domains.live.com on TCP ports 80 & 443, only required for Exchange 2010 SP3 Hybrid Configuration Wizard <p> GCC High, DoD IP addresses: 40.118.209.192/32; 168.62.190.41/32 <p> Worldwide Commercial & GCC: \*.store.core.windows.net; asl.configure.office.com; tds.configure.office.com; mshybridservice.trafficmanager.net ; <br> aka.ms/hybridwizard; <br> shcwreleaseprod.blob.core.windows.net/shcw/\*;|Outbound server-only traffic|
|10|The **AutoDetect service** is used in [Exchange Hybrid](/exchange/exchange-deployment-assistant) scenarios with [Hybrid Modern Authentication with Outlook for iOS and Android](/Exchange/clients/outlook-for-ios-and-android/use-hybrid-modern-auth) <p> `<email_domain>.outlookmobile.com` <br> `<email_domain>.outlookmobile.us` <br> `52.125.128.0/20` <br> `52.127.96.0/23`|Customer on-premises Exchange server on TCP 443|Inbound server traffic|
|11|**Exchange hybrid Azure AD authentication**|*.msappproxy.net|TCP outbound server-only traffic|
|12|Skype for Business in Office 2016 includes **video based screen sharing**, which uses UDP ports. Prior Skype for Business clients in Office 2013 and earlier used RDP over TCP port 443.|TCP port 443 opens to 52.112.0.0/14|Skype for Business older client versions in Office 2013 and earlier|
|13|**Skype for Business hybrid on-premises server connectivity** to Skype for Business Online|13.107.64.0/18, 52.112.0.0/14 <br> UDP ports 50,000-59,999 <br> TCP ports 50,000-59,999; 5061|Skype for Business on-premises server outbound connectivity|
|14|**Cloud PSTN** with on-premises hybrid connectivity requires network connectivity open to the on-premises hosts. For more details about Skype for Business Online hybrid configurations|See [Plan hybrid connectivity between Skype for Business Server and Office 365](/skypeforbusiness/hybrid/plan-hybrid-connectivity)|Skype for Business on-premises hybrid inbound|
|15|**Authentication and identity FQDNs** <p> The FQDN `secure.aadcdn.microsoftonline-p.com` needs to be in your client's Internet Explorer (IE) or Edge Trusted Sites Zone to function.||Trusted Sites|
|16|**Microsoft Teams FQDNs** <p> If you are using Internet Explorer or Microsoft Edge, you need to enable first and third-party cookies and add the FQDNs for Teams to your Trusted Sites. This is in addition to the suite-wide FQDNs, CDNs, and telemetry listed in row 14. See [Known issues for Microsoft Teams](/microsoftteams/known-issues) for more information.||Trusted Sites|
|17|**SharePoint Online and OneDrive for Business FQDNs** <p> All '.sharepoint.com' FQDNs with '\<tenant\>' in the FQDN need to be in your client's IE or Edge Trusted Sites Zone to function. In addition to the suite-wide FQDNs, CDNs, and telemetry listed in row 14, you'll need to also add these endpoints.||Trusted Sites|
|18|**Yammer**  <br> Yammer is only available in the browser and requires the authenticated user to be passed through a proxy. All Yammer FQDNs need to be in your client's IE or Edge Trusted Sites Zone to function.||Trusted Sites|
|19|Use **[Azure AD Connect](/azure/active-directory/hybrid/)** to sync on-premises user accounts to Azure AD.|See [Hybrid Identity Required Ports and Protocols](/azure/active-directory/hybrid/reference-connect-ports), [Troubleshoot Azure AD connectivity](/azure/active-directory/hybrid/tshoot-connect-connectivity), and [Azure AD Connect Health Agent Installation](/azure/active-directory/hybrid/how-to-connect-health-agent-install#outbound-connectivity-to-the-azure-service-endpoints).|Outbound server-only traffic|
|20|**[Azure AD Connect](/azure/active-directory/hybrid/)** with 21 ViaNet in China to sync on-premises user accounts to Azure AD.|\*.digicert.com:80 <BR> \*.entrust.net:80 <BR> \*.chinacloudapi.cn:443 <br> secure.aadcdn.partner.microsoftonline-p.cn:443 <br> \*.partner.microsoftonline.cn:443 <p> Also see [Troubleshoot ingress with Azure AD connectivity issues](https://docs.azure.cn/zh-cn/active-directory/hybrid/tshoot-connect-connectivity).|Outbound server-only traffic|
|21|**Microsoft Stream** (needs the Azure AD user token). <br> Office 365 Worldwide (including GCC)|\*.cloudapp.net <br> \*.api.microsoftstream.com <br> \*.notification.api.microsoftstream.com <br> amp.azure.net <br> api.microsoftstream.com <br> az416426.vo.msecnd.net <br> s0.assets-yammer.com <br> vortex.data.microsoft.com <br> web.microsoftstream.com <br> TCP port 443|Inbound server traffic|
|22|Use **MFA server** for multi-factor authentication requests, both new installations of the server and setting it up with Active Directory Domain Services (AD DS).|See [Getting started with the Azure AD multi-factor authentication Server](/azure/active-directory/authentication/howto-mfaserver-deploy#plan-your-deployment).|Outbound server-only traffic|
|23|**Microsoft Graph Change Notifications** <p> Developers can use [change notifications](/graph/webhooks?context=graph%2fapi%2f1.0&view=graph-rest-1.0&preserve-view=true) to subscribe to events in the Microsoft Graph.|Public Cloud: 52.159.23.209, 52.159.17.84, 52.147.213.251, 52.147.213.181, 13.85.192.59, 13.85.192.123, 20.9.36.45, 20.9.35.166, 20.96.21.67, 20.69.245.215, 137.135.11.161, 137.135.11.116, 52.159.107.50, 52.159.107.4, 52.229.38.131, 52.183.67.212, 52.142.114.29, 52.142.115.31, 51.124.75.43, 51.124.73.177, 20.44.210.83, 20.44.210.146, 40.80.232.177, 40.80.232.118, 20.48.12.75, 20.48.11.201, 104.215.13.23, 104.215.6.169, 52.148.24.136, 52.148.27.39, 40.76.162.99, 40.76.162.42, 40.74.203.28, 40.74.203.27, 20.9.37.73, 20.9.37.76, 20.96.21.98, 20.96.21.115, 137.135.11.222, 137.135.11.250, 52.159.109.205, 52.159.102.72, 52.151.30.78, 52.191.173.85, 51.104.159.213, 51.104.159.181, 51.138.90.7, 51.138.90.52, 52.148.115.48, 52.148.114.238, 40.80.233.14, 40.80.239.196, 20.48.14.35, 20.48.15.147, 104.215.18.55, 104.215.12.254, 20.199.102.157, 20.199.102.73, 13.87.81.123, 13.87.81.35, 20.111.9.46, 20.111.9.77, 13.87.81.133, 13.87.81.141 <p> Microsoft Cloud for US Government: 52.244.33.45, 52.244.35.174, 52.243.157.104, 52.243.157.105, 52.182.25.254, 52.182.25.110, 52.181.25.67, 52.181.25.66, 52.244.111.156, 52.244.111.170, 52.243.147.249, 52.243.148.19, 52.182.32.51, 52.182.32.143, 52.181.24.199, 52.181.24.220 <p> Microsoft Cloud China operated by 21Vianet: 42.159.72.35, 42.159.72.47, 42.159.180.55, 42.159.180.56, 40.125.138.23, 40.125.136.69, 40.72.155.199, 40.72.155.216 <br> TCP port 443 <p> Note: Developers can specify different ports when creating the subscriptions.|Inbound server traffic|
|24|**Network Connection Status Indicator**<p>Used by Windows 10 and 11 to determine if the computer is connected to the internet (does not apply to non-Windows clients). When this URL cannot be reached, Windows will assume it is not connected to the Internet and M365 Apps for Enterprise will not try to verify activation status, causing connections to Exchange and other services to fail.|www.msftconnecttest.com <br> 13.107.4.52<p>Also see [Manage connection endpoints for Windows 11 Enterprise](/windows/privacy/manage-windows-11-endpoints) and [Manage connection endpoints for Windows 10 Enterprise, version 21H2](/windows/privacy/manage-windows-21h2-endpoints).|Outbound server-only traffic|
|25|**Teams Notifications on Mobile Devices**<p>Used by Android and Apple mobile devices to receive push notifications to the Teams client for incoming calls and other Teams services. When these ports are blocked, all push notifications to mobile devices will fail.|For specific ports, see [FCM ports and your firewall in the Google Firebase documentation](https://firebase.google.com/docs/cloud-messaging/concept-options#messaging-ports-and-your-firewall) and [If your Apple devices aren't getting Apple push notifications](https://support.apple.com/en-us/HT203609).|Outbound server-only traffic|

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
