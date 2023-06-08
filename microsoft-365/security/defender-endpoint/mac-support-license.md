---
title: Troubleshoot license issues for Microsoft Defender for Endpoint on Mac
description: Troubleshoot license issues in Microsoft Defender for Endpoint on Mac.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, performance, big sur, monterey, ventura, mde for mac
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

# Troubleshoot license issues for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## No license found

While deploying [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md), an error message with an **X** on top of the Microsoft Defender for Endpoint on macOS shield may appear. 

Click the **X** symbol and an **Action Needed** prompt should pop up. Clicking the **Action Needed** prompt will bring up the following licensing error message: 



:::image type="content" source="images/no-license-found.png" alt-text="Screenshot that shows a licensing error for Microsoft Defender for Endpoint on macOS shield." lightbox="images/no-license-found.png":::
### Message:

No license found

Looks like your organization does not have a license for Microsoft 365 Enterprise subscription.

Contact your administrator for help.


Or if you type "mdatp health" in the terminal without the double quotes, you might see the following warning:
### Message:
ATTENTION: No license found. Contact your administrator for help.\
healthy: false\
health_issues: [“missing license”]\
licensed: false

### Cause:

You deployed and/or installed the Microsoft Defender for Endpoint on macOS package ("Download installation package"), but might not have run the configuration script ("Download onboarding package") that contains the license settings.


You can also encounter this error when the Microsoft Defender for Endpoint on macOS agent isn't up to date or if you have not assigned a license to the user.



### Solution:
Depending on the deployment management tool used, please follow the instructions to onboard the package (register the license) as documented here:

|Management|Onboarding instructions (License deployment instructions)|
|-|-|
|Intune|[Onboarding blob](microsoft-365/security/defender-endpoint/mac-install-with-intune.md?view=o365-worldwide#onboarding-blob)|
|JamF|[Onboarding package](microsoft-365/security/defender-endpoint/mac-jamfpro-policies.md?view=o365-worldwide#step-1-get-the-microsoft-defender-for-endpoint-onboarding-package)|
|Other MDM|[License settings](microsoft-365/security/defender-endpoint/mac-install-with-other-mdm.md?view=o365-worldwide#license-settings)|
|Manual installation| Go thru [Download onboarding package](microsoft-365/security/defender-endpoint/mac-install-manually.md?view=o365-worldwide#download-installation-and-onboarding-packages) and go thru the registration of the license according to [client-configuration](microsoft-365/security/defender-endpoint/mac-install-manually.md?view=o365-worldwide#client-configuration)|

>[!TIP] 
> If the onboarding package runs correctly, the licensing information will be located in `/Library/Application Support/Microsoft/Defender/com.microsoft.wdav.atp.plist`.

For scenarios where Microsoft Defender for Endpoint on macOS isn't up to date, you'll need to [update](microsoft-365/security/defender-endpoint/mac-updates.md?view=o365-worldwide) the agent.

To assign a license to the end-user, do the following:
1. In the Microsoft 365 Defender portal (security.microsoft.com), click on **Settings -> Endpoints -> Licenses**. 
1. Select your license.
1. Click **Assign licenses**.
1. Enter the name and email address of the person being assigned.
1. Check the box for "Microsoft Defender for Endpoint" and click **Assign**.

If the licensing issues have been resolved, when you run "mdatp health," you should see the following results:\
healthy: true\
health_issues: []\
licensed: true

## Sign in with your Microsoft account

![Sign in with your Microsoft account to get started](images/mac-consumer-login.png)

### Message:

Sign in with your Microsoft account to get started.

Create new account or Switch to enterprise app

### Cause:

You downloaded and installed [Microsoft Defender for individuals on macOS](https://www.microsoft.com/en-us/microsoft-365/microsoft-defender-for-individuals) on top of previously installed Microsoft Defender for Endpoint.

### Solution:

Click **Switch to enterprise app** to switch to Enterprise experience.

You can also suppress switching to experience for Individuals on MDM enrolled machines by including **userInterface**/**consumerExperience** into Defender's settings:

```json
<key>userInterface</key>
<dict>
    <key>consumerExperience</key>
    <string>disabled</string>
</dict>
```
