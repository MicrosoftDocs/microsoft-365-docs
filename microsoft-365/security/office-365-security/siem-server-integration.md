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
description: Get an overview of Security Information and Event Management (SIEM) server integration with your Microsoft 365 cloud services and applications
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Security Information and Event Management (SIEM) server integration with Microsoft 365 services and applications

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

## Summary

Is your organization using or planning to get a Security Information and Event Management (SIEM) server? You might be wondering how it integrates with Microsoft 365 or Office 365. This article provides a list of resources you can use to integrate your SIEM server with Microsoft 365 services and applications.

> [!TIP]
> If you don't have a SIEM server yet and are exploring your options, consider **[Microsoft Sentinel](/azure/sentinel/overview)**.

## Do I need a SIEM server?

Whether you need a SIEM server depends on many factors, such as your organization's security requirements and where your data resides. Microsoft 365 includes a wide variety of security features that meet many organizations' security needs without additional servers, such as a SIEM server. Some organizations have special circumstances that require the use of a SIEM server. Here are some examples:

- *Fabrikam* has some content and applications on premises, and some in the cloud (they have a hybrid cloud deployment). To get security reports across all their content and applications, Fabrikam has implemented a SIEM server.
- *Contoso* is a financial services organization that has particularly stringent security requirements. They have added a SIEM server to their environment to take advantage of the extra security protection they require.

## SIEM server integration with Microsoft 365

A SIEM server can receive data from a wide variety of Microsoft 365 services and applications. The following table lists several Microsoft 365 services and applications, along with SIEM server inputs and resources to learn more.

<br/><br/>

|Microsoft 365 Service or Application|SIEM server inputs/methods|Resources to learn more|
|---|---|---|
|[Microsoft Defender for Office 365](defender-for-office-365.md)|Audit logs|[SIEM integration with Microsoft Defender for Office 365](siem-integration-with-office-365-ti.md)|
|[Microsoft Defender for Endpoint](/windows/security/threat-protection/)|HTTPS endpoint hosted in Azure <p> REST API|[Pull alerts to your SIEM tools](../defender-endpoint/configure-siem.md)|
|[Microsoft Defender for Cloud Apps](/cloud-app-security/what-is-cloud-app-security)|Log integration|[SIEM integration with Microsoft Defender for Cloud Apps](/cloud-app-security/siem)|

> [!TIP]
> Take a look at [Microsoft Sentinel](/azure/sentinel/overview). Microsoft Sentinel comes with connectors for Microsoft solutions. These connectors are available "out of the box" and provide for real-time integration. You can use Microsoft Sentinel with your Microsoft 365 Defender solutions and Microsoft 365 services, including Office 365, Azure AD, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, and more.

### Audit logging must be turned on

Make sure that audit logging is turned on before you configure SIEM server integration:

- For SharePoint Online, OneDrive for Business, and Azure Active Directory, see [Turn auditing on or off](../../compliance/audit-log-enable-disable.md).
- For Exchange Online, see [Manage mailbox auditing](../../compliance/audit-mailboxes.md).

## Integration steps if your SIEM is Microsoft Sentinel

Be sure that your current plan allows for Microsoft Sentinel integration (for example, you have Microsoft Defender for Office 365 Plan 2 or higher), and that your account in Microsoft Defender for Office 365 or Microsoft 365 Defender is a *Security Administrator*. Finally, be sure that you have *Write permissions in Microsoft Sentinel*.

1. Navigate to Microsoft Sentinel.
1. On the navigation to the left of the screen **Configuration** > **Data connectors**.
1. **Search for** Microsoft 365 Defender and select the **Microsoft 365 Defender (preview) connector**.
1. On the right of your screen select **Open Connector Page**.
1. Under **Configuration** > select **Connect incidents & alerts**
    1. Turn off all Microsoft incident creation rules for the products currently selected.
1. Scroll to **Microsoft Defender for Office 365** in the **Connect events** section of the page.

Note that you can choose tables from *any other Microsoft Defender product* you find helpful and applicable while completing the final step, (below).

7. Select **EmailEvents**, **EmailUrlInfo**, **EmailAttachmentInfo**, and **EmailPostDeliveryEvents** > and **Apply Changes**.

## More resources

[Integrate security solutions in Microsoft Defender for Cloud](/azure/security-center/security-center-partner-integration#exporting-data-to-a-siem)

[Integrate Microsoft Graph Security API alerts with a SIEM](/graph/security-integration)
