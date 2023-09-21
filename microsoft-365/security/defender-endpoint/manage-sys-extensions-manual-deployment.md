---
title: Manage system extensions using the manual methods of deployment
description: Manage system extensions using the manual methods of deployment.
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
ms.date: 08/28/2023
---

# Manage system extensions using the manual methods of deployment

This article describes the procedures involved when deploying Microsoft Defender for Endpoint manually.

## Manual deployment

### System Extensions

You might see the prompt that's shown in the following screenshot:

:::image type="content" source="images/system-extension-blocked-prompt.png" alt-text="The system extensions blocked prompt screen." lightbox="images/system-extension-blocked-prompt.png":::

1. Select **OK**. You might get a second prompt as shown in the following screenshot:

   :::image type="content" source="images/system-extension-blocked-second-prompt.png" alt-text="The second prompt regarding system extensions being blocked." lightbox="images/system-extension-blocked-second-prompt.png":::

1. From this second-prompt screen, select **OK**. You'll receive a notification message that reads **Installation succeeded**, as shown in the following screenshot:

   :::image type="content" source="images/installation-succeeded-notification-message.png" alt-text="The screen displaying the installation succeeded notification message." lightbox="images/installation-succeeded-notification-message.png":::

1. On the screen displaying the **Installation succeeded** notification message, select **OK**. You'll return to the following screen:

   :::image type="content" source="images/mde-menu.png" alt-text="The Microsoft Defender for Endpoint menu containing the x symbol." lightbox="images/mde-menu.png":::

1. From the menu bar, click the **x** symbol on the shield. You'll get the options shown in the following screenshot:

   :::image type="content" source="images/options-on-clicking-x-symbol.png" alt-text="The screen on clicking the x symbol in the shield." lightbox="images/options-on-clicking-x-symbol.png":::

1. Select **Action needed**. The following screen appears:

   :::image type="content" source="images/virus-and-threat-protection-screen.png" alt-text="The Virus & threat protection screen containing the Fix button." lightbox="images/virus-and-threat-protection-screen.png":::

1. Click **Fix** on the top-right corner of this screen. You'll get a prompt, as shown in the following screenshot:

   :::image type="content" source="images/prompt-on-virus-and-threat-protection-screen.png" alt-text="The prompt dialog box on the Virus & threat protection screen." lightbox="images/prompt-on-virus-and-threat-protection-screen.png":::

1. Enter your password and select **OK**.
1. Click 
   :::image type="content" source="images/system-preferences-icon.png" alt-text="The System Preferences icon." lightbox="images/system-preferences-icon.png":::

   The **System Preferences** screen appears.

   :::image type="content" source="images/system-preferences-screen.png" alt-text="The System Preferences screen." lightbox="images/system-preferences-screen.png":::

1. Click **Security & Privacy**. The **Security & Privacy** screen appears.

   :::image type="content" source="images/security-and-privacy-screen.png" alt-text="The Security & Privacy screen." lightbox="images/security-and-privacy-screen.png":::

1. Select **Click the lock to make changes**. You'll get a prompt as shown in the following screenshot:

   :::image type="content" source="images/prompt-on-security-and-privacy-screen.png" alt-text="The prompt on the Security & Privacy screen." lightbox="images/prompt-on-security-and-privacy-screen.png":::

1. Enter your password and click **Unlock**. The following screen appears:

   :::image type="content" source="images/screen-on-clicking-unlock.png" alt-text="The screen that is displayed on clicking Unlock." lightbox="images/screen-on-clicking-unlock.png":::

1. Select **Details**, next to **Some software system requires your attention before it can be used**.

   :::image type="content" source="images/screen-on-clicking-details.png" alt-text="The screen that is displayed on clicking Details." lightbox="images/screen-on-clicking-details.png":::

1. Check both the **Microsoft Defender** checkboxes, and select **OK**. You'll get two pop-up screens, as shown in the following screenshot:

   :::image type="content" source="images/popup-after-checking-both-md-checkboxes.png" alt-text="The popup that appears on checking both the checkboxes." lightbox="images/popup-after-checking-both-md-checkboxes.png":::

1. On the **“Microsoft Defender” Would like to Filter Network Content** pop-up screen, click **Allow**.

1. On the **Microsoft Defender wants to make changes** pop-up screen, enter your password and select **OK**.

If you run systemextensionsctl list, the following screen appears:

:::image type="content" source="images/result-of-running-systemextenstionsctl-list.png" alt-text="The resultant screen of running the systemextensionsdcl list." lightbox="images/result-of-running-systemextenstionsctl-list.png":::

### Accessibility

1. On the **Security & Privacy** screen, select the **Privacy** tab.

   :::image type="content" source="images/privacy-tab.png" alt-text="The Privacy tab." lightbox="images/privacy-tab.png":::

2. Select **Accessibility** from the left navigation pane, and click **+**.

   :::image type="content" source="images/accessibility-and-plus-icon.png" alt-text="The Accessibility menu item and the Plus icon." lightbox="images/accessibility-and-plus-icon.png":::

3. From the resultant screen, select **Applications** from the **Favorites** pane in the left-side of the screen; select **Microsoft Defender**; and then select **Open** at the bottom-right of the screen.

   :::image type="content" source="images/applications-md-options.png" alt-text="The process of selecting Applications and Microsoft Defender." lightbox="images/applications-md-options.png":::
   
4. From the resultant screen, check the **Microsoft Defender** checkbox.

   :::image type="content" source="images/checking-md-checkbox.png" alt-text="Checking the Microsoft Defender checkbox." lightbox="images/checking-md-checkbox.png":::

### Full Disk Access

1. On the **Security & Privacy** screen, select the **Privacy** tab.
1. Select **Full Disk Access** from the left navigation pane, and then click the **Lock** icon.

   :::image type="content" source="images/full-disk-access-and-lock-icon.png" alt-text="The Full Disk Access option in the menu and the Lock icon." lightbox="images/full-disk-access-and-lock-icon.png":::

1. Confirm that the Microsoft Defender extension has full disk access; if not, check the **Microsoft Defender** checkbox.
 
   :::image type="content" source="images/check-md-checkbox.png" alt-text="Checking the MD checkbox." lightbox="images/check-md-checkbox.png":::

### Notifications

1. From the **System Preferences** home screen, select **Notifications**.

   :::image type="content" source="images/notifications-option.png" alt-text="The Notifications option in the System Preferences screen." lightbox="images/notifications-option.png":::
   
   The **Notifications** screen appears.

1. Select **Microsoft Defender** from the left navigation pane.

1. Enable the **Allow Notifications** option; select **Alerts**, and retain the default settings as is.

   :::image type="content" source="images/notifications-md.png" alt-text="Selecting Microsoft Defender option from the Notifications screen." lightbox="images/notifications-md.png":::

### What a healthy system looks like

#### mdatp health output

:::image type="content" source="images/mdatp-health-output.png" alt-text="The mdatp health output screen." lightbox="images/mdatp-health-output.png":::

#### Check the system extensions

In terminal, run the following command to check the system extensions:

`systemextensionsctl list`

The execution of this command is shown in the following screenshot:

:::image type="content" source="images/command-to-check-system-extensions.png" alt-text="The command to check the system extensions." lightbox="images/command-to-check-system-extensions.png":::