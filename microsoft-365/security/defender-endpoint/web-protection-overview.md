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

## About web protection

Web protection in Microsoft Defender for Endpoint is a capability made up of [Web threat protection](web-threat-protection.md), [Web content filtering](web-content-filtering.md), and [Custom indicators](manage-indicators.md). Web protection lets you secure your devices against web threats and helps you regulate unwanted content. You can find Web protection reports in the Microsoft 365 Defender portal by going to **Reports > Web protection**.

![Image of all web protection cards](images/web-protection.png)

### Web threat protection

The cards that make up web threat protection are **Web threat detections over time** and **Web threat summary**.

Web threat protection includes:

- Comprehensive visibility into web threats affecting your organization.

- Investigation capabilities over web-related threat activity through alerts and comprehensive profiles of URLs and the devices that access these URLs.

- A full set of security features that track general access trends to malicious and unwanted websites.

For more information, see [Web threat protection](web-threat-protection.md).

### Custom indicators

Custom indicator detections are also summarized in your organizations web threat reports under **Web threat detections over time** and **Web threat summary**.

Custom indicator includes:

- Ability to create IP and URL-based indicators of compromise to protect your organization against threats.

- Investigation capabilities over activities related to your custom IP/URL profiles and the devices that access these URLs.

- The ability to create Allow, Block, and Warn policies for IPs and URLs.

For more information, see [Create indicators for IPs and URLs/domains](indicator-ip-domain.md)

### Web content filtering

Web content filtering includes **Web activity by category**, **Web content filtering summary**, and **Web activity summary**.

Web content filtering includes:

- Users are prevented from accessing websites in blocked categories, when browsing on-premises or away.

- You can deploy varied policies to various sets of users using the device groups defined in the [Microsoft Defender for Endpoint role-based access control settings](/microsoft-365/security/defender-endpoint/rbac).

- You can access web reports in the same central location, with visibility over actual blocks and web usage.

For more information, see [Web content filtering](web-content-filtering.md).

## Order of Precedence

Web protection is made up of the following components, listed in order of precedence. Each of these components is enforced by the SmartScreen client in Microsoft Edge and by the Network Protection client in all other browsers and processes.

- Custom indicator (IP/URL, Microsoft Cloud App Security (MCAS) allow)

    - Allow
    - Warn
    - Block

- Web threats (malware, phish)

    - SmartScreen Intel, including Exchange Online Protection (EOP)
    - Escalations

- Web Content Filtering (WCF)

The order of precedence relates to the order of operations by which a URL or IP is evaluated. For example, if you have a web content filtering policy you can create exclusions through custom IP/URL indicators. Custom Indicator of compromises (IoC) are higher in the order of precedence than WCF blocks. 

Similarly, during a conflict between indicators, allows always take precedence over blocks (override logic), which means that an allow indicator will win over any block indicator that is present.

The table below summarizes some common configurations that would present conflicts within the web protection stack, and identifies the resulting determinations based on the precedence listed above. 

<br>

****

|Custom Indicator policy|Web threat policy|WCF policy|MCAS policy|Result|
|---|---|---|---|---|
|Allow|Block|Block|Block|Allow (Web protection override)|
|Allow|Allow|Block|Block|Allow (WCF exception)|
|Warn|Block|Block|Block|Warn (override)|

Internal IP addresses are not supported by custom indicators. For a warn policy when bypassed by the end user, the site will be unblocked for 24 hours for that user by default. This time frame can be modified by the Admin and is passed down by the SmartScreen cloud service. The ability to bypass a warning can also be disabled in Microsoft Edge via CSP for web threat blocks (malware/phishing). For more information, see [Microsoft Edge SmartScreen Settings](/DeployEdge/microsoft-edge-policies#smartscreen-settings-policies).

## Protect browsers

In all web protection scenarios, SmartScreen and Network Protection can be used together to ensure protection across both first and third party browsers and processes. SmartScreen is built directly into Microsoft Edge, while Network Protection monitors traffic in third party browsers and processes. The diagram below illustrates this concept. This diagram of the two clients working together to provide multiple browser/app coverages is accurate for all features of Web Protection (Indicators, Web Threats, Content Filtering).

(Add image)

## Troubleshoot endpoint blocks

Responses from the SmartScreen cloud are standardized, meaning that tools such as Fiddler can be used to inspect the response from the cloud service, which will help determine the source of the block in cases where it is unclear. 

When the SmartScreen cloud service responds with an allow, block, or warn response, there is a response category and server context relayed back to the client. In Edge, the response category is what is used to determine the appropriate block page to show (malicious, phishing, organizational policy).

The table below shows the responses and their correlated features.  

<br>

****

|ResponseCategory|Feature responsible for the block|
|---|---|
|CustomPolicy|WCF|
|CustomBlockList|Custom indicators|
|CasbPolicy|MCAS|
|Malicious|Web threats|
|Phishing|Web threats|

## Advanced hunting for web protection

The advanced hunting query can easily be used to summarize the web protection blocks in your organization for the past 30 days. It uses the information listed above to distinguish between the various sources of blocks and summarize them in a user-friendly manner. Note that this query is only for Network Protection.  

(Add code example)

## User experience

In the case that a user visits a web page that poses a risk of malware, phishing or other web threats, Edge will trigger a block page that reads ‘This site has been reported as unsafe’ along with information around related to the threat. In this case, it is made clear to the user that the site is dangerous. 

(Add image)

When being blocked by WCF or a custom indicator, a block page shows in Edge that tells the user this site has been blocked by their organization.

(Add image)

In any case, no block pages are shown in third-party browsers, and the user sees a ‘Secure Connection Failed’ page along with a toast notification. Depending on the policy responsible for the block, a user will see a different message in the toast notification. For example, web content filtering will display the message ‘This content is blocked’. 

(Add image)

## Report false positives

To report a false positive for sites that have been deemed dangerous by SmartScreen, use the link that appears on the block page in Microsoft Edge (as shown above).

For WCF, you can dispute the category of a domain through the Microsoft 365 security center. Navigate to the **Domains** tab of the WCF reports and then click **Report Inaccuracy**. A flyout will open which will allow you to set the priority of the incident and provide some additional details, such as the suggested category. For more information on how to turn on WCF and how to dispute categories, see [Web content filtering](web-content-filtering.md).

For more information on how to submit false positives/negatives, see [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md).

## Related information

- [Create indicators for IPs and URLs/domains](indicator-ip-domain.md)
- [Turn on network protection](enable-network-protection.md)
