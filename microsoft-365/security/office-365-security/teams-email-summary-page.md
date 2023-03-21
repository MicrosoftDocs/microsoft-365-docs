# The Teams Message Entity Panel for Microsoft Teams in Microsoft Defender for Office 365

The Teams Message Entity Panel in Microsoft Defender for Office 365 puts all Microsoft Teams data about suspicious or malicious chats and channels on a *single, actionable panel*.

## The need for an Teams Message Entity Panel

With the rise of chat-based communications, Microsoft Teams has become a main target for malicious attacks. For SecOps teams it is now *essential* to extend security protection to Teams in order to safeguard people and organizations.

With Safelinks working to protect users and Zero-hour Auto Purge (ZAP) leveraged to extract malicious messages, **post-breach workflows** have the potential to involve SecOps in many different security features in order to isolate and investigate one threat. The Teams Message Entity Panel is the single source of Teams message metadata that will allow for immediate SecOps review and remediation. In other words, any threat coming from:

- chats
- meeting chats
- group chats
- channels

can be found in one place, and remediated as soon as it's assessed.

## SKUs that include the Teams Message Entity Panel and what it includes

The Teams Message Entity Panel page (sometimes referred to as Teams Entity flyout) will be available for customers with E5 and P2 SKUs across all experiences. It emphasizes its usefulness to SecOps with:

- **Accurate and Complete Data**: Accurate and complete message data appears on the summary panel so there is no other page or panel needed during threat assessment.
- **Unified Experience**: The Teams Message Entity Panel is a one-stop experience, and is intended to help investigators address suspicious messages faster.
- **Accurate and Complete Actions**: SecOps actions taken from the Teams Message Entity Panel allow the investigation and remediation to take place at the same time.

## How does the Teams Message Entity Panel work?

The Teams Message Entity Panel combines multiple logs into one view giving admins a single pane of glass that:

- **Shows post-breach data that's logged by ZAP:**
- **Accurately surfaces the data in all experiences across the portal**
- **Handles message edits and modifications**
  - When a message is modified or edited, a new log line is logged with an updated e-tag.
  - In Threat Explorer and Advanced Hunting, these messages appear as one log line.
  - If the message is ZAPped again, then another ZAP alert is triggered and the two ZAP alert events are correlated by Automated Investigation and Response (AIR).
  - The edited field in the teams entity flyout is updated with a *yes* value to signal that the message was edited.
  - The data is joint-based on the Network Message ID and Source ID.

## Teams Entity Flyout Walkthrough

Clicking on a Teams message across Microsoft Defender for Office 365 experiences opens the Teams Message Entity Flyout. The **header section** contains the subject of the message (if there is one) or it displays the first 100 characters of the body of the message. There are multiple actions available for admins such as:
    - release from quarantine
    - delete from quarantine
    - preview
    - submit for review
    - share
    - download

:::image type="content" source="../../media/Teams-Message-Entity-Panel-shown-in-Quarantine-with-more-than-10-participants.png" alt-text="Teams Message Entity panel as it is seen in Quarantine." lightbox="../../media/Teams-Message-Entity-Panel-shown-in-Quarantine-with-more-than-10-participants.png":::

The **message details** section contains the *primary threat* suspected and *confidence level*, the number of alerts associated with the message, the message location, and who reported it. This is also the location where admins can determine the policy that caused or triggered the action on the message, the policy's Teams message ID, even the chat message text.

The **sender section** displays domain information, like the domain of the sender, the domain owner, domain location, and domain create date. It also reports whether the sender is within the tenant or cross-org, and links to a secondary *View reporting details* flyout.

The **participants section** includes a lot of message information like the conversation type, chat name, chat ID, and the name and email addresses of all of the participants (excluding the sender). It also links to a secondary overlay flyout that lists all the participants in the chat at the time of the suspected threat.

:::image type="content" source="../../media/Teams-Message-Entity-Panel-shown-in-Quarantine.png" alt-text="Teams Message Entity panel as it is seen in Quarantine." lightbox="../../media/Teams-Message-Entity-Panel-shown-in-Quarantine.png":::

The **URLs section** displays the extracted URL from the Teams message(s), the threat identified regarding the URL, and links to a second layer overlay flyout, a panel that lists all the URLs and the threats associated with them.

## For more information see

[The Microsoft Defender for Office 365 Email Entity Page and how it works](https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-email-entity-page?view=o365-worldwide)

[Safelinks in Microsoft Defender for Office 365](https://learn.microsoft.com/microsoft-365/security/office-365-security/safe-links-about?view=o365-worldwide)

[Zero-hour Auto Purge or ZAP in Microsoft Defender for Office 365](https://learn.microsoft.com/microsoft-365/security/office-365-security/zero-hour-auto-purge?view=o365-worldwide)