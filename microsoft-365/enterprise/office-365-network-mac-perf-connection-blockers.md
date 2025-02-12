---  
title: "Reviewing network connection failures for your tenant users when they connect to Microsoft 365 services"  
description: Understanding Connection Error Rate and WSS Error Rate in Microsoft 365 Network Connectivity
author: kelleyvice-msft
ms.author: kvice  
manager: scotv
ms.date: 12/04/2024  
ms.topic: conceptual
ms.service: microsoft-365-enterprise  
ms.subservice: network  
ms.localizationpriority: medium
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- must-keep
ms.custom: QuickDraft
ms.reviewer: roshanp  
search.appverid: MET150  
f1.keywords: 
audience: 
---  

# Reviewing network connection failures for your tenant users when they connect to Microsoft 365 services

In the network connectivity space, understanding failure rates is crucial for maintaining consistent connectivity and enhancing user experience. This article aims to explain two significant failure rates: the **Connection Error Rate** and the **WSS Error Rate**. Both metrics are prominently displayed on the new **Connection Blockers** page in Microsoft 365 network connectivity page in the admin center. This is a tenant level summarization of network connection failures experienced by your tenant users when they connect to Microsoft 365 services using Microsoft 365 apps on Windows devices with OneDrive for Business installed, the objective is to keep these failure rates low.

:::image type="content" source="../media/m365-mac-perf/m365-mac-perf-connection-blockers-main.png" alt-text="Microsoft 365 network connectivity connection blockers tool":::
 
## Connection Error Rate

The Connection Error Rate represents the percentage of HTTPS connection attempts that fail when attempting to reach a specific domain, for example `*.cloud.microsoft`, `*.static.microsoft` or `*.usercontent.microsoft`, or any of the subdomains part of these domains. This metric is critical as it highlights the lack of connectivity to a specific domain. A high connection error rate can indicates underlying customer network infrastructure issues that require prompt attention.

Understanding and monitoring the Connection Error Rate is vital for several reasons:

- **Network Reliability**: A high connection error rate can signal potential problems in the network infrastructure, such as DNS resolution failures, or misconfigurations that result in connections being blocked.
- **User Experience**: Frequent connection failures can lead to poor user experience, affecting productivity and satisfaction.

### Calculating Connection Error Rate

The Connection Error Rate is calculated using the formula:

- Connection Error Rate (%) = (Number of Failed Connections / Total Connection Attempts) x 100

For instance, if there are 50 failed connections out of 1000 attempts, the connection error rate would be:

- (50 / 1000) x 100 = 5%

### Common Causes and Mitigations for High Connection Error Rate

Various factors can contribute to a high connection error rate, including:

- **DNS Issues**: Problems with domain name resolution can prevent successful connections. Ensure DNS resolvers are correctly configured to resolve names required for Microsoft 365 services as described in [Microsoft 365 URLs and IP address ranges](https://aka.ms/m365endpoints). 
- **Proxy Restrictions**: Incorrectly configured web proxies can block traffic to specific domains. Ensure web proxies are configured to allow connections to required domains for Microsoft 365 like `*.cloud.microsoft`, `*.static.microsoft`, and `*.usercontent.microsoft`. Refer to [Microsoft 365 URLs and IP address ranges](https://aka.ms/m365endpoints) for the complete list. 
- **Incorrect categorization of domain**: if the domain is incorrectly categorized, it can block legitimate traffic. Ensure domains and subdomains in `*.cloud.microsoft`, `*.static.microsoft`, and `*.usercontent.microsoft` are correctly categorized to avoid legitimate traffic being blocked.

## WSS Error Rate

The WSS (WebSocket Secure) Error Rate refers to the percentage of failed attempts to upgrade a connection to a WebSocket, a protocol that provides full-duplex communication channels over a single TCP connection. This metric is essential for applications relying on real-time data transmission; for example, Microsoft 365 Copilot. 

Monitoring the WSS Error Rate is crucial for:

- **Real-Time Applications**: All scenarios involving Microsoft 365 Copilot rely on WebSocket connections for real-time communication.
- **Insight**: A high WSS error rate can indicate issues with the network or server configurations affecting real-time data flow.

### Calculating WSS Error Rate

The WSS Error Rate is calculated similarly to the connection error rate:

- WSS Error Rate (%) = (Number of Failed WebSocket Upgrades / Total WebSocket Upgrade Attempts) x 100
For example, if there are 30 failed WebSocket upgrades out of 600 attempts, the WSS error rate would be:
- (30 / 600) x 100 = 5%

### Common Causes and Mitigations for High WSS Error Rate

- Web proxy restrictions: web proxies blocking websocket upgrades can cause upgrade failures, so configure web proxies to allow protocol upgrade to websockets.
- Sometimes web proxies might be configured to allow websocket upgrades to specific domains or subdomains. In this scenario, you might want to configure the web proxy to allow websockets for subdomains in `*.cloud.microsoft` and `*.office.com`.

## Using the Connection Blockers Page in the Microsoft 365 admin center

The new Connection Blockers page in the Microsoft 365 admin center under Network Connectivity is designed to provide administrators with a comprehensive view of connection error rates and WSS error rates. This page allows for proactive monitoring and troubleshooting.

### Navigating the Connection Blockers Page

To access the Connection Blockers page:

- Sign in to the Microsoft 365 admin center.
- Navigate to the **Network Connectivity** section under **Health**
- Select **Connection Blockers** from the menu.

### Interpreting the Data

The Connection Blockers page displays:

- **Connection Error Rate**: Visual representation of connection failure rates to specific domains.
- **WSS Error Rate**: Visual representation showing the rate of WebSocket upgrade failures.

Use this data to identify patterns, diagnose issues, and implement corrective measures.

## Conclusion

Both Connection Error Rate and WSS Error Rate are critical metrics for ensuring robust and reliable network connectivity to Microsoft 365 services. By understanding these rates and actively monitoring them through the Microsoft 365 admin center, administrators can enhance network reliability and improve user experience. Proactive management and timely remediation of the error rates will help to avoid incidents due to blocked network connections.
