---
title: App control
description:  How to use app control and trust with applications
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
audience: ITpro
ms.topic: article
ms.localizationpriority: medium
ms.collection: M365-modern-desktop

---

# App control

App control is an optional security practice in Microsoft Managed Desktop that restricts the execution of code on client devices.

This control mitigates the risk of malware or malicious scripts. The control requires that only codes signed by a customer-approved list of publishers can run. There are many security benefits from this control, but it primarily aims to protect data and identity from client-based exploits.

Microsoft Managed Desktop simplifies the management of app control policies by creating a base policy that enables core productivity scenarios. You can extend trust to other signers that are specific to the apps and scripts in your environment.

Any security technology requires a balance amongst user experience, security, and cost. App control reduces the threat of malicious software in your environment, but there are consequences to the user and further actions for your IT administrator.

| Additional security and responsibilities | Description |
| ------ | ------ |
| Additional security | Apps or scripts that aren't trusted by the app control policy are blocked from running on devices. |
| Your additional responsibilities | <ul><li>You're responsible for testing your apps to identify whether they would be blocked by the application control policy.</li><li>If an app is (or would be) blocked, you're responsible for identifying the required signer details. You must request a change through the Admin portal.</li></ul>
| Microsoft Managed Desktop responsibilities | <ul><li>Microsoft Managed Desktop maintains the base policy that enables core Microsoft products like Microsoft 365 Apps, Windows, Teams, OneDrive, and so on.</li><li>Microsoft Managed Desktop inserts your trusted signers and deploys the updated policy to your devices.</li></ul>

## Managing trust in applications

Microsoft Managed Desktop curates a base policy that trusts the core components of Microsoft technologies. You then *add* trust for your own applications and scripts by informing Microsoft Managed Desktop which apps and scripts you already trust.

### Base policy

Microsoft Managed Desktop, in collaboration with Microsoft cybersecurity experts, creates and maintains a standard policy. This standard policy:

- Enables most apps deployed through Microsoft Intune.
- Blocks dangerous activities like code compilation or execution of untrusted files.

The base policy takes the following approach to restricting software execution:

- Files run by administrators will be allowed to run.
- Files in locations that are *not* in user-writable directories will be allowed to run.
- Files are signed by a [trusted signer](#signer-requests).
- Most files signed by Microsoft will run, however some are blocked to prevent high-risk actions like code compilation.

If a user, other than an administrator, could have added an app or script to a device (that is, it's in a user-writable directory), we won't allow it to execute. We'll allow the execution if the app or script has already been allowed by an administrator.

Our policy will stop the execution of apps in the following scenarios:

- If a user is tricked into trying to install malware.
- If a vulnerability in an app the user runs attempts to install malware.
- If a user intentionally tries to run an unauthorized app or script.

### Signer requests

You inform us which apps are provided by software publishers you trust by filing a *signer request*. By doing so, we:

- Add that trust information into the baseline application control policy.
- Allow any software signed with that publisher's certificate to run on your devices.

## Audit and Enforced policies

Microsoft Managed Desktop uses Microsoft Intune policies to provide app control:

### Audit policy

This policy creates logs to record whether an app or script would be blocked by the Enforced policy.

Audit policies don't enforce app control rules. They're meant for testing purposes to identify whether an application will require a publisher exemption. It logs warnings (8003 or 8006 events) in the Event Viewer instead of blocking the execution or installation of specified apps or script.

### Enforced policy

This policy blocks untrusted apps and scripts from running, and creates logs whenever an app or script is blocked. Enforced policies prevent standard users from executing apps or scripts stored in user-writable directories.

Devices in the Test group have an Audit policy applied to validate whether any applications will cause issues. All other groups (First, Fast, and Broad) use an Enforced policy. Users in those groups won't be able to run untrusted apps or scripts.
