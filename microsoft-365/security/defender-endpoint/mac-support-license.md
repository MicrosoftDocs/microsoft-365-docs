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

While you are going through the deployment of [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md) and you might get the following error:

A x on top of the Microsoft Defender for Endpoint on macOS shield.

When you click on it, you might see\
"Action Needed"

When you click on "Action Needed", you might see:

:::image type="content" source="images/no-license-found.png" alt-text="License error" lightbox="images/no-license-found.png":::
### Message:

No license found

Looks like your organization does not have a license for Microsoft 365 Enterprise subscription.

Contact your administrator for help.

Or

In terminal, if you type "mdatp health" without the double quotes, you might see the following warning:
### Message:
ATTENTION: No license found.  Contact your administrator for help.\
healthy: false\
health_issues: [“missing license”]\
licensed: false

### Cause:

You deployed and/or installed the Microsoft Defender for Endpoint on macOS package ("Download installation package"), but you might not have run the configuration script ("Download onboarding package") which contains the license settings.

or

You can also encounter this error when the Microsoft Defender for Endpoint on macOS agent isn't up to date.

or

You have not assigned a license to the user.

### Solution:
Step 1.  Depending on the deployment management tool used, please follow the instructions to onboard the package (register the license) as documented here:

|Management|Onboarding instructions (License deployment instructions)|
|-|-|
|Intune|[Onboarding blob](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-install-with-intune?view=o365-worldwide#onboarding-blob)|
|JamF|[Onboarding package](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-jamfpro-policies?view=o365-worldwide#step-1-get-the-microsoft-defender-for-endpoint-onboarding-package)|
|Other MDM|[License settings](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-install-with-other-mdm?view=o365-worldwide#license-settings)|
|Manual installation| Go thru [Download onboarding package](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-install-manually?view=o365-worldwide#download-installation-and-onboarding-packages) and go thru the registration of the license according to [client-configuration](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-install-manually?view=o365-worldwide#client-configuration)|

TIP: If the onboarding package runs correctly, the licensing information will be located in "/Library/Application Support/Microsoft/Defender/com.microsoft.wdav.atp.plist".

Step 2.  For scenarios where Microsoft Defender for Endpoint on macOS isn't up to date, you'll need to [update](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-updates?view=o365-worldwide) the agent.

Step 3.  Assign a license to the end-user\
In the Microsoft 365 Defender portal (security.microsoft.com)\
Click on “Settings”\
Click on “Endpoints”\
Click on “Licenses”\
Select your license\
Click on “Assign licenses”\
Enter their name or e-mail address\
Check the box for “Microsoft Defender for Endpoint”\
Click on “Assign”

Step 4. If the licensing issues have been resolved, when you run "mdatp health", you should see the following results:\
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
