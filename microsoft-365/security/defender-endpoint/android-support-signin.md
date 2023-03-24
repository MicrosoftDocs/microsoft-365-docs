---
title: Troubleshoot issues on Microsoft Defender for Endpoint on Android
description: Troubleshoot issues for Microsoft Defender for Endpoint on Android
keywords: microsoft, defender, Microsoft Defender for Endpoint, mde, android, cloud, connectivity, communication
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
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

# Troubleshooting issues on Microsoft Defender for Endpoint on Android

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

When onboarding a device, you might see sign in issues after the app is installed.

During onboarding, you might encounter sign in issues after the app is installed on your device.

This article provides solutions to help address the sign-on issues.

## Sign in failed - unexpected error

**Sign in failed:** *Unexpected error, try later*

:::image type="content" source="images/f9c3bad127d636c1f150d79814f35d4c.png" alt-text="An sign-in failed error Unexpected error in the sign-in page of the Microsoft Defender 365 portal." lightbox="images/f9c3bad127d636c1f150d79814f35d4c.png":::

**Message:**

Unexpected error, try later

**Cause:**

You have an older version of "Microsoft Authenticator" app installed on your device.

**Solution:**

Install latest version and of [Microsoft Authenticator](https://play.google.com/store/apps/details?id=com.azure.authenticator)
from Google Play Store and try again.

## Sign in failed - invalid license

**Sign in failed:** *Invalid license, please contact administrator*

:::image type="content" source="images/920e433f440fa1d3d298e6a2a43d4811.png" alt-text="The directive contact details in the sign-in page of the Microsoft Defender 365 portal" lightbox="images/920e433f440fa1d3d298e6a2a43d4811.png":::

**Message:** *Invalid license, please contact administrator*

**Cause:**

You do not have Microsoft 365 license assigned, or your organization does not have a license for Microsoft 365 Enterprise subscription.

**Solution:**

Contact your administrator for help.

## Report unsafe site

Phishing websites impersonate trustworthy websites for the purpose of obtaining your personal or financial information. Visit the [Provide feedback about network protection](https://www.microsoft.com/wdsi/filesubmission/exploitguard/networkprotection) page if you want to report a website that could be a phishing site.

## Phishing pages aren't blocked on some OEM devices

**Applies to:** Specific OEMs only

- **Xiaomi**

Phishing and harmful web threats that are detected by Defender for Endpoint
for Android are not blocked on some Xiaomi devices. The following functionality doesn't work on these devices.

:::image type="content" source="images/0c04975c74746a5cdb085e1d9386e713.png" alt-text="A site-unsafe notification message" lightbox="images/0c04975c74746a5cdb085e1d9386e713.png":::

**Cause:**

Xiaomi devices include a new permission model. This prevents Defender for Endpoint for Android from displaying pop-up windows while it runs in the background.

Xiaomi devices permission: "Display pop-up windows while running in the
background."

:::image type="content" source="images/6e48e7b29daf50afddcc6c8c7d59fd64.png" alt-text="The pop-up setting pane in the Microsoft Defender 365 portal" lightbox="images/6e48e7b29daf50afddcc6c8c7d59fd64.png":::

**Solution:**

Enable the required permission on Xiaomi devices.

- Display pop-up windows while running in the background.

## Unable to allow permission for 'Permanent protection' during onboarding on some OEM devices

**Applies to:** Specific OEM devices only.

- **Xiaomi**

Defender App asks for Battery Optimization/Permanent Protection permission on devices as part of app onboarding, and selecting **Allow** returns an error that the permission couldn't be set. It only affects the last permission called "Permanent Protection." 

**Cause:**

Xiaomi changed the battery optimization permissions in Android 11. Defender for Endpoint is not allowed to configure this setting to ignore battery optimizations.

**Solution:**

> [!IMPORTANT]
> This issue has been resolved. Please update to the latest app version to complete the onboarding process. If the issue persists, please send an **[in-app feedback](/microsoft-365/security/defender-endpoint/android-support-signin#send-in-app-feedback)**.

## Send in-app feedback

If a user faces an issue which is not already addressed in the above sections or is unable to resolve using the listed steps, the user can provide **in-app feedback** along with **diagnostic data**. Our team can then investigate the logs to provide the right solution. Users can follow these steps to do the same:

1. Open the **MDE application** on your device and click on the **profile icon** in the top-left corner.

    :::image type="content" source="images/select-profile-icon-1.jpg" alt-text="The profile icon in the Microsoft Defender for Endpoint portal" lightbox="images/select-profile-icon-1.jpg":::

2. Select "Help & feedback".

    :::image type="content" source="images/selecthelpandfeedback2.png" alt-text="The Help & feedback option that can be selected in the Microsoft Defender for Endpoint portal" lightbox="images/selecthelpandfeedback2.png":::

3. Select "Send feedback to Microsoft".

    :::image type="content" alt-text="Select send feedback to Microsoft" source="images/send-feedback-to-microsoft-3.jpg":::

4. Choose from the given options. To report an issue, select "I want to report an issue".

    :::image type="content" source="images/report-issue-4.jpg" alt-text="The I want to report an issue option" lightbox="images/report-issue-4.jpg":::

5. Provide details of the issue that you are facing and check "Send diagnostic data". We recommend checking "Include your email address" so that the team can reach back to you with a solution or a follow-up.

    :::image type="content" source="images/finalsubmit5.png" alt-text="The pane on which you can add details and attach diagnostic data" lightbox="images/finalsubmit5.png":::

6. Click on "Submit" to successfully send the feedback.
