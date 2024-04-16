---
title: SIEM server integration with Microsoft 365 services and applications
f1.keywords: 
  - NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.date: 6/20/2023
ms.localizationpriority: medium
ms.collection: 
  - m365-security
  - tier2
ms.custom: 
  - Ent_Solutions
  - SIEM
  - seo-marvel-apr2020
description: Get an overview of Security Information and Event Management (SIEM) server integration with your Microsoft 365 cloud services and applications.
ms.service: defender-office-365
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-about#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 Plan 1 and Plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Security Information and Event Management (SIEM) server integration with Microsoft 365 services and applications

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

## Summary

Is your organization using or planning to get a Security Information and Event Management (SIEM) server? You might be wondering how it integrates with Microsoft 365 or Office 365. This article provides a list of resources you can use to integrate your SIEM server with Microsoft 365 services and applications.

> [!TIP]
> If you don't have a SIEM server yet and are exploring your options, consider **[Microsoft Sentinel](/azure/sentinel/overview)**.

## Do I need a SIEM server?

Whether you need a SIEM server depends on many factors, such as your organization's security requirements and where your data resides. Microsoft 365 includes a wide variety of security features that meet many organizations' security needs without additional servers, such as a SIEM server. Some organizations have special circumstances that require the use of a SIEM server. Here are some examples:

- *Fabrikam* has some content and applications on premises, and some in the cloud (they have a hybrid cloud deployment). To get security reports for all of their content and applications, Fabrikam implemented a SIEM server.
- *Contoso* is a financial services organization that has stringent security requirements. They added a SIEM server to their environment to take advantage of the extra security protections they require.

## SIEM server integration with Microsoft 365

A SIEM server can receive data from a wide variety of Microsoft 365 services and applications. The following table lists several Microsoft 365 services and applications, along with SIEM server inputs and resources to learn more.

|Microsoft 365 Service or Application|SIEM server inputs/methods|Resources to learn more|
|---|---|---|
|[Microsoft Defender for Office 365](mdo-about.md)|Audit logs|[SIEM integration with Microsoft Defender for Office 365](siem-integration-with-office-365-ti.md)|
|[Microsoft Defender for Endpoint](/windows/security/threat-protection/)|HTTPS endpoint hosted in Azure <p> REST API|[Pull alerts to your SIEM tools](../defender-endpoint/configure-siem.md)|
|[Microsoft Defender for Cloud Apps](/cloud-app-security/what-is-cloud-app-security)|Log integration|[SIEM integration with Microsoft Defender for Cloud Apps](/cloud-app-security/siem)|

> [!TIP]
> Take a look at [Microsoft Sentinel](/azure/sentinel/overview). Microsoft Sentinel comes with connectors for Microsoft solutions. These connectors are available "out of the box" and provide for real-time integration. You can use Microsoft Sentinel with your Microsoft Defender XDR solutions and Microsoft 365 services, including Office 365, Microsoft Entra ID, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, and more.

### Audit logging must be turned on

Make sure that audit logging is turned on before you configure SIEM server integration:

- For SharePoint, OneDrive, and Microsoft Entra ID, see [Turn auditing on or off](/purview/audit-log-enable-disable).
- For Exchange Online, see [Manage mailbox auditing](/purview/audit-mailboxes).

## Integration steps if your SIEM is Microsoft Sentinel

Verify the following requirements:

- Your current Microsoft 365 subscription (for example, Microsoft Defender for Office 365 Plan 2) allows for Microsoft Sentinel integration.
- Your account in Microsoft Defender for Office 365 or Microsoft Defender XDR is a *Security Administrator*.
- Verify that you have *Write permissions in Microsoft Sentinel*.

1. Navigate to Microsoft Sentinel.
1. On the navigation to the left of the screen **Configuration** \> **Data connectors**.
1. **Search for** Microsoft Defender XDR and select the **Microsoft Defender XDR (preview) connector**.
1. On the right of your screen select **Open Connector Page**.
1. Under **Configuration** \> select **Connect incidents & alerts**

   Turn off all Microsoft incident creation rules for the products currently selected.

1. Scroll to **Microsoft Defender for Office 365** in the **Connect events** section of the page.

   You can choose tables from *any other Microsoft Defender product* you find helpful and applicable while completing the following final step:

1. Select **EmailEvents**, **EmailUrlInfo**, **EmailAttachmentInfo**, and **EmailPostDeliveryEvents** > and **Apply Changes**.

## More resources

[Integrate security solutions in Microsoft Defender for Cloud](/azure/defender-for-cloud/partner-integration)

[Integrate Microsoft Graph Security API alerts with a SIEM](/graph/security-integration)
