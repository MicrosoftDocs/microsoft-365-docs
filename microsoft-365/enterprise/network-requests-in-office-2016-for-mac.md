---
title: "Network requests in Office for Mac"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 06/26/2024
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- Ent_O365
- must-keep
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365_Setup
 - seo-marvel-apr2020
search.appverid: MOM160
ms.assetid: afdae969-4046-44b9-9adb-f1bab216414b
description: This article describes which endpoints and URLs Office for Mac applications try to reach, and the services provided.
---

# Network requests in Office for Mac

Office for Mac applications provide a native app experience on the macOS platform. Each app is designed to work in a variety of scenarios, including states when no network access is available. When a machine is connected to a network, the applications automatically connect to a series of web-based services to provide enhanced functionality. The following information describes which endpoints and URLs the applications try to reach, and the services provided. This information is useful when troubleshooting network configuration issues and setting policies for network proxy servers. The details in this article are intended to complement the [Office 365 URL and address ranges article](urls-and-ip-address-ranges.md), which includes endpoints for computers running Microsoft Windows. Unless noted, the information in this article also applies to Office 2019 for Mac and Office 2016 for Mac, which are available as a one-time purchase from a retail store or through a volume licensing agreement.

Most of this article is tables detailing network URLs, type, and description of service or feature provided by that endpoint. Each of the Office apps may differ in its service and endpoint usage. The following apps are defined in the tables below:
  
- W: Word
- P: PowerPoint
- X: Excel
- O: Outlook
- N: OneNote

The URL type is defined as follows:
  
- ST: Static - The URL is hard-coded into the client application.

- SS: Semi-Static - The URL is encoded as part of a web page or redirector.

- CS: Config Service - The URL is returned as part of the Office Configuration Service.

## Office for Mac default configuration

 **Installation and updates**
  
The following network endpoints are used to download the Office for Mac installation program from the Microsoft Content Delivery Network (CDN).
  
|**URL**|**Type**|**Description**|
|:-----|:-----|:-----|
|```https://go.microsoft.com/fwlink/```  <br/> |ST  <br/> |Microsoft 365 Installation Portal forward link service to latest installation packages.  <br/> |
|```https://officecdn-microsoft-com.akamaized.net/```  <br/> |SS  <br/> |Location of installation packages on the Content Delivery Network.  <br/> |
|```https://officecdn.microsoft.com/```  <br/> |SS  <br/> |Location of installation packages on the Content Delivery Network.  <br/> |
|```https://officeci-mauservice.azurewebsites.net/```  <br/> |ST  <br/> |Management Control endpoint for Microsoft AutoUpdate  <br/> |
|```https://officecdnmac.microsoft.com/```  <br/> |  <br/> |Enhanced content delivery network (CDN) for Microsoft AutoUpdate updates  <br/> |

 **First app launch**
  
The following network endpoints are contacted on first launch of an Office app. These endpoints provide enhanced Office functionality for users, and the URLs are contacted regardless of license type (including Volume License installations).
  
|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://config.edge.skype.com/```  <br/> |WXPON  <br/> |ST  <br/> |'Flighting' Configuration - allows for feature light-up and experimentation.  <br/> |
|```https://ocos-office365-s2s.msedge.net/```  <br/> |WXPON  <br/> |ST  <br/> |'Flighting' Network Configuration Test  <br/> |
|```https://client-office365-tas.msedge.net/```  <br/> |WXPON  <br/> |ST  <br/> |'Flighting' Network Configuration Test  <br/> |
|```https://officeclient.microsoft.com/```  <br/> |WXPON  <br/> |ST  <br/> |Office Configuration Service - Master list of service endpoints.  <br/> |
|```https://nexusrules.officeapps.live.com/```  <br/> |WXPON  <br/> |ST  <br/> |Office Rules Telemetry download - Informs the client about what data and events to upload to the telemetry service.  <br/> |
|```https://mobile.pipe.aria.microsoft.com/```  <br/> |N  <br/> |CS  <br/> |OneNote Telemetry Service  <br/> |
|```https://nexus.officeapps.live.com/```  <br/> |WXPON  <br/> |ST  <br/> |Office Telemetry Upload Reporting - "Heartbeart" and error events that occur on the client are uploaded to the telemetry service.  <br/> |
|```https://templateservice.office.com/```  <br/> |WXP  <br/> |CS  <br/> |Office Template Service - Provides users with online document templates.  <br/> |
|```https://omextemplates.content.office.net/```  <br/> |WXP  <br/> |CS  <br/> |Office Templates Downloads - Storage of PNG template images.  <br/> |
|```https://store.office.com/```  <br/> |WXP  <br/> |CS  <br/> |Store configuration for Office apps.  <br/> |
|```https://odc.officeapps.live.com/```  <br/> |WXPN  <br/> |CS  <br/> |Office Document Integration Services Catalog (list of services and endpoints) and Home Realm Discovery.  <br/> |
|```https://cdn.odc.officeapps.live.com/```  <br/> |WXPON  <br/> |CS  <br/> |Resources for Home Realm Discovery v2 (15.40 and later)  <br/> |
|```https://officecdn.microsoft.com/```  <br/> |WXPON  <br/> |ST  <br/> |Microsoft AutoUpdate Manifests - checks to see if there are updates available  <br/> |
|```https://ajax.aspnetcdn.com/```  <br/> |WXPO  <br/> |SS  <br/> |Microsoft Ajax JavaScript Library  <br/> |
|```https://wikipedia.firstpartyapps.oaspapps.com/```  <br/> |W  <br/> |SS  <br/> |Wikipedia app for Office configuration and resources.  <br/> |
|```https://excelbingmap.firstpartyapps.oaspapps.com/```  <br/> |X  <br/> |SS  <br/> |Bing Map app for Office configuration and resources.  <br/> |
|```https://peoplegraph.firstpartyapps.oaspapps.com/```  <br/> |X  <br/> |SS  <br/> |People Graph app for Office configuration and resources.  <br/> |
|```https://www.onenote.com/```  <br/> |N  <br/> |ST  <br/> |What's New content for OneNote.  <br/> |
|```https://site-cdn.onenote.net/```  <br/> |N  <br/> |ST  <br/> |New content for OneNote.  <br/> |
|```https://site-cdn.onenote.net/```  <br/> |N  <br/> |SS  <br/> |What's New images for OneNote.  <br/> |
|```https://acompli.helpshift.com/```  <br/> |O  <br/> |ST  <br/> |In-app Support Service.  <br/> |
|```https://prod-global-autodetect.acompli.net/```  <br/> |O  <br/> |ST  <br/> |Email Account Detection Service.  <br/> |
|```https://autodiscover-s.outlook.com/```  <br/> |WXPO  <br/> |ST  <br/> |Outlook AutoDiscovery  <br/> |
|```https://outlook.office365.com/```  <br/> |WXPO  <br/> |ST  <br/> |Outlook endpoint for Microsoft 365 service.  <br/> |
|```https://r1.res.office365.com/```  <br/> |O  <br/> |ST  <br/> |Icons for Outlook add-ins.  <br/> |

> [!NOTE]
> The Office Configuration Service acts as an auto-discovery service for all Microsoft Office clients, not just for Mac. The endpoints returned in the response are semi-static in that change is very infrequent, but still possible.
  
 **Sign-in**
  
The following network endpoints are contacted when signing in to cloud-based storage. Depending on your account type, different services may be contacted. For example:
  
- **MSA: Microsoft Account** - typically used for consumer and retail scenarios

- **OrgID: Organization Account** - typically used for commercial scenarios

|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://login.windows.net/```  <br/> |WXPON  <br/> |ST  <br/> |Windows Authorization Service  <br/> |
|```https://login.microsoftonline.com/```  <br/> |WXPON  <br/> |ST  <br/> |Microsoft 365 Login Service (OrgID)  <br/> |
|```https://login.live.com/```  <br/> |WXPON  <br/> |ST  <br/> |Microsoft Account Login Service (MSA)  <br/> |
|```https://auth.gfx.ms/```  <br/> |WXPON  <br/> |CS  <br/> |Microsoft Account Login Service Helper (MSA)  <br/> |
|```https://secure.aadcdn.microsoftonline-p.com/```  <br/> |WXPON  <br/> |SS  <br/> |Microsoft 365 Login Branding (OrgID)  <br/> |
|```https://ocws.officeapps.live.com/```  <br/> |WXPN  <br/> |CS  <br/> |Document and Places Storage Locator  <br/> |
|```https://roaming.officeapps.live.com/```  <br/> |WXPN  <br/> |CS  <br/> |Most Recently Used (MRU) document service  <br/> |

> [!NOTE]
> For subscription-based and retail licenses, signing in both activates the product, and enables access to cloud resources such as OneDrive. For Volume License installations, users are still prompted to sign-in (by default), but that is only required for access to cloud resources, as the product is already activated.
  
 **Product activation**
  
The following network endpoints apply to Microsoft 365 Subscription and Retail License activations. Specifically, this does NOT apply to Volume License installations.
  
|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://ols.officeapps.live.com/```  <br/> |WXPON  <br/> |CS  <br/> |Office Licensing Service  <br/> |

 **What's New content**
  
The following network endpoints apply to Microsoft 365 Subscription only.
  
|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://contentstorage.osi.office.net/```  <br/> |WXPO  <br/> |SS  <br/> |What's New JSON page content.  <br/> |

 **Researcher**
  
The following network endpoints apply to Microsoft 365 Subscription only.
  
|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://entity.osi.office.net/```  <br/> |W  <br/> |CS  <br/> |Researcher Web Service  <br/> |
|```https://cdn.entity.osi.office.net/```  <br/> |W  <br/> |CS  <br/> |Researcher Static Content  <br/> |
|```https://www.bing.com/```  <br/> |W  <br/> |CS  <br/> |Researcher Content Provider  <br/> |

 **Smart Lookup**
  
The following network endpoints apply to both Microsoft 365 Subscription and Retail/Volume License activations.
  
|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://uci.officeapps.live.com/```  <br/> |WXPN  <br/> |CS  <br/> |Insights Web Service  <br/> |
|```https://ajax.googleapis.com/```  <br/> |WXPN  <br/> |CS  <br/> |JQuery Library  <br/> |
|```https://cdnjs.cloudflare.com/```  <br/> |WXPN  <br/> |CS  <br/> |Supporting JavaScript Library  <br/> |
|```https://www.bing.com/```  <br/> |WXPN  <br/> |CS  <br/> |Insights Content Provider  <br/> |
|```https://tse1.mm.bing.net/```  <br/> |WXPN  <br/> |CS  <br/> |Insights Content Provider  <br/> |

 **PowerPoint Designer**
  
The following network endpoints apply to Microsoft 365 Subscription only.
  
|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://pptsgs.officeapps.live.com/```  <br/> |P  <br/> |CS  <br/> |PowerPoint Designer web service  <br/> |

 **PowerPoint QuickStarter**
  
The following network endpoints apply to Microsoft 365 Subscription only.
  
|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://pptcts.officeapps.live.com/```  <br/> |P  <br/> |CS  <br/> |PowerPoint QuickStarter web service  <br/> |

 **Send a Smile/Frown**
  
The following network endpoints apply to both Microsoft 365 Subscription and Retail/Volume License activations.
  
|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://sas.office.microsoft.com/```  <br/> |WXPON  <br/> |CS  <br/> |Send a Smile Service  <br/> |

 **Contact Support**
  
The following network endpoints apply to both Microsoft 365 Subscription and Retail/Volume License activations.
  
|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://powerlift-frontdesk.acompli.net/```  <br/> |O  <br/> |CS  <br/> |Contact Support Service  <br/> |
|```https://acompli.helpshift.com/```  <br/> |O  <br/> |CS  <br/> |In-app Support Service  <br/> |

 **Save As PDF**
  
The following network endpoints apply to both Microsoft 365 Subscription and Retail/Volume License activations.
  
|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://wordcs.officeapps.live.com/```  <br/> |W  <br/> |CS  <br/> |Word document conversion service (PDF)  <br/> |

 **Office Apps (aka add-ins)**
  
The following network endpoints apply to both Microsoft 365 Subscription and Retail/Volume License activations when Office App add-ins are trusted.
  
|**URL**|**Apps**|**Type**|**Description**|
|:-----|:-----|:-----|:-----|
|```https://store.office.com/```  <br/> |WXPO  <br/> |CS  <br/> |Office app store configuration  <br/> |
|```https://wikipedia.firstpartyapps.oaspapps.com/```  <br/> |W  <br/> |SS  <br/> |Wikipedia app resources  <br/> |
|```https://excelbingmap.firstpartyapps.oaspapps.com/```  <br/> |X  <br/> |SS  <br/> |Bing Map app resources  <br/> |
|```https://peoplegraph.firstpartyapps.oaspapps.com```  <br/> |X  <br/> |SS  <br/> |People Graph app resources  <br/> |
|```https://o15.officeredir.microsoft.com/```  <br/> |WPX  <br/> |SS  <br/> |Office Redirection Service  <br/> |
|```https://appsforoffice.microsoft.com/```  <br/> |WXP  <br/> |SS  <br/> |Office JavaScript Libraries  <br/> |
|```https://telemetry.firstpartyapps.oaspapps.com/```  <br/> |WX  <br/> |SS  <br/> |Telemetry and Reporting Service for Office apps  <br/> |
|```https://ajax.microsoft.com/```  <br/> |W  <br/> |SS  <br/> |Microsoft Ajax JavaScript Library  <br/> |
|```https://ajax.aspnetcdn.com/```  <br/> |X  <br/> |SS  <br/> |Microsoft Ajax JavaScript Library  <br/> |
|```https://c.microsoft.com/```  <br/> |WPXO  <br/> |SS  <br/> |Office JavaScript Libraries  <br/> |
|```https://c1.microsoft.com/```  <br/> |WPXO  <br/> |SS  <br/> |Support resources  <br/> |
|```https://cs.microsoft.com/```  <br/> |WPXO  <br/> |SS  <br/> |Support resources  <br/> |
|```https://c.bing.com/```  <br/> |WPXO  <br/> |SS  <br/> |Support resources  <br/> |
|```https://*.cdn.optimizely.com/```  <br/> |WPXO  <br/> |SS  <br/> |JavaScript library  <br/> |
|```https://errors.client.optimizely.com/```  <br/> |WPX  <br/> |SS  <br/> |Error reporting  <br/> |
|```https://*-contentstorage.osi.office.net/```  <br/> |WPXO  <br/> |SS  <br/> |Font resources  <br/> |
|```https://nexus.ensighten.com/```  <br/> |WPXO  <br/> |SS  <br/> |Telemetry Service  <br/> |
|```https://browser.pipe.aria.microsoft.com/```  <br/> |WPXO  <br/> |SS  <br/> |Telemetry Reporting  <br/> |
|```https://*.vo.msecnd.net/```  <br/> |WPXO  <br/> |SS  <br/> |Microsoft Store Asset Library  <br/> |
|```https://*.wikipedia.org/```  <br/> |W  <br/> |SS  <br/> |Wikipedia page resources  <br/> |
|```https://upload.wikimedia.org/```  <br/> |W  <br/> |SS  <br/> |Wikipedia media resources  <br/> |
|```https://wikipedia.firstpartyappssandbox.oappseperate.com/```  <br/> |W  <br/> |SS  <br/> |Wikipedia sandbox frame  <br/> |
|```https://*.virtualearth.net/```  <br/> |X  <br/> |SS  <br/> |Map templates  <br/> |

 **Safe Links**
  
The following network endpoint applies to all Office applications for Microsoft 365 Subscription only.
  
|**URL**|**Type**|**Description**|
|:-----|:-----|:-----|
|```https://*.oscs.protection.outlook.com/```  <br/> |CS  <br/> |Microsoft Safe Link Service  <br/> |

 **Crash reporting**
  
The following network endpoint applies to all Office applications for both Microsoft 365 Subscription and Retail/Volume License activations. When a process unexpectedly crashes, a report is generated and sent to the Watson service.
  
|**URL**|**Type**|**Description**|
|:-----|:-----|:-----|
|```https://watson.microsoft.com/```  <br/> |ST  <br/> |Microsoft Error Reporting Service  <br/> |
|```https://officeci.azurewebsites.net/```  <br/> |ST  <br/> |Office Collaborative Insights Service  <br/> |

## Options for reducing network requests and traffic

The default configuration of Office for Mac provides the best user experience, both in terms of functionality and keeping the machine up to date. In some scenarios, you may wish to prevent applications from contacting network endpoints. This section discusses options for doing so.
  
### Disabling Cloud Sign-In and Office Add-Ins

Volume License customers may have strict policies about saving documents to cloud-based storage. The following per-application preference can be set to disable MSA/OrgID Sign in, and access to Office Add-ins.
  
- ```defaults write com.microsoft.Word UseOnlineContent -integer 0```

- ```defaults write com.microsoft.Excel UseOnlineContent -integer 0```

- ```defaults write com.microsoft.Powerpoint UseOnlineContent -integer 0```

If users try to access the Sign-In function, they will see an error that a network connection is not present. Because this preference also blocks online product activation, it should only be used for Volume License installations. Specifically, using this preference will prevent Office applications from accessing the following endpoints:
  
- ```https://odc.officeapps.live.com```

- ```https://*.firstpartyapps.oaspapps.com```

- All endpoints listed in the 'Sign In' section above.

- All endpoints listed in the 'Smart Lookup' section above.

- All endpoints listed in the 'Product Activation' section above.

- All endpoints listed in the 'Office Apps (aka add-ins)' section above.

To re-establish full functionality for the user, either set the preference to '2' or remove it.
  
> [!NOTE]
> This preference requires Office for Mac build 15.25 [160726] or later.
  
### Telemetry
  
Office for Mac sends telemetry information back to Microsoft at regular intervals. Data is uploaded to the 'Nexus' endpoint. The telemetry data helps the engineering team assess the health and any unexpected behaviors of each Office app. There are two categories of telemetry:
  
- **Heartbeat** contains version and license information. This data is sent immediately upon app launch.

- **Usage** contains information about how apps are being used and non-fatal errors. This data is sent every 60 minutes.

Microsoft takes your privacy very seriously. You can read about Microsoft's data collection policy at [https://privacy.microsoft.com](https://privacy.microsoft.com). To prevent applications from sending 'Usage' telemetry, the **SendAllTelemetryEnabled** preference can be adjusted. The preference is per-application, and can be set via macOS Configuration Profiles, or manually from Terminal:
  
```defaults write com.microsoft.Word SendAllTelemetryEnabled -bool FALSE```

```defaults write com.microsoft.Excel SendAllTelemetryEnabled -bool FALSE```

```defaults write com.microsoft.Powerpoint SendAllTelemetryEnabled -bool FALSE```

```defaults write com.microsoft.Outlook SendAllTelemetryEnabled -bool FALSE```

```defaults write com.microsoft.onenote.mac SendAllTelemetryEnabled -bool FALSE```

```defaults write com.microsoft.autoupdate2 SendAllTelemetryEnabled -bool FALSE```

```defaults write com.microsoft.Office365ServiceV2 SendAllTelemetryEnabled -bool FALSE```

Heartbeat telemetry is always sent and cannot be disabled.
  
### Crash reporting
  
When a fatal application error occurs, the application will unexpectedly terminate and upload a crash report to the 'Watson' service. The crash report consists of a call-stack, which is the list of steps the application was processing leading up to the crash. These steps help the engineering team identify the exact function that failed and why.
  
In some cases, the contents of a document will cause the application to crash. If the app identifies the document as the cause, it will ask the user if it's okay to also send the document along with the call-stack. Users can make an informed choice to this question. IT administrators may have strict requirements about the transmission of documents and make the decision on behalf of the user to never send documents. The following preference can be set to prevent documents from being sent, and to suppress the prompt to the user:
  
```defaults write com.microsoft.errorreporting IsAttachFilesEnabled -bool FALSE```

> [!NOTE]
> If **SendAllTelemetryEnabled** is set to **FALSE**, all crash reporting for that process is disabled. To enable crash reporting without sending usage telemetry, the following preference can be set: ```defaults write com.microsoft.errorreporting IsMerpEnabled -bool TRUE```
  
### Updates
  
Microsoft releases Office for Mac updates at regular intervals (typically once a month). We strongly encourage users and IT administrators to keep machines up to date to ensure the latest security fixes are installed. In cases where IT administrators want to closely control and manage machine updates, the following preference can be set to prevent the AutoUpdate process from automatically detecting and offering product updates:
  
```defaults write com.microsoft.autoupdate2 HowToCheck -string 'Manual'```

### Blocking Requests with a Firewall/Proxy
  
If your organization blocks requests to URLs via a firewall or proxy server be sure to configure the URLs listed in this document as either allowed, or block listed with a 40X response (e.g. 403 or 404). A 40X response will allow the Office applications to gracefully accept the inability to access the resource, and will provide a faster user experience, than simply dropping the connection, which in turn will cause the client to retry.
  
If your proxy server requires authentication, a 407 response will be returned to the client. For the best experience, ensure that you're using Office for Mac builds 15.27 or later, as they include specific fixes for working with NTLM and Kerberos servers.
  
## See also

[Office 365 URLs and IP address ranges](urls-and-ip-address-ranges.md)
