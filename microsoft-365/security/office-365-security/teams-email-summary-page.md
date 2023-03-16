# The Teams Message Entity Panel for Microsoft Teams in Microsoft Defender for Office 365

The Teams Message Entity Panel in Microsoft Defender for Office 365 puts all Microsoft Teams data about suspicious or malicious chats and channels on a *single, actionable panel*.

## The need for an Teams Message Entity Panel

With the rise of chat-based communications, Microsoft Teams has become a main target for malicious attacks. For SecOps teams it is now *essential* to extend security protection to Teams in order to safeguard people and organizations.

With Safelinks working to protect users and ZAP leveraged to extract malicious messages, **post-breach workflows** have the potential to involve SecOps in many different security features in order to isolate and investigate one threat. The Teams Message Entity Panel is the single source of Teams message metadata that will allow for immediate SecOps review and remediation. In other words, any threat coming from:

- chats
- meeting chats
- group chats
- channels

can be found in one place, and remediated as soon as it's assessed.

## SKUs that include the Teams Message Entity Panel and what it includes

The Teams Message Entity Panel page (sometimes referred to as Teams Entity flyout) will be available for customers with E5 and P2 SKUs across all experiences. It emphasizes SecOps usefulness with:

- **Accurate and Complete Data**: Accurate and complete message data appears on the summary panel so there is no other page or panel needed during threat assessment.
- **Unified Experience**: The Teams Message Entity Panel is a one-stop experience, and is intended to help investigators address suspicious messages faster.
- **Accurate and Complete Actions**: SecOps actions taken from the Teams Message Entity Panel allow the investigation and remediation to take place at the same time.

## How does it work?

The Teams Message Entity Panel combines multiple logs into one view:

- Data is logged to the EBA logs by ZAP. Post-breach data is logged to the TTCA logs**
- **Ingest data from the EBA logs for all teams message metadata**
- **Ingest data from TTCA logs to logs ZAP actions on teams messages**
- **Accurately surface the data in all experiences across the portal**
- **Handling message edits and modifications**
  - When a message is modified or edited, a new log line is logged with an updated e-tag
  - In Threat explorer and advanced hunting, the messages appear as one log line
  - If the message is ZAP’d again, another ZAP alert is triggered and the two ZAP alert events are correlated by AIR
  - The edited field in the teams entity flyout is updated with a “yes” value to indicate that the message has been edited
  - The data is joint based on the network message id and source id
 
## Teams Entity Flyout Mock Walkthrough
 
Clicking on a Teams message across MDO experiences opens the Teams Message Entity Flyout. The **header section** contains the subject of the message (if there is one) or it displays the first 100 characters of the body of the message. There are multiple actions available like:
    - release from quarantine
    - delete from quarantine
    - preview
    - submit for review
    - share
    - download.

The **message details** section contains the *primary threat* suspected and *confidence level*, the number of alerts associated with the message, the message location, who reported it, the policy that caused or triggered the action on the message, its Teams message ID, and the chat message text.

The **sender section** displays the domain of the sender, the domain owner, domain location, domain create date, if the sender is within the tenant or cross-org, and links to a secondary *View reporting details* flyout.

The **participants section** includes the conversation type, chat name, chat ID, name and email of all of the participants (excluding the sender), and links to a secondary overlay flyout that lists all the participants in the chat at the time of the suspected threat.

The **URLs section** displays the extracted URL in teams messages, the threat identified to the URL, and links to a second layer overlay flyout that lists all the URLs and their associated threats.

## Measure Requirements
 
- **Usage and Clicks**: Measure usage and clicks to alert and incidents.
 
## Dependencies
 
- **Reporting**: Integration with reporting.
- **Edit Scenarios**: Refer to the Edit Scenarios in the appendix for further details.
 
## Appendix
 
Refer to the appendix for further information on integration with reporting and edit scenarios.
