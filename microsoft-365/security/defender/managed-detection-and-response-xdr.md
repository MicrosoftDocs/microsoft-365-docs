---
title: Managed detection and response 
ms.reviewer:
description: Defender Experts for XDR provides actionable managed response to your security operations center (SOC) teams.
keywords: XDR, extended detection and response, managed detection and response in defender experts for XDR, experts for xdr, Microsoft Defender Experts for XDR, managed threat hunting, managed detection and response (MDR) service, Managed response in Teams
ms.service: defender-experts
ms.subservice: dex-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
  - essentials-manage
ms.topic: conceptual
search.appverid: met150
ms.date: 02/12/2024
---

# Managed detection and response

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

Through a combination of automation and human expertise, Microsoft Defender Experts for XDR triages Microsoft Defender XDR incidents, prioritizes them on your behalf, filters out the noise, carries out detailed investigations, and provides actionable managed response to your security operations center (SOC) teams.

## Incident updates

Once our experts start investigating an incident, the incident's **Assigned to** and **Status** fields are updated to _Defender Experts_ and _In progress_, respectively.

When our experts conclude their investigation on an incident, the incident's **Classification** field is updated to one of the following, depending on the experts' findings:

- True Positive
- False Positive
- Informational, Expected Activity

The **Determination** field corresponding to each classification is also updated to provide more insights on the findings that led our experts to determine the said classification.

:::image type="content" source="../../media/xdr/incidents-xdr-1.png" alt-text="Screenshot of Incidents page showing the Tags, Status, Assigned to, Classification, and Determination fields." lightbox="../../media/xdr/incidents-xdr-1.png":::

If an incident is classified as _False Positive_ or _Informational_, _Expected Activity_, then the incident's **Status** field gets updated to _Resolved_. Our experts then conclude their work on this incident and the **Assigned to** field gets updated to _Unassigned_. Our experts may share updates from their investigation and their conclusion when resolving an incident. These updates are posted in the incident's **Comments and history** flyout panel.

> [!NOTE]
> Incident comments are one-way posts. Defender Experts can't respond to any comments or questions you add in the **Comments and history** panel. For more information about how to correspond with our experts, see [Communicating with experts in the Microsoft Defender Experts for XDR service](communicate-defender-experts-xdr.md).

Otherwise, if an incident is classified as _True Positive_, our experts then identify the required response actions that need to be performed. The method in which the actions are performed depends on the permissions and access levels you have given the Defender Experts for XDR service. [Learn more about granting permissions to our experts](get-started-xdr.md#grant-permissions-to-our-experts).

- If you have granted Defender Experts for XDR the recommended Security Operator access permissions, our experts could perform the required response actions on the incident on your behalf. These actions, along with an **Investigation summary**, show up in the incident's [Managed response](#how-to-use-managed-response-in-microsoft-365-defender) flyout panel in your Microsoft Defender portal for you or your SOC team to review. All actions that are completed by Defender Experts for XDR appear under the **Completed actions** section. Any pending actions that require you or you SOC team to complete are listed under the **Pending actions** section. For more information, see the [Actions](#actions) section. Once our experts have taken all the necessary actions on the incident, its **Status** field is then updated to _Resolved_ and the **Assigned to** field is updated to _Unassigned_.

- If you have granted Defender Experts for XDR the default Security Reader access, then the required response actions, along with an **Investigation summary**, show up in the incident's **Managed response** flyout panel under the **Pending actions** section in your Microsoft Defender portal for you or your SOC team to perform. For more information, see the [Actions](#actions) section. To identify this handover, the incident's **Status** field is updated to _Awaiting Customer Action_ and the **Assigned to** field is updated to _Customer_.

You can check the number of incidents that require your action in the Defender Experts banner at the top of the Microsoft Defender homepage.

:::image type="content" source="../../media/xdr/view-incidents.png" alt-text="Screenshot of the Defender Experts card in Microsoft Defender portal showing the number of incidents awaiting customer action." lightbox="../../media/xdr/view-incidents.png":::

To view the incidents our experts have investigated or are currently investigating, filter the incident queue in your Microsoft Defender portal using the _Defender Experts_ tag.

:::image type="content" source="../../media/xdr/incidents-filter.png" alt-text="Screenshot of the Incidents queue in Microsoft Defender portal filtered to only show those with the Defender Experts tag." lightbox="../../media/xdr/incidents-filter.png":::

<a name='how-to-use-managed-response-in-microsoft-365-defender'></a>

## How to use managed response in Microsoft Defender XDR

In the Microsoft Defender portal, an incident that requires your attention using managed response has the **Assigned to** field set to _Customer_ and a task card on top of the **Incidents** pane. Your designated incident contacts also receives a corresponding email notification with a link to the Defender portal to view the incident. [Learn more about notification contacts](get-started-xdr.md#tell-us-who-to-contact-for-important-matters).

Select **View managed response** on the task card or on the top of the portal page (**Managed response** tab) to open a flyout panel where you can read our experts' investigation summary, complete pending actions identified by our experts, or engage with them through chat.

### Investigation summary

The **Investigation summary** section provides you with more context about the incident analyzed by our experts to provide you with visibility about its severity and potential impact if not addressed immediately. It could include the device timeline, indicators of attack, and indicators of compromise (IOCs) observed, and other details.

:::image type="content" source="../../media/xdr/investigation-summary.png" alt-text="Screenshot of managed response investigation summary." lightbox="../../media/xdr/investigation-summary.png":::

### Actions

The **Actions** tab displays task cards that contain response actions recommended by our experts.

Defender Experts for XDR currently supports the following one-click managed response actions:

|**Action**|**Description**|
|------------|-----------------|
|[Isolate device](/microsoft-365/security/defender-endpoint/respond-machine-alerts##isolate-devices-from-the-network)|Isolates a device, which helps prevent an attacker from controlling it and performing further activities such as data exfiltration and lateral movement. The isolated device will still be connected to Microsoft Defender for Endpoint.|
|[Quarantine file](/microsoft-365/security/defender-endpoint/respond-file-alerts##stop-and-quarantine-files)|Stops running processes, quarantines the files, and deletes persistent data such as registry keys.|
|[Restrict app execution](/microsoft-365/security/defender-endpoint/respond-machine-alerts##restrict-app-execution)| Restricts the execution of potentially malicious programs and locks down the device to prevent further attempts.|
|[Release from isolation](/microsoft-365/security/defender-endpoint/respond-machine-alerts#isolate-devices-from-the-network)| Undoes isolation of a device.|
|[Remove app restriction](/microsoft-365/security/defender-endpoint/respond-machine-alerts#restrict-app-execution)| Undoes release from isolation.|

Apart from these one-click actions, you can also receive managed responses from our experts that you need to perform manually.

> [!NOTE]
> Before performing any of the recommended managed response actions, make sure that they are not already being addressed by your automated investigation and response configurations. [Learn more about automated investigation and response capabilities in Microsoft Defender XDR](m365d-autoir.md).

**To view and perform the managed response actions:**

1. Select the arrow buttons in an action card to expand it and read more information about the required action.

:::image type="content" source="../../media/xdr/action-card-1.png" alt-text="Screenshot of managed response action to isolate the device prod server." lightbox="../../media/xdr/action-card-1.png":::

2. For cards with one-click response actions, select the required action. The **Action status** in the card changes to **In progress**, then to **Failed** or **Completed**, depending on the action's outcome.

:::image type="content" source="../../media/xdr/action-card-2.png" alt-text="Screenshot of managed response action showing in-progress to isolate the device prod server." lightbox="../../media/xdr/action-card-2.png":::

> [!TIP]
> You can also monitor the status of in-portal response actions in the [Action center](m365d-action-center.md). If a response action fails, try doing it again from the **View device details** page or [initiate a chat](communicate-defender-experts-xdr.md#in-portal-chat) with Defender Experts.

3. For cards with required actions that you need to perform manually, select **I've completed this action** once you've performed them, then select **Yes, I've done it** in the confirmation dialog box that appears.

:::image type="content" source="../../media/xdr/ive-completed-this-action.png" alt-text="Screenshot of managed response action to confirm action completion." lightbox="../../media/xdr/ive-completed-this-action.png":::

4. If you don't want to complete a required action right away, select **Skip**, then select **Yes, skip this action** in the confirmation dialog box that appears.

> [!IMPORTANT]
>If you notice that any of the buttons on the action cards are grayed out, it could indicate that you don't have the necessary permissions to perform the action. Make sure that you're signed into the Microsoft Defender XDR portal with the appropriate permissions. Most managed response actions require that you have at least the Security Operator access. If you still encounter this issue even with the appropriate permissions, navigate to **View device details** and complete the steps from there.

## Get visibility to Defender Experts investigations in your SIEM or ITSM application

As Defender Experts for XDR investigate incidents and come up with remediation actions, you can have visibility to their work on incidents in your security information and event management (SIEM) and IT service management (ITSM) applications, including applications that are available out of the box.

### Microsoft Sentinel

You can get incident visibility in Microsoft Sentinel by turning on its out-of-the-box Microsoft Defender XDR data connector. [Learn more](/azure/sentinel/connect-microsoft-365-defender).

Once you have turned on the connector, updates by Defender Experts to the **Status**, **Assigned to**, **Classification**, and **Determination** fields in Microsoft Defender XDR will show up in the corresponding **Status**, **Owner**, and **Reason for closing** fields in Sentinel.

> [!NOTE]
> The status of incidents investigated by Defender Experts in Microsoft Defender XDR typically transitions from _Active_ to _In progress_ to _Awaiting Customer Action_ to _Resolved_, while in Sentinel, it follows the _New_ to _Active_ to _Resolved_ path. The Microsoft Defender XDR Status _**Awaiting Customer Action**_ doesn't have an equivalent field in Sentinel; instead, it's displayed as a tag in an incident in Sentinel.

The following section describes how an incident handled by our experts is updated in Sentinel as it progresses through the investigation journey:

1. An incident being investigated by our experts has the **Status** listed as _Active_ and the **Owner** listed as _Defender Experts_.
1. An incident that our experts have confirmed as a _True Positive_ has a managed response posted in Microsoft Defender XDR, and a **Tag** _Awaiting Customer Action_ and the **Owner** is listed as _Customer_. You need to act on the incident based on using the provided managed response.
1. Once our experts have concluded their investigation and closed an incident as _False Positive_ or _Informational_, _Expected Activity_, the incident's **Status** is updated to _Resolved_, the **Owner** is updated to _Unassigned_, and a **Reason for closing** is provided.

:::image type="content" source="../../media/xdr/microsoft-sentinel-incidents.png" alt-text="Screenshot of Microsoft Sentinel incidents." lightbox="../../media/xdr/microsoft-sentinel-incidents.png":::

### Other applications

You could obtain visibility into incidents in your SIEM or ITSM application by using the [Microsoft Defender XDR API](../defender/api-overview.md) or [connectors in Sentinel](/azure/sentinel/data-connectors-reference).

After configuring a connector, the updates by Defender Experts to an incident's **Status**, **Assigned to**, **Classification**, and **Determination** fields in Microsoft Defender XDR can be synchronized with the third-party SIEM or ITSM applications, depending on how the field mapping has been implemented. To illustrate, you can take a look at the [connector available from Sentinel to ServiceNow](https://github.com/Azure/Azure-Sentinel/tree/master/Solutions/Servicenow/StoreApp).


### See also

- [Get started with Microsoft Defender Experts for XDR](get-started-xdr.md)
- [Get real-time visibility with Defender Experts for XDR reports](reports-xdr.md)
- [Communicating with experts in the Microsoft Defender Experts for XDR service](communicate-defender-experts-xdr.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]