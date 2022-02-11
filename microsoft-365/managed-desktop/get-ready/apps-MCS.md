---
title: Working with Microsoft Consulting Services
description: Preparation and steps to follow to work with MCS to package your apps
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
f1.keywords:
- NOCSH
ms.author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
manager: dougeby
ms.topic: article
audience: Admin
---

# Working with Microsoft Consulting Services

You can engage with Microsoft Consulting Services (MCS) to get your apps packaged for use with Microsoft Managed Desktop. For more information, work with your account representative to contact MCS to review your specific app packaging project.

## Roles and responsibilities

| Role | Responsibility |
| ------ | ------ |
| You | To work with MCS app packaging, **you must provide the following elements**: <ul><li> The source installer files (for example, setup.exe or .msi).</li><li>The installation instructions that specify details about how the final installation should look. For example, should there be a desktop shortcut to the app? What should the app's visibility be? Should the app connect to a server and if so, which one? For more information, see the [application packaging request template](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/managed-desktop/get-ready/downloads/app-packaging-template.docx).</li><li>You must perform your own acceptance testing to verify that the app works as expected in your environment.</li><ul> |
| Microsoft Consulting Services (MCS) | **MCS will take care of the following actions:** <ul><li>Check whether the app is prohibited or restricted in the Microsoft Managed Desktop environment.</li><li>Test installation, start, and uninstallation of the app to ensure compatibility with Windows 10. If MCS discovers a compatibility issue, they'll hand off the app to the [App Assure](/fasttrack/products-and-capabilities#app-assure) program for remediation.</li><li>Package the app to your specifications, and test app deployment by using Microsoft Intune.</li><ul>

## App delivery schedule

Start the packaging process by uploading the app information to the Microsoft Managed Desktop portal. The packaging team reviews new submissions every Thursday. After review and packaging, the packaged apps are delivered the following Friday. Up to five apps per week can be packaged to start, but the service can scale to meet your needs.

![calendar showing app inflow on a Thursday (the 21st in this example), media validation the next day, packaging on the following Monday (the 25th), and app delivery on the subsequent Friday (the 29th).](../../media/MCS-cal.png)

You'll be notified once the app has been delivered. At that point, you have 21 days to perform acceptance testing, and approve the work in the Microsoft Managed Desktop portal. If you discover a problem with the app during your acceptance testing, reject the app in the Microsoft Managed Desktop portal. You'll be connected via email with a Microsoft Consulting Services (MCS) packager to understand and resolve the issue.

## Testing accounts and environment

In order for the packaging team to complete the migration to Microsoft Intune, we recommend that you provide certain permissions:

- Access to Microsoft Intune's App Deployment capabilities for the packager to add and assign the app.
- Test groups, user accounts, and licenses for the packagers to be able to test the apps.

MCS will use those permissions to perform the following actions:

- Ensure that the app works on virtual machine configured for Microsoft Managed Desktop.
- Upload the app to Microsoft Intune for deployment to your users.

Without these permissions, it's possible for MCS to move forward, but they won't be able to upload the applications to your environment.
