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

When [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md) is being deployed, an error message with an **x** on top of the Microsoft Defender for Endpoint on macOS shield appears.

Select the **x** symbol.

:::image type="content" source="images/error-mde-mac-deployment.png" alt-text="Screenshot that shows the menu bar containing the x symbol on the Microsoft Defender for Endpoint on macOS shield." lightbox="images/error-mde-mac-deployment.png":::

### Message

When you select the **x** symbol, you'll see options as shown in the following screenshot:

:::image type="content" source="images/x-symbol-menu-items.png" alt-text="Screenshot that shows the option that get listed on selecting the x symbol." lightbox="images/x-symbol-menu-items.png":::

When you select **Action needed**, you'll get the error message as shown in the following screenshot:

:::image type="content" source="images/license-not-found-message.png" alt-text="Screenshot of the page displaying the No license found message and its description." lightbox="images/license-not-found-message.png":::

You'll encounter this message in a different way: If you're using the terminal to enter **mdatp health** without the double quotes, the message as shown in the following screenshot is displayed:

:::image type="content" source="images/no-license-found-warning.png" alt-text="Screenshot of the product page on which the No license found warning message is displayed." lightbox="images/no-license-found-warning.png":::

### Cause

1. You've deployed and/or installed the Microsoft Defender for Endpoint on macOS package [Download installation packages](mac-install-manually.md#download-installation-and-onboarding-packages), but might not have run the configuration script [Download the onboarding package](mac-install-with-intune.md#download-the-onboarding-package) that contains the license settings. For information on troubleshooting in this scenario, see [For not running the configuration script](#for-not-running-the-configuration-script).

1. You can also encounter this error message when the Microsoft Defender for Endpoint on macOS agent isn't up to date. For information on troubleshooting in this scenario, see [For Microsoft Defender for Endpoint on macOS not being up to date](#for-microsoft-defender-for-endpoint-on-macos-not-being-up-to-date).

1. You can also encounter this error message if you haven't assigned a license to the user. For information on troubleshooting in this scenario, see [For not assigning a license to the user](#for-not-assigning-a-license-to-the-user).

### Solutions

#### For not running the configuration script

This section describes the troubleshooting measures when the error/warning message  is caused by non-execution of the configuration script that contains the license settings after you have deployed and/or installed the Microsoft Defender for Endpoint on macOS package.

Depending on the deployment management tool used, follow the tool-specific instructions to onboard the package (register the license) as described in the following table:

|Management  |License deployment instructions (Onboarding instructions)  |
|---------|---------|
|Intune     |   [Download the onboarding package](mac-install-with-intune.md#download-the-onboarding-package)     |
|JamF     |    [Step 1: Get the Microsoft Defender for Endpoint onboarding package](mac-jamfpro-policies.md#step-1-get-the-microsoft-defender-for-endpoint-onboarding-package)     |
|Other MDM     |     [License settings](mac-install-with-other-mdm.md#license-settings)   |
|Manual installation      |    [Download installation and onboarding packages](mac-install-manually.md#download-installation-and-onboarding-packages); and [Client configuration](mac-install-manually.md#client-configuration)     |

> [!NOTE]
> If the onboarding package runs correctly, the licensing information will be located in `/Library/Application Support/Microsoft/Defender/com.microsoft.wdav.atp.plist`.

#### For Microsoft Defender for Endpoint on macOS not being up to date

For scenarios where Microsoft Defender for Endpoint on macOS isn't up to date, you'll need to [update](mac-updates.md) the agent.

#### For not assigning a license to the user

1. In the Microsoft 365 Defender portal (security.microsoft.com):
    1. Select **Settings**. The **Settings** screen appears.
    1. Select **Endpoints**.
       
       :::image type="content" source="images/endpoints-option-on-settings-screen.png" alt-text="Screenshot of the Settings screen on which the Endpoints option is listed." lightbox="images/endpoints-option-on-settings-screen.png":::
 
       The **Endpoints** screen appears.
     
       :::image type="content" source="images/endpoints-screen.png" alt-text="Screenshot of the Endpoints page." lightbox="images/endpoints-screen.png":::

    1. Select **Licenses**.
     
       :::image type="content" source="images/selecting-licenses-option-from-endpoints-screen.png" alt-text="Screenshot of the Endpoints page from which the Licenses options can be selected." lightbox="images/selecting-licenses-option-from-endpoints-screen.png":::
       
    1. Select **View and purchase licenses in the Microsoft 365 admin center**. The following screen in the Microsoft 365 admin center portal appears:

       :::image type="content" source="images/m365-admin-center-purchase-assign-licenses.png" alt-text="Screenshot of the Microsoft 365 admin center portal page from which licenses can be purchased and assigned." lightbox="images/m365-admin-center-purchase-assign-licenses.png":::

    1. Check the checkbox of the license you want to purchase from Microsoft, and select it. The screen displaying detail of the chosen license appears:
    
      :::image type="content" source="images/resultant-screen-of-selecting-preferred-license.png" alt-text="Screenshot of the product page from which you can select the option of assigning the purchased license." lightbox="images/resultant-screen-of-selecting-preferred-license.png":::

    1. Select the **Assign licenses** link.

      
      :::image type="content" source="images/assign-licenses-link.png" alt-text="Screenshot of the product page from which you can select the Assign licenses link." lightbox="images/assign-licenses-link.png":::

      The following screen appears:

      :::image type="content" source="images/screen-containing-option-to-assign-licenses.png" alt-text="Screenshot of the page containing the + Assign licenses option." lightbox="images/screen-containing-option-to-assign-licenses.png":::

    1. Select **+ Assign licenses**.
    1. Enter the name or email address of the person to whom you want to assign this license.
    
       The following screen appears, displaying the details of the chosen license assignee and a list of options.

       :::image type="content" source="images/assignee-details-and-options.png" alt-text="Screenshot of the page displaying the assignee's details and a list of options." lightbox="images/assignee-details-and-options.png":::
 
    1. Check the checkboxes for **Microsoft 365 Advanced Auditing**, **Microsoft 365 Defender**, and **Microsoft Defender for Endpoint**.
    1. Select **Save**.

On implementing these solution-options (either of them), if the licensing issues have been resolved, and then you run **mdatp health**, you should see the following results:

:::image type="content" source="images/results-after-license-issues-resolved.png" alt-text="Screenshot of the page containing the results displayed after running mdatp health." lightbox="images/results-after-license-issues-resolved.png":::

## Sign in with your Microsoft account

:::image type="content" source="images/mac-consumer-login.png" alt-text="Screenshot of the page from which the users have to sign in with their Microsoft account's credentials to get started." lightbox="images/mac-consumer-login.png":::

### Message

Sign in with your Microsoft account to get started.

Create new account or Switch to enterprise app.

### Cause

You've downloaded and installed [Microsoft Defender for individuals on macOS](https://www.microsoft.com/en-us/microsoft-365/microsoft-defender-for-individuals) on top of previously installed Microsoft Defender for Endpoint.

### Solution

Select **Switch to enterprise app** to switch to Enterprise experience.

You can also suppress switching to experience for Individuals on MDM-enrolled machines by including **userInterface**/**consumerExperience** in the Defender's settings:

```json
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
