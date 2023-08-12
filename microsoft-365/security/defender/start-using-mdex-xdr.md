---
title: How to use the Microsoft Defender Experts for XDR service
ms.reviewer:
description: Defender Experts for XDR helps prioritize and customize recommendations to fit your environment
keywords: XDR, Xtended detection and response, defender experts for xdr, Microsoft Defender Experts for XDR, managed threat hunting, managed detection and response (MDR) service, service delivery manager, real-time visibility with XDR experts, threat hunting and analysis
search.product: Windows 10
ms.service: microsoft-365-security
ms.subservice: m365d
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
ms.topic: conceptual
search.appverid: met150
ms.date: 05/29/2023
---

# Start using Defender Experts for XDR service

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)

After you completed the [onboarding steps and readiness checks](get-started-xdr.md) for Microsoft Defender Experts for XDR, our experts will start monitoring your environment to streamline the service so we can perform comprehensive service on your behalf. During this stage, our experts identify latent threats, sources of risk, and normal activity.

Once our experts begin to perform comprehensive response work on your behalf, you'll start receiving notifications about incidents that require remediation steps and targeted recommendations on critical incidents. You can also chat with our experts or your service delivery managers (SDMs) regarding important queries and regular business and security posture reviews and view real-time reports on the number of incidents we've investigated and resolved on your behalf.

## Managed detection and response

Through a combination of automation and human expertise, Defender Experts for XDR triages Microsoft 365 Defender incidents, prioritizes them on your behalf, filters out the noise, carries out detailed investigations, and provides actionable guided response to your security operations center (SOC) teams.

### Incident notifications

Once our experts start investigating an incident, the incident's **Assigned to** and **Status** fields are updated to _Defender Experts_ and _In progress_, respectively.

When our experts conclude their investigation on an incident, the incident's **Classification** field is updated to one of the following, depending on the experts' findings:

- True Positive
- False Positive
- Informational, Expected Activity

The **Determination** field corresponding to each classification is also updated to provide more insights on the findings that led our experts to determine the said classification.

:::image type="content" source="../../media/xdr/incidents-xdr-1.png" alt-text="Screenshot of Incidents page showing the Tags, Status, Assigned to, Classification, and Determination fields." lightbox="../../media/xdr/incidents-xdr-1.png":::

If an incident is classified as _False Positive_ or _Informational_, _Expected Activity_, then the incident's **Status** field gets updated to _Resolved_. Our experts then conclude their work on this incident and the **Assigned to** field gets updated to _Unassigned_. Our experts may share updates from their investigation and their conclusion when resolving an incident. These updates are posted in the incident's **Comments and history** flyout panel.

> [!NOTE]
> Incident comments are one-way posts. Defender Experts can't respond to any comments or questions you add in the **Comments and history** panel. If you wish to correspond with our experts, reply to the email Defender Experts sent you instead.

Otherwise, if an incident is classified as _True Positive_, our experts then identify recommended response actions that need to be performed. The method in which the actions are performed depends on the permissions and access levels you have given the Defender Experts for XDR service. [Learn more about granting permissions to our experts](get-started-xdr.md#grant-permissions-to-our-experts).

- If you have granted Defender Experts for XDR the recommended Security Operator access permissions, our experts could perform the recommended response actions on the incident on your behalf. These actions, along with an **Investigation summary**, show up in the incident's [Guided response](#how-to-use-guided-response-in-microsoft-365-defender) flyout panel in your Microsoft 365 Defender portal for you or your SOC team to review. Once our experts conclude their work on the incident, its **Status** field is then updated to _Resolved_ and the **Assigned to** field is updated to _Unassigned_.

- If you have granted Defender Experts for XDR the default Security Reader access, then the recommended response actions, along with an **Investigation summary**, show up in the incident's **Guided response** flyout panel in your Microsoft 365 Defender portal for you or your SOC team to perform. To identify this handover, the incident's **Assigned to** field is updated to _Customer_.

You can check the number of incidents that are awaiting your action in the Defender Experts card in your Microsoft 365 Defender portal:

:::image type="content" source="../../media/xdr/view-incidents.png" alt-text="Screenshot of the Defender Experts card in Microsoft 365 Defender portal showing the number of incidents awaiting customer action." lightbox="../../media/xdr/view-incidents.png":::

To view the incidents our experts have investigated or are currently investigating, filter the incident queue in your Microsoft 365 Defender portal using the _Defender Experts_ tag.

:::image type="content" source="../../media/xdr/incidents-filter.png" alt-text="Screenshot of the Incidents queue in Microsoft 365 Defender portal filtered to only show those with the  Defender Experts tag." lightbox="../../media/xdr/incidents-filter.png":::

### How to use guided response in Microsoft 365 Defender

In the Microsoft 365 Defender portal, an incident that requires your attention using guided response has the **Assigned to** field set to _Customer_ and a task card on top of the **Incidents** pane. Your designated incident contacts also receives a corresponding email notification with a link to the Defender portal to view the incident. [Learn more about notification contacts](get-started-xdr.md#tell-us-who-to-contact-for-important-matters).

Select **View guided response** on the task card or on the top of the portal page (**Guided response** tab) to open a flyout panel where you can read our experts' investigation summary, complete pending actions identified by our experts, or engage with them through chat.

:::image type="content" source="../../media/xdr/view-guided-response-button.png" alt-text="Screenshot of the view guided response task card." lightbox="../../media/xdr/view-guided-response-button.png":::

#### Investigation summary

The **Investigation summary** section provides you with more context about the incident analyzed by our experts to provide you with visibility about its severity and potential impact if not addressed immediately. It could include the device timeline, indicators of attack and indicators of compromise (IOCs) observed, and other details.

:::image type="content" source="../../media/xdr/investigation-summary.png" alt-text="Screenshot of guided response investigation summary." lightbox="../../media/xdr/investigation-summary.png":::

#### Actions

The **Actions** tab displays task cards that contain response actions recommended by our experts. 

:::image type="content" source="../../media/xdr/guided-response-actions.png" alt-text="Screenshot of the Actions tab showing one-click and manual guided response actions.":::

Defender Experts for XDR currently supports the following one-click guided response actions:

|**Action**|**Description**|
|------------|-----------------|
|[Isolate device](/microsoft-365/security/defender-endpoint/respond-machine-alerts##isolate-devices-from-the-network)|Isolates a device, which helps prevent an attacker from controlling it and performing further activities such as data exfiltration and lateral movement. The isolated device will still be connected to Microsoft Defender for Endpoint.|
|[Quarantine file](/microsoft-365/security/defender-endpoint/respond-file-alerts##stop-and-quarantine-files)|Stops running processes, quarantines the files, and deletes persistent data such as registry keys.|

Apart from these one-click actions, you can also receive guided responses from our experts that you need to perform manually.

> [!NOTE]
> Before performing any of the recommended guided response actions, make sure that they are not already being addressed by your automated investigation and response configurations. [Learn more about automated investigation and response capabilities in Microsoft 365 Defender](m365d-autoir.md).

**To view and perform the guided response actions:**

1. Select the arrow buttons in a task card to expand it and read more information about the recommendation or collapse it.
1. For cards with one-click response actions, select the recommended action. The **Action status** in the card changes to **In progress**, then to **Failed** or **Completed**, depending on the action's outcome.

> [!TIP]
> You can also monitor the status of in-portal response actions in the [Action center](m365d-action-center.md).

3. For cards with recommended actions that you need to perform manually, select **Mark as complete** once you've performed them. 
1. If you don't want to complete a recommended action right away, select the ellipsis icon on the top of the card and choose any of the following other options:
   - **Mark in progress**
   - **Mark as skipped**
   - **Mark as new**

#### Chat

The **Chat** tab provides you with a space in the Microsoft 365 Defender portal to engage with our experts and further understand the incident, our investigation, and the recommended actions we provided. You could ask about a malicious executable, malicious attachment, information about activity groups, advanced hunting queries, or any other information that would assist you with the incident resolution.

:::image type="content" source="../../media/xdr/chat.png" alt-text="Screenshot of the chat tab in the Guided response flyout panel." lightbox="../../media/xdr/chat.png":::

> [!NOTE]
> The chat option is only available for incidents where we issued guided response.

## Get visibility to Defender Experts investigations in your SIEM or ITSM application

As Defender Experts for XDR investigate incidents and come up with remediation actions, you can have visibility to their work on incidents in your security information and event management (SIEM) and IT service management (ITSM) applications, including applications that are available out of the box.

### Microsoft Sentinel

You can get incident visibility in Microsoft Sentinel by turning on its out-of-the-box Microsoft 365 Defender data connector. [Learn more](/azure/sentinel/connect-microsoft-365-defender).

Once you have turned on the connector, updates by Defender Experts to the **Status**, **Assigned to**, **Classification**, and **Determination** fields in Microsoft 365 Defender will show up in the corresponding **Status**, **Owner**, and **Reason for closing** fields in Sentinel.

> [!NOTE]
> The status of incidents in Microsoft 365 Defender typically transitions from _Active_ to _In progress_ to _Resolved_, while in Sentinel, it follows the _New_ to _Active_ to _Resolved_ path.

The following section describes how an incident handled by our experts is updated in Sentinel as it progresses through the investigation journey:

1. An incident being investigated by our experts has the **Owner** listed as _Defender Experts_.
1. An incident that our experts have confirmed as a _True Positive_ has a guided response posted in Microsoft 365 Defender, and the **Owner** is listed as _Customer_. You need to act on the incident based on using the provided guided response.
1. Once our experts have concluded their investigation and closed an incident as _False Positive_ or _Informational_, _Expected Activity_, the incident's **Status** is updated to _Resolved_ and a **Reason for closing** is provided.

:::image type="content" source="../../media/xdr/microsoft-sentinel-incidents.png" alt-text="Screenshot of Microsoft Sentinel incidents." lightbox="../../media/xdr/microsoft-sentinel-incidents.png":::

### Other applications

You could obtain visibility into incidents in your SIEM or ITSM application by using the [Microsoft 365 Defender API](../defender/api-overview.md) or [connectors in Sentinel](/azure/sentinel/data-connectors-reference).

After configuring a connector, the updates by Defender Experts to an incident's **Status**, **Assigned to**, **Classification**, and **Determination** fields in Microsoft 365 Defender can be synchronized with the third-party SIEM or ITSM applications, depending on how the field mapping has been implemented. To illustrate, you can take a look at the [connector available from Sentinel to ServiceNow](https://github.com/Azure/Azure-Sentinel/tree/master/Solutions/Servicenow/StoreApp).

## Get real-time visibility with Defender Experts for XDR reports

Defender Experts for XDR includes an interactive, on-demand report that provides a clear summary of the work our expert analysts are doing on your behalf, aggregate information about your incident landscape, and granular details about specific incidents. Your service delivery manager (SDM) also uses the report to provide you with more context regarding the service during a monthly business review.

:::image type="content" source="../../media/xdr/defender-xdr-report.png" alt-text="Screenshot of Defender Experts for XDR report." lightbox="../../media/xdr/Defender-xdr-report.png":::

Each section of the report is designed to provide more insights about the incidents our experts investigated and resolved in your environment in real time. You can also select the **Date range** to get detailed information about incidents based on severity, category, and understand the time taken to investigate and resolve an incident during a specific period.

### Understand the Defender Experts for XDR report

The topmost section of the Defender Experts for XDR report provides the percentage of incidents we resolved in your environment, providing you with transparency in our operations. This percentage is derived from the following figures, which are also presented in the report:

- **Investigated** – The number of active threats and other incidents from your incident queue that we triaged, investigated, or currently investigating within our scope.
- **Resolved** – The total number of investigated incidents that were closed.
- **Resolved directly** – The number of investigated incidents that we were able to close directly on your behalf.
- **Resolved with your help** – The number of investigated incidents that were resolved because of your action on one or more guided response tasks.

The **Incidents by severity** and **Incidents by category** sections break down resolved incidents by severity and attack technique or threat type, respectively. These sections let you identify potential attack entry points and types of threats detected in your environment, assess their impact, and develop strategies to mitigate and prevent them. Select **View incidents** to get a filtered view of the incident queue based on the selections you made in each of the two sections.

The **Average incident resolution time** section displays a bar chart of the average time, in minutes, our experts spent investigating and closing incidents in your environment and the average time you spent performing the recommended guided response actions.

If you've set Defender Experts for XDR to have **Security Reader** access, the **Average incident resolution time** section also displays the estimated **Potential time savings** you could realize if you let our experts take managed remediation actions on your behalf by [providing them the permissions](get-started-xdr.md#grant-permissions-to-our-experts) to do so. The potential time savings are derived by calculating the total time it took you to complete recommended guided response actions after our experts issued them to you during your selected date range. Otherwise, if the service has **Security Operator** access, this report section displays the estimated time you already saved by granting us permission to take managed remediation actions on your behalf. To change access levels, select **Edit permissions**.

## Collaborate with a trusted advisor

The service delivery manager (SDM) is responsible for managing the overall relationship for your organization with the Defender Experts for XDR service. They are your trusted advisor working along with XDR experts' team to help you protect your organization.

The SDM provides the following services:

- Service readiness support
  - Educate customers about the end-to-end service experience, from signup to regular operations and escalation process.
  - Help establish a service-ready security posture, including guidance on required controls and policy updates.
- Service operations support
  - Provide tailored service delivery content and reporting, including periodic business reviews.
  - Serve as a single point of contact for feedback and escalations related to Defender Experts Service.

## Proactive managed hunting

Defender Experts for XDR also includes proactive threat hunting offered by [Microsoft Defender Experts for Hunting](defender-experts-for-hunting.md). Defender Experts for Hunting was created for customers who have a robust security operations center but want Microsoft to help them proactively hunt threats using Microsoft Defender data. This proactive threat hunting service goes beyond the endpoint to hunt across endpoints, Office 365, cloud applications, and identity. Our experts investigate anything they find, then hand off the contextual alert information along with remediation instructions, so you can quickly respond.

## Request advanced threat expertise on demand

Select **Ask Defender Experts** directly inside the Microsoft 365 security portal to get swift and accurate responses to all your threat questions. Experts can provide insights to better understand the complex threats your organization may face. Consult an expert to:

- Gather additional information on alerts and incidents, including root causes and scope.
- Gain clarity into suspicious devices, alerts, or incidents and get the next steps if faced with an advanced attacker.
- Determine risks and available protections related to activity groups, campaigns, or emerging attacker techniques.

> [!NOTE]
> Ask Defender Experts is not a security incident response service. It's intended to provide a better understanding of complex threats affecting your organization. Engage with your own security incident response team to address urgent security incident response issues. If you don't have your own security incident response team and would like Microsoft's help, create a support request in the [Premier Services Hub](/services-hub/).

The option to **Ask Defender Experts** is available in the incidents and alerts pages for you to ask contextual questions about a specific incident or alert:

- _**Alerts page flyout menu**_:

:::image type="content" source="../../media/mte/defenderexperts/alerts-flyout-menu.png" alt-text="Screenshot of the Ask Defender Experts menu option in the Alerts page flyout menu in the Microsoft 365 Defender portal." lightbox="../../media/mte/defenderexperts/alerts-flyout-menu.png":::  

- _**Incidents page actions menu**_:

:::image type="content" source="../../media/mte/defenderexperts/incidents-page-actions-menu.png" alt-text="IScreenshot of the Ask Defender Experts menu option in the Incidents page actions menu in the Microsoft 365 Defender portal." lightbox="../../media/mte/defenderexperts/incidents-page-actions-menu.png":::

### See also

- [Search audit logs for actions performed by Defender Experts](auditing.md)
- [Additional information](additional-information-xdr.md)
- [Frequently asked questions](frequently-asked-questions.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
