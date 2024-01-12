---
title: Secure Messaging for healthcare organizations using Microsoft Teams
author: lana-chin
ms.author: v-chinlana
manager: jtremper
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-frontline
search.appverid: MET150
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
f1.keywords:
- NOCSH
ms.localizationpriority: high
ms.collection:
  - M365-collaboration
  - Teams_ITAdmin_Healthcare
  - microsoftcloud-healthcare
  - m365-frontline
  - highpri
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.reviewer: 
description: Learn how to customize a messaging policy for Microsoft Teams that can include read receipts and priority notifications.
ms.custom: seo-marvel-mar2020
ms.date: 10/28/2022
---

# Secure Messaging for healthcare organizations

Messaging policies are used to control which chat and channel messaging features are available to users in Microsoft Teams. They're part of the overall deployment of Secure Messaging for healthcare organizations like hospitals, clinics, or doctor's offices, where having a message picked up and acted upon in a timely manner is crucial, as is knowing when messages are read.

You can use the global (Org-wide default) policy that's automatically created or create and assign custom messaging policies. Users in your organization automatically get the global policy unless you create and assign a custom policy. Edit the settings in the global policy or create and assign one or more custom policies to turn on or turn off the features that you want.

For example, you might choose to only allow certain job roles to use certain features (perhaps doctors and nurses only) and other workers (like the janitorial or food services staff) to get a more limited set of features. Decide for yourself what needs your organization has, the guidance here is at most a suggestion.

You manage messaging policies in the Teams admin center. To learn more, see [Manage messaging policies in Teams](/microsoftteams/messaging-policies-in-teams).

<!-->:::image type="content" source="media/hc-messaging-policy-admin-center-new.png" alt-text="Screenshot of the Messaging policies page." lightbox="media/hc-messaging-policy-admin-center-new.png":::
 
![Screenshot of messaging policy settings.](media/hc-messaging-policy.png)-->

The following messaging policy settings are of special interest for healthcare organizations, and should be considered when designing a custom policy used in the healthcare field.

## Read receipts

Read receipts allows the sender of a chat message to know when their message was read by the recipient in 1:1 and group chats of 20 people or less. Use this setting to specify whether read receipts are user controlled, on for everyone, or off for everyone. Message read receipts are important in Healthcare organizations because they remove uncertainly about whether a message was read.

For Healthcare applications, choose either **User controlled** or **On for everyone**. Keep in mind that when using the **On for everyone** setting, the only way to set receipts for the whole tenant is either to have only one messaging policy for the whole tenant (the default policy named "Global (Org-wide Default)") or to have all messaging policies in the tenant use the same settings for receipts. The read receipts feature is most effective when set to **On for everyone**.

<!--*Usage example without read receipts:* Jakob Roth, a high risk patient, is admitted to the hospital. Sofia Krause is a nurse working as part of the inter-disciplinary team (IDT) of medical workers, including different specialists, is assigned as the primary care coordinator in charge of this patient. Sofia sends emails and other instant messages to a group of nurses and doctors who use various messaging clients and apps, and often gets no response or indication whether a message was read by team members. Due to tangled communication processes, Jakob's medication is misapplied and his hospital stay is extended.-->

### Example scenario

Jakob Roth, a high risk patient, is admitted to the hospital. Sofia Krause is a nurse working as part of an inter-disciplinary team of care workers, and is assigned as the primary care coordinator in charge of this patient. Sofia starts a group chat with a set of doctors and other nurses who are working with the patient to coordinate care and starts an emergency triage. The nurses and doctors communicate and collaborate over the patient's care plan. Important and urgent messages are sent through 1:1 and group chat conversations. Sofia uses the read receipts functionality to determine whether messages sent requesting support are delivered and read by the targeted physicians or nurses. Jakob's patient outcomes are near-optimal and goes home sooner because the care team communicates smoothly.

## Send urgent messages using priority notifications

A user can mark a message as *urgent* when sending chat messages to other users. This feature helps hospital staff alert one another when a critical incident requires their attention. Unlike regular *important* messages, [urgent messages using priority notifications](https://support.microsoft.com/article/mark-a-message-as-important-or-urgent-in-teams-ea99d5b6-1317-4550-8d75-86ff14cd4462) notify users every two minutes for up to 20 minutes or until the message is picked up and read by the recipient, maximizing the likelihood that the message is acted upon in a timely manner.

An admin can enable or disable the ability for users assigned this policy to send priority notifications. This feature is on by default. The recipient of the priority message might not have the same messaging policy, and won't be able to disable receiving priority messages. For healthcare settings, we recommend enabling the feature for at least some users, but you'll need to determine which ones.

### Example scenario

Sofia Krause is readmitting a high-risk patient, Jakob Roth. Manuela Carstens, a physician, is the primary care doctor for this patient. Sofia sends a message to Manuela using a priority notification asking for immediate help with triage of Jakob.  Manuela's phone receives the message but Manuela didn't feel the phone vibration and doesn't reply. Teams renotifies Manuela and continues to repeatedly renotify until Manuela reads the message. If read receipts are also enabled, Sofia can be aware that the message was read by Manuela, even before Manuela decides how to respond.

## Related articles

- [Manage messaging policies in Teams](/microsoftteams/messaging-policies-in-teams)
- [Get started with Teams for Healthcare organizations](teams-in-hc.md)
