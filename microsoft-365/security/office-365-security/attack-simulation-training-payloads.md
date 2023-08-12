---
title: Payloads in Attack simulation training
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.collection:
  - m365-security
  - tier2
ms.custom:
description: Admins can learn how to create and manage payloads for Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
ms.date: 6/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Payloads in Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, a _payload_ is the link or attachment in the simulated phishing email message that's presented to users. Attack simulation training offers a robust built-in payload catalog for the available social engineering techniques. However, you might want to create custom payloads that work better for your organization.

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

To see the available payloads, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> and then select **Payloads**. To go directly to the **Content library** tab where you can select **Payloads**, use <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>.

**Payloads** in the **Content library** tab has three tabs:

- **Global payloads**: Contains the built-in, non-modifiable payloads.
- **Tenant payloads**: Contains the custom payloads that you've created.
- **MDO recommendations**: Payloads that are recommended by Defender for Office 365 as having considerable impact when used by attackers. This list is refreshed monthly.

The following information is shown for each payload on the **Global payloads** and **Tenant payloads** tabs<sup>\*</sup>:

- **Payload name**
- **Type**: Currently, this value is always **Social engineering**.
- **Language**: If the payload contains multiple translations, the first two languages are shown directly. To see the remaining languages, hover over the numeric icon (for example, **+10**).
- **Source**: For built-in payloads, the value is **Global**. For custom payloads, the value is **Tenant**.
- **Simulations launched**: The number of launched simulations that use the payload.
- **Predicted compromised rate (%)**: Historical data across Microsoft 365 that predicts the percentage of people who will be compromised by this payload (users compromised / total number of users who receive the payload). For more information, see [Predicted compromise rate](attack-simulation-training-get-started.md#predicted-compromise-rate).
- **Created by**: For built-in payloads, the value is **Microsoft**. For custom payloads, the value is the UPN of the user who created the payload.
- **Last modified**
- **Technique**: One of the available [social engineering techniques](attack-simulation-training-simulations.md#select-a-social-engineering-technique):
  - **Credential Harvest**
  - **Malware Attachment**
  - **Link in Attachment**
  - **Link to Malware**
  - **Drive-by URL**
  - **OAuth Consent Grant**
- **Status**: Values are:
  - **Ready**
  - **Draft**: Available only on the **Tenant payloads** tab.
  - **Archive**: Archived payloads are visible only when **Show archived payloads** is toggled on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.
- **⋮** (**Actions** control): Take action on the payload. The available actions depend on the **Status** value of the payload as described in the procedure sections. This control always appears at the end of the payload row.

Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, the only available column that's not selected is **Platform**.

<sup>\*</sup> To see all columns, you likely need to do one or more of the following steps:

- Horizontally scroll in your web browser.
- Narrow the width of appropriate columns.
- Remove columns from the view.
- Zoom out in your web browser.

To find a payload in the list, type part of the payload name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and then press the ENTER key.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: to filter the payloads by one or of the following values:

- **Complexity**: Calculated based on the number of indicators in the payload that indicate a possible attack (spelling errors, urgency, etc.). More indicators are easier to identify as an attack and indicate lower complexity. The available values are: **High**, **Medium**, and **Low**.

- **Language**: The available values are: **English**, **Spanish**, **German**, **Japanese**, **French**, **Portuguese**, **Dutch**, **Italian**, **Swedish**, **Chinese (Simplified)**, **Norwegian Bokmål**, **Polish**, **Russian**, **Finnish**, **Korean**, **Turkish**, **Hungarian**, **Hebrew**, **Thai**, **Arabic**, **Vietnamese**, **Slovak**, **Greek**, **Indonesian**, **Romanian**, **Slovenian**, **Croatian**, **Catalan**, or **Other**.

- **Add tag(s)**

- **Filter by theme**: The available values are: **Account activation**, **Account verification**, **Billing**, **Clean up mail**, **Document received**, **Expense**, **Fax**, **Finance report**, **Incoming messages**, **Invoice**, **Items received**, **Login alert**, **Mail received**, **Password**, **Payment**, **Payroll**, **Personalized offer**, **Quarantine**, **Remote work**, **Review message**, **Security update**, **Service suspended**, **Signature required**, **Upgrade mailbox storage Verify mailbox**, **Voicemail**, and **Other**.

- **Filter by brand**: The available values are: **American Express**, **Capital One**, **DHL**, **DocuSign**, **Dropbox**, **Facebook**, **First American**, **Microsoft**, **Netflix**, **Scotiabank**, **SendGrid**, **Stewart Title**, **Tesco**, **Wells Fargo**, **Syrinx Cloud**, and **Other**.

- **Filter by industry**: The available values are: **Banking**, **Business services**, **Consumer services**, **Education**, **Energy**, **Construction**, **Consulting**, **Financial services**, **Government**, **Hospitality**, **Insurance**, **Legal**, **Courier services**, **IT**, **Healthcare**, **Manufacturing**, **Retail**, **Telecom**, **Real estate**, and **Other**.

- **Current event**: The available values are **Yes** or **No**.

- **Controversial**: The available values are **Yes** or **No**.

When you're finished configuring filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

When you select a payload by clicking anywhere in the row other than the check box next to the name, a details flyout appears with the following information:

- **Overview** tab: View the payload as users see it. Payload properties are also visible:
  - **Payload description**
  - **From name**
  - **From email**
  - **Email subject**
  - **Source**: For built-in payloads, the value is **Global**. For custom payloads, the value is **Tenant**.
  - **Theme**
  - **Brand**
  - **Industry**
  - **Controversial**
  - **Predicted compromise rate**
  - **Current event**
  - **Tags**

- **Simulations launched** tab:
  - **Simulation name**
  - **Click rate**
  - **Compromised rate**
  - **Action**: Clicking the **View details** link takes you to the details of the simulation.

To see payloads that have been archived (the **Status** value is **Archive**), use the **Show archived payloads** toggle on the **Tenant payloads** tab.

## Create payloads

> [!NOTE]
> Certain trademarks, logos, symbols, insignias and other source identifiers receive heightened protection under local, state and federal statutes and laws. Unauthorized use of such indicators can subject the users to penalties, including criminal fines. Though not an extensive list, this includes the Presidential, Vice Presidential, and Congressional seals, the CIA, the FBI, Social Security, Medicare and Medicaid, the United States Internal Revenue Service, and the Olympics. Beyond these categories of trademarks, use and modification of any third-party trademark carries an inherent amount of risk. Using your own trademarks and logos in a payload would be less risky, particularly where your organization permits the use. If you have any further questions about what is or is not appropriate to use when creating or configuring a payload, you should consult with your legal advisors.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> **Payloads** \> **Tenant payloads** tab. To go directly to the **Content library** tab where you can select **Payloads** and the **Tenant payloads** tab, use <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>.

   On the **Tenant payloads** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create a payload** to start the new payload wizard.

   :::image type="content" source="../../media/attack-sim-training-payload-create.png" alt-text="Create a payload on the Tenant payloads tab in Payloads in Attack simulation training in the Microsoft 365 Defender portal." lightbox="../../media/attack-sim-training-payload-create.png":::

   > [!NOTE]
   > At any point after you name the payload during the new payload wizard, you can select **Save and close** to save your progress and continue later. The incomplete payload has the **Status** value **Draft**. You can pick up where you left off by selecting the payload and then clicking the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit payload** action that appears.
   >
   > You can also create payloads during the creation of simulations. For more information, see [Create a simulation: Select a payload and login page](attack-simulation-training-simulations.md#select-a-payload-and-login-page).

2. On the **Select type** page, the only value that you can currently select is **Email**.

   When you're finished on the **Select type** page, select **Next**.

3. On the **Select technique** page, the available options are the same as on the **Select technique** page in the new simulation wizard:
   - **Credential Harvest**
   - **Malware Attachment**
   - **Link in Attachment**
   - **Link to Malware**
   - **Drive-by URL**
   - **OAuth Consent Grant**

   For more information, see [Simulate a phishing attack with Attack simulation training in Defender for Office 365](attack-simulation-training-simulations.md).

   When you're finished on the **Select technique** page, select **Next**.

4. On the **Payload name** page, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the payload.
   - **Description**: Enter an optional detailed description for the payload.

   When you're finished on the **Payload name** page, select **Next**.

5. On the **Configure payload** page, it's time to build your payload. Many of the available settings are determined by the selection you made on the **Select technique** page (for example, links vs. attachments).

   - **Sender details** section: Configure the following settings:
     - **From name**
     - **Use first name as display name**: By default, this setting isn't selected.
     - **From email**: If you choose an internal email address for your payload's sender, the payload appears to come from a fellow employee. This sender email address increases a user's susceptibility to the payload, and helps to educate employees on the risk of internal threats.
     - **Email subject**
     - **Add External tag to email**: By default, this setting isn't selected.

   - **Attachment details** section (**Malware Attachment**, **Link in Attachment**, or **Link to Malware** techniques only): Configure the following settings:
     - **Name your attachment**: Enter a filename for the attachment.
     - **Select an attachment type**: Select a filetype for the attachment. Available values are **Docx** or **HTML**.

   - **Link for attachment** section (**Link to Malware** technique only): In the **Select a URL you want to be your malware attachment link** box, select one of the available URLs (the same URLs that are described for the **Phishing link** section). You embed the URL in the body of the message in the **Email message** section.

   - **Phishing link** section (**Credential Harvest**, **Link in Attachment**, **Drive-by URL**, or **OAuth Consent Grant** techniques only):
     - For **Credential Harvest**, **Drive-by URL**, or **OAuth Consent Grant**, the name of the box is **Select a URL you want to be your phishing link**. You embed the URL in the body of the message in the **Email message** section.
     - For **Link in Attachment**, the name of the box is **Select a URL in this attachment that you want to be your phishing link**. You embed the URL in the attachment in the **Attachment content** section.

     Select one of the available URL values:

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

     > [!NOTE]
     > A URL reputation service might identify one or more of these URLs as unsafe. Check the availability of the URL in your supported web browsers before you use the URL in a simulation. For more information, see [Phishing simulation URLs blocked by Google Safe Browsing](attack-simulation-training-faq.md#phishing-simulation-urls-blocked-by-google-safe-browsing).

   - **Attachment content** section (**Link in Attachment** technique only).

     A rich text editor is available to create the login page. To see the typical font and formatting settings, toggle **Formatting controls** to :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: **On**.

     Use the **Phishing link** control to add the previously selected phishing URL into the attachment.

   - Common settings for all techniques on the **Configure payload** page:

     - **Add tag(s)**

     - **Theme**: The available values are: **Account Activation**, **Account Verification**, **Billing**, **Clean up Mail**, **Document Received**, **Expense**, **Fax**, **Finance Report**, **Incoming Messages**, **Invoice**, **Item Received**, **Login Alert**, **Mail Received**, **Other**, **Password**, **Payment**, **Payroll**, **Personalized Offer**, **Quarantine**, **Remote Work**, **Review Message**, **Security Update**, **Service Suspended**, **Signature Required**, **Upgrade Mailbox Storage**, **Verify mailbox**, or **Voicemail**.

     - **Brand**: The available values are: **American Express**, **Capital One**, **DHL**, **DocuSign**, **Dropbox**, **Facebook**, **First American**, **Microsoft**, **Netflix**, **Scotiabank**, **SendGrid**, **Stewart Title**, **Tesco**, **Wells Fargo**, **Syrinx Cloud**, or **Other**.

     - **Industry**: The available values are: **Banking**, **Business services**, **Consumer services**, **Education**, **Energy**, **Construction**, **Consulting**, **Financial services**, **Government**, **Hospitality**, **Insurance**, **Legal**, **Courier services**, **IT**, **Healthcare**, **Manufacturing**, **Retail**, **Telecom**, **Real estate**, or **Other**.

     - **Current event**: The available values are **Yes** or **No**.

     - **Controversial**: The available values are **Yes** or **No**.

     - **Language** section: Select the language for the payload. The available values are: **English**, **Spanish**, **German**, **Japanese**, **French**, **Portuguese**, **Dutch**, **Italian**, **Swedish**, **Chinese (Simplified)**, **Norwegian Bokmål**, **Polish**, **Russian**, **Finnish**, **Korean**, **Turkish**, **Hungarian**, **Hebrew**, **Thai**, **Arabic**, **Vietnamese**, **Slovak**, **Greek**, **Indonesian**, **Romanian**, **Slovenian**, **Croatian**, **Catalan**, or **Other**.

   - **Email message** section:

     - You can select **Import email** and then **Choose file** to import an existing plain text message file.

     - Two tabs are available:
     - **Text** tab: A rich text editor is available to create the payload. To see the typical font and formatting settings, toggle **Formatting controls** to :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: **On**.

       The following controls are also available on the **Text** tab:

       - **Dynamic tag**: Select from the following tags:

          |Tag name|Tag value|
          |---|---|
          |**Insert User name**|`${userName}`|
          |**Insert First name**|`${firstName}`|
          |**Insert Last name**|`${lastName}`|
          |**Insert UPN**|`${upn}`|
          |**Insert Email**|`${emailAddress}`|
          |**Insert Department**|`${department}`|
          |**Insert Manager**|`${manager}`|
          |**Insert Mobile phone**|`${mobilePhone}`|
          |**Insert City**|`${city}`|
          |**Insert Date**|`${date|MM/dd/yyyy|offset}`|

       - **Phishing link** (**Credential Harvest**, **Drive-by URL**, or **OAuth Consent Grant** techniques only): Use this control to name and insert the URL that you previously selected in the **Phishing link** section.

       - **Malware attachment link** (**Link to Malware** technique only): Use this control to name and insert the URL that you previously selected in the **Link for attachment** section.

       When you select **Phishing link** or **Malware attachment link**, a dialog opens that asks you to name the link. When you're finished, select **Confirm**.

       The name value that you specified is added to the message body as a link. On the **Code** tab, the link value is `<a href="${phishingUrl}" target="_blank">Name value you specified</a>`.

     - **Code** tab: You can view and modify the HTML code directly.

     - **Replace all links in the email message with the phishing link** (**Credential Harvest**, **Link to Malware**, **Drive-by URL**, or **OAuth Consent Grant** techniques only): This toggle can save time by replacing all links in the message with the previously selected **Phishing link** or **Link for attachment** URL. To take this action, toggle the setting to on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.

   When you're finished on the **Configure payload** page, select **Next**.

6. The **Add indicators** page is available only if you selected **Credential Harvest**, **Link in Attachment**, **Drive-by URL**, or **OAuth Consent Grant** on the **Select technique** page.

   Indicators help employees identify the tell-tale signs of phishing messages.

   On the **Add indicators** page, select :::image type="icon" source="../../media/m365-cc-sc-add-internal-icon.png" border="false"::: **Add indicator**. In the flyout that opens, configure the following settings:

   - **Select and indicator you would like to use** and **Where do you want to place this indicator on the payload?**:

     These values are interrelated. Where you can place the indicator depends on the type of indicator. The available values are described in the following table:

     |Indicator type|Indicator location|
     |---|---|
     |**Attachment type**|Message body|
     |**Distracting detail**|Message body|
     |**Domain spoofing**|Message body <br/><br/> From email address|
     |**Generic greeting**|Message body|
     |**Humanitarian appeals**|Message body|
     |**Inconsistency**|Message body|
     |**Lack of sender details**|Message body|
     |**Legal language**|Message body|
     |**Limited time offer**|Message body|
     |**Logo imitation or dated branding**|Message body|
     |**Mimics a work or business process**|Message body|
     |**No/minimal branding**|Message body|
     |**Poses as friend, colleague, supervisor, or authority figure**|Message body|
     |**Request for sensitive information**|Message body|
     |**Security indicators and icons**|Message body <br/><br/> Message subject|
     |**Sender display name and email address**|From name <br/><br/> From email address|
     |**Sense of urgency**|Message body <br/><br/> Message subject|
     |**Spelling and grammar irregularities**|Message body <br/><br/> Message subject|
     |**Threatening language**|Message body <br/><br/> Message subject|
     |**Too good to be true offers**|Message body|
     |**Unprofessional looking design or formatting**|Message body|
     |**URL hyperlinking**|Message body|
     |**You're special**|Message body|

     This list is curated to contain the most common clues that appear in phishing messages.

     If you select the email message subject or the message body as the location for the indicator, a **Select text** button appears. Select this button to select the text in the message subject or message body where you want the indicator to appear. When you're finished, select **Select**.

     :::image type="content" source="../../media/attack-sim-training-payloads-add-indicators-select-location.png" alt-text="The Selected text location in the message body to add to an indicator in the new payload wizard in Attack simulation training" lightbox="../../media/attack-sim-training-payloads-add-indicators-select-location.png":::

     - **Indicator description**: You can accept the default description for the indicator or you can customize it.

     - **Indicator preview**: To see what the current indicator looks like, click anywhere within the section.

     When you're finished in the **Add indicator** flyout, select **Add**

   Repeat these steps to add multiple indicators.

   Back on the **Add indicators** page, you can review the indicators you selected:

   - To edit an existing indicator, select it and then select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit indicator**.

   - To delete an existing indicator, select it and then select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete**.

   - To move indicators up or down in the list, select the indicator, and then select :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Move up** or :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Move down**.

   When you're finished on the **Add indicators** page, select **Next**.

7. On the **Review payload** page, you can review the details of your payload.

   Select the :::image type="icon" source="../../media/m365-cc-sc-send-icon.png" border="false"::: **Send a test** button to send a copy of the payload email to yourself (the currently logged in user) for inspection.

   Select the :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Preview indicator** button open the payload in a preview flyout. The preview includes all payload indicators that you've created.

   On the **Review payload** page, you can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review payload** page, select **Submit**. On the confirmation page that appears, select **Done**.

   :::image type="content" source="../../media/attack-sim-training-payloads-review-payload.png" alt-text="The Review payload page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-payloads-review-payload.png":::

8. On the **New payload created** page, you can use the links to view all simulations or go to the Attack simulation training overview.

   When you're finished on the **New payload created** page, select **Done**.

9. Back on the **Tenant payloads** tab, the payload that you created is now listed with the **Status** value **Ready**.

## Take action on payloads

All actions on existing payloads start on the **Payloads** page. To get there, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> **Payloads** \> **Tenant payloads** tab. To go directly to the **Content library** tab where you can select **Payloads** and the **Tenant payloads** or **Global payloads** tabs, use <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>.

> [!TIP]
> To see the **⋮** (**Actions**) control on the **Global payloads** or **Tenant payloads** tabs, you likely need to do one or more of the following steps:
>
> - Horizontally scroll in your web browser.
> - Narrow the width of appropriate columns.
> - Remove columns from the view.
> - Zoom out in your web browser.

## Modify payloads

You can't modify built-in payloads on the **Global payloads** tab. You can only modify custom payloads on the **Tenant payloads** tab.

To modify an existing payload on the **Tenant payloads** tab, do one of the following steps:

- Select the payload by clicking the check box next to the name. Select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit payload** action that appears.
- Select the payload by clicking anywhere in the row other than the check box. In the details flyout that opens, select **Edit payload** at the bottom of the flyout.
- Select the payload by clicking **⋮** (**Actions**) at the end of the row, and then select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**.

The payload wizard opens with the settings and values of the selected payload. The steps are the same as described in the [Create payloads](#create-payloads) section.

## Copy payloads

To copy an existing payload on the **Tenant payloads** or **Global payloads** tabs, do one of the following steps:

- Select the payload by clicking the check box next to the name, and then select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Copy payload** action that appears.
- Select the payload by clicking **⋮** (**Actions**) at the end of the row, and then select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Copy payload**.

The create payload wizard opens with the settings and values of the selected payload. The steps are the same as described in the [Create payloads](#create-payloads) section.

> [!NOTE]
> When you copy a built-in payload on the **Global payloads** tab, be sure to change the **Name** value. If you don't, the payload will appear on the **Tenant payloads** page with the same name as the built-in payload.

## Archive payloads

You can't delete custom payloads from the **Tenant payloads** tab, but you can archive them.

To archive an existing payload on the **Tenant payloads** tab, select the payload by clicking **⋮** (**Actions**) at the end of the row, and then select :::image type="icon" source="../../media/m365-cc-sc-archive-icon.png" border="false"::: **Archive**.

The **Status** value of the payload changes to **Archive**, and the payload is no longer visible on the **Tenant payloads** table when **Show archived payloads** is toggled off :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.

To see archived payloads on the **Tenant payloads** tab, toggle **Show archived payloads** to on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.

## Restore archived payloads

To restore an archive payload on the **Tenant payloads** tab, do the following steps:

1. Set the **Show archived payloads** toggle to on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.
2. Select the payload by clicking **⋮** (**Actions**) at the end of the row, and then select :::image type="icon" source="../../media/m365-cc-sc-archive-icon.png" border="false"::: **Restore**.

After you've restored the archived payload, the **Status** value changes to **Draft**. Toggle **Show archived payloads** to off :::image type="icon" source="../../media/scc-toggle-off.png" border="false"::: to see the restored payload. To return the payload to the **Status** value **Ready**, [edit the payload](#modify-payloads), review or change the settings, and then select **Submit**.

## Send a test

On the **Tenant payloads** or **Global payloads** tabs, you can send a copy of the payload email to yourself (the currently logged in user) for inspection.

Select the payload by clicking the check box next to the name, and then select the :::image type="icon" source="../../media/m365-cc-sc-send-icon.png" border="false"::: **Send a test** button that appears.

## Related links

[Get started using Attack simulation training](attack-simulation-training-get-started.md)

[Create a phishing attack simulation](attack-simulation-training-simulations.md)

[Gain insights through Attack simulation training](attack-simulation-training-insights.md)
