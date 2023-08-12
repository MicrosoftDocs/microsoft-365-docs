---
title: Enroll Microsoft Defender for Endpoint on macOS devices into Jamf Pro
description: Enroll Microsoft Defender for Endpoint on macOS devices into Jamf Pro
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, deploy, uninstallation, intune, jamfpro, macos, big sur, monterey, ventura, mde for mac
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
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

   :::image type="content" source="images/a347307458d6a9bbfa88df7dbe15398f.png" alt-text="The configuration settings1" lightbox="images/a347307458d6a9bbfa88df7dbe15398f.png":::

2. Select **+ New**.

   :::image type="content" source="images/b6c7ad56d50f497c38fc14c1e315456c.png" alt-text="The close up of a logo description automatically generated" lightbox="images/b6c7ad56d50f497c38fc14c1e315456c.png":::

3. In **Specify Recipients for the Invitation** > under **Email Addresses** enter the e-mail address(es) of the recipients.

    :::image type="content" source="images/718b9d609f9f77c8b13ba88c4c0abe5d.png" alt-text="The configuration settings2" lightbox="images/718b9d609f9f77c8b13ba88c4c0abe5d.png":::

    :::image type="content" source="images/ae3597247b6bc7c5347cf56ab1e820c0.png" alt-text="The configuration settings3" lightbox="images/ae3597247b6bc7c5347cf56ab1e820c0.png":::

    For example: janedoe@contoso.com

    :::image type="content" source="images/4922c0fcdde4c7f73242b13bf5e35c19.png" alt-text="The configuration settings4" lightbox="images/4922c0fcdde4c7f73242b13bf5e35c19.png":::

4. Configure the message for the invitation.

   :::image type="content" source="images/ce580aec080512d44a37ff8e82e5c2ac.png" alt-text="The configuration settings5" lightbox="images/ce580aec080512d44a37ff8e82e5c2ac.png":::

   :::image type="content" source="images/5856b765a6ce677caacb130ca36b1a62.png" alt-text="The configuration settings6" lightbox="images/5856b765a6ce677caacb130ca36b1a62.png":::

   :::image type="content" source="images/3ced5383a6be788486d89d407d042f28.png" alt-text="The configuration settings7" lightbox="images/3ced5383a6be788486d89d407d042f28.png":::

   :::image type="content" source="images/54be9c6ed5b24cebe628dc3cd9ca4089.png" alt-text="The configuration settings8" lightbox="images/54be9c6ed5b24cebe628dc3cd9ca4089.png":::

## Enrollment Method 2: Prestage Enrollments

1. In the Jamf Pro dashboard, navigate to **Prestage enrollments**.

   :::image type="content" source="images/6fd0cb2bbb0e60a623829c91fd0826ab.png" alt-text="The configuration settings9" lightbox="images/6fd0cb2bbb0e60a623829c91fd0826ab.png":::

2. Follow the instructions in [Computer PreStage Enrollments](https://docs.jamf.com/9.9/casper-suite/administrator-guide/Computer_PreStage_Enrollments.html).

## Enroll macOS device

1. Select **Continue** and install the CA certificate from a **System Preferences** window.

   :::image type="content" source="images/jamfpro-ca-certificate.png" alt-text="The Jamf Pro enrollment1" lightbox="images/jamfpro-ca-certificate.png":::

2. Once CA certificate is installed, return to the browser window and select **Continue** and install the MDM profile.

   :::image type="content" source="images/jamfpro-install-mdm-profile.png" alt-text="The Jamf Pro enrollment2" lightbox="images/jamfpro-install-mdm-profile.png":::

3. Select **Allow** to downloads from JAMF.

   :::image type="content" source="images/jamfpro-download.png" alt-text="The Jamf Pro enrollment3" lightbox="images/jamfpro-download.png":::

4. Select **Continue** to proceed with the MDM Profile installation.

   :::image type="content" source="images/jamfpro-install-mdm.png" alt-text="The Jamf Pro enrollment4" lightbox="images/jamfpro-install-mdm.png":::

5. Select **Continue** to install the MDM Profile.

   :::image type="content" source="images/jamfpro-mdm-unverified.png" alt-text="The Jamf Pro enrollment5" lightbox="images/jamfpro-mdm-unverified.png":::

6. Select **Continue**  to complete the configuration.

   :::image type="content" source="images/jamfpro-mdm-profile.png" alt-text="The Jamf Pro enrollment6" lightbox="images/jamfpro-mdm-profile.png":::
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
