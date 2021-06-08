---
title: Try additional Microsoft 365 Defender incident response capabilities in a pilot environment
description: Try additional incident response capabilities.
keywords: Microsoft 365 Defender trial, try Microsoft 365 Defender, evaluate Microsoft 365 Defender, Microsoft 365 Defender evaluation lab, Microsoft 365 Defender pilot, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
localization_priority: Normal
ms.author: josephd
author: JoeDavies-MSFT
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-overview
  - m365solution-evalutatemtp
ms.topic: conceptual
ms.technology: m365d
---

# Try additional Microsoft 365 Defender incident response capabilities in a pilot environment


**Applies to:**
- Microsoft 365 Defender

Once you have performed an [incident response for a simulated attack](eval-defender-investigate-respond-simulate-attacks.md), here are some additional Microsoft 365 Defender capabilities to explore.


| Capability | Description | Link |
|:-------|:-----|:-------|
| Prioritize incidents | Use filtering and sorting of the incidents queue to determine which incidents to address next. | [Prioritize incidents](incident-queue.md) |
| Manage incidents | Modify incident properties to ensure correct assignment, tags, comments and to resolve an incident. | [Manage incidents](manage-incidents.md)  |
| Automated investigation and response | Automated investigation and response (AIR) capabilities that can help your security operations team address threats more efficiently and effectively. | [Automated investigation and response](m365d-autoir.md) |
| Action center |  A "single pane of glass" experience for incident and alert tasks such as approving pending remediation actions. | [Action center](m365d-action-center.md) |
| Advanced hunting | A query-based threat-hunting tool that lets you proactively inspect events in your network and locate threat indicators and entities. | [Advanced hunting scenario](#advanced-hunting-scenario) |
||||

## Advanced hunting scenario

> [!NOTE]
> Before we walk you through the simulation, watch the following video to understand the advanced hunting concepts, see where you can find it in the portal, and know how it can help you in your security operations:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4Bp7O]

### Hunting environment requirements

There's a single internal mailbox and device required for this scenario. You'll also need an external email account to send the test message.

1. Verify that your tenant has [enabled Microsoft 365 Defender](m365d-enable.md#confirm-that-the-service-is-on).
2. Identify a target mailbox to be used for receiving email.
    a. This mailbox must be monitored by Microsoft Defender for Office 365
    b. The device from requirement 3 needs to access this mailbox
3. Configure a test device:
    a. Make sure you are using Windows 10 version 1903 or later version.
    b. Join the test device to the test domain.
    c. [Turn on Windows Defender Antivirus](/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features). If you are having trouble enabling Windows Defender Antivirus, see [this troubleshooting topic](/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding#ensure-that-windows-defender-antivirus-is-not-disabled-by-a-policy).
    d. [Onboard to Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints).

### Run the simulation

1. From an external email account, send an email to the mailbox identified in step 2 of the test environment requirements section. Include an attachment that will be allowed through any existing email filter policies. This file does not need to be malicious or an executable. Suggested file types are <i>.pdf</i>, <i>.exe</i> (if allowed), or Office document such as a Word file.
2. Open the sent email from the device configured as defined in step 3 of the test environment requirements section. Either open the attachment or save the file to the device.

#### Go hunting

1. Open the security.microsoft.com portal.

2. Navigate to **Hunting > Advanced hunting**.

   ![Screenshot of advanced hunting in the M365 Security Center portal navigation bar](../../media/mtp/fig17.png)

3. Build a query that starts by gathering email events.

   1. From the query pane, select New.

   1. Double-click on the EmailEvents table from the schema.

      ```console
      EmailEvents
      ```

   1. Change the time frame to the last 24 hours. Assuming the email you sent when you ran the simulation above was in the past 24 hours, otherwise change the time frame.

      ![Screenshot of where you can change the time frame. Open the drop-down menu to choose from range of time frame options](../../media/mtp/fig18.png)

   1. Run the query. You may have many results depending on the environment for the pilot.

      > [!NOTE]
      > See the next step for filtering options to limit data return.

      ![Screenshot of the advanced hunting query results](../../media/mtp/fig19.png)

        > [!NOTE]
        > Advanced hunting displays query results as tabular data. You can also opt to view the data in other format types such as charts.

   1. Look at the results and see if you can identify the email you opened. It may take up to 2 hours for the message to show up in advanced hunting. If the email environment is large and there are many results, you might want to use the **Show Filters option** to find the message.

      In the sample, the email was sent from a Yahoo account. Click the **+** icon beside **yahoo.com** under the SenderFromDomain section and then click **Apply** to add the selected domain to the query. Use the domain or email account that was used to send the test message in step 1 of Run the Simulation to filter your results. Run the query again to get a smaller result set to verify that you see the message from the simulation.

      ![Screenshot of the filters. Use filters to narrow down the search, and find what you're looking for faster.](../../media/mtp/fig20.png)

      ```console
      EmailEvents
      | where SenderMailFromDomain == "yahoo.com"
      ```

   1. Click the resulting rows from the query so you can inspect the record.

      ![Screenshot of the inspect record side panel which opens up when an advanced hunting result is selected](../../media/mtp/fig21.png)

4. Now that you have verified that you can see the email, add a filter for the attachments. Focus on all emails with attachments in the environment. For this scenario, focus on inbound emails, not those that are being sent out from your environment. Remove any filters you have added to locate your message and add "| where **AttachmentCount > 0** and **EmailDirection** == **"Inbound""**

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

   ![Screenshot of where you can click create detection rule in the the advanced hunting page](../../media/mtp/fig22.png)

   > [!NOTE]
   > If you click **Create detection rule** and you have syntax errors in your query, your detection rule won't be saved. Double-check your query to ensure there's no errors.

2. Fill in the required fields with the  information that will allow the security team to understand the alert, why it was generated, and what actions you expect them to take.

   ![Screenshot of the create detection rule page where you can define the alert details](../../media/mtp/fig23.png)

   Ensure that you fill out the fields with clarity to help give the next user an informed decision about this detection rule alert

3. Select what entities are impacted in this alert. In this case, select **Device** and **Mailbox**.

   ![Screenshot of the create detection rule page where you can choose the parameters of the impacted entities](../../media/mtp/fig24.png)

4. Determine what actions should take place if the alert is triggered. In this case, run an antivirus scan, though other actions could be taken.

   ![Screenshot of the create detection rule page where you can run an antivirus scan when an alert is triggered to help address threats](../../media/mtp/fig25.png)

5. Select the scope for the alert rule. Since this query involve devices, the device groups are relevant in this custom detection according to Microsoft Defender for Endpoint context. When creating a custom detection that does not include devices as impacted entities, scope does not apply.

   ![Screenshot of the create detection rule page where you can set the scope for the alert rule manages your expectations for the results that you'll see](../../media/mtp/fig26.png)

   For this pilot, you might want to limit this rule to a subset of testing devices in your production environment.

6. Select **Create**. Then, select **Custom detection rules** from the navigation panel.

   ![Screenshot of Custom detection rules option in the menu](../../media/mtp/fig27a.png)

   ![Screenshot of the detection rules page which displays the rule and execution details](../../media/mtp/fig27b.png)

   From this page, you can select the detection rule, which will open a details page.

   ![Screenshot of the email attachments page where you can see the status of the rule execution, triggered alerts and actions, edit the detection, and so on](../../media/mtp/fig28.png)

### Advanced hunting walk-through exercises

To learn more about advanced hunting, the following webcasts will walk you through the capabilities of advanced hunting within Microsoft 365 Defender to create cross-pillar queries, pivot to entities and create custom detections and remediation actions.

> [!NOTE]
> Be prepared with your own GitHub account to run the hunting queries in your pilot test lab environment.

|Title|Description|Download MP4|Watch on YouTube|CSL file to use|
|---|---|---|---|---|
|Episode 1: KQL fundamentals|We'll cover the basics of advanced hunting capabilities in Microsoft 365 Defender. Learn about available advanced hunting data and basic KQL syntax and operators.|[MP4](https://aka.ms/MTP15JUL20_MP4)|[YouTube](https://youtu.be/0D9TkGjeJwM)|[Episode 1: CSL file in Git](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%201%20-%20KQL%20Fundamentals.csl)|
|Episode 2: Joins|We'll continue learning about data in advanced hunting and how to join tables together. Learn about inner, outer, unique, and semi joins, and the nuances of the default Kusto innerunique join.|[MP4](https://aka.ms/MTP22JUL20_MP4)|[YouTube](https://youtu.be/LMrO6K5TWOU)|[Episode 2: CSL file in Git](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%202%20-%20Joins.csl)|
|Episode 3: Summarizing, pivoting, and visualizing data|Now that we're able to filter, manipulate, and join data, it's time to start summarizing, quantifying, pivoting, and visualizing. In this episode, we'll cover the summarize operator and some of the calculations you can perform while diving into additional tables in the advanced hunting schema. We turn our datasets into charts that can help improve analysis.|[MP4](https://aka.ms/MTP29JUL20_MP4)|[YouTube](https://youtu.be/UKnk9U1NH6Y)|[Episode 3: CSL file in Git](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%203%20-%20Summarizing%2C%20Pivoting%2C%20and%20Joining.csl)|
|Episode 4: Let's hunt! Applying KQL to incident tracking|Time to track some attacker activity! In this episode, we'll use our improved understanding of KQL and advanced hunting in Microsoft 365 Defender to track an attack. Learn some of the tips and tricks used in the field to track attacker activity, including the ABCs of cybersecurity and how to apply them to incident response.|[MP4](https://aka.ms/MTP5AUG20_MP4)|[YouTube](https://youtu.be/2EUxOc_LNd8)|[Episode 4: CSL file in Git](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%204%20-%20Lets%20Hunt.csl)|
|

