---
title: Configure and manage Microsoft Threat Experts capabilities
ms.reviewer:
description: Register to Microsoft Threats Experts to configure, manage, and use it in your daily security operations and security administration work.
keywords: Microsoft Threat Experts, managed threat hunting service, MTE, Microsoft managed hunting service
search.product: Windows 10
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Configure and manage Microsoft Defender Experts capabilities

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

## Before you begin

> [!NOTE]
> Discuss the eligibility requirements with your Microsoft Technical Service provider and account team before you apply to Endpoint Attack Notifications managed threat hunting service.

Ensure that you have Defender for Endpoint deployed in your environment with devices enrolled, and not just on a laboratory set-up.

If you're a Defender for Endpoint customer, you need to apply for **Endpoint Attack Notifications** to get special insights and analysis to help identify the most critical threats, so you can respond to them quickly. Contact your account team or Microsoft representative to subscribe to **Microsoft Defender Experts - Experts on Demand** to consult with our threat experts on relevant detections and adversaries.

## Apply for Endpoint Attack Notifications service

If you're already a Defender for Endpoint customer, you can apply through the Microsoft 365 Defender portal.

1. From the navigation pane, go to **Settings > General > Advanced features > Endpoint Attack Notifications**.

2. Click **Apply**.

   :::image type="content" source="images/mte-collaboratewithmte.png" alt-text="The Microsoft Defender Experts settings" lightbox="images/mte-collaboratewithmte.png":::

3. Enter your name and email address so that Microsoft can get back to you on your application.

   :::image type="content" source="images/mte-apply.png" alt-text="The Name field on the Microsoft Defender Experts application page" lightbox="images/mte-apply.png":::

4. Read the [privacy statement](https://privacy.microsoft.com/privacystatement), then click **Submit** when you're done. You'll receive a welcome email once your application is approved.

   :::image type="content" source="images/mte-applicationconfirmation.png" alt-text="The Microsoft Defender Experts application confirmation message" lightbox="images/mte-applicationconfirmation.png":::

When accepted, you'll receive a welcome email and you'll see the **Apply** button change to a toggle that is "on". In case you want to take yourself out of the Endpoint Attack Notifications service, slide the toggle "off" and click **Save preferences** at the bottom of the page.

## Where you'll see the Endpoint Attack Notifications from Microsoft Defender Experts

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

## Subscribe to Microsoft Defender Experts - Experts on Demand

This is available as a subscription service. If you're already a Defender for Endpoint customer, you can contact your Microsoft representative to subscribe to Microsoft Defender Experts - Experts on Demand.
> [!NOTE]
> Experts on Demand is not a security incident response service. It's intended to provide a better understanding of complex threats affecting your organization. Engage with your own security incident response team to address urgent security incident response issues. If you don't have your own security incident response team and would like Microsoft's help, create a support request in the [Premier Services Hub](/services-hub/).

## Ask Defender Experts about suspicious cybersecurity activities in your organization

You can partner with Microsoft Defender Experts who can be engaged directly from within the Microsoft 365 Defender portal for their response. Experts provide insights to better understand complex threats, targeted attack notifications that you get, or if you need more information about the alerts, a potentially compromised device, or a threat intelligence context that you see on your portal dashboard.

> [!NOTE]
>
> - Alert inquiries related to your organization's customized threat intelligence data are currently not supported. Consult your security operations or incident response team for details.
> - You need to have the **Manage security settings** permission in the Microsoft 365 Defender portal to be able to submit the **Ask Defender Experts** inquiry.

1. Navigate to the portal page with the relevant information that you'd like to investigate, for example, the **Incident** page. Ensure that the page for the relevant alert or device is in view before you send an investigation request.

2. From the upper right-hand menu, click the **?** icon. Then, select **Ask Defender Experts**

![The Microsoft Ask Defender Experts trial subscription page](../../media/mte/flyout-screen-trial-subscription.png)

A flyout screen opens. The following screen shows when you are on a trial subscription. The following screen shows when you are on a full Microsoft Defender Experts - Experts on Demand subscription.

The **Inquiry topic** field is pre-populated with the link to the relevant page for your investigation request. For example, a link to the incident, alert, or device details page that you were at when you made the request.

3. In the next field, provide enough information to give the Microsoft Defender Experts enough context to start the investigation.

4. Enter the email address that you'd like to use to correspond with Microsoft Defender Experts.

> [!NOTE]
> If you would like to track the status of your Experts on Demand cases through Microsoft Services Hub, reach out to your Customer Success Account Manager.

Watch this video for a quick overview of the Microsoft Services Hub.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4pk9f]

## Sample investigation topics that you can consult with Microsoft Defender Experts - Experts on Demand

### Alert information

- We see a new type of alert for a living-off-the-land binary: [AlertID]. Can you tell us something more about this alert and how we can investigate further?
- We've observed two similar attacks, which try to execute malicious PowerShell scripts but generate different alerts. One is "Suspicious PowerShell command line" and the other is "A malicious file was detected based on indication provided by O365". What is the difference?
- I receive an odd alert today for abnormal number of failed logins from a high profile user's device. I can't find any further evidence around these sign-in attempts. How can Defender for Endpoint see these attempts? What type of sign-ins are being monitored?
- Can you give more context or insights about this alert: "Suspicious behavior by a system utility was observed".

### Possible device compromise

- Can you help answer why we see "Unknown process observed?" This message or alert is seen frequently on many devices. We appreciate any input to clarify whether this message or alert is related to malicious activity.
- Can you help validate a possible compromise on the following system on [date] with similar behaviors as the previous [malware name] malware detection on the same system in [month]?

### Threat intelligence details

- We detected a phishing email that delivered a malicious Word document to a user. The malicious Word document caused a series of suspicious events, which triggered multiple Endpoint Attack Notifications alerts for [malware name] malware. Do you have any information on this malware? If yes, can you send me a link?
- I recently saw a [social media reference, for example, Twitter or blog] post about a threat that is targeting my industry. Can you help me understand what protection Defender for Endpoint provides against this threat actor?

### Defender Experts' alert communications

- Can your incident response team help us address the Endpoint Attack Notifications that we got?
- I received this Endpoint Attack Notifications from Microsoft Defender Experts. We don't have our own incident response team. What can we do now, and how can we contain the incident?
- I received an Endpoint Attack Notifications from Microsoft Defender Experts. What data can you provide to us that we can pass on to our incident response team?

  > [!NOTE]
  > Microsoft Defender Experts is a managed cybersecurity hunting service and not an incident response service. However, you can engage with your own incident response team to address issues that require an incident response. If you don't have your own incident response team and would like Microsoft's help, you can engage with the CSS Cybersecurity Incident Response Team (CIRT). They can open a ticket to help address your inquiry.

## Scenario

### Receive a progress report about your managed hunting inquiry

Response from Microsoft Defender Experts varies according to your inquiry. They'll email a progress report to you about your **Ask Defender Experts** inquiry within two days, to communicate the investigation status from the following categories:

- More information is needed to continue with the investigation
- A file or several file samples are needed to determine the technical context
- Investigation requires more time
- Initial information was enough to conclude the investigation

It's crucial to respond in quickly to keep the investigation moving.

#### To proactively hunt threats across endpoints, Office 365, cloud applications, and identity, refer to

- [Microsoft Defender Experts in Microsoft 365 Overview](../defender/defender-experts-for-hunting.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
