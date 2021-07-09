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

Web content filtering includes **Web activity by category**, **Web content filtering summary**, and **Web activity summary**.

Web content filtering includes:

- Users are prevented from accessing websites in blocked categories, when browsing on-premises or away.

- You can deploy varied policies to various sets of users using the device groups defined in the [Microsoft Defender for Endpoint role-based access control settings](/microsoft-365/security/defender-endpoint/rbac).

- You can access web reports in the same central location, with visibility over actual blocks and web usage.

For more information, see [Web content filtering](web-content-filtering.md).

## Components of web protection

Web protection is made up of the following components, listed in order of precedence. Each of these components is enforced by the SmartScreen client in Microsoft Edge and by the Network Protection client in all other browsers and processes. 

- Custom indicator (IP URL/AB, Microsoft Cloud App Security (MCAS) Block/Warn (Preview))

- Web threats (malware, phish)

    - SmartScreen Intel, including Exchange Online Protection (EOP)
    - Escalations

- Web Content Filtering (WCF)

- MCAS allow

The order of precedence relates to the order of operations by which a URL or IP is evaluated. For example, if you have a web content filtering policy you can create exclusions through custom IP/URL indicators. Custom Indicator of compromises (IoC) are higher in the order of precedence than WCF blocks. 

During a conflict, MCAS allow always take precedence over blocks (override logic), which means that an allow indicator will win over any block indicator further down the stack. Similarly, for web threats, the E5 custom indicator list is checked before web threats. But, MCAS allow won't remediate WCF or SmartScreen.

The table below summarizes some common configurations that would present conflicts within the web protection stack, and identifies the resulting determinations based on the precedence listed above. 

<br>

****

|Custom IoC policy|Web threat policy|WCF policy|MCAS policy|Result|
|---|---|---|---|---|
|Allow|Block|Block|Block|Allow (Web protection override)|
|Allow|Allow|Block|Block|Allow (WCF exception)|
|Warn|Block|Block|Block|Warn (override)|
|No policy|Allow|Block|Sanctioned (allow)|Block (MCAS allow does not generate indicators)|

Internal IP addresses are not supported by custom indicators. For a warn policy when bypassed by the end user, the site will be unblocked for 24 hours for that user by default. This time frame can be modified by the Admin and is passed down by the SmartScreen cloud service. The ability to bypass a warning can also be disabled via CSP for web threat blocks (malware/phish). For more information, see [Policy CSP - Browser - Windows Client Management](/windows/client-management/mdm/policy-csp-browser#browser-preventsmartscreenpromptoverride).

## Use the SmartScreen and Network Protection clients together

In all web protection scenarios, SmartScreen (SS) and Network Protection (NP) can be used together to provide multiple browser supports. SmartScreen is built directly into Edge and can be used even if defender is in passive mode, which means that the NP client does not evaluate the Edge traffic. Conversely, the NP client is responsible for evaluating traffic in third-party browsers and processes, meaning that the SmartScreen client is not involved in evaluating traffic in third-party browsers. 

The diagram below illustrates this concept. Both clients call into the same SmartScreen cloud service, but which client calls in is entirely dependent on the browser being used. 

This diagram of the two clients working together to provide multiple browser/app coverage is accurate for all features in the Web Protection stack (WT, WCF, MCAS, Indicators). 

(Add image)

## Troubleshoot endpoint blocks

Both the Network Protection client and the SmartScreen client use the SmartScreen cloud service for information. Which means, the responses sent back to the client are standardized across the board. Tools like Fiddler can be used to inspect the response from the service, which will help determine the source of the block in cases where it is unclear. 

When the SmartScreen cloud service responds with an allow, block, or warn response, there is a response category and server context relayed back to the client. In Edge, the response category is what is used to determine the appropriate block page to show (for example, malicious, phishing, organizational policy).

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

## User experience based on block type

In the case that a user visits a web page that is either deemed malicious or phishing, Edge will trigger a block page that reads ‘This site has been reported as unsafe’ along with information around malware/phishing threats. In this case, it is clear to the user that the site is dangerous. 

(Add image)

When being blocked by WCF or a custom indicator, a block page shows in Edge that tells the user this site has been blocked by their organization. The page on the left below is the WCF version, triggered by a response category of ‘CustomPolicy’, while the page on the right is correlated to ‘CustomBlockList’, which is a custom indicator block. 

(Add image)

In any case, no block pages are shown in third-party browsers, and the user sees a ‘Secure Connection Failed’ page along with a toast notification. Depending on the policy responsible for the block, a user will see a different message. For example, web content filtering will display the message ‘This content is blocked’. 

(Add image)

## Report false positives

Reporting false positives for SmartScreen, WCF, and other services is offered through many different options.  

For WCF, you can report inaccuracies in WCF categorizations through the Microsoft 365 security center. Navigate to the **Domains** tab of the WCF reports and then click **Report Inaccuracy**. A flyout will open which will alow you to set the priority of the incident and provide some additional details, such as the suggested category. For more information on how to turn on WCF and report inaccuracies, see [Web content filtering](web-content-filtering.md).

When being blocked in Edge by Web Threats (malware/phishing), you can click the feedback link on the block page to report the site as safe.

(Add image)

For more information on how to submit false positives/negatives, see [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md).

## Related information

- [Create indicators](manage-indicators.md)
- [Turn on network protection](enable-network-protection.md)