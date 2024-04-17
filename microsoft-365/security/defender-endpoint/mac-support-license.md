---
title: Troubleshoot license issues for Microsoft Defender for Endpoint on Mac
description: Troubleshoot license issues in Microsoft Defender for Endpoint on Mac.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-macos
ms.topic: conceptual
ms.subservice: macos
search.appverid: met150
ms.date: 03/19/2024
---

# Troubleshoot license issues for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## No license found

When [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md) is being deployed, an error message with an **x** on top of the Microsoft Defender for Endpoint on macOS shield appears.

Select the **x** symbol.

:::image type="content" source="media/error-mde-mac-deployment.png" alt-text="Screenshot that shows the menu bar containing the x symbol on the Microsoft Defender for Endpoint on macOS shield.":::

### Message

When you select the **x** symbol, you see options as shown in the following screenshot:

:::image type="content" source="media/x-symbol-menu-items.png" alt-text="Screenshot that shows the option that gets listed on selecting the x symbol.":::

When you select **Action needed**, you get the error message as shown in the following screenshot:

:::image type="content" source="media/license-not-found-message.png" alt-text="Screenshot of the page displaying the No license found message and its description.":::

You encounter this message in a different way: If you're using the terminal to enter **mdatp health** without the double quotes, the message as shown in the following screenshot is displayed:

:::image type="content" source="media/no-license-found-warning.png" alt-text="Screenshot of the product page on which the No license found warning message is displayed.":::

### Cause

- You can encounter an error if you've deployed and/or installed the Microsoft Defender for Endpoint on macOS package [Download installation packages](mac-install-manually.md#download-installation-and-onboarding-packages), but you might not have run the configuration script [Download the onboarding package](mac-install-with-intune.md#step-15-download-the-onboarding-package) that contains the license settings. For information on troubleshooting in this scenario, see [If you didn't run the configuration script](#if-you-did-not-run-the-configuration-script).

- You can encounter an error message when the Microsoft Defender for Endpoint on macOS agent isn't up to date. For information on troubleshooting in this scenario, see [If Microsoft Defender for Endpoint on macOS isn't up to date](#if-microsoft-defender-for-endpoint-on-macos-is-not-up-to-date).

- You can encounter an error message if you offboarded and reonboarded Mac from Microsoft Defender for Endpoint on macOS.

- You can encounter an error message if a license isn't assigned to a user. For information on troubleshooting in this scenario, see [If a license isn't assigned to a user](#if-a-license-is-not-assigned-to-a-user).

### Solutions

#### If you did not run the configuration script

This section describes the troubleshooting measures when the error/warning message is caused by nonexecution of the configuration script. The script contains the license settings when the Microsoft Defender for Endpoint on macOS package is installed and deployed.

Depending on the deployment management tool used, follow the tool-specific instructions to onboard the package (register the license) as described in the following table:

|Management  |License deployment instructions (Onboarding instructions)  |
|---------|---------|
|Intune     |   [Download the onboarding package](mac-install-with-intune.md#step-15-download-the-onboarding-package)     |
|JamF     |    [Step 1: Get the Microsoft Defender for Endpoint onboarding package](mac-jamfpro-policies.md#step-1-get-the-microsoft-defender-for-endpoint-onboarding-package)     |
|Other MDM     |     [License settings](mac-install-with-other-mdm.md#license-settings)   |
|Manual installation      |    [Download installation and onboarding packages](mac-install-manually.md#download-installation-and-onboarding-packages); and [Onboarding Package](mac-install-manually.md#onboarding-package)     |

> [!NOTE]
> If the onboarding package runs correctly, the licensing information will be located in `/Library/Application Support/Microsoft/Defender/com.microsoft.wdav.atp.plist`.

#### If Microsoft Defender for Endpoint on macOS is not up to date

For scenarios where Microsoft Defender for Endpoint on macOS isn't up to date, you need to [update](mac-updates.md) the agent.

#### If Microsoft Defender for Endpoint on macOS has been offboarded

When the offboarding script is executed on the macOS, it saves a file in `/Library/Application Support/Microsoft/Defender/` and it's named `com.microsoft.wdav.atp.offboarding.plist`.

If the file exists, it will prevent the macOS from being onboarded again.  Delete the **com.microsoft.wdav.atp.offboarding.plist** running the onboarding script again.

#### If a license is not assigned to a user

1. In the Microsoft Defender portal (security.microsoft.com), select **Settings**, and then select **Endpoints**.

   :::image type="content" source="media/endpoints-option-on-settings-screen.png" alt-text="Screenshot of the Settings screen on which the Endpoints option is listed." lightbox="media/endpoints-option-on-settings-screen.png":::
 
2. Select **Licenses**.

   :::image type="content" source="media/selecting-licenses-option-from-endpoints-screen.png" alt-text="Screenshot of the Endpoints page from which the Licenses options can be selected." lightbox="media/selecting-licenses-option-from-endpoints-screen.png":::
       
3. Select **View and purchase licenses in the Microsoft 365 admin center**. The following screen in the Microsoft 365 admin center portal appears:

   :::image type="content" source="media/m365-admin-center-purchase-assign-licenses.png" alt-text="Screenshot of the Microsoft 365 admin center portal page from which licenses can be purchased and assigned." lightbox="media/m365-admin-center-purchase-assign-licenses.png":::

4. Check the checkbox of the license you want to purchase from Microsoft, and select it. The screen displaying detail of the chosen license appears:

   :::image type="content" source="media/resultant-screen-of-selecting-preferred-license.png" alt-text="Screenshot of the product page from which you can select the option of assigning the purchased license.":::

5. Select the **Assign licenses** link.

   :::image type="content" source="media/assign-licenses-link.png" alt-text="Screenshot of the product page from which you can select the Assign licenses link.":::

   The following screen appears:

   :::image type="content" source="media/screen-containing-option-to-assign-licenses.png" alt-text="Screenshot of the page containing the + Assign licenses option." lightbox="media/screen-containing-option-to-assign-licenses.png":::

6. Select **+ Assign licenses**.

7. Enter the name or email address of the person to whom you want to assign this license. The following screen appears, displaying the details of the chosen license assignee and a list of options.

   :::image type="content" source="media/assignee-details-and-options.png" alt-text="Screenshot of the page displaying the assignee's details and a list of options.":::
 
8. Check the checkboxes for **Microsoft 365 Advanced Auditing**, **Microsoft Defender XDR**, and **Microsoft Defender for Endpoint**. Then select **Save**.

On implementing these solution-options (either of them), if the licensing issues have been resolved, and then you run **mdatp health**, you should see the following results:

:::image type="content" source="media/results-after-license-issues-resolved.png" alt-text="Screenshot of the page containing the results displayed after running mdatp health.":::

## Sign in with your Microsoft account

:::image type="content" source="media/mac-consumer-login.png" alt-text="Screenshot of the page from which the users have to sign in with their Microsoft account's credentials to get started.":::

### Message

Sign in with your Microsoft account to get started.

Create new account or Switch to enterprise app.

### Cause

You've downloaded and installed [Microsoft Defender for individuals on macOS](https://www.microsoft.com/en-us/microsoft-365/microsoft-defender-for-individuals) on top of previously installed Microsoft Defender for Endpoint.

### Solution

Select **Switch to enterprise app** to switch to Enterprise experience.

You can also suppress switching to experience for Individuals on MDM-enrolled machines by including **userInterface**/**consumerExperience** in the Defender's settings:

```xml
<key>userInterface</key>
<dict>
    <key>consumerExperience</key>
    <string>disabled</string>
</dict>
```

## Recommended content

- [Manual deployment for Microsoft Defender for Endpoint on macOS](mac-install-manually.md): Install Microsoft Defender for Endpoint on macOS manually from the command line.
- [Set up the Microsoft Defender for Endpoint on macOS policies in Jamf Pro](mac-jamfpro-policies.md): Learn how to set up the Microsoft Defender for Endpoint on macOS policies in Jamf Pro.
- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md): Learn how to install, configure, update, and use Microsoft Defender for Endpoint on Mac.
- [Deploying Microsoft Defender for Endpoint on macOS with Jamf Pro](mac-install-with-jamf.md): Learn how to deploy Microsoft Defender for Endpoint on macOS with Jamf Pro.

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
