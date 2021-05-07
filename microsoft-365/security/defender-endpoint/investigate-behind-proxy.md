---
title: Investigate connection events that occur behind forward proxies
description: Learn how to use advanced HTTP level monitoring through network protection in Microsoft Defender for Endpoint, which surfaces a real target, instead of a proxy.
keywords: proxy, network protection, forward proxy, network events, audit, block, domain names, domain
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
ms.topic: article
ms.technology: mde
---

# Investigate connection events that occur behind forward proxies

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-investigatemachines-abovefoldlink)

Defender for Endpoint supports network connection monitoring from different levels of the network stack. A challenging case is when the network uses a forward proxy as a gateway to the Internet.

The proxy acts as if it was the target endpoint.  In these cases, simple network connection monitors will audit the connections with the proxy which is correct but has lower investigation value. 

Defender for Endpoint supports advanced HTTP level monitoring through network protection. When turned on, a new type of event is surfaced which exposes the real target domain names.

## Use network protection to monitor network connection behind a firewall
Monitoring network connection behind a forward proxy is possible due to additional network events that originate from network protection. To see them on a device timeline, turn network protection on (at the minimum in audit mode). 

Network protection can be controlled using the following modes:

- **Block** <br> Users or apps will be blocked from connecting to dangerous domains. You will be able to see this activity in Microsoft Defender Security Center.
- **Audit** <br> Users or apps will not be blocked from connecting to dangerous domains. However, you will still see this activity in Microsoft Defender Security Center.


If you turn network protection off, users or apps will not be blocked from connecting to dangerous domains. You will not see any network activity in Microsoft Defender Security Center.

If you do not configure it, network blocking will be turned off by default.

For more information, see [Enable network protection](enable-network-protection.md).

## Investigation impact
When network protection is turned on, you'll see that on a device's timeline the IP address will keep representing the proxy, while the real target address shows up.

![Image of network events on device's timeline](images/atp-proxy-investigation.png)

Additional events triggered by the network protection layer are now available to surface the real domain names even behind a proxy.

Event's information:

![Image of single network event](images/atp-proxy-investigation-event.png)



## Hunt for connection events using advanced hunting 
All new connection events are available for you to hunt on through advanced hunting as well. Since these events are connection events, you can find them under the DeviceNetworkEvents table under the `ConnecionSuccess` action type.

Using this simple query will show you all the relevant events:

```
DeviceNetworkEvents
| where ActionType == "ConnectionSuccess" 
| take 10
```

![Image of advanced hunting query](images/atp-proxy-investigation-ah.png)

You can also filter out  events that are related to connection to the proxy itself. 

Use the following query to filter out the connections to the proxy:

```
DeviceNetworkEvents
| where ActionType == "ConnectionSuccess" and RemoteIP != "ProxyIP"  
| take 10
```



## Related topics
- [Applying network protection with GP - policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-defender#defender-enablenetworkprotection)
