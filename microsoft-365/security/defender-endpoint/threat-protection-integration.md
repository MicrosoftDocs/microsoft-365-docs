---
title: Integrate Microsoft Defender for Endpoint with other Microsoft solutions
description: Learn how Microsoft Defender for Endpoint integrates with other Microsoft solutions, including Microsoft Defender for Identity and Microsoft Defender for Cloud.
author: mjcaparas
ms.author: macapara
ms.service: microsoft-365-security
keywords: microsoft 365 defender, conditional access, office, Microsoft Defender for Endpoint, microsoft defender for identity, microsoft defender for office, Microsoft Defender for Cloud, microsoft cloud app security, azure sentinel
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
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

# Microsoft Defender for Endpoint and other Microsoft solutions

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## Integrate with other Microsoft solutions

Microsoft Defender for Endpoint directly integrates with various Microsoft solutions.

### Microsoft Defender for Cloud

Microsoft Defender for Cloud provides a comprehensive server protection solution, including endpoint detection and response (EDR) capabilities on Windows Servers.

### Microsoft Sentinel

The Microsoft Defender for Endpoint connector lets you stream alerts from Microsoft Defender for Endpoint into Microsoft Sentinel. This will enable you to more comprehensively analyze security events across your organization and build playbooks for effective and immediate response.

### Azure Information Protection

We recently deprecated the Azure Information Protection integration as our Endpoint DLP capabilities incorporate an improved discovery and protection solution for sensitive data stored on endpoint devices that facilitates greater visibility and integration between solutions. This was announced in the following [blog](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/protecting-sensitive-information-on-devices/ba-p/2143555). We recommend that customers move to using Endpoint DLP.

### Conditional Access

Microsoft Defender for Endpoint's dynamic device risk score is integrated into the Conditional Access evaluation, ensuring that only secure devices have access to resources.

### Microsoft Defender for Cloud Apps

Microsoft Defender for Cloud Apps leverages Microsoft Defender for Endpoint signals to allow direct visibility into cloud application usage including the use of unsupported cloud services (shadow IT) from all Microsoft Defender for Endpoint monitored devices.

### Microsoft Defender for Identity

Suspicious activities are processes running under a user context. The integration between Microsoft Defender for Endpoint and Microsoft Defender for Identity provides the flexibility of conducting cyber security investigation across activities and identities.

### Microsoft Defender for Office

[Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365) helps protect your organization from malware in email messages or files through Safe Links, Safe Attachments, advanced Anti-Phishing, and spoof intelligence capabilities. The integration between Microsoft Defender for Office 365 and Microsoft Defender for Endpoint enables security analysts to go upstream to investigate the entry point of an attack. Through threat intelligence sharing, attacks can be contained and blocked.

> [!NOTE]
> Defender for Office 365 data is displayed for events within the last 30 days. For alerts, Defender for Office 365 data is displayed based on first activity time. After that, the data is no longer available in Defender for Office 365.

### Skype for Business

The Skype for Business integration provides a way for analysts to communicate with a potentially compromised user or device owner through a simple button from the portal.

## Microsoft 365 Defender

With Microsoft 365 Defender, Microsoft Defender for Endpoint, and various Microsoft security solutions form a unified pre- and post-breach enterprise defense suite that natively integrates across endpoint, identity, email, and applications to detect, prevent, investigate, and automatically respond to sophisticated attacks.

[Learn more about Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender)

## Related topics

- [Configure integration and other advanced features](advanced-features.md)
- [Microsoft 365 Defender overview](/microsoft-365/security/defender/microsoft-365-defender)
- [Turn on Microsoft 365 Defender](/microsoft-365/security/defender/m365d-enable)
- [Protect users, data, and devices with Conditional Access](conditional-access.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
