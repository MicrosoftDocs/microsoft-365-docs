---
title: Web protection
description: Learn about the web protection in Microsoft Defender for Endpoint and how it can protect your organization
keywords: web protection, web threat protection, web browsing, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser, malicious websites 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Web protection

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-main-abovefoldlink&rtc=1)

## What is web protection?

Web protection in Microsoft Defender for Endpoint is a capability made up of [Web threat protection](web-threat-protection.md) and [Web content filtering](web-content-filtering.md). Web protection lets you secure your devices against web threats and helps you regulate unwanted content. You can find Web protection reports in the Microsoft Defender Security Center by going to **Reports > Web protection**.

![Image of all web protection cards](images/web-protection.png)

### Web threat protection

The cards that make up web threat protection are **Web threat detections over time** and **Web threat summary**.

Web threat protection includes:

- Comprehensive visibility into web threats affecting your organization.

- Investigation capabilities over web-related threat activity through alerts and comprehensive profiles of URLs and the devices that access these URLs.

- A full set of security features that track general access trends to malicious and unwanted websites.

For more information, see [Web threat protection](web-threat-protection.md).

### Web content filtering

The cards that comprise web content filtering are **Web activity by category**, **Web content filtering summary**, and **Web activity summary**.

Web content filtering includes:

- Users are prevented from accessing websites in blocked categories, whether they are browsing on-premises or away.

- You can conveniently deploy varied policies to various sets of users using the device groups defined in the [Microsoft Defender for Endpoint role-based access control settings](/microsoft-365/security/defender-endpoint/rbac).

- You can access web reports in the same central location, with visibility over actual blocks and web usage.

For more information, see [Web content filtering](web-content-filtering.md).

## How does web protection work?

Web Protection is made up of the following components, listed in order of precedence. Each of these components are enforced by the SmartScreen client in Microsoft Edge and by the Network Protection client in all other browsers/processes. 

- Custom indicator (IP URL/AB, Microsoft Cloud App Security (MCAS) Block/Warn (Preview))

- Web threats (malware, phish, etc.)

    - SmartScreen Intel, including Exchange Online Protection (EOP)
    - Fast pipe/escalations

- Windows Communication Foundation (WCF)

- MCAS allow

The order of precedence above relates to the order of operations by which a URL or IP is evaluated. For example, a customer who has a web content filtering policy can create exclusions through custom IP/URL indicators, since custom IoC’s are higher in the order of precedence than WCF blocks. 

When there is a conflict, MCAS allow always take precedence over blocks (override logic), meaning that an allow indicator will win over any block indicator further down the stack. Similarly, for web threats, the E5 custom indicator list is checked before web threats. But, MCAS allows will not remediate WCF or SmartScreen.

Internal IP addresses are not supported by custom indicators. Also, for a warn policy, when bypassed by the end user, the site will be unblocked for 24 hours for that user by default (this time frame can be modified by the Admin and is passed down by the SmartScreen cloud service). The ability to bypass a warning can also be disabled via CSP for web threat blocks (malware/phish). For more information, see [Policy CSP - Browser - Windows Client Management](/windows/client-management/mdm/policy-csp-browser#browser-preventsmartscreenpromptoverride).

### Network protection (NP) client

Here's the order of checks for Network Protection: 

- Local cache of allows/warns/blocks

- Local Bloom filter (BF)

    - Known bad sites (a hit on the BF means the site is likely malicious) (supportUris)

    - Hash of custom indicators for the device (customSupportedUris)

- Service call (SmartScreen service, regardless of BF hit)

    - Check E5 custom list (check if the URL is a custom indicator and what the policy is)

    - Check intel (top traffic, Fastpipe, SPURF, BURF) (**Need full form of SPURF and BURF**)

    - Check E5 categories

At any point in time in the above stack, an allow/block will result in an immediate break and the response will be issued to the client, otherwise the checks will continue until the above list is exhausted. If no matches are found, an allow response is issued. 

### SmartScreen (SS) client 

The SmartScreen flow is slightly more complicated than the Network Protection flow. SmartScreen makes both synchronous and asynchronous calls to the service, whereas Network Protection makes only synchronous calls.  

The order of checks for SmartScreen is as follows: 

- Local cache of allows (blocks are not cached)

- Local Bloom filter

    - Contains known bad sites (a hit on the BF means the site is likely malicious)

- Make synchronous calls

    - E5 custom list

- Make asynchronous calls

    - Top traffic

    - Web content filtering

### Leverage the SS and NP clients together

In all our Web Protection scenarios, SmartScreen and Network Protection can be leveraged together to provide multiple browser support. SmartScreen is built directly into Edge (and can be leveraged even if defender is in passive mode), meaning that the Network Protection client does not evaluate the Edge traffic. Conversely, the Network Protection client is responsible for evaluating traffic in 3rd party browsers and processes, meaning that the SmartScreen client is not involved in evaluating traffic in 3rd party browsers. If something is overridden, such as a custom indicator being used to override a WCF policy, both the Network Protection client and the SmartScreen client leverage this policy information. 

Both the Network Protection client and the SmartScreen client leverage the SmartScreen cloud service for information. What this means is that the responses sent back to the client are standardized across the board. From a support perspective, this means that tools like Fiddler can be used to inspect the response from the service, which will help determine the source of the block in cases that it is unclear. 

When the SmartScreen cloud service responds with an allow, block or warn response, there is a response category and server context relayed back to the client. In Edge, the response category is what is used to determine the appropriate block page to show (i.e. malicious, phishing, organizational policy).

### SmartScreen cloud service

The SmartScreen cloud service leverages multiple sources of information to provide URL determinations to the SmartScreen and Network Protection clients. This includes 3rd party feeds, internal graders and researchers, detonation services, ML models and other algorithms. When a request is received from the client, it goes through all the checks outlined above. 

One of the more important aspects of this service is how it determines whether a URL should be blocked by policy. When a customer creates an indicator, MCAS or WCF policy, the policy is created using the Indicator API. The Indicator API provides definitions for typical indicator policies as well as for Web Content Filtering policies. Once a policy is created using one of these definitions, the ATP Sync service ensures that the policy is stored in the List API, which is referenced by the SmartScreen cloud service when making URL determinations. 

### Bloom filter and top traffic

Both the SmartScreen client and the Network Protection client contain bloom filters that can be checked prior to making a call to the cloud service. Below is a summary of specifically what is included in each filter. 

**Bloom Filter (Non-Custom)**: 

- For NP: 

    - Size: 4MB 

    - Number of Entry: 5000. 

    - It contains malicious content and exploits.  

    - BF (for the NP) stores all results (Blocked- shorter cache time and Allowed- longer cache time) 

- For SmartScreen client for Edge: 

    - Anaheim (SSC for Edge) uses the BF for exploits synchronously. 

    - Anaheim could function asynchronously by making a reputation call to the server. It will start loading content while waiting for reputation call check to come back. This is the case for WCF and Top Traffic. 

    - Anaheim BF captures only allows not blocks. After about 142 minutes, it will send another reputation call for allowed URLs. 

**Top Traffic (TT)**: It means a reputation call to the server should not be made. 

- For Anaheim:  

    - It is a bloom filter that is used by Anaheim, not NP, to check for a top traffic URL without a reputation call. 

- For NP: 

    - NP includes TT information in its telemetry before sending it to the server.  

**Bloom Filter for E5 Customers (Custom Indicator Bloom filter)**: If an organization sets a custom indicator to allow/block specific sites, BF for E5 will be constructed, and it will be sent to the SSC for synchronous check reputation. 

**WCF**: It does not use a BF. Orgs have several categories to choose from – allow or block. Note that if WCF is enabled, a cloud call is ALWAYS made to determine the category. This is done through a flag on the client (ForceServiceDetermination = True) 

**Do Not Call List**: It is a hash BF that works only for NP. More specifically, it contains domains that should never trigger a service call (I.e. Windows Update requests, etc.) 

## User experience based on block type

In the case that a user visits a web page that is either deemed malicious or phishing, Edge will trigger a block page that reads ‘This site has been reported as unsafe’ along with information around malware/phishing threats. In this case, it is very clear to the user that the site is dangerous. 

(Add image)

When being blocked by WCF or a custom indicator, a block page shows in Edge that tells the user this site has been blocked by their organization. The page on the left below is the WCF version, triggered by a response category of ‘CustomPolicy’, while the page on the right is correlated to ‘CustomBlockList’, which is a custom indicator block. 

(Add image)

In any case, no block pages are shown in 3rd party browsers, and the user sees a ‘Secure Connection Failed’ page along with a toast notification. Depending on the policy responsible for the block a user will see a different message. For example, Web Content Filtering will display the message ‘This content is blocked’. Network Protection events will soon be suppressed for the end user in the case that there are multiple blocks firing at the same time, though this will not reduce the amount of data sent to Sense. 

(Add image)

## Report false positives

Reporting false positives for SmartScreen, WCF and other services is offered through a number of different options.  

For WCF, customers report inaccuracies in WCF categorizations through the M365D Security Center. Customers can navigate to the ‘Domains’ tab of their Web Content Filtering reports where they will see a small vertical ellipsis beside each domain. Clicking ‘Report Inaccuracy’ will trigger a panel that allows the customers to set the priority of the dispute and provide some additional details, such as the suggested category. 

When being blocked in Edge by Web Threats (malware/phishing), customers can click the feedback link on the block page to report the site as safe.

(Add image)

For more information on how to submit false positives/negatives, see [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md).