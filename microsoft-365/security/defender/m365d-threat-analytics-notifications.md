---
title: Get email notifications for Threat analytics updates in Microsoft Defender XDR
ms.reviewer: 
description: Set up email notifications to get notified of new Threat analytics reports in Microsoft Defender XDR.
keywords: threat analytics, risk evaluation, Microsoft Defender XDR, M365D, mitigation status, secure configuration, Microsoft Defender for Office 365, Microsoft Defender for Office 365 threat analytics, MDO threat analytics, integrated MDE and MDO threat analytics data, threat analytics data integration, integrated Microsoft Defender XDR threat analytics, notifications, email notifications   
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security 
- m365initiative-m365-defender 
- tier1
ms.topic: conceptual
ms.custom: seo-marvel-apr2020
search.appverid: met150
ms.date: 09/18/2023
---

# Get email notifications for Threat analytics updates in Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR

You can set up email notifications that will send you updates on [threat analytics](threat-analytics.md) reports.

## Set up email notifications for report updates

To set up email notifications for threat analytics reports, perform the following steps:

1. Select **Settings** in the Microsoft Defender XDR sidebar. Select **Microsoft Defender XDR** from the list of settings.
 
![Screenshot with "Settings" and "Microsoft Defender XDR" both highlighted in red](../../media/threat-analytics/ta_create_notification_0.png)

2. Choose **Email notifications** > **Threat analytics**, and select the button, **+ Create a notification rule**. A flyout will appear.

![Screenshot with "+ Create a notification rule" highlighted in red](../../media/threat-analytics/ta_create_notification_1.png)

3. Follow the steps listed in the flyout. First, give your new rule a name. The description field is optional, but a name is required. You can toggle the rule on or off using the checkbox under the description field.

> [!NOTE]
> The name and description fields for a new notification rule only accept English letters and numbers. They don't accept spaces, dashes, underscores, or any other punctuation.

![Screenshot of the naming screen, with all fields filled out and the "Turn rule on" checkbox checked](../../media/threat-analytics/ta_create_notification_2.png)

4. Choose which kind of reports you want to be notified about. You can choose between being updated about all newly published or updated reports, or only those reports which have a certain tag or type.

![Screenshot of the notification screen, with Ransomware tags selected and a drop down menu for types open](../../media/threat-analytics/ta_create_notification_3.png)

5. Add at least one recipient to receive the notification emails. You can also use this screen to check how the notifications will be received, by sending a test email.

![Screenshot of the recipients screen. There are 3 recipients listed, and a test email has been sent, as indicated by a green checkmark](../../media/threat-analytics/ta_create_notification_4.png)

6. Review your new rule. If there is anything you would like to change, select the **Edit** button at the end of each subsection. Once your review is complete, select the **Create rule** button.

![Screenshot of the review screen. An edit button is highlighted in red](../../media/threat-analytics/ta_create_notification_5.png)

7. Congratulations! Your new rule has been successfully created. Select the **Done** button to complete the process and close the flyout.

![Screenshot of the rule created screen. A successfully created rule will display green checkmarks along the sidebar, and a big green check in the main area of the screen](../../media/threat-analytics/ta_create_notification_6.png)

8. Your new rule will now appear in the list of Threat analytics email notifications.

![Screenshot of the list of email notification rules within the Settings screen](../../media/threat-analytics/ta_create_notification_7.png)

## Next steps

- [Get email notifications on incidents](m365d-notifications-incidents.md)
- [Get email notifications on response actions](m365d-response-actions-notifications.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
