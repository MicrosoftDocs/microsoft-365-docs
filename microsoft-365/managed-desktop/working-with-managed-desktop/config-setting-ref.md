---
title: Configurable settings reference for Microsoft Managed Desktop
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: trudyha
ms.localizationpriority: normal
ms.date: 2/14/2019
---

# Configurable settings reference - Microsoft Managed Desktop

## Desktop background picture
You can customize the desktop background picture for Microsoft Managed Desktop devices in your organization. You might use this to apply a company brand or marketing 

### Requirements

These requirements must be met for your desktop background picture:
- Picture file format: .jpg, jpeg, or .png
- Host file on an internal https location. 
- Hosting on an internal file share, like //sharename, is not allowed

### Customize and deploy desktop background picture

**To add a custom desktop background picture**
1. Sign in to Microsoft Managed Desktop admin portal (aka link)
2. Under **Settings**, select **Configurable**.
3. In **Configurable** workspace, select **Desktop background picture**. 
4. Enter the location of the picture you want to use. 
5. Select **Stage deployment** to save your changes and deploy them to the Test ring. 

## Browser start pages
Browser start pages open in individual tabs when your users start Microsoft Edge. If you want to make it easy for your users to open a set of sites that they use frequently, add a browser start page for each site. 

### Requirements

You must provide the fully qualified domain name (FQDN) for intranet or Internet sites for your browser start pages. 

### Customize and deploy browser start pages

**To add a browser start page**
1. Sign in to Microsoft Managed Desktop admin portal (aka link)
2. Under **Settings**, select **Configurable**.
3. In **Configurable** workspace, select **Browser start pages**. 
4. Select **Add start page**.
5. On **Add browser start page**, enter the URL for the site you want to use, and then select **Add start page**. 
6. Repeat steps 1-5 for additional browser start pages. 
7. Select **Stage deployment** to save your changes and deploy them to the Test ring.

## Enterprise mode site list location

The enterprise mode site list is an XML document with a list of sites, their compatibility mode, and their intended browser. This allows older sites to open in a specific browser. For more information on enterprise mode site lists, see [Enterprise Mode and Enterprise Mode Site Lists](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/what-is-enterprise-mode). 

You can specify an https:// location, or the location for an internal share where you’ve hosted your enterprise mode site list. 

### Requirements

These requirements must be met for the enterprise mode site list file:
- Enterprise mode site list file format: XML file that meets file requirements
- Host file on an internal https location. 
- Hosting on an internal file share, like *//sharename*, is not allowed

### Best practices

These best practices are offered to help customers make decisions to modernize their IT infrastructure:
- **Choose a limited number of sites** – Microsoft Managed Desktop uses Microsoft Edge as the preferred browser to improve overall security for your organization and usability for your users. Most sites in this list are for legacy web apps that need an older version of a browser that will not include as many security features. 
- **Consider an alternate** – Consider a different site, or web app that doesn’t require an older browser. Or, consider updating the site so that it can use newer browsers. Newer browsers use the latest technology and help improve security.

### Customize and deploy Enterprise site mode list location

**To add an enterprise site mode list location**

1.	Sign in to Microsoft Managed Desktop admin portal (aka link)
2.	Under **Settings**, select **Configurable**.
3.	In **Configurable** workspace, select **Enterprise mode site list location**. 
4.	Enter the https location for your site list. 
5.	Select **Stage deployment** to save your changes and deploy them to the Test ring.

## Trusted sites

Trusted sites allow you to customize security zones, or where a site can be used, for different sites. Security zones include: 
- Zone 1 – Local Intranet zone
- Zone 2 – Trusted sites zone
- Zone 3 – Internet zone
- Zone 4 – Restricted Sites zone

### Requirements

You must provide the fully qualified domain name (FQDN) for intranet or Internet sites for each trusted site. 

### Customize and deploy trusted sites

**To add a trusted site**

1. Sign in to Microsoft Managed Desktop admin portal (aka link)
2. Under **Settings**, select **Configurable**.
3. In **Configurable** workspace, select **Trusted sites**, and then select **Add trusted site**. 
4. On **Add trusted site**, enter the URL, choose a security zone, and then select **Add trusted site**. 
5. Repeat steps 1-4 for each trusted site you want to add. 
6. Select **Stage deployment** to save your changes and deploy them to the Test ring.

**To remove a trusted site**

1. Sign in to Microsoft Managed Desktop admin portal (aka link)
2. Under **Settings**, select **Configurable**.
3. In **Configurable** workspace, select **Trusted sites**. 
4. Select the site that you want to delete, and then select **Delete**. 
5. Repeat steps 1-4 for each trusted site you want to delete. 
6. Select **Stage deployment** to save your changes and deploy them to the Test ring.

## Proxy
You can manage proxy settings for your organization. Add your proxy server and port number, and then add your proxy site exceptions. Microsoft Managed Desktop includes a group of proxy exceptions that are required for the service to operate. Customers can’t make changes to the Microsoft Managed Desktop proxies. For more information, see [Network configuration for Microsoft Managed Desktop](../get-ready/network.md). 

The proxy site exceptions that you add in the Microsoft Managed Desktop portal are added to the proxy exceptions included with Microsoft Managed Desktop service. 

Note: If you stage a deployment for proxy settings at the same time that Microsoft Managed Desktop proxies are being updated, your staged deployment will wait until the Microsoft Managed Desktop proxy changes are finished. 

### Requirements

These requirements must be met for proxy server and proxy site exceptions:
- Must be a valid server address and port number
- Import proxy exception list: must be in xml format
- Enter individual URL: must be a valid http site 

### Customize and deploy proxies

**To add an individual proxy site exception**

1. Sign in to Microsoft Managed Desktop admin portal (aka link)
2. Under **Settings**, select **Configurable**.
3. In **Configurable** workspace, select **Proxy**. 
4. Enter the **Address** and **Port number** for you proxy server, and then select **Add proxy exception**. 
5. Enter the URL of a valid http site, and then select **Add proxy exception**. 
6. Repeat steps 1-5 for each trusted site you want to add. 
7. Select **Stage deployment** to save your changes and deploy them to the Test ring.

## Additional resources
- [Configurable settings overview](config-setting-overview.md) 
- [Deploy configurable settings](config-setting-deploy.md)






**********
You can submit Support tickets or Feedback requests to Microsoft using the Microsoft Managed Desktop Administrative Portal. Support requests are always prioritized over Feedback submissions. Support requests are triaged and managed according to Severity as outlined in the [severity definition table](#sev). Feedback is reviewed, and a response provided where requested. 

>[!IMPORTANT]
>Make sure that you [set up an Admin contact](../get-started/add-admin-contacts.md) for app packaging, devices, security, and other. You are unable to submit a Support request in any of these areas if an admin contact is not configured.

To submit a Support request, open the Microsoft Managed Desktop admin portal, and select **+ New Support ticket** on the Support request tab. The information below will help guide your choices, depending on your scenario. When you select a severity level, please review the expectations in **Expected customer response**.

When you create your support request, choose the type that matches the kind of help you need.

Support request type | When to use
--- | ---
Incident | You require the Microsoft Managed Desktop Operations Team to investigate, like widespread impact of a change or security incident.
Request for information | You are planning a change for networking, proxy configuration, VPN systems, certificate expiration, or just need some information about the service. A response from the Microsoft Managed Desktop Operations Team is strongly advised when communicating a change within your organization.
Change request | You require the Microsoft Managed Desktop Operations Team to make a change, such as moving devices between update rings.

<span id="sev" />

## Support request severity definitions

Initial response time is the period from when you submit your support request to when a Microsoft Managed Desktop engineer contacts you and starts working on your support request. The initial response time varies with the business impact of the request, based on the severity of the request.

Severity level	| Customer situation |	Initial response time	| Expected customer response
--- | --- | --- | ---
**Severity A – Critical Impact** |	**Critical business impact**<br><br>Customer’s business has significant loss or degradation of services and requires immediate attention.<br><br>**Major application compatibility impact**<br><br>The customer’s entire business is experiencing financial impact due to crashing or loss of critical functionality | Initial: < 1 hour<br>Update: 60 minutes<br>24x7 available | When you select Severity A, you confirm that the issue has critical business impact, with severe loss and degradation of services. <br><br>The issue demands an immediate response, and you commit to continuous 24x7 operation every day with the Microsoft team until resolution, otherwise, Microsoft may at its discretion decrease the Severity to level B.<br><br> You also ensure that Microsoft has your accurate contact information. 
**Severity B – Moderate Impact** |	**Moderate business impact**<br><br>Customer’s business has moderate loss or degradation of services, but work can reasonably continue in an impaired manner.<br><br>**Major application compatibility impact**<br><br>A specific business group is no longer productive, due to crashing behavior or loss of critical functionality. |	Initial: < 4 hours<br>Update: 12 hours<br>Business hours (24x7 available) | When you select Severity B, you confirm that the issue has moderate impact to your business with loss and degradation of services, but workarounds enable reasonable, albeit temporary, business continuity. <br><br>The issue demands an urgent response. If you chose 24x7 when you submit the support request, you commit to a continuous 24x7 operation every day with the Microsoft team until resolution, otherwise, Microsoft may at its discretion decrease the severity to level C. If you chose business-hours support when you submit a Severity B incident, Microsoft will contact you during business hours only.<br><br>You also ensure that Microsoft has your accurate contact information.
**Severity C – Minimal Impact** |	**Minimum business impact**<br><br> Customer’s business is functioning with minor impediments of services.<br><br>**Minor application compatibility impact**<br><br>Potentially unrelated users experience minor compatibility issues that do not prevent productivity |	Initial: < 8 hours<br>Update: 24 hours<br>Business hours  |	When you select Severity C, you confirm that the issue has minimum impact to your business with minor impediment of service.<br><br>For a Severity C incident, Microsoft will contact you during business hours only.<br><br>You also ensure that Microsoft has your accurate contact information

Additional details:
- Support languages - All support is provided in English.
- Severity level changes - Microsoft may downgrade the severity level if the customer is not able to provide adequate resources or responses to enable Microsoft to continue with problem resolution efforts. 
- Business hours - For most countries, business hours are from 9:00 AM to 5:00 PM, Pacific Standard Time.
- For an application compatibility issue to be considered, there must be a reproduceable error, of the same version of the application, between the previous and current version of Windows or Office.
- To resolve application compatibility issues, Microsoft requires a customer point of contact to work with. The individual is required to work directly with our Fast Track team to investigate and resolve the issue.
- If a customer is unable to meet the expected response requirements, Microsoft will downgrade the request by one severity level, to a minimum of Severity C.
- If a customer is unresponsive to requests for action, Microsoft will mitigate and close the support request within 48 hours of the last request.
 

## Additional resources
- [End user support for Microsoft Managed Desktop](end-user-support.md). 
- [Support for Microsoft Managed Desktop](../service-description/support.md). 



