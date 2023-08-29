---
title: Investigate connection events that occur behind forward proxies
description: Learn how to use advanced HTTP level monitoring through network protection in Microsoft Defender for Endpoint, which surfaces a real target, instead of a proxy.
keywords: proxy, network protection, forward proxy, network events, audit, block, domain names, domain
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Investigate connection events that occur behind forward proxies

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigatemachines-abovefoldlink)

Defender for Endpoint supports network connection monitoring from different levels of the network stack. A challenging case is when the network uses a forward proxy as a gateway to the Internet.

The proxy acts as if it was the target endpoint. In these cases, simple network connection monitors audit the connections with the proxy that is correct but has lower investigation value.

Defender for Endpoint supports advanced HTTP level monitoring through network protection. When turned on, a new type of event is surfaced which exposes the real target domain names.

## Use network protection to monitor network connection behind a firewall

Monitoring network connection behind a forward proxy is possible due to other network events that originate from network protection. To see them on a device timeline, turn on network protection (at the minimum in audit mode).

Network protection can be controlled using the following modes:

- **Block**: Users or apps are blocked from connecting to dangerous domains. You'll be able to see this activity in Microsoft 365 Defender.
- **Audit**: Users or apps won't be blocked from connecting to dangerous domains. However, you'll still see this activity in Microsoft 365 Defender.


If you turn off network protection, users or apps won't be blocked from connecting to dangerous domains. You won't see any network activity in Microsoft 365 Defender.

If you don't configure it, network blocking is turned off by default.

For more information, see [Enable network protection](enable-network-protection.md).

## Investigation impact

When network protection is turned on, you'll see that on a device's timeline the IP address keeps representing the proxy, while the real target address shows up.

:::image type="content" source="images/atp-proxy-investigation.png" alt-text="The network events on device's timeline" lightbox="images/atp-proxy-investigation.png":::

Other events triggered by the network protection layer are now available to surface the real domain names even behind a proxy.

Event's information:

:::image type="content" source="images/atp-proxy-investigation-event.png" alt-text="The URLs of a single network event" lightbox="images/atp-proxy-investigation-event.png":::

## Hunt for connection events using advanced hunting

All new connection events are available for you to hunt on through advanced hunting as well. Since these events are connection events, you can find them under the DeviceNetworkEvents table under the `ConnecionSuccess` action type.

Using this simple query shows you all the relevant events:

```console
DeviceNetworkEvents
| where ActionType == "ConnectionSuccess"
| take 10
```

:::image type="content" source="images/atp-proxy-investigation-ah.png" alt-text="The advanced hunting query" lightbox="images/atp-proxy-investigation-ah.png":::

You can also filter out  events that are related to connection to the proxy itself.

Use the following query to filter out the connections to the proxy:

```console
DeviceNetworkEvents
| where ActionType == "ConnectionSuccess" and RemoteIP != "ProxyIP"
| take 10
```

## Related articles

- [Applying network protection with GP - policy CSP](/windows/client-management/mdm/policy-csp-defender#defender-enablenetworkprotection)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
