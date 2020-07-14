---
title: App control
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# App control

Microsoft Managed Desktop uses many technologies to help maintain the security of information. Many of these technologies involve controlling that access that users have to information. However, when a user runs an app, that app has the same level of access to data that the user has. So sensitive information could easily be deleted or transmitted out of the organization if a user knowingly or unknowingly runs malicious software.

App control helps mitigate these types of security breaches by restricting the files that users can run. App control is well-suited for regulated or risk-averse organizations, such as financial institutions or governments.

Any security technology requires a balance among user experience, security, and cost. App control reduces the threat of malicious software in your environment, but there are consequences to the end user and additional actions for your IT administrator.

**Additional security:**

- All apps and scripts in your environment must be trusted by the Microsoft Managed Desktop app control policy in order to run.
- Standard users cannot run untrested apps or scripts.

**Additional responsibilities:**

- You must test any app before it's deployed to ensure it won't be blocked by the policy.
- Your IT administrator must request an exemption for any app that installs in the user context.

## Managing trust in applications

Microsoft Managed Desktop curates a base policy which trusts the core components of Microsoft technologies. You then *add* trust for your own applications and scripts by informing Microsoft Managed Desktop which of them you already trust.

### Base policy

Microsoft Managed Desktop, in collaboration with Microsoft cybersecurity experts, creates and maintains a standard policy that enables most apps deployed through Microsoft Intune while blocking dangerous activities like code compilation or execution of untrusted files.

If a user other than an administrator could have added an app or script to a device (that is, it's in a user-writable directory), we won't allow it execute unless it has already been specifically allowed by an administrator. If a user is tricked into installing malware, if a vulnerability in an app the user runs attempts to install malware, or if a user intentionally tries to run an unauthorized app or script, our policy will stop execution.

### Signer requests

You inform us of which apps are provided by software vendors you trust by filing a *signer request*. By doing so, we add that trust information into the baseline application control policy and allow any software signed with that publisher's certificate to run on your devices. {DOES that mean that once a *publisher* is trusted, that *any* app signed by that publisher will run without further action? Or do you have to file on a per-app basis?}

## Audit and Enforced policies

Microsoft Managed Desktop uses two Microsoft Intune policies to provide app control:

### Audit policy
This policy creates logs to record whether an app or script would be blocked by the Enforced policy. Audit policies don't enforce app control rules and are meant for testing purposes to identify whether an application will require a publisher exemption. It logs warnings (8003 or 8006 events) in Event Viewer instead of blocking the execution or installation of specified apps or script.

### Enforced policy
This policy blocks untrusted apps and scripts from running and creates logs whenever an app or script is blocked. Enforced policies prevent standard {what's a "standard user"?} users from executing apps or scripts stored in user-writable directories.

Devices in the Test group have an Audit policy applied so that you can use them to validate whether any applications will cause issues. All other groups (First, Fast, and Broad) use an Enforced policy, so end users in those groups won't be able to run apps or scripts that are not exempted by default with the Microsoft Managed Desktop base policy.







