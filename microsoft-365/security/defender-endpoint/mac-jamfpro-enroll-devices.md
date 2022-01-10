---
title: Enroll Microsoft Defender for Endpoint on macOS devices into Jamf Pro
description: Enroll Microsoft Defender for Endpoint on macOS devices into Jamf Pro
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, deploy, uninstallation, intune, jamfpro, macos, catalina, mojave, high sierra
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Enroll Microsoft Defender for Endpoint on macOS devices into Jamf Pro

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

## Enroll macOS devices

There are multiple methods of getting enrolled to JamF.

This article will guide you on two methods:

- [Method 1:  Enrollment Invitations](#enrollment-method-1-enrollment-invitations)
- [Method 2:  Prestage Enrollments](#enrollment-method-2-prestage-enrollments)

For a complete list, see [About Computer Enrollment](https://docs.jamf.com/9.9/casper-suite/administrator-guide/About_Computer_Enrollment.html).

## Enrollment Method 1: Enrollment Invitations

1. In the Jamf Pro dashboard, navigate to **Enrollment invitations**.

    ![Image of configuration settings1.](images/a347307458d6a9bbfa88df7dbe15398f.png)

2. Select **+ New**.

    ![A close up of a logo Description automatically generated.](images/b6c7ad56d50f497c38fc14c1e315456c.png)

3. In **Specify Recipients for the Invitation** > under **Email Addresses** enter the e-mail address(es) of the recipients.

    ![Image of configuration settings2.](images/718b9d609f9f77c8b13ba88c4c0abe5d.png)

    ![Image of configuration settings3.](images/ae3597247b6bc7c5347cf56ab1e820c0.png)

    For example: janedoe@contoso.com

    ![Image of configuration settings4.](images/4922c0fcdde4c7f73242b13bf5e35c19.png)

4. Configure the message for the invitation.

    ![Image of configuration settings5.](images/ce580aec080512d44a37ff8e82e5c2ac.png)

    ![Image of configuration settings6.](images/5856b765a6ce677caacb130ca36b1a62.png)

    ![Image of configuration settings7.](images/3ced5383a6be788486d89d407d042f28.png)

    ![Image of configuration settings8.](images/54be9c6ed5b24cebe628dc3cd9ca4089.png)

## Enrollment Method 2: Prestage Enrollments

1. In the Jamf Pro dashboard, navigate to **Prestage enrollments**.

    ![Image of configuration settings9.](images/6fd0cb2bbb0e60a623829c91fd0826ab.png)

2. Follow the instructions in [Computer PreStage Enrollments](https://docs.jamf.com/9.9/casper-suite/administrator-guide/Computer_PreStage_Enrollments.html).

## Enroll macOS device

1. Select **Continue** and install the CA certificate from a **System Preferences** window.

    ![Image of Jamf Pro enrollment1.](images/jamfpro-ca-certificate.png)

2. Once CA certificate is installed, return to the browser window and select **Continue** and install the MDM profile.

    ![Image of Jamf Pro enrollment2.](images/jamfpro-install-mdm-profile.png)

3. Select **Allow** to downloads from JAMF.

    ![Image of Jamf Pro enrollment3.](images/jamfpro-download.png)

4. Select **Continue** to proceed with the MDM Profile installation.

    ![Image of Jamf Pro enrollment4.](images/jamfpro-install-mdm.png)

5. Select **Continue** to install the MDM Profile.

    ![Image of Jamf Pro enrollment5.](images/jamfpro-mdm-unverified.png)

6. Select **Continue**  to complete the configuration.

    ![Image of Jamf Pro enrollment6.](images/jamfpro-mdm-profile.png)
