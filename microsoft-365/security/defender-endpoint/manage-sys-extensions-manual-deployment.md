---
title: Manage system extensions using the manual methods of deployment
description: Manage system extensions using the manual methods of deployment.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: onboard
search.appverid: met150
ms.date: 08/28/2023
---

# Manage system extensions using the manual methods of deployment

This article describes the procedures involved when deploying Microsoft Defender for Endpoint manually.

## Manual deployment

### System Extensions

You might see the prompt that's shown in the following screenshot:

:::image type="content" source="media/system-extension-blocked-prompt.png" alt-text="The system extensions blocked prompt screen." lightbox="media/system-extension-blocked-prompt.png":::

1. Select **OK**. You might get a second prompt as shown in the following screenshot:

   :::image type="content" source="media/system-extension-blocked-second-prompt.png" alt-text="The second prompt regarding system extensions being blocked." lightbox="media/system-extension-blocked-second-prompt.png":::

1. From this second-prompt screen, select **OK**. You'll receive a notification message that reads **Installation succeeded**, as shown in the following screenshot:

   :::image type="content" source="media/installation-succeeded-notification-message.png" alt-text="The screen displaying the installation succeeded notification message." lightbox="media/installation-succeeded-notification-message.png":::

1. On the screen displaying the **Installation succeeded** notification message, select **OK**. You'll return to the following screen:

   :::image type="content" source="media/mde-menu.png" alt-text="The Microsoft Defender for Endpoint menu containing the x symbol." lightbox="media/mde-menu.png":::

1. From the menu bar, click the **x** symbol on the shield. You'll get the options shown in the following screenshot:

   :::image type="content" source="media/options-on-clicking-x-symbol.png" alt-text="The screen on clicking the x symbol in the shield." lightbox="media/options-on-clicking-x-symbol.png":::

1. Select **Action needed**. The following screen appears:

   :::image type="content" source="media/virus-and-threat-protection-screen.png" alt-text="The Virus & threat protection screen containing the Fix button." lightbox="media/virus-and-threat-protection-screen.png":::

1. Click **Fix** on the top-right corner of this screen. You'll get a prompt, as shown in the following screenshot:

   :::image type="content" source="media/prompt-on-virus-and-threat-protection-screen.png" alt-text="The prompt dialog box on the Virus & threat protection screen." lightbox="media/prompt-on-virus-and-threat-protection-screen.png":::

1. Enter your password and select **OK**.
1. Click 
   :::image type="content" source="media/system-preferences-icon.png" alt-text="The System Preferences icon." lightbox="media/system-preferences-icon.png":::

   The **System Preferences** screen appears.

   :::image type="content" source="media/system-preferences-screen.png" alt-text="The System Preferences screen." lightbox="media/system-preferences-screen.png":::

1. Click **Security & Privacy**. The **Security & Privacy** screen appears.

   :::image type="content" source="media/security-and-privacy-screen.png" alt-text="The Security & Privacy screen." lightbox="media/security-and-privacy-screen.png":::

1. Select **Click the lock to make changes**. You'll get a prompt as shown in the following screenshot:

   :::image type="content" source="media/prompt-on-security-and-privacy-screen.png" alt-text="The prompt on the Security & Privacy screen." lightbox="media/prompt-on-security-and-privacy-screen.png":::

1. Enter your password and click **Unlock**. The following screen appears:

   :::image type="content" source="media/screen-on-clicking-unlock.png" alt-text="The screen that is displayed on clicking Unlock." lightbox="media/screen-on-clicking-unlock.png":::

1. Select **Details**, next to **Some software system requires your attention before it can be used**.

   :::image type="content" source="media/screen-on-clicking-details.png" alt-text="The screen that is displayed on clicking Details." lightbox="media/screen-on-clicking-details.png":::

1. Check both the **Microsoft Defender** checkboxes, and select **OK**. You'll get two pop-up screens, as shown in the following screenshot:

   :::image type="content" source="media/popup-after-checking-both-md-checkboxes.png" alt-text="The popup that appears on checking both the checkboxes." lightbox="media/popup-after-checking-both-md-checkboxes.png":::

1. On the **"Microsoft Defender" Would like to Filter Network Content** pop-up screen, click **Allow**.

1. On the **Microsoft Defender wants to make changes** pop-up screen, enter your password and select **OK**.

If you run systemextensionsctl list, the following screen appears:

:::image type="content" source="media/result-of-running-systemextenstionsctl-list.png" alt-text="The resultant screen of running the systemextensionsdcl list." lightbox="media/result-of-running-systemextenstionsctl-list.png":::

### Accessibility

1. On the **Security & Privacy** screen, select the **Privacy** tab.

   :::image type="content" source="media/privacy-tab.png" alt-text="The Privacy tab." lightbox="media/privacy-tab.png":::

2. Select **Accessibility** from the left navigation pane, and click **+**.

   :::image type="content" source="media/accessibility-and-plus-icon.png" alt-text="The Accessibility menu item and the Plus icon." lightbox="media/accessibility-and-plus-icon.png":::

3. From the resultant screen, select **Applications** from the **Favorites** pane in the left-side of the screen; select **Microsoft Defender**; and then select **Open** at the bottom-right of the screen.

   :::image type="content" source="media/applications-md-options.png" alt-text="The process of selecting Applications and Microsoft Defender." lightbox="media/applications-md-options.png":::
   
4. From the resultant screen, check the **Microsoft Defender** checkbox.

   :::image type="content" source="media/checking-md-checkbox.png" alt-text="Checking the Microsoft Defender checkbox." lightbox="media/checking-md-checkbox.png":::

### Full Disk Access

1. On the **Security & Privacy** screen, select the **Privacy** tab.
1. Select **Full Disk Access** from the left navigation pane, and then click the **Lock** icon.

   :::image type="content" source="media/full-disk-access-and-lock-icon.png" alt-text="The Full Disk Access option in the menu and the Lock icon." lightbox="media/full-disk-access-and-lock-icon.png":::

1. Confirm that the Microsoft Defender extension has full disk access; if not, check the **Microsoft Defender** checkbox.
 
   :::image type="content" source="media/check-md-checkbox.png" alt-text="Checking the MD checkbox." lightbox="media/check-md-checkbox.png":::

### Notifications

1. From the **System Preferences** home screen, select **Notifications**.

   :::image type="content" source="media/notifications-option.png" alt-text="The Notifications option in the System Preferences screen." lightbox="media/notifications-option.png":::
   
   The **Notifications** screen appears.

1. Select **Microsoft Defender** from the left navigation pane.

1. Enable the **Allow Notifications** option; select **Alerts**, and retain the default settings as is.

   :::image type="content" source="media/notifications-md.png" alt-text="Selecting Microsoft Defender option from the Notifications screen." lightbox="media/notifications-md.png":::

### What a healthy system looks like

#### mdatp health output

:::image type="content" source="media/mdatp-health-output.png" alt-text="The mdatp health output screen." lightbox="media/mdatp-health-output.png":::

#### Check the system extensions

In terminal, run the following command to check the system extensions:

`systemextensionsctl list`

The execution of this command is shown in the following screenshot:

:::image type="content" source="media/command-to-check-system-extensions.png" alt-text="The command to check the system extensions." lightbox="media/command-to-check-system-extensions.png":::