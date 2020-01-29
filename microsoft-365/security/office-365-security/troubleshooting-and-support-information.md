---
title: "Troubleshooting and support information"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 5d9f75f5-bb7f-458c-ad30-5c8eae0b0e4e
ms.collection:
- M365-security-compliance
description: "This topic describes troubleshooting steps for end users and administrators, and provides information about how to contact technical support for assistance."
---

# Troubleshooting and support information

This topic describes troubleshooting steps for end users and administrators, and provides information about how to contact technical support for assistance.

## Troubleshooting for Users

Occasionally, you may experience trouble with Microsoft Outlook after adding the Junk Email Reporting Add-In. Following are problems that you may encounter, along with tips for resolving these issues.

- Nothing happens when you click **Report Junk**

- Outlook stops responding after you select an email message

- Reported junk mail cannot be delivered due to an "undeliverable" reply

To fix this problem, do the following steps:

1. Close and restart Outlook.

2. Verify that you are able to create and send a test message. To do this, you can send a test message to another email account that you are responsible for, and then verify that the email message is received.

If the problem persists, contact your admin.

> [!TIP]
> You can also submit spam messages directly to Microsoft by using the [junk@office365.microsoft.com](mailto:junk@office365.microsoft.com) email address, and false positive messages by using the [not_junk@office365.microsoft.com](mailto: not_junk@office365.microsoft.com) email address. For more information, see [Submit spam, non-spam, and phishing scam messages to Microsoft for analysis](submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis.md).

## Troubleshooting for Administrators

As an administrator, you might experience issues with users using the Junk Email Reporting Add-in for Outlook. Following are some tips for resolving problems that you might encounter.

### Problem: An error message asking users to contact their system administrator continually appears

1. Set the following registry key value to "Verbose":

   - **32 bit Outlook installed on a 32 bit operating system**:

     `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Junk Email Reporting\Addins\LoggingLevel`

   - **32 bit Outlook installed on a 64 bit operating system**:

     `HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Junk Email Reporting\Addins\LoggingLevel`

   - **64 bit Outlook (always installed on a 64 bit operating system)**:

     `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Junk Email Reporting\Addins\LoggingLevel`

2. Restart Outlook and ask users to report back when they see the error message.

3. Collect the log information found at the following location:

   `%LOCALAPPDATA%\Microsoft\Junk Email Reporting Add-in\SpamReporterAddinLog.txt`

4. Contact Exchange Online Protection Technical Support and provide them with the log information.

### Problem: Users choose not to receive a confirmation when they submit an email as junk and now they want the option back

1. Set the following registry key value to "True": `HKEY_CURRENT_USER\Software\Microsoft\Junk E-mail Reporting\Preferences\ConfirmReportJunk`.

2. Restart Outlook.

## Support Information

If you need help with the installation, configuration, or uninstallation of the add-in, please contact technical support using the new service request link on the support page in the Microsoft 365 admin center. For additional options including submitting a service request via the telephone and self-support options, see [Help and support for EOP](help-and-support-for-eop.md).

## For more information

[Enable the Report Message add-in](enable-the-report-message-add-in.md)

[Report junk email messages to Microsoft](report-junk-email-messages-to-microsoft.md)
