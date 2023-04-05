---
title: Detect and remediate the Outlook rules and custom forms injections attacks.
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyp
manager: dansimp
ms.date: 1/31/2023
audience: ITPro
ms.topic: conceptual
ms.collection:
  - tier2
  - m365-security

ms.localizationpriority: medium
search.appverid:
  - MET150
description: Learn how to recognize and remediate the Outlook rules and custom forms injections attacks in Office 365
ms.custom: seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
---
# Detect and Remediate Outlook Rules and Custom Forms Injections Attacks

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Summary** Learn how to recognize and remediate the Outlook rules and custom Forms injections attacks in Office 365.

## What is the Outlook Rules and Custom Forms injection attack?

After an attacker gains access to your organization, they'll try to establish a foothold to stay in or get back in after they've been discovered. This activity is called *establishing a persistence mechanism*. There are two ways that an attacker can use Outlook to establish a persistence mechanism:

- By exploiting Outlook rules.
- By injecting custom forms into Outlook.

Reinstalling Outlook, or even giving the affected person a new computer won't help. When the fresh installation of Outlook connects to the mailbox, all rules and forms are synchronized from the cloud. The rules or forms are typically designed to run remote code and install malware on the local machine. The malware steals credentials or performs other illicit activity.

The good news is: if you keep your Outlook clients patched to the latest version, you aren't vulnerable to the threat as current Outlook client defaults block both mechanisms.

The attacks typically follow these patterns:

**The Rules Exploit**:

1. The attacker steals a user's credentials.

2. The attacker signs in to that user's Exchange mailbox (Exchange Online or on-premises Exchange).

3. The attacker creates a forwarding Inbox rule in the mailbox. The forwarding rule is triggered when the mailbox receives a specific message from the attacker that matches the conditions of the rule. The rule conditions and message format are tailor-made for each other.

4. The attacker sends the trigger email to the compromised mailbox, which is still being used as normal by the unsuspecting user.

5. When the mailbox receives a message that matches the conditions of rule, the action of the rule is applied. Typically, the rule action is to launch an application on a remote (WebDAV) server.

6. Typically, the application installs malware on the user's machine (for example, [PowerShell Empire](https://www.powershellempire.com/)).

7. The malware allows the attacker to steal (or steal again) the user's username and password or other credentials from local machine and perform other malicious activities.

**The Forms Exploit**:

1. The attacker steals a user's credentials.

2. The attacker signs in to that user's Exchange mailbox (Exchange Online or on-premises Exchange).

3. The attacker inserts a custom mail form template into the user's mailbox. The custom form is triggered when the mailbox receives a specific message from the attacker that requires the mailbox to load the custom form. The custom form and the message format are tailor-made for each other.

4. The attacker sends the trigger email to the compromised mailbox, which is still being used as normal by the unsuspecting user.

5. When the mailbox receives the message, the mailbox loads the required form. The form launches an application on a remote (WebDAV) server.

6. Typically, the application installs malware on the user's machine (for example, [PowerShell Empire](https://www.powershellempire.com/)).

7. The malware allows the attacker to steal (or steal again) the user's username and password or other credentials from local machine and perform other malicious activities.

## What a Rules and Custom Forms Injection attack might look like Office 365?

These persistence mechanisms are unlikely to be noticed by your users and may in some cases even be invisible to them. This article tells you how to look for any of the seven signs (Indicators of Compromise) listed below. If you find any of these, you need to take remediation steps.

- **Indicators of the Rules compromise**:
  - Rule Action is to start an application.
  - Rule References an EXE, ZIP, or URL.
  - On the local machine, look for new process starts that originate from the Outlook PID.

- **Indicators of the Custom forms compromise**:
  - Custom forms present saved as their own message class.
  - Message class contains executable code.
  - Typically, malicious forms are stored in Personal Forms Library or Inbox folders.
  - Form is named IPM.Note.[custom name].

## Steps for finding signs of this attack and confirming it

You can use either of the following methods to confirm the attack:

- Manually examine the rules and forms for each mailbox using the Outlook client. This method is thorough, but you can only check one mailbox at a time. This method can be very time consuming if you have many users to check, and might also infect the computer that you're using.

- Use the [Get-AllTenantRulesAndForms.ps1](https://github.com/OfficeDev/O365-InvestigationTooling/blob/master/Get-AllTenantRulesAndForms.ps1) PowerShell script to automatically dump all the mail forwarding rules and custom forms for all the users in your tenancy. This is the fastest and safest method with the least amount of overhead.

### Confirm the Rules Attack Using the Outlook client

1. Open the users Outlook client as the user. The user may need your help in examining the rules on their mailbox.

2. Refer to [Manage email messages by using rules](https://support.microsoft.com/office/c24f5dea-9465-4df4-ad17-a50704d66c59) article for the procedures on how to open the rules interface in Outlook.

3. Look for rules that the user didn't create, or any unexpected rules or rules with suspicious names.

4. Look in the rule description for rule actions that start and application or refer to an .EXE, .ZIP file or to launching a URL.

5. Look for any new processes that start using the Outlook process ID. Refer to [Find the Process ID](/windows-hardware/drivers/debugger/finding-the-process-id).

### Steps to confirm the Forms attack using the Outlook client

1. Open the user Outlook client as the user.

2. Follow the steps in, [Show the Developer tab](https://support.microsoft.com/office/e1192344-5e56-4d45-931b-e5fd9bea2d45) for the user's version of Outlook.

3. Open the now visible developer tab in Outlook and click **design a form**.

4. Select the **Inbox** from the **Look In** list. Look for any custom forms. Custom forms are rare enough that if you have any custom forms at all, it is worth a deeper look.

5. Investigate any custom forms, especially those marked as hidden.

6. Open any custom forms and in the **Form** group click **View Code** to see what runs when the form is loaded.

### Steps to confirm the Rules and Forms attack using PowerShell

The simplest way to verify a rules or custom forms attack is to run the [Get-AllTenantRulesAndForms.ps1](https://github.com/OfficeDev/O365-InvestigationTooling/blob/master/Get-AllTenantRulesAndForms.ps1) PowerShell script. This script connects to every mailbox in your tenant and dumps all the rules and forms into two .csv files.

#### Pre-requisites

You'll need to have global administrator rights to run the script because the script connects to every mailbox in the tenancy to read the rules and forms.

1. Sign in to the machine that you'll run the script from with local administrator rights.

2. Download or copy the Get-AllTenantRulesAndForms.ps1 script from GitHub to a folder from which you'll run it. The script creates two date stamped files to this folder, MailboxFormsExport-yyyy-mm-dd.csv, and MailboxRulesExport-yyyy-mm-dd.csv.

3. Open a PowerShell instance as an administrator and open the folder you saved the script to.

4. Run this PowerShell command line as follows `.\Get-AllTenantRulesAndForms.ps1`.\Get-AllTenantRulesAndForms.ps1

#### Interpreting the output

- **MailboxRulesExport-*yyyy-mm-dd*.csv**: Examine the rules (one per row) for action conditions that include applications or executables:

  - **ActionType (column A)**: If you see the value "ID_ACTION_CUSTOM", the rule is likely malicious.

  - **IsPotentiallyMalicious (column D)**: If this value is "TRUE", the rule is likely malicious.

  - **ActionCommand (column G)**: If this column lists an application or any file with .exe or .zip extensions, or an unknown entry that refers to a URL, the rule is likely malicious.

- **MailboxFormsExport-*yyyy-mm-dd*.csv**: In general, the use of custom forms is rare. If you find any in this workbook, you open that user's mailbox and examine the form itself. If your organization didn't put it there intentionally, it's likely malicious.

## How to stop and remediate the Outlook Rules and Forms attack

If you find any evidence of either of these attacks, remediation is simple, just delete the rule or form from the mailbox. You can do this with the Outlook client or using Exchange PowerShell to remove rules.

### Using Outlook

1. Identify all the devices that the user has used with Outlook. They'll all need to be cleaned of potential malware. Don't allow the user to sign on and use email until all the devices are cleaned.

2. Follow the steps in [Delete a rule](https://support.microsoft.com/office/2f0e7139-f696-4422-8498-44846db9067f) for each device.

3. If you're unsure about the presence of other malware, you can format and reinstall all the software on the device. For mobile devices, you can follow the manufacturers steps to reset the device to the factory image.

4. Install the most up-to-date versions of Outlook. Remember that the current version of Outlook blocks both types of this attack by default.

5. Once all offline copies of the mailbox have been removed, reset the user's password (use a high quality one) and follow the steps in [Setup multi-factor authentication for users](../../admin/security-and-compliance/set-up-multi-factor-authentication.md) if MFA hasn't already been enabled. This ensures that the user's credentials aren't exposed via other means (such as phishing or password re-use).

### Using PowerShell

There are two Exchange PowerShell cmdlets you can use to remove or disable dangerous rules. Just follow the steps.

#### Steps for mailboxes that are on an Exchange server

1. Connect to the Exchange server using remote PowerShell or the Exchange Management Shell. Follow the steps in [Connect to Exchange servers using remote PowerShell](/powershell/exchange/connect-to-exchange-servers-using-remote-powershell) or [Open the Exchange Management Shell](/powershell/exchange/open-the-exchange-management-shell).

2. If you want to completely remove a single rule, multiple rules, or all rules from a mailbox use the [Remove-InboxRule](/powershell/module/exchange/Remove-InboxRule) cmdlet.

3. If you want to retain the rule and its contents for further investigation use the [Disable-InboxRule](/powershell/module/exchange/disable-inboxrule) cmdlet.

#### Steps for mailboxes in Exchange Online

1. Follow the steps in [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. If you want to completely remove a single rule, multiple rules, or all rules from a mailbox use the [Remove-Inbox Rule](/powershell/module/exchange/Remove-InboxRule) cmdlet.

3. If you want to retain the rule and its contents for further investigation use the [Disable-InboxRule](/powershell/module/exchange/disable-inboxrule) cmdlet.

## How to minimize future attacks

### First: protect your accounts

The Rules and Forms exploits are only used by an attacker after they've stolen or breached one of your user's accounts. So, your first step to preventing the use of these exploits against your organization is to aggressively protect your user accounts. Some of the most common ways that accounts are breached are through phishing or [password spray attacks](https://www.microsoft.com/security/blog/2020/04/23/protecting-organization-password-spray-attacks/).

The best way to protect your user accounts, and especially your administrator accounts, is to [set up multi-factor authentication for users](../../admin/security-and-compliance/set-up-multi-factor-authentication.md). You should also:

- Monitor how your user accounts are [accessed and used](/azure/active-directory/active-directory-view-access-usage-reports). You may not prevent the initial breach, but you'll shorten the duration and the impact of the breach by detecting it sooner. You can use these [Office 365 Cloud App Security policies](/cloud-app-security/what-is-cloud-app-security) to monitor you accounts and alert on unusual activity:

  - **Multiple failed login attempts**: This policy profiles your environment and triggers alerts when users perform multiple failed login activities in a single session with respect to the learned baseline, which could indicate an attempted breach.

  - **Impossible travel**: This policy profiles your environment and triggers alerts when activities are detected from the same user in different locations within a time period that is shorter than the expected travel time between the two locations. This could indicate that a different user is using the same credentials. Detecting this anomalous behavior necessitates an initial learning period of seven days during which it learns a new user's activity pattern.

  - **Unusual impersonated activity (by user)**: This policy profiles your environment and triggers alerts when users perform multiple impersonated activities in a single session with respect to the baseline learned, which could indicate an attempted breach.

- Use a tool like [Office 365 Secure Score](/microsoft-365/security/defender/microsoft-secure-score) to manage account security configurations and behaviors.

### Second: Keep your Outlook clients current

Fully updated and patched versions of Outlook 2013, and 2016 disable the "Start Application" rule/form action by default. This ensures that even if an attacker breaches the account, the rule and form actions will be blocked. You can install the latest updates and security patches by following the steps in [Install Office updates](https://support.microsoft.com/office/2ab296f3-7f03-43a2-8e50-46de917611c5).

Here are the patch versions for your Outlook 2013 and 2016 clients:

- **Outlook 2016**: 16.0.4534.1001 or greater.

- **Outlook 2013**: 15.0.4937.1000 or greater.

For more information on the individual security patches, see:

- [Outlook 2016 Security Patch](https://support.microsoft.com/help/3191883)

- [Outlook 2013 Security Patch](https://support.microsoft.com/help/3191938)

### Third: Monitor your Outlook clients

Note that even with the patches and updates installed, it's possible for an attacker to change the local machine configuration to re-enable the "Start Application" behavior. You can use [Advanced Group Policy Management](/microsoft-desktop-optimization-pack/agpm/) to monitor and enforce local machine policies on your clients.

You can see if "Start Application" has been re-enabled through an override in the registry by using the information in [How to view the system registry by using 64-bit versions of Windows](https://support.microsoft.com/help/305097). Check these subkeys:

- **Outlook 2016**: `HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Outlook\Security\`

- **Outlook 2013**: `HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Outlook\Security\`

Look for the key EnableUnsafeClientMailRules. If it's there and is set to 1, the Outlook security patch has been overridden and the computer is vulnerable to the Form/Rules attack. If the value is 0, the "Start Application" action is disabled. If the updated and patched version of Outlook is installed and this registry key isn't present, then a system isn't vulnerable to these attacks.

Customers with on-premises Exchange installations should consider blocking older versions of Outlook that don't have patches available. Details on this process can be found in the article [Configure Outlook client blocking](/exchange/configure-outlook-client-blocking-exchange-2013-help).

## See also:

- [Malicious Outlook Rules](https://silentbreaksecurity.com/malicious-outlook-rules/) by SilentBreak Security Post about Rules Vector provides a detailed review of how the Outlook Rules.

- [MAPI over HTTP and Mailrule Pwnage](https://sensepost.com/blog/2016/mapi-over-http-and-mailrule-pwnage/) on the Sensepost blog about Mailrule Pwnage discusses a tool called Ruler that lets you exploit mailboxes through Outlook rules.

- [Outlook forms and shells](https://sensepost.com/blog/2017/outlook-forms-and-shells/) on the Sensepost blog about Forms Threat Vector.

- [Ruler Codebase](https://github.com/sensepost/ruler)

- [Ruler Indicators of Compromise](https://github.com/sensepost/notruler/blob/master/iocs.md)
