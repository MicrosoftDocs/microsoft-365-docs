---
title: Configure and manage Microsoft Defender Experts capabilities
ms.reviewer:
description: Register to Microsoft Threats Experts to configure, manage, and use it in your daily security operations and security administration work.
ms.service: defender-endpoint
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dolmont
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: conceptual
search.appverid: met150
ms.date: 12/18/2020
---

# Configure and manage Endpoint Attack Notifications

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

## Before you begin

> [!NOTE]
> Discuss the eligibility requirements with your Microsoft Technical Service provider and account team before you apply to Endpoint Attack Notifications managed threat hunting service.

Ensure that you have Defender for Endpoint deployed in your environment with devices enrolled, and not just on a laboratory set-up.

If you're a Defender for Endpoint customer, you need to apply for **Endpoint Attack Notifications** to get special insights and analysis to help identify the most critical threats, so you can respond to them quickly. 

## Apply for Endpoint Attack Notifications service

If you're already a Defender for Endpoint customer, you can apply through the Microsoft Defender portal.

1. From the navigation pane, go to **Settings > General > Advanced features > Endpoint Attack Notifications**.

2. Click **Apply**.

   :::image type="content" source="images/mte-collaboratewithmte.png" alt-text="The Microsoft Defender Experts settings" lightbox="images/mte-collaboratewithmte.png":::

3. Enter your name and email address so that Microsoft can get back to you on your application.

   :::image type="content" source="images/mte-apply.png" alt-text="The Name field on the Microsoft Defender Experts application page" lightbox="images/mte-apply.png":::

4. Read the [privacy statement](https://privacy.microsoft.com/privacystatement), then click **Submit** when you're done. You'll receive a welcome email once your application is approved.

   :::image type="content" source="images/mte-applicationconfirmation.png" alt-text="The Microsoft Defender Experts application confirmation message" lightbox="images/mte-applicationconfirmation.png":::

When accepted, you'll receive a welcome email and you'll see the **Apply** button change to a toggle that is "on". In case you want to take yourself out of the Endpoint Attack Notifications service, slide the toggle "off" and click **Save preferences** at the bottom of the page.

## Where you'll see the Endpoint Attack Notifications 

You can receive targeted attack notification from Microsoft Defender Experts through the following medium:

- The Defender for Endpoint portal's **Incidents** page
- The Defender for Endpoint portal's **Alerts** dashboard
- OData alerting [API](/windows/security/threat-protection/microsoft-defender-atp/get-alerts) and [REST API](/windows/security/threat-protection/microsoft-defender-atp/pull-alerts-using-rest-api)
- [DeviceAlertEvents](/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-devicealertevents-table) table in Advanced hunting
- Your email, if you choose to configure it

To receive Endpoint Attack Notifications through email, create an email notification rule.

### Create an email notification rule

You can create rules to send email notifications for notification recipients. See  [Configure alert notifications](configure-email-notifications.md) to create, edit, delete, or troubleshoot email notification, for details.

## View the Endpoint Attack Notifications

You'll start receiving Endpoint Attack Notifications from Microsoft Defender Experts in your email after you've configured your system to receive email notification.

1. Click the link in the email to go to the corresponding alert context in the dashboard tagged with **Threat experts**.

2. From the dashboard, select the same alert topic that you got from the email, to view the details.

### Filter to view just the Endpoint Attack Notifications

You can filter your incidents and alerts if you want to only see the Endpoint Attack Notifications amongst the many alerts. To do so:

1. On the navigation menu, go to **Incidents & alerts** > **Incidents**/**Alerts** > select the ![Filter to view Defender Experts notifications](../../media/mte/defenderexperts/filter.png) icon.
2. Scroll down to the Tags field > select the **Defender Experts** check box.
3. Select **Apply**.

#### To proactively hunt threats across endpoints, Office 365, cloud applications, and identity, refer to

- [Microsoft Defender Experts in Microsoft 365 Overview](../defender/defender-experts-for-hunting.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
