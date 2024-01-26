---
title: How Microsoft identifies malware and potentially unwanted applications
ms.reviewer: andanut, elahehsamani
description: Learn how Microsoft reviews software for privacy violations and other negative behavior, to determine if it's malware or a potentially unwanted application.
ms.service: microsoft-365-security
ms.subservice: intelligence
ms.localizationpriority: medium
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.date: 01/25/2024
search.appverid: met150
---

# How Microsoft identifies malware and potentially unwanted applications

Microsoft aims to provide a delightful and productive Windows experience by working to ensure you're safe and in control of your devices. Microsoft helps protect you from potential threats by identifying and analyzing software and online content. When you download, install, and run software, we check the reputation of downloaded programs and ensure you're protected against known threats. You're also warned about software that is unknown to us.  

You can assist Microsoft by [submitting unknown or suspicious software for analysis](https://www.microsoft.com/wdsi/filesubmission/). Submitting files for analysis helps ensure that unknown or suspicious software is scanned by our system to start establishing reputation. [Learn more about submitting files for analysis](submission-guide.md)

The next sections provide an overview of the classifications we use for applications and the types of behaviors that lead to that classification.

> [!NOTE]
> New forms of malware and potentially unwanted applications are being developed and distributed rapidly. The following list may not be comprehensive, and Microsoft reserves the right to adjust, expand, and update these without prior notice or announcement.

## Unknown – Unrecognized software  

No antivirus or protection technology is perfect. It takes time to identify and block malicious sites and applications, or trust newly released programs and certificates. With almost 2 billion websites on the internet and software continuously updated and released, it's impossible to have information about every single site and program.

Think of Unknown/Uncommonly downloaded warnings as an early warning system for potentially undetected malware. There's generally a delay from the time new malware is released until it's identified. Not all uncommon programs are malicious, but the risk in the unknown category is much higher for the typical user. Warnings for unknown software aren't blocks. Users can choose to download and run the application normally if they wish to.

Once enough data is gathered, Microsoft's security solutions can make a determination. Either no threats are found, or an application or software is categorized as malware or potentially unwanted software.

## Malware

Malware is the overarching name for applications and other code, like software, that Microsoft classifies more granularly as *malicious software* or *unwanted software*.

### Malicious software

Malicious software is an application or code that compromises user security. Malicious software might steal your personal information, lock your device until you pay a ransom, use your device to send spam, or download other malicious software. In general, malicious software wants to trick, cheat, or defrauds users, placing them in vulnerable states.

Microsoft classifies most malicious software into one of the following categories:

* **Backdoor:** A type of malware that gives malicious hackers remote access to and control of your device.

* **Command and Control:** A type of malware that infects your device and establishes communication with the hackers' command-and-control server to receive instructions. Once communication is established, hackers can send commands that can steal data, shut down and reboot the device, and disrupt web services.

* **Downloader:** A type of malware that downloads other malware onto your device. It must connect to the internet to download files.

* **Dropper:** A type of malware that installs other malware files onto your device. Unlike a downloader, a dropper doesn't have to connect to the internet to drop malicious files. The dropped files are typically embedded in the dropper itself.

* **Exploit:** A piece of code that uses software vulnerabilities to gain access to your device and perform other tasks, such as installing malware. [See more information about exploits](exploits-malware.md).

* **Hacktool:** A type of tool that can be used to gain unauthorized access to your device.

* **Macro virus:** A type of malware that spreads through infected documents, such as Microsoft Word or Excel documents. The virus is run when you open an infected document.

* **Obfuscator:** A type of malware that hides its code and purpose, making it more difficult for security software to detect or remove.

* **Password stealer:** A type of malware that gathers your personal information, such as usernames and passwords. It often works along with a key logger, which collects and sends information about the keys you press and websites you visit.

* **Ransomware:** A type of malware that encrypts your files or makes other modifications that can prevent you from using your device. It then displays a ransom note that states you must pay money or perform other actions before you can use your device again. [Learn more about ransomware](/security/ransomware/).

* **Rogue security software:** Malware that pretends to be security software but doesn't provide any protection. This type of malware usually displays alerts about nonexistent threats on your device. It also tries to convince you to pay for its services.

* **Trojan:** A type of malware that attempts to appear harmless. Unlike a virus or a worm, a trojan doesn't spread by itself. Instead, it tries to look legitimate to tricks users into downloading and installing it. Once installed, trojans perform various malicious activities such as stealing personal information, downloading other malware, or giving attackers access to your device.

* **Trojan clicker:** A type of trojan that automatically selects buttons or similar controls on websites or applications. Attackers can use this trojan to click on online advertisements. These clicks can skew online polls or other tracking systems and can even install applications on your device.

* **Worm:** A type of malware that spreads to other devices. Worms can spread through email, instant messaging, file sharing platforms, social networks, network shares, and removable drives. Sophisticated worms take advantage of software vulnerabilities to propagate.

### Unwanted software

Microsoft believes that you should have control over your Windows experience. Software running on Windows should keep you in control of your device through informed choices and accessible controls. Microsoft identifies software behaviors that ensure you stay in control. We classify software that doesn't fully demonstrate these behaviors as "unwanted software".

#### Lack of choice

You must be notified about what is happening on your device, including what software does and whether it's active.

Software that exhibits lack of choice might:

* Fail to provide prominent notice about the behavior of the software and its purpose and intent.

* Fail to clearly indicate when the software is active. It might also attempt to hide or disguise its presence.

* Install, reinstall, or remove software without your permission, interaction, or consent.

* Install other software without a clear indication of its relationship to the primary software.

* Circumvent user consent dialogs from the browser or operating system.

* Falsely claim to be software from Microsoft.

Software must not mislead or coerce you into making decisions about your device. It's considered behavior that limits your choices. In addition to the previous list, software that exhibits lack of choice might:

* Display exaggerated claims about your device's health.

* Make misleading or inaccurate claims about files, registry entries, or other items on your device.

* Display claims in an alarming manner about your device's health and require payment or certain actions in exchange for fixing the purported issues.

Software that stores or transmits your activities or data must:

* Give you notice and get consent to do so. Software shouldn't include an option that configures it to hide activities associated with storing or transmitting your data.

#### Lack of control

You must be able to control software on your device. You must be able to start, stop, or otherwise revoke authorization to software.

Software that exhibits lack of control might:

* Prevent or limit you from viewing or modifying browser features or settings.

* Open browser windows without authorization.

* Redirect web traffic without giving notice and getting consent.

* Modify or manipulate webpage content without your consent.

Software that changes your browsing experience must only use the browser's supported extensibility model for installation, execution, disabling, or removal. Browsers that don't provide supported extensibility models are considered nonextensible and shouldn't be modified.

#### Installation and removal

You must be able to start, stop, or otherwise revoke authorization given to software. Software should obtain your consent before installing, and it must provide a clear and straightforward way for you to install, uninstall, or disable it.

Software that delivers *poor installation experience* might bundle or download other "unwanted software" as classified by Microsoft.

Software that delivers *poor removal experience* might:

* Present confusing or misleading prompts or pop-ups when you try to uninstall it.

* Fail to use standard install/uninstall features, such as Add/Remove Programs.

#### Advertising and advertisements

Software that promotes a product or service outside of the software itself can interfere with your computing experience. You should have clear choice and control when installing software that presents advertisements.

The advertisements that are presented by software must:

* Include an obvious way for users to close the advertisement. The act of closing the advertisement must not open another advertisement.

* Include the name of the software that presented the advertisement.

The software that presents these advertisements must:

* Provide a standard uninstall method for the software using the same name as shown in the advertisement it presents.

Advertisements shown to you must:

* Be distinguishable from website content.

* Not mislead, deceive, or confuse.

* Not contain malicious code.

* Not invoke a file download.

#### Consumer opinion

Microsoft maintains a worldwide network of analysts and intelligence systems where you can [submit software for analysis](https://www.microsoft.com/wdsi/filesubmission). Your participation helps Microsoft identify new malware quickly. After analysis, Microsoft creates Security intelligence for software that meets the described criteria. This Security intelligence identifies the software as malware and are available to all users through Microsoft Defender Antivirus and other Microsoft antimalware solutions.

#### Tampering software

Tampering software encompasses a broad spectrum of tools and threats that directly or indirectly lower the overall level of security of devices. Examples of common tampering actions include:

* **Disabling or uninstalling security software**: Tools and threats that attempt to evade defense mechanisms by disabling or uninstalling security software, such as antivirus, EDR, or network protection systems. These actions leave the system vulnerable to further attacks. 
 
* **Abusing operating system features and settings**: Tools and threats that exploit features and settings within the operating system to compromise security. Examples include: 

   - **Firewall abuse**: Attackers using firewall components to indirectly tamper with security software or block legitimate network connections, potentially enabling unauthorized access or data exfiltration. 

   - **DNS manipulation**: Tampering with DNS settings to redirect traffic or block security updates, leaving the system exposed to malicious activities. 

   - **Safe mode exploitation**: Leveraging the legitimate `Safe Mode` setting to put the device in a state where security solutions might be bypassed, allowing for unauthorized access or malware execution. 

* **Manipulating system components**: Tools and threats that target critical system components, such as kernel drivers or system services, to compromise the overall security and stability of the device. 
 
* **Privilege escalation**: Techniques aimed at elevating user privileges to gain control over the system's resources and potentially manipulate security settings. 
 
* **Interfering with security updates**: Attempts to block or manipulate security updates, leaving the system vulnerable to known vulnerabilities. 
 
* **Disrupting critical services**: Actions that disrupt essential system services or processes, potentially causing system instability and opening the door for other attacks. 
 
* **Unauthorized registry changes**: Modifications to the Windows Registry or system settings that impact the security posture of the device. 
 
* **Tampering with boot processes**: Efforts to manipulate the boot process, which can result in the loading of malicious code during startup. 

## Potentially unwanted application (PUA)

Our PUA protection aims to safeguard user productivity and ensure enjoyable Windows experiences. This protection helps deliver more productive, performant, and delightful Windows experiences. For instruction on how to enable PUA protection in Chromium-based Microsoft Edge and Microsoft Defender Antivirus, see [Detect and block potentially unwanted applications](/microsoft-365/security/defender-endpoint/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus).

*PUAs aren't considered malware.*

Microsoft uses specific categories and the category definitions to classify software as a PUA.

* **Advertising software:** Software that displays advertisements or promotions, or prompts you to complete surveys for other products or services in software other than itself. Such software includes software that inserts advertisements to webpages.

* **Torrent software (Enterprise only):** Software that is used to create or download torrents or other files specifically used with peer-to-peer file-sharing technologies.

* **Cryptomining software (Enterprise only):** Software that uses your device resources to mine cryptocurrencies.

* **Bundling software:** Software that offers to install other software that isn't developed by the same entity or not required for the software to run. Also, software that offers to install other software that qualifies as PUA based on the criteria outlined in this document.

* **Marketing software:** Software that monitors and transmits the activities of users to applications or services other than itself for marketing research.

* **Evasion software:** Software that actively tries to evade detection by security products, including software that behaves differently in the presence of security products.

* **Poor industry reputation:** Software that trusted security providers detect with their security products. The security industry is dedicated to protecting customers and improving their experiences. Microsoft and other organizations in the security industry continuously exchange knowledge about files we have analyzed to provide users with the best possible protection.

## Vulnerable software

Vulnerable software is an application or code that has security flaws or weaknesses which can be exploited by attackers to perform various malicious and potentially destructive actions. These vulnerabilities may stem from unintentional coding errors or design flaws, and if exploited, can lead to harmful activities such as unauthorized access, privilege escalation, tampering, and more. 

### Vulnerable drivers

Despite strict requirements and reviews imposed on code running in kernel, device drivers remain susceptible to various types of vulnerabilities and bugs. Examples include memory corruption and arbitrary read and write bugs, which can be exploited by attackers to execute more significant malicious and destructive actions -– actions typically restricted in user mode. Terminating critical processes on a device is an example of such malicious action.  

Vulnerable drivers are typically benign and not a threat, devoid of malicious intent. However, they might possess vulnerabilities that can be exploited by attackers to facilitate malicious actions, such as terminating critical processes on a device.