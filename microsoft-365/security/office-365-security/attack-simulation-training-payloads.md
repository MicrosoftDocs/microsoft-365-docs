---
title: Create custom payloads for Attack simulation training
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.prod: m365-security
ms.localizationpriority: medium
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
description: Admins can learn how to create custom payloads for Attack simulation training in Microsoft Defender for Office 365.
ms.technology: mdo
---

# Create custom payloads for Attack simulation training in Defender for Office 365

**Applies to**
 [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

In Attack simulation training, a _payload_ is the phishing email message and webpages that are presented to users in simulations. Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2 offers a robust built-in payload catalog for the available social engineering techniques. However, you might want to create custom payloads that will work better for your organization.

This article describes how to create your own payloads in Attack simulation training. You can create custom payloads in the following locations:

- The **Payloads** tab: In the Microsoft 365 Defender portal at <https://security.microsoft.com/>, go to **Email & collaboration** \> **Attack simulation training** \> **Payloads** tab. To go directly to the **Payloads** tab, use <https://security.microsoft.com/attacksimulator?viewid=payload>.
- During simulation creation: You can create custom payloads on the **Select a payload** page (the third page) of the simulation creation wizard. For more information, see [Simulate a phishing attack in Defender for Office 365](attack-simulation-training.md).

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

> [!NOTE]
> Certain trademarks, logos, symbols, insignias and other source identifiers receive heightened protection under local, state and federal statutes and laws. Unauthorized use of such indicators can subject the users to penalties, including criminal fines. Though not an extensive list, this includes the Presidential, Vice Presidential, and Congressional seals, the CIA, the FBI, Social Security, Medicare and Medicaid, the United States Internal Revenue Service, and the Olympics. Beyond these categories of trademarks, use and modification of any third-party trademark carries an inherent amount of risk. Using your own trademarks and logos in a payload would be less risky, particularly where your organization permits the use. If you have any further questions about what is or is not appropriate to use when creating or configuring a payload, you should consult with your legal advisors.

## Create a payload

After you click ![Create a payload icon.](../../media/m365-cc-sc-create-icon.png) **Create a payload** from the **Payloads** tab of Attack simulation training or on the **[Select a payload](attack-simulation-training.md#select-a-payload)** page of the simulation creation wizard, the payload creation wizard starts and is described in this section.

### Select a payload type

On the **Select type** page, the only value that you can currently select is **Email**.

Click **Next**.

### Select a social engineering technique

On the **Select technique** page, the available options are the same as on the [Select technique](attack-simulation-training.md#select-a-social-engineering-technique) page in the simulation creation wizard:

- **Credential harvest**
- **Malware attachment**
- **Link in attachment**
- **Link to malware**
- **Drive-by URL**

The value you select affects the available options and settings later in the payload creation wizard.

When you're finished, click **Next**.

### Name and describe the payload

On the **Payload name** page, configure the following settings:

- **Name**: Enter a unique, descriptive name for the payload.
- **Description**: Enter an optional detailed description for the payload.

When you're finished, click **Next**.

## Configure the payload

On the **Configure payload** page, it's time to build your payload.

- **Sender details** section: Configure the following settings:
  - **From name**
  - **Use first name as display name**: By default, this setting is not selected.
  - **From email**: If you choose an internal email address for your payload's sender, the payload will appear to come from a fellow employee. This sender email address will increase a user's susceptibility to the payload, and will help educate employees on the risk of internal threats.
  - **Email subject**

- **Attachment details** section: This section is available only if you selected **Malware attachment**, **Link in attachment** on the **Select technique** page. Configure the following settings:
  - **Name your attachment**
  - **Select an attachment type**: Currently, the only available value is **DocX**.

- **Phishing link** section: This section is available only if you selected **Credential harvest**, **Link in attachment** on the **Select technique** page. Configure the following settings:
  - **Select a URL you want to be your phishing link**: Select from one of the available values:
    - <https://www.mcsharepoint.com>
    - <https://www.attemplate.com>
    - <https://www.doctricant.com>
    - <https://www.mesharepoint.com>
    - <https://www.officence.com>
    - <https://www.officenced.com>
    - <https://www.officences.com>
    - <https://www.officentry.com>
    - <https://www.officested.com>
    - <https://www.prizegives.com>
    - <https://www.prizemons.com>
    - <https://www.prizewel.com>
    - <https://www.prizewings.com>
    - <https://www.shareholds.com>
    - <https://www.sharepointen.com>
    - <https://www.sharepointin.com>
    - <https://www.sharepointle.com>
    - <https://www.sharesbyte.com>
    - <https://www.sharession.com>
    - <https://www.sharestion.com>
    - <https://www.templateau.com>
    - <https://www.templatent.com>
    - <https://www.templatern.com>
    - <https://www.windocyte.com>

    The URL will later be embedded into the body of the message.

    > [!NOTE]
    > A URL reputation service might identify one or more of these URLs as unsafe. Check the availability of the URL in your supported web browsers before you use the URL in a simulation. For more information, see [Phishing simulation URLs blocked by Google Safe Browsing](attack-simulation-training-faq.md#phishing-simulation-urls-blocked-by-google-safe-browsing).

- Common settings:
  - **Add tag(s)**
  - **Theme**: The available values are: **Account Activation**, **Account Verification**, **Billing**, **Clean up Mail**, **Document Received**, **Expense**, **Fax**, **Finance Report**, **Incoming Messages**, **Invoice**, **Item Received**, **Login Alert**, **Mail Received**, **Other**, **Password**, **Payment**, **Payroll**, **Personalized Offer**, **Quarantine**, **Remote Work**, **Review Message**, **Security Update**, **Service Suspended**, **Signature Required**, **Upgrade Mailbox Storage**, **Verify mailbox**, or **Voicemail**.
  - **Brand**: The available values are: **American Express**, **Capital One**, **DHL**, **DocuSign**, **Dropbox**, **Facebook**, **First American**, **Microsoft**, **Netflix**, **Scotiabank**, **SendGrid**, **Stewart Title**, **Tesco**, **Wells Fargo**, **Syrinx Cloud**, or **Other**.
  - **Industry**: The available values are: **Banking**, **Business services**, **Consumer services**, **Education**, **Energy**, **Construction**, **Consulting**, **Financial services**, **Government**, **Hospitality**, **Insurance**, **Legal**, **Courier services**, **IT**, **Healthcare**, **Manufacturing**, **Retail**, **Telecom**, **Real estate**, or **Other**.
  - **Current event**: The available values are **Yes** or **No**.
  - **Controversial**: The available values are **Yes** or **No**.
- **Language** section: Select the language for the payload. The available values are: **English**, **Spanish**, **German**, **Japanese**, **French**, **Portuguese**, **Dutch**, **Italian**, **Swedish**, **Chinese (Simplified)**, **Norwegian Bokmål**, **Polish**, **Russian**, **Finnish**, **Korean**, **Turkish**, **Hungarian**, **Hebrew**, **Thai**, **Arabic**, **Vietnamese**, **Slovak**, **Greek**, **Indonesian**, **Romanian**, **Slovenian**, **Croatian**, **Catalan**, or **Other**.
- **Email message** section: On the **Text** tab, a rich text editor is available to create your payload. You can also click **Import email** to import an existing message.

  As you create the body of the email message, take advantage of **Dynamic tags** to personalize the email for each user by using the following tags:

  - **Insert name**
  - **Insert email**

   Use **Phishing link** to add the previously selected phishing URL into the body of the message. To save time, toggle **Replace all links in the email message with the phishing link** to on ![Toggle on icon.](../../media/scc-toggle-on.png).

  On the **Code** tab, you can view and modify the HTML code directly.

  ![Phishing link and dynamic tags highlighted in payload creation for Microsoft Defender for Office 365.](../../media/attack-sim-preview-payload-email-body.png)

When you're finished, click **Next**.

## Adding indicators

Indicators will help employees going through the attack simulation understand the clue they can look for in future attacks. To start, click **Add indicator**.

Select an indicator you'd like to use from the drop-down list. This list is curated to contain the most common clues that appear in phishing email messages. Once selected, make sure the indicator placement is set to **From the body of the email** and click on **Select text**. Highlight the portion of your payload where this indicator appears and click **Select**.

![Highlighted text in message body to add to an indicator in attack simulation training.](../../media/attack-sim-preview-select-text.png)

Add a custom description to describe the indicator and click within the indicator preview frame to see a preview of your indicator. Once done, click **Add**. Repeat these steps until you've covered all indicators in your payload.

## Review payload

You're done building your payload. Now it's time to review the details and see a preview of your payload. The preview will include all indicators that you've created. You can edit each part of the payload from this step. Once satisfied, you can **Submit** your payload.

> [!IMPORTANT]
> Payloads that you've created will have **Tenant** as their source. When selecting payloads, make sure that you don't filter out **Tenant**.

## Related links

[Get started using Attack simulation training](attack-simulation-training-get-started.md)

[Create a phishing attack simulation](attack-simulation-training.md)

[Gain insights through Attack simulation training](attack-simulation-training-insights.md)
