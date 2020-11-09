---
title: App control
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
manager: laurawi
audience: ITpro
ms.topic: article
ms.localizationpriority: normal
ms.collection: M365-modern-desktop

---

# App control

App control is an optional security practice in Microsoft Managed Desktop that restricts the execution of code on client devices. This control mitigates the risk of malware or malicious scripts by requiring that only code signed by a customer-approved list of publishers can run. There are many security benefits from this control, but it primarily aims to protect data and identity from client-based exploits.

Microsoft Managed Desktop simplifies the management of app control policies by creating a base policy that enables core productivity scenarios. You can extend trust to additional signers that are specific to the apps and scripts in your environment. 


Any security technology requires a balance among user experience, security, and cost. App control reduces the threat of malicious software in your environment, but there are consequences to the user and additional actions for your IT administrator.

**Additional security:**

Apps or scripts that are not trusted by the app control policy are blocked from running on devices.

**Your additional responsibilities:**

- You are responsible for testing your apps to identify whether they would be blocked by the application control policy.
- If an app is (or would be) blocked, you are responsible for identifying the needed signer details and requesting a change through the Admin portal.

**Microsoft Managed Desktop responsibilities:**

- Microsoft Managed Desktop maintains the base policy that enables core Microsoft products like M365 Apps, Windows, Teams, OneDrive, and so on.
- Microsoft Managed Desktop inserts your trusted signers and deploys the updated policy to your devices.


## Managing trust in applications

Microsoft Managed Desktop curates a base policy that trusts the core components of Microsoft technologies. You then *add* trust for your own applications and scripts by informing Microsoft Managed Desktop which of them you already trust.

### Base policy

Microsoft Managed Desktop, in collaboration with Microsoft cybersecurity experts, creates and maintains a standard policy that enables most apps deployed through Microsoft Intune while blocking dangerous activities like code compilation or execution of untrusted files.

The base policy takes the following approach to restricting software execution:

- Files run by administrators will be allowed to run.
- Files in locations that are *not* in user-writable directories will be allowed to run.
- Files are signed by a [trusted signer](#signer-requests).
- Most files signed by Microsoft will run, however some are blocked to prevent high-risk actions like code compilation.


If a user other than an administrator could have added an app or script to a device (that is, it's in a user-writable directory), we won't allow it to execute unless it has already been specifically allowed by an administrator. If a user is tricked into trying to install malware, if a vulnerability in an app the user runs attempts to install malware, or if a user intentionally tries to run an unauthorized app or script, our policy will stop execution.

### Signer requests

You inform us of which apps are provided by software vendors you trust by filing a *signer request*. By doing so, we add that trust information into the baseline application control policy and allow any software signed with that publisher's certificate to run on your devices.

## Audit and Enforced policies

Microsoft Managed Desktop uses two Microsoft Intune policies to provide app control:

### Audit policy
This policy creates logs to record whether an app or script would be blocked by the Enforced policy. Audit policies don't enforce app control rules and are meant for testing purposes to identify whether an application will require a publisher exemption. It logs warnings (8003 or 8006 events) in Event Viewer instead of blocking the execution or installation of specified apps or script.

### Enforced policy
This policy blocks untrusted apps and scripts from running and creates logs whenever an app or script is blocked. Enforced policies prevent standard users from executing apps or scripts stored in user-writable directories.

Devices in the Test group have an Audit policy applied so that you can use them to validate whether any applications will cause issues. All other groups (First, Fast, and Broad) use an Enforced policy, so users in those groups won't be able to run untrusted apps or scripts.







