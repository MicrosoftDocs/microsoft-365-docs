---
title: Web protection
description: Learn about the web protection in Microsoft Defender for Endpoint and how it can protect your organization
keywords: web protection, web threat protection, web browsing, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser, malicious websites
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
ms.date: 12/16/2022
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
---

# Web protection

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-main-abovefoldlink&rtc=1)

## About web protection

Web protection in Microsoft Defender for Endpoint is a capability made up of [Web threat protection](web-threat-protection.md), [Web content filtering](web-content-filtering.md), and [Custom indicators](manage-indicators.md). Web protection lets you secure your devices against web threats and helps you regulate unwanted content. You can find Web protection reports in the Microsoft 365 Defender portal by going to **Reports > Web protection**.

:::image type="content" source="images/web-protection.png" alt-text="The web protection cards" lightbox="images/web-protection.png":::

### Web threat protection

The cards that make up web threat protection are **Web threat detections over time** and **Web threat summary**.

Web threat protection includes:

- Comprehensive visibility into web threats affecting your organization.
- Investigation capabilities over web-related threat activity through alerts and comprehensive profiles of URLs and the devices that access these URLs.
- A full set of security features that track general access trends to malicious and unwanted websites.

> [!NOTE]
> For processes other than Microsoft Edge and Internet Explorer, web protection scenarios leverage Network Protection for inspection and enforcement:
>
> - IP is supported for all three protocols (TCP, HTTP, and HTTPS (TLS)).
> - Only single IP addresses are supported (no CIDR blocks or IP ranges) in custom indicators.
> - Encrypted URLs (full path) can only be blocked on first party browsers (Internet Explorer, Edge).
> - Encrypted URLs (FQDN only) can be blocked in third party browsers (i.e. other than Internet Explorer, Edge).
> - Full URL path blocks can be applied for unencrypted URLs.
>
> There may be up to 2 hours of latency (usually less) between the time the action is taken, and the URL and IP being blocked.

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

- Users are prevented from accessing websites in blocked categories, whether they are browsing on-premises or away.
- You can conveniently deploy varied policies to various sets of users using the device groups defined in the [Microsoft Defender for Endpoint role-based access control settings](/microsoft-365/security/defender-endpoint/rbac).
    > [!NOTE]
    > Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.
- You can access web reports in the same central location, with visibility over actual blocks and web usage.

For more information, see [Web content filtering](web-content-filtering.md).

## Order of precedence

Web protection is made up of the following components, listed in order of precedence. Each of these components is enforced by the SmartScreen client in Microsoft Edge and by the Network Protection client in all other browsers and processes.

- Custom indicators (IP/URL, Microsoft Defender for Cloud Apps policies)
  - Allow
  - Warn
  - Block

- Web threats (malware, phish)
  - SmartScreen Intel, including Exchange Online Protection (EOP)
  - Escalations

- Web Content Filtering (WCF)

> [!NOTE]
> Microsoft Defender for Cloud Apps currently generates indicators only for blocked URLs.

The order of precedence relates to the order of operations by which a URL or IP is evaluated. For example, if you have a web content filtering policy you can create exclusions through custom IP/URL indicators. Custom Indicators of compromise (IoC) are higher in the order of precedence than WCF blocks.

Similarly, during a conflict between indicators, allows always take precedence over blocks (override logic). That means that an allow indicator will win over any block indicator that is present.

The table below summarizes some common configurations that would present conflicts within the web protection stack. It also identifies the resulting determinations based on the precedence listed above.

<br>

****

|Custom Indicator policy|Web threat policy|WCF policy|Defender for Cloud Apps policy|Result|
|---|---|---|---|---|
|Allow|Block|Block|Block|Allow (Web protection override)|
|Allow|Allow|Block|Block|Allow (WCF exception)|
|Warn|Block|Block|Block|Warn (override)|
|

Internal IP addresses are not supported by custom indicators. For a warn policy when bypassed by the end user, the site will be unblocked for 24 hours for that user by default. This time frame can be modified by the Admin and is passed down by the SmartScreen cloud service. The ability to bypass a warning can also be disabled in Microsoft Edge using CSP for web threat blocks (malware/phishing). For more information, see [Microsoft Edge SmartScreen Settings](/DeployEdge/microsoft-edge-policies#smartscreen-settings-policies).

## Protect browsers

In all web protection scenarios, SmartScreen and Network Protection can be used together to ensure protection across both first and third-party browsers and processes. SmartScreen is built directly into Microsoft Edge, while Network Protection monitors traffic in third-party browsers and processes. The diagram below illustrates this concept. This diagram of the two clients working together to provide multiple browser/app coverages is accurate for all features of Web Protection (Indicators, Web Threats, Content Filtering).

:::image type="content" source="../../media/web-protection-protect-browsers.png" alt-text="The usage of smartScreen and Network Protection together" lightbox="../../media/web-protection-protect-browsers.png":::

## Troubleshoot endpoint blocks

Responses from the SmartScreen cloud are standardized. Tools like Fiddler can be used to inspect the response from the cloud service, which will help determine the source of the block.

When the SmartScreen cloud service responds with an allow, block, or warn response, a response category and server context is relayed back to the client. In Microsoft Edge, the response category is what is used to determine the appropriate block page to show (malicious, phishing, organizational policy).

The table below shows the responses and their correlated features.

<br>

****

|ResponseCategory|Feature responsible for the block|
|---|---|
|CustomPolicy|WCF|
|CustomBlockList|Custom indicators|
|CasbPolicy|Defender for Cloud Apps|
|Malicious|Web threats|
|Phishing|Web threats|
|||

## Advanced hunting for web protection

Kusto queries in advanced hunting can be used to summarize web protection blocks in your organization for up to 30 days. These queries use the information listed above to distinguish between the various sources of blocks and summarize them in a user-friendly manner. For example, the query below lists all WCF blocks originating from Microsoft Edge.

```kusto
DeviceEvents
| where ActionType == "SmartScreenUrlWarning"
| extend ParsedFields=parse_json(AdditionalFields)
| project DeviceName, ActionType, Timestamp, RemoteUrl, InitiatingProcessFileName, Experience=tostring(ParsedFields.Experience)
| where Experience == "CustomPolicy"
```

Similarly, you can use the query below to list all WCF blocks originating from Network Protection (for example, a WCF block in a third-party browser). Note that the ActionType has been updated and 'Experience' has been changed to 'ResponseCategory'.

```kusto
DeviceEvents
| where ActionType == "ExploitGuardNetworkProtectionBlocked"
| extend ParsedFields=parse_json(AdditionalFields)
| project DeviceName, ActionType, Timestamp, RemoteUrl, InitiatingProcessFileName, ResponseCategory=tostring(ParsedFields.ResponseCategory)
| where ResponseCategory == "CustomPolicy"
```

To list blocks that are due to other features (like Custom Indicators), refer to the table above outlining each feature and their respective response category. These queries may also be modified to search for telemetry related to specific machines in your organization. Note that the ActionType shown in each query above will show only those connections that were blocked by a Web Protection feature, and not all network traffic.

## User experience

If a user visits a web page that poses a risk of malware, phishing, or other web threats, Microsoft Edge will trigger a block page that reads 'This site has been reported as unsafe' along with information related to the threat.

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/web-protection-malicious-block.png" alt-text="The page blocked by Microsoft Edge" lightbox="../../media/web-protection-malicious-block.png":::

If blocked by WCF or a custom indicator, a block page shows in Microsoft Edge that tells the user this site is blocked by their organization.

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/web-protection-indicator-blockpage.png" alt-text="The page blocked by your organization" lightbox="../../media/web-protection-indicator-blockpage.png":::

In any case, no block pages are shown in third-party browsers, and the user sees a "Secure Connection Failed' page along with a toast notification. Depending on the policy responsible for the block, a user will see a different message in the toast notification. For example, web content filtering will display the message 'This content is blocked'.

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/web-protection-np-block.png" alt-text="The page blocked by WCF" lightbox="../../media/web-protection-np-block.png":::

## Report false positives

To report a false positive for sites that have been deemed dangerous by SmartScreen, use the link that appears on the block page in Microsoft Edge (as shown above).

For WCF, you can dispute the category of a domain. Navigate to the **Domains** tab of the WCF reports. You will see an ellipsis beside each of the domains. Hover over this ellipsis and select **Dispute Category**. A flyout will open. Set the priority of the incident and provide some additional details, such as the suggested category. For more information on how to turn on WCF and how to dispute categories, see [Web content filtering](web-content-filtering.md).

For more information on how to submit false positives/negatives, see [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md).

## Related information

<br>

****

|Topic|Description|
|---|---|
|[Web threat protection](web-threat-protection.md) | Stop access to phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, and sites that you have blocked.|
|[Web content filtering](web-content-filtering.md) | Track and regulate access to websites based on their content categories.|
|
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
