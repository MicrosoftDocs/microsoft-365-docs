---
title: "Attack Simulator in O365 ATP"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: da5845db-c578-4a41-b2cb-5a09689a551b
ms.collection:
- M365-security-compliance
description: "Use Attack Simulator to run realistic attack campaigns in your Office 365 E5 or ATP Plan 2 organization, which can help you identify vulnerable users before a real attack hits your business."
---

# Attack Simulator in Office 365 ATP

Attack Simulator in Office 365 Advanced Threat Protection Plan 2 (ATP Plan 2) allows you to run realistic, but simulated phishing and password attacks (campaigns) in your organization. The results of these simulations can help you to identify and train vulnerable users.

The following types of attack simulations are available:

- **Spear phishing (credentials harvest)**: Get credentials or sensitive information from targeted, often important individuals (for example, executives) by convincing them to click on a malicious URL.

- **Spear phishing (attachment)**: Get credentials or sensitive information from targeted, often important individuals by convincing them to opening a malicious attachment.

- **Brute force password (dictionary attack)**: Use a dictionary file to generate multiple password guesses against a known user account. Typically, this type of attack happens after an attacker has successfully acquired a list of key users in the organization.

- **Password spray attack**: Try commonly used passwords against a list of known accounts. Typically, this type of attack happens after an attacker has successfully acquired a list of users in the organization. This is a widely used attack, because it's cheap to run and harder to detect than brute force attacks.

## What do you need to know before you begin?

- To open the Office 365 Security & Compliance Center, go to <https://protection.office.com/>. Attack simulator is available at **Threat management** \> **Attack simulator**.

  ![Threat management - Attack Simulator](../../media/ThreatMgmt-AttackSimulator.png)

- You need to be a member of the **Organization Management** or **Security Administrator** role groups. For more information about role groups in the Security & Compliance Center, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

- Your account needs to be configured for multi-factor authentication (MFA). For instructions, see [Set up multi-factor authentication](https://docs.microsoft.com/office365/admin/security-and-compliance/set-up-multi-factor-authentication).

- You can only run simulated attack campaigns (that is, use Attack Simulator) on users with mailboxes in Exchange Online.

- Spear phishing campaigns will collect and process events for 30 days. Historical campaign data will be available for up to 90 days after you launch the campaign.

- There are no PowerShell cmdlets for Attack Simulator.

## Spear phishing campaigns

*Phishing* is a generic term for email attacks that try to steal sensitive information in messages that appear to be from legitimate or trusted senders. *Spear phishing* is a targeted phishing attack that uses very focused and customized content that's specifically tailored to the targeted recipients (typically, after reconnaissance on the recipients).

For more information about phishing and spear phishing, see [Phishing](https://docs.microsoft.com/windows/security/threat-protection/intelligence).

In Attack Simulator, two different types of spear phishing campaigns are available:

- **Spear phishing (credentials harvest)**: The attack tries to convince the recipients to click on a malicious URL in the message.

- **Spear phishing (attachment)**: The attack tries to convince the recipients to open a malicious attachment in the message.

### Create a spear phishing campaign

An important part of any spear phishing campaign is the look and feel of the email message that's sent to the targeted recipients. To create and configure the email message, you have these options:

- **Use a built-in email template**: Two built-in templates are available: **Prize Giveaway** and **Payroll Update**.

- **Create a reusable email template**: After you create and save the email template, you can use it again in future spear phishing campaigns.

- **Configure the email message in the wizard**: You can configure the email message directly in the wizard as you create and launch the spear phishing campaign.

#### Step 1 (Optional): Create a custom email template

If you're going to use one of the built-in templates or configure the email message directly in the wizard, you can skip this step.

1. In the Security & Compliance Center, go to **Threat management** \> **Attack simulator**.

2. On the **Simulate attacks** page, in either the **Spear Phishing (Credentials Harvest)** or **Spear Phishing (Attachment)** sections, click **Attack Details**.

3. In the **Attack details** page that opens, in the **Phishing Templates** section, in the **Create Templates** area, click **New Template**.

4. The **Configure Phishing Template** wizard starts in a new flyout. On the **Start** step, configure a unique display name for the template, and then click **Next**.

5. On the **Configure email details** step, configure the following settings:

   - **From (Name)**: This is the display name that's used for the message sender.

   - **From (Email)**: This is the sender's email address.

   - **Phishing Login Server URL**: Click the drop down and select one of the available URLs from the list. In **Spear phishing (credentials harvest)** campaigns, this is the malicious URL that users will be tempted to click. This value isn't used in **Spear phishing (attachment)** campaigns.

   - **Custom Landing Page URL**: You can enter an optional landing page where users are taken at the end of a successful attack. For example, if you have internal awareness training, you can specify that URL here.

   - **Category**: Currently, this setting isn't used (anything you enter here will be ignored).

   - **Subject**: The **Subject** field of the email message.

   When you're finished, click **Next**.

6. On the **Compose email** step, create the message body of the email message. You can use the **Email** tab (a rich HTML editor) or the **Source** tab (raw HTML code).

   - `${username}` inserts the recipient's name.

   - `${loginserverurl}` inserts the **Phishing Login Server URL** value from the previous step.

   When you're finished, click **Next**.

7. On the **Confirm** step, click **Finish**.

#### Step 2: Create the spear phishing campaign

1. In the Security & Compliance Center, go to **Threat management** \> **Attack simulator**.

### Create a simulated spear phishing (credentials harvest) attack

![Compose Email Body](../../media/9bd65af4-1f9d-45c1-8c06-796d7ccfd425.jpg)

You can craft the rich HTML editor directly in the **Email body** field itself or work with HTML source.

1. In the [Security & Compliance Center](https://protection.office.com), choose **Threat management** \> **Attack simulator**.

2. Specify a meaningful campaign name for the attack or select a template.

   ![Phishing Start Page](../../media/5e93b3cc-5981-462f-8b45-bdf85d97f1b8.jpg)

3. Specify the target recipients. This can be individuals or groups in your organization. Each targeted recipient must have an Exchange Online Mailbox in order for the attack to be successful.

   ![Recipient Selection](../../media/faf8c2e0-6175-4cd7-8265-0c8e727f4d0f.jpg)

4. Configure the Phishing email details.

   ![Configure email details](../../media/f043608f-f8ce-4aae-be28-86e8ecc524a9.jpg)

   The HTML formatting can be as complex or basic as your campaign needs. As the email format is HTML, you can insert images and text to enhance believability. You have control on what the received message will look like in the receiving email client.

5. Specify text for the **From (Name)** field. This is the field that shows in the **Display Name** in the receiving email client.

6. Specify text or the **From** field. This is the field that shows as the email address of the sender in the receiving email client.

   You can enter an existing email namespace within your organization (doing this will make the email address actually resolve in the receiving client, facilitating a very high trust model), or you can enter an external email address. The email address that you specify does not have to actually exist, but it does need to follow the format of a valid SMTP address, such as `user@domainname.extension`.

7. Using the drop-down selector, select a Phishing Login server URL that reflects the type of content you will have within your attack. Several themed URLs are provided for you to choose from, such as document delivery, technical, payroll etc. This is effectively the URL that targeted users are asked to click.

8. Specify a custom landing page URL. Using this will redirect users to a URL you specify at the end of a successful attack. If you have internal awareness training, for example, you can specify that here.

9. Specify text for the **Subject** field. This is the field that shows as the **Subject Name** in the receiving email client.

10. Compose the **Email body** that the target will receive.

    `${username}` inserts the targets name into the Email body.

    `${loginserverurl}` inserts the URL we want target users to click

11. Choose **Next,** then **Finish** to launch the attack. The spear phishing email message is delivered to your target recipients' mailboxes.

## Attachment spear phishing attack

*Phishing* is a generic term for email attacks that try to steal sensitive information in messages that appear to be from legitimate or trusted senders. *Spear phishing* is a targeted phishing attack that uses very focused and customized content that's specifically tailored to the targeted recipients (typically, after reconnaissance on the selected recipients).

In Attack Simulator, this attack tries to convince the recipients to open a malicious attachment in the message.

For more information about phishing and spear phishing, see [Phishing](https://docs.microsoft.com/windows/security/threat-protection/intelligence)

### To simulate a Attachment spear-phishing attack

1. Follow the steps from above, having this time clicked on **Attachment Attack** on the landing page.

2. As you progress through the wizard, you see two options to configure. The **Attachment Type**, we support two attachment types, **.docx** or **.pdf**. The **Attachment Name**, use this field to create a meaningful attachment name for the campaign.

## Brute force password attack

A brute-force password attack against an organization is typically used after a bad actor has successfully acquired a list of key users from the tenant. This attack focuses on trying a set of passwords on a single user's account.

**Important Note** running the brute-force password attacks against end user accounts that already have multi-factor authentication, will result in a unsuccessful attempt for those accounts in the reporting. This is due to multi-factor authentication being one of the primary mechanisms to help protect against brute-force password attacks, so is expected.

### To simulate a brute force password attack

1. In the [Security & Compliance Center](https://protection.office.com), choose **Threat management** \> **Attack simulator**.

2. Specify a meaningful campaign name for the attack.

3. Specify the target recipient. A targeted recipient must have an Exchange Online mailbox in order for the attack to be successful.

4. Specify a set of passwords to use for the attack. To do this, you can use a text (.txt) file for your list of passwords. The text file cannot exceed 10 MB in file size. Use one password per line, and make sure to include a hard return after the last password in your list.

5. Choose **Finish** to launch the attack.

Visit the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap) to see what's in development, what's rolling out, and what's already launched.

## Password spray attack

A password spray attack against an organization is typically used after a bad actor has successfully acquired a list of valid users from the tenant. The bad actor knows about common passwords that people use. This is a widely used attack, as it is a cheap attack to run, and harder to detect than brute force approaches.

This attack focuses on letting you specify a common password against a large target base of users.

**Important Note** running the password spray attack against end user accounts that already have multi-factor authentication, will result in a unsuccessful attempt for those accounts in the reporting. This is due to multi-factor authentication being one of the primary mechanisms to help protect against password spray attacks, so is expected.

### To simulate a password-spray attack

1. In the [Security & Compliance Center](https://protection.office.com), choose **Threat management** \> **Attack simulator**.

2. Specify a meaningful campaign name for the attack.

3. Specify the target recipients. This can be individuals or groups in your organization. A targeted recipient must have an Exchange Online mailbox in order for the attack to be successful.

4. Specify a password to use for the attack. For example, one common, relevant password you could try is `Summer2019`. Another might be `Fall2019`, or `Password1`.

5. Choose **Finish** to launch the attack.

## See also

[Office 365 Advanced Threat Protection Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description)

[Office 365 Advanced Threat Protection](office-365-atp.md)
