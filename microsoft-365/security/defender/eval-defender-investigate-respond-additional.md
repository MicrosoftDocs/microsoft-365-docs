---
title: Try Microsoft 365 Defender incident response capabilities in a pilot environment
description: Try incident response capabilities in Microsoft 365 Defender to prioritize and manage incidents, automate investigations, and use advanced hunting in threat detection.
keywords: Microsoft 365 Defender trial, try Microsoft 365 Defender, evaluate Microsoft 365 Defender, Microsoft 365 Defender evaluation lab, Microsoft 365 Defender pilot, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.localizationpriority: medium
ms.author: josephd
author: JoeDavies-MSFT
ms.date: 07/09/2021
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-scenario
  - m365solution-evalutatemtp
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.technology: m365d
---

# Try Microsoft 365 Defender incident response capabilities in a pilot environment

**Applies to:**
- Microsoft 365 Defender

This article is [Step 2 of 2](eval-defender-investigate-respond.md) in the process of performing an investigation and response of an incident in Microsoft 365 Defender using a pilot environment. For more information about this process, see the [overview](eval-defender-investigate-respond.md) article.

Once you have performed an [incident response for a simulated attack](eval-defender-investigate-respond-simulate-attack.md), here are some Microsoft 365 Defender capabilities to explore:

|Capability |Description |
|:-------|:-----|
| [Prioritize incidents](#prioritize-incidents) | Use filtering and sorting of the incidents queue to determine which incidents to address next. |
| [Manage incidents](#manage-incidents) | Modify incident properties to ensure correct assignment, add tags and comments, and to resolve an incident. |
| [Automated investigation and response](#examine-automated-investigation-and-response-with-the-action-center) | Automated investigation and response (AIR) capabilities that can help your security operations team address threats more efficiently and effectively. The Action center is a "single pane of glass" experience for incident and alert tasks such as approving pending remediation actions. |
| [Advanced hunting](#advanced-hunting) | A query-based threat-hunting tool that lets you proactively inspect events in your network and locate threat indicators and entities. You also use advanced hunting during the investigation and remediation of an incident. |


## Prioritize incidents

You get to the incident queue from **Incidents & alerts > Incidents** on the quick launch of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>. Here's an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents.png" alt-text="Example of the incident queue.":::

The **Most recent incidents and alerts** section shows a graph of the number of alerts received and incidents created in the last 24 hours.

To examine the list of incidents and prioritize their importance for assignment and investigation, you can: 

- Configure customizable columns (select **Choose columns**) to give you visibility into different characteristics of the incident or the impacted entities. This helps you make an informed decision regarding the prioritization of incidents for analysis.

- Use filtering to focus on a specific scenario or threat. Applying filters on the incident queue can help determine which incidents require immediate attention. 

From the default incident queue, select **Filters** to see a **Filters** pane, from which you can specify a specific set of incidents. Here is an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents-filters.png" alt-text="Example of the filters pane for the incident queue.":::

For more information, see [Prioritize incidents](incident-queue.md).

## Manage incidents

You can manage incidents from the **Manage incident** pane for an incident. Here's an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents-manage.png" alt-text="Example of the Manage incident pane of an incident.":::

You can display this pane from the **Manage incident** link on the:

- Properties pane of an incident in the incident queue.
- **Summary** page of an incident.

Here are the ways you can manage your incidents:

- Edit the incident name

  Change the automatically assigned name based on your security team best practices.
  
- Add incident tags

  Add tags that your security team uses to classify incidents, which can be later filtered.
  
- Assign the incident to yourself

  Assign it to your user account name, which can be later filtered.
  
- Resolve an incident

  Close the incident after it has been remediated.
  
- Set its classification and determination

  Classify and select the threat type when you resolve an incident.
  
- Add comments

  Use comments for progress, notes, or other information based on your security team best practices. The full comment history is available from the **Comments and history** option in the details page of an incident.

For more information, see [Manage incidents](manage-incidents.md).

## Examine automated investigation and response with the Action center

Depending on how automated investigation and response capabilities are configured for your organization, remediation actions are taken automatically or only upon approval by your security operations team. All actions, whether pending or completed, are listed in the [Action center](m365d-action-center.md), which lists pending and completed remediation actions for your devices, email & collaboration content, and identities in one location.

Here's an example.

:::image type="content" source="../../media/m3d-action-center-unified.png" alt-text="Unified Action center in Microsoft 365 Defender.":::

From the Action center, you can select pending actions and then approve or reject them in the flyout pane. Here's an example.

:::image type="content" source="../../media/air-actioncenter-itemselected.png" alt-text="Approve or reject an action.":::

Approve (or reject) pending actions as soon as possible so that your automated investigations can proceed and complete in a timely manner.

For more information, see [Automated investigation and response](m365d-autoir.md) and [Action center](m365d-action-center.md).

## Advanced hunting

> [!NOTE]
> Before we walk you through the advanced hunting simulation, watch the following video to understand advanced hunting concepts, see where you can find it in the portal, and know how it can help you in your security operations.

<br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4Bp7O]


If the [optional fileless PowerShell attack simulation](eval-defender-investigate-respond-simulate-attack.md#simulate-an-attack-with-an-isolated-domain-controller-and-client-device-optional) were a real attack that had already reached the credential access stage, you can use advanced hunting at any point in the investigation to proactively search through events and records in the network using what you already know from the generated alerts and affected entities. 

For instance, based on information in the [User and IP address reconnaissance (SMB)](eval-defender-investigate-respond-simulate-attack.md#alert-user-and-ip-address-reconnaissance-smb-source-microsoft-defender-for-identity) alert, you can use the `IdentityDirectoryEvents` table to find all the SMB session enumeration events, or find more discovery activities in various other protocols in Microsoft Defender for Identity data using the `IdentityQueryEvents` table.


### Hunting environment requirements

There's a single internal mailbox and device required for this simulation. You'll also need an external email account to send the test message.

1. Verify that your tenant has [enabled Microsoft 365 Defender](m365d-enable.md#confirm-that-the-service-is-on).
2. Identify a target mailbox to be used for receiving email.

   - This mailbox must be monitored by Microsoft Defender for Office 365

   - The device from requirement 3 needs to access this mailbox

3. Configure a test device:

    a. Make sure you are using Windows 10 version 1903 or later version.

    b. Join the test device to the test domain.

    c. [Turn on Windows Defender Antivirus](/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features). If you are having trouble enabling Windows Defender Antivirus, see [this troubleshooting topic](/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy).

    d. [Onboard to Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints).

### Run the simulation

1. From an external email account, send an email to the mailbox identified in step 2 of the hunting environment requirements section. Include an attachment that will be allowed through any existing email filter policies. This file does not need to be malicious or an executable. Suggested file types are <i>.pdf</i>, <i>.exe</i> (if allowed), or an Office document type such as a Word file.

2. Open the sent email from the device configured as defined in step 3 of the hunting environment requirements section. Either open the attachment or save the file to the device.

#### Go hunting

1. Open the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>.

2. From the navigation pane, select **Hunting > Advanced hunting**.

3. Build a query that starts by gathering email events.

   1. Select **Query > New**.

   1. In the **Email** groups under **Advanced hunting**, double-click **EmailEvents**. You should see this in the query window.

      ```console
      EmailEvents
      ```

   1. Change the time frame of the query to the last 24 hours. Assuming the email you sent when you ran the simulation above was in the past 24 hours, otherwise change the time frame as needed.

   1. Select **Run query**. You may have differing results depending on your pilot environment.

      > [!NOTE]
      > See the next step for filtering options to limit data return.

      ![Example of the advanced hunting query results.](../../media/advanced-hunting-incident-response-try-1.png)

        > [!NOTE]
        > Advanced hunting displays query results as tabular data. You can also opt to view the data in other format types such as charts.

   1. Look at the results and see if you can identify the email you opened. It may take up to two hours for the message to show up in advanced hunting. To narrow down the results, you can add the **where** condition to your query to only look for emails that have "yahoo.com" as their SenderMailFromDomain. Here is an example.

      ```console
      EmailEvents
      | where SenderMailFromDomain == "yahoo.com"
      ```

   1. Click the resulting rows from the query so you can inspect the record.

      ![Example of the inspect record side panel which opens up when an advanced hunting result is selected.](../../media/advanced-hunting-incident-response-try-2.png)

4. Now that you have verified that you can see the email, add a filter for the attachments. Focus on all emails with attachments in the environment. For this simulation, focus on inbound emails, not those that are being sent out from your environment. Remove any filters you have added to locate your message and add "| where **AttachmentCount > 0** and **EmailDirection** == **"Inbound""**

   The following query will show you the result with a shorter list than your initial query for all email events:

   ```console
   EmailEvents
   | where AttachmentCount > 0 and EmailDirection == "Inbound"
   ```

5. Next, include the information about the attachment (such as: file name, hashes) to your result set. To do so, join the **EmailAttachmentInfo** table. The common fields to use for joining, in this case are **NetworkMessageId** and **RecipientObjectId**.

   The following query also includes an additional line "| **project-rename EmailTimestamp=Timestamp**" that'll help identify which timestamp was related to the email versus timestamps related to file actions that you'll add in the next step.

   ```console
   EmailEvents
   | where AttachmentCount > 0 and EmailDirection == "Inbound"
   | project-rename EmailTimestamp=Timestamp
   | join EmailAttachmentInfo on NetworkMessageId, RecipientObjectId
   ```

6. Next, use the **SHA256** value from the **EmailAttachmentInfo** table to find **DeviceFileEvents** (file actions that happened on the endpoint) for that hash. The common field here will be the SHA256 hash for the attachment.

   The resulting table now includes details from the endpoint (Microsoft Defender for Endpoint) such as device name, what action was done (in this case, filtered to only include FileCreated events), and where the file was stored. The account name associated with the process will also be included.

   ```console
   EmailEvents
   | where AttachmentCount > 0 and EmailDirection == "Inbound"
   | project-rename EmailTimestamp=Timestamp
   | join EmailAttachmentInfo on NetworkMessageId, RecipientObjectId
   | join DeviceFileEvents on SHA256
   | where ActionType == "FileCreated"
   ```

   You've now created a query that'll identify all inbound emails where the user opened or saved the attachment. You can also refine this query to filter for specific sender domains, file sizes, file types, and so on.

7. Functions are a special kind of join, which let you pull more TI data about a file like its prevalence, signer and issuer info, etc. To get more details on the file, use the **FileProfile()** function enrichment:

    ```console
    EmailEvents
    | where AttachmentCount > 0 and EmailDirection == "Inbound"
    | project-rename EmailTimestamp=Timestamp
    | join EmailAttachmentInfo on NetworkMessageId, RecipientObjectId
    | join DeviceFileEvents on SHA256
    | where ActionType == "FileCreated"
    | distinct SHA1
    | invoke FileProfile()
    ```

#### Create a detection

Once you have created a query that identifies information that you'd like to **get alerted** about if they happen in the future, you can create a custom detection from the query.

Custom detections will run the query according to the frequency you set, and the results of the queries will create security alerts, based on the impacted assets you choose. Those alerts will be correlated to incidents and can be triaged as any other security alert generated by one of the products.

1. On the query page, remove lines 7 and 8 that were added in step 7 of the Go hunting instructions and click **Create detection rule**.

   ![Example of where you can click create detection rule in the the advanced hunting page.](../../media/advanced-hunting-incident-response-try-3.png)

   > [!NOTE]
   > If you click **Create detection rule** and you have syntax errors in your query, your detection rule won't be saved. Double-check your query to ensure there's no errors.

2. Fill in the required fields with the  information that will allow the security team to understand the alert, why it was generated, and what actions you expect them to take.

   ![Example of the create detection rule page where you can define the alert details.](../../media/mtp/fig23.png)

   Ensure that you fill out the fields with clarity to help give the next user an informed decision about this detection rule alert

3. Select what entities are impacted in this alert. In this case, select **Device** and **Mailbox**.

   ![Example of the create detection rule page where you can choose the parameters of the impacted entities.](../../media/mtp/fig24.png)

4. Determine what actions should take place if the alert is triggered. In this case, run an antivirus scan, though other actions could be taken.

   ![Example of the create detection rule page where you can run an antivirus scan when an alert is triggered to help address threats.](../../media/mtp/fig25.png)

5. Select the scope for the alert rule. Since this query involves devices, the device groups are relevant in this custom detection according to Microsoft Defender for Endpoint context. When creating a custom detection that does not include devices as impacted entities, scope does not apply.

   ![Example of the create detection rule page where you can set the scope for the alert rule manages your expectations for the results that you'll see.](../../media/mtp/fig26.png)

   For this pilot, you might want to limit this rule to a subset of testing devices in your production environment.

6. Select **Create**. Then, select **Custom detection rules** from the navigation panel.

   ![Example of Custom detection rules option in the menu.](../../media/mtp/fig27a.png)

   ![Example of the detection rules page which displays the rule and execution details.](../../media/mtp/fig27b.png)

   From this page, you can select the detection rule, which will open a details page.

   ![Example of the email attachments page where you can see the status of the rule execution, triggered alerts and actions, edit the detection, and so on.](../../media/mtp/fig28.png)

<!--

### Advanced hunting walk-through exercises

To learn more about advanced hunting, the following webcasts will walk you through the capabilities of advanced hunting within Microsoft 365 Defender to create cross-pillar queries, pivot to entities, and create custom detections and remediation actions.

> [!NOTE]
> Be prepared with your own GitHub account to run the hunting queries in your pilot test lab environment.

|Title|Description|Download MP4|Watch on YouTube|CSL file to use|
|---|---|---|---|---|
|Episode 1: KQL fundamentals|We'll cover the basics of advanced hunting capabilities in Microsoft 365 Defender. Learn about available advanced hunting data and basic KQL syntax and operators.|[MP4](https://aka.ms/MTP15JUL20_MP4)|[YouTube](https://youtu.be/0D9TkGjeJwM)|[Episode 1: CSL file in Git](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%201%20-%20KQL%20Fundamentals.csl)|
|Episode 2: Joins|We'll continue learning about data in advanced hunting and how to join tables together. Learn about inner, outer, unique, and semi joins, and the nuances of the default Kusto innerunique join.|[MP4](https://aka.ms/MTP22JUL20_MP4)|[YouTube](https://youtu.be/LMrO6K5TWOU)|[Episode 2: CSL file in Git](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%202%20-%20Joins.csl)|
|Episode 3: Summarizing, pivoting, and visualizing data|Now that we're able to filter, manipulate, and join data, it's time to start summarizing, quantifying, pivoting, and visualizing. In this episode, we'll cover the summarize operator and some of the calculations you can perform while diving into additional tables in the advanced hunting schema. We turn our datasets into charts that can help improve analysis.|[MP4](https://aka.ms/MTP29JUL20_MP4)|[YouTube](https://youtu.be/UKnk9U1NH6Y)|[Episode 3: CSL file in Git](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%203%20-%20Summarizing%2C%20Pivoting%2C%20and%20Joining.csl)|
|Episode 4: Let's hunt! Applying KQL to incident tracking|Time to track some attacker activity! In this episode, we'll use our improved understanding of KQL and advanced hunting in Microsoft 365 Defender to track an attack. Learn some of the tips and tricks used in the field to track attacker activity, including the ABCs of cybersecurity and how to apply them to incident response.|[MP4](https://aka.ms/MTP5AUG20_MP4)|[YouTube](https://youtu.be/2EUxOc_LNd8)|[Episode 4: CSL file in Git](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%204%20-%20Lets%20Hunt.csl)|
|

--> 

### Expert training on advanced hunting

**Tracking the adversary** is a webcast series for new security analysts and seasoned threat hunters. It guides you through the basics of advanced hunting all the way to creating your own sophisticated queries. 

See [Get expert training on advanced hunting](advanced-hunting-expert-training.md) to get started.

### Navigation you may need

[Create the Microsoft 365 Defender Evaluation Environment](eval-create-eval-environment.md)
