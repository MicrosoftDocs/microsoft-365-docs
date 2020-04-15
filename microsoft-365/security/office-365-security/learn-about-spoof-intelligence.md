---
title: "Configure spoof intelligence"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MOE150
- MET150
ms.assetid: 978c3173-3578-4286-aaf4-8a10951978bf
ms.collection:
- M365-security-compliance
description: ""
---

# Configure spoof intelligence in Office 365

If you're an Office 365 customer with mailboxes in Exchange Online or a standalone Exchange Online Protection (EOP) customer without Exchange Online mailboxes, inbound email messages are automatically protected against spoofing by EOP as of October 2018. EOP uses spoof intelligence as part of your organization's overall defense against phishing. For more information, see [Anti-spoofing protection in Office 365](anti-spoofing-protection.md).

When a sender spoofs an email address, they appear to be a user in one of your organization's domains, or a user in an external domain that sends email to your organization. Attackers who spoof senders to send spam or phishing email need to be blocked. But there are scenarios where legitimate senders are spoofing senders. For example:

- Legitimate scenarios for spoofing internal domains:

  - Third-party senders use your domain to send bulk mail to your own employees for company polls.

  - An external company generates and sends advertising or product updates on your behalf.

  - An assistant regularly needs to send email for another person within your organization.

  - An internal application sends email notifications.

- Legitimate scenarios for spoofing external domains:

  - The sender is on a mailing list (also known as a discussion list), and the mailing list relays email from the original sender to all the participants on the mailing list.

  - An external company sends email on behalf of another company (for example, an automated report or a software-as-a-service company).

Spoof intelligence, and specifically the default (and only) spoof intelligence policy, helps ensure that the spoofed email sent by legitimate senders doesn't get caught up in spam filters in Office 365 or external email systems, while protecting your users from spam or phishing attacks.

You can manage spoof intelligence in the Office 365 Security & Compliance Center, or in PowerShell (Exchange Online PowerShell for Office 365 customers; Exchange Online Protection PowerShell for standalone EOP customers).

For domains you own, you can review senders who are spoofing your domain and allow the sender or block the sender.

For external domains, you can allow the sender domain combined with the sending infrastructure, although not an individual sending email address. The sending infrastructure is the domain found in a reverse DNS lookup (PTR record) of the source IP address, or the IP address if the source has no PTR record.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Anti-spam settings** page, use <https://protection.office.com/antispam>. To go directly to the **Anti-phishing** page, use <https://protection.office.com/antiphishing>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell). To connect to standalone Exchange Online Protection PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can perform these procedures. To modify the spoof intelligence policy or enable or disable spoof intelligence, you need to be a member of the **Organization Management** or **Security Administrator** role groups. For read-only access to the spoof intelligence policy, you need to be a member of the **Security Reader** role group. For more information about role groups in the Security & Compliance Center, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

- For our recommended settings for spoof intelligence, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365-atp.md#eop-anti-spam-policy-settings).


## Managing spoof intelligence in the Security & Compliance Center

The spoof intelligence policy you set up is always enforced by Office 365. You cannot disable it, but you can choose how much you want to actively manage it.

You can review the senders who are spoofing your domain, or external domains, and then decide whether each sender should be allowed to do so by using the Security & Compliance Center. For each spoofed user account that a sender spoofs from your domain or an external domain, you can view the information in the following table.

|**Parameter**|**Description**|
|:-----|:-----|
|Sender|Also called the true sender. This is usually the domain from which the spoof email originates. Office 365 determines the domain of the pointer (PTR) DNS record of the sending IP address that is spoofing your organization. If no domain is found, the report displays the sender's IP address instead.|
|Spoofed user|The user account that is being spoofed by the sender.  <br/> **Internal** tab only. This field contains a single email address, or if the sender is spoofing multiple user accounts, it contains **More than one**.  <br/> **External** tab only. External domains only contain a sending domain, and do not contain a full email address.  <br/> **Tip! For advanced admins.** The spoofed user is the From (5322.From) address which is also the address displayed as the From address by the mail client. This is sometimes called the header.from address. The validity of this address is not checked by SPF.|
|Number of messages|The number of mail messages sent by the sender to your organization on behalf of the identified spoofed sender or senders within the last 30 days.|
|Number of user complaints|Complaints filed by users against this sender by your users within the last 30 days. Complaints are usually in the form of junk submissions to Microsoft.|
|Authentication result|This value is **Passed** if the sender passed Exchange Online Protection (EOP) sender authentication checks, such as SPF or DKIM, **Failed** if the sender failed EOP sender authentication checks, or **Unknown** if the result of these checks isn't known.|
|Decision set by|Shows whether the Office 365 administrator or the spoof intelligence policy determined whether or not the sender is allowed to spoof the user.|
|Last seen|The last date on which a message was received by this sender on behalf of this spoofed user.|
|Allowed to spoof?| Displays whether or not this sender is allowed to send email on behalf of the spoofed user. Possible values include:  <br/> **Yes** All spoofed addresses from this spoofing sender will be allowed to spoof your organization.  <br/> **No** Spoofed addresses from this spoofing sender won't be allowed to spoof your organization. Instead, messages from this sender will be marked as spam by Office 365.  <br/> **Some users** If a sender is spoofing multiple users, some spoofed addresses from this sender will be allowed to spoof your organization, the rest will be marked as spam. Use the **Detailed** tab to see the specific addresses.|
|Spoof Type|This value is **Internal** if the domain is one of your organization's provisioned domains, otherwise the value is **External**.|

### Use the Security & Compliance Center to manage spoofed senders

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click ![Expand icon](../../media/scc-expand-icon.png) to expand **Spoof intelligence policy**.

   ![Select the spoof intelligence policy](https://user-images.githubusercontent.com/41186174/71801032-6228f100-3062-11ea-8461-682b910418c2.png)

3. Make one of the following selections:

   - **Review new senders**
   - **Show me senders I already reviewed**

4. In the **Decide if these senders are allowed to spoof your users** flyout that appears, select one of the following tabs:

   - **Your Domains**: Senders spoofing users in your internal domains
   - **External Domains**: Senders spoofing users in external domains.

5. X
   - **Sender**: Also called the true sender. This is usually the domain from which the spoof email originates. Office 365 determines the domain of the pointer (PTR) DNS record of the sending IP address that is spoofing your organization. If no domain is found, the report displays the sender's IP address instead.

   - **Spoofed user**: The user account that's being spoofed by the sender.

     - **Internal** tab only: This field contains a single email address, or if the sender is spoofing multiple user accounts, it contains **More than one**.

     - **External** tab only: External domains only contain a sending domain, and do not contain a full email address.

     **Tip! For advanced admins**: The spoofed user is the From (5322.From) address which is also the address displayed as the From address by the mail client. This is sometimes called the header.from address. The validity of this address is not checked by SPF.

- **Number of messages**: The number of mail messages sent by the sender to your organization on behalf of the identified spoofed sender or senders within the last 30 days.

- **Number of user complaints**: Complaints filed by users against this sender by your users within the last 30 days. Complaints are usually in the form of junk submissions to Microsoft.

- **Authentication result**: This value is **Passed** if the sender passed sender email authentication checks, such as SPF or DKIM, **Failed** if the sender failed EOP sender authentication checks, or **Unknown** if the result of these checks isn't known.

- **Decision set by**: Shows whether the Office 365 administrator or the spoof intelligence policy determined whether or not the sender is allowed to spoof the user.

- **Last seen**: The last date on which a message was received by this sender on behalf of this spoofed user.

- **Allowed to spoof?**:  Displays whether or not this sender is allowed to send email on behalf of the spoofed user. Valid values are:

  - **Yes** All spoofed addresses from this spoofing sender will be allowed to spoof your organization.
  - **No** Spoofed addresses from this spoofing sender won't be allowed to spoof your organization. Instead, messages from this sender will be marked as spam by Office 365.
  - **Some users** If a sender is spoofing multiple users, some spoofed addresses from this sender will be allowed to spoof your organization, the rest will be marked as spam. Use the **Detailed** tab to see the specific addresses.

-**Spoof Type**: This value is **Internal** if the domain is one of your organization's provisioned domains, otherwise the value is **External**.

    ![Screenshot showing access to the spoofed senders tab](../../media/c0c062fd-f4a4-4d78-96f7-2c22009052bb.jpg)

    Each spoofed user is displayed in a separate row so that you can choose whether to allow or block the sender from spoofing each user individually.

    To add a sender to the allow list for a user, select **Yes** from the **Allowed to spoof** column. To add a sender to the block list for a user, choose **No**.

    To set the policy for domains you do not own, select the **External Domains** tab. Change any sender to **Yes** in the **Allowed to Spoof** column to permit that sender to send unauthenticated email into your organization. Alternatively, if you think Office 365 has made a mistake in permitting the sender to send spoofed email, change the **Allowed to spoof** column to **No**.

    ![Screenshot showing whether a sender is allowed to spoof](../../media/5dbef9cf-103f-49cd-9638-4b0083d6baa7.jpg)

6. Choose **Save** to save any changes.

If you have an Office 365 Enterprise E5 subscription or have separately purchased Advanced Threat Protection as an add-on, you can also manage senders who are spoofing your domain through the [Spoof Intelligence insight](walkthrough-spoof-intelligence-insight.md).

## Configuring the anti-spoofing policy

In addition to allowing or blocking a particular sender from sending spoofed email into your organization, you can also configure how strict you want the filter to be, and the action to take when a spoofing message is found.

Anti-spoofing protection is applied to email from senders from domains that are external to your Office 365 organization. You can apply the policy to recipients whose mailboxes are licensed for Office 365 Enterprise E5, Advanced Threat Protection and as of October, 2018 EOP customers as well. You manage the anti-spoofing policy along with the other anti-phishing settings. For more information about anti-phishing settings, see [Set up Office 365 ATP anti-phishing and anti-phishing policies](set-up-anti-phishing-policies.md).

Office 365 includes default anti-spoofing protection that's always running. This default protection is not visible in the Security & Compliance Center or retrievable through Windows PowerShell cmdlets. You can't modify the default anti-spoofing protection. Instead, you can configure how strictly Office 365 enforces the anti-spoofing protection in each anti-phishing policy that you create.

Even though the anti-spoofing policy appears under the anti-phishing policy in the Security & Compliance Center, it does not inherit its default behavior from the existing phishing setting under the Anti-spam configuration. If you have settings under **Anti-spam** \> **Phishing** that you want to replicate for anti-spoofing, you will need to create an anti-phishing policy, then edit the spoof portion of the anti-phishing policy to reflect your spoof settings as described in the following section, rather than accepting the default settings that run in the background.

### To configure anti-spoofing protection within an anti-phishing policy by using the Security & Compliance Center

1. Go to the [Security & Compliance Center](https://protection.office.com).

2. Sign in to Office 365 with your work or school account. Your account must have administrator credentials in your Office 365 organization.

3. In the Security & Compliance Center, expand **Threat Management** \> **Policy** \> **Anti-phishing**.

4. On the **Anti-phishing** page in the right pane, select the anti-phishing policy you want to configure.

5. On the page that appears, in the **Spoof** row, choose **Edit**.

6. Next, configure the actions to take when a message is detected as a cross-domain spoof. The default behavior is to move the message to the recipient's junk email folder. The other option is to send the message to the quarantine. For more information about managing messages sent to quarantine, see [Quarantine email messages in Office 365](quarantine-email-messages.md).

   ![Screenshot showing anti-spoofing policy edit options](../../media/7a868dff-2c4b-46b9-88ca-f2d523ca2307.jpg)

7. Make your choice and then choose **Save**.

## Other ways to manage spoofing and phishing with Office 365

Be diligent about spoofing and phishing protection. Here are related ways to check on senders spoofing your domain and help prevent them from damaging your organization:

- Check the Exchange Online Protection spoof mail report as part of your routine. You can use this report often to view and help manage spoofed senders. For information, see **Spoof mail report** in [Use mail protection reports in Office 365 to view data about malware, spam, and rule detections](https://docs.microsoft.com/exchange/monitoring/use-mail-protection-reports).

For more advanced Office 365 admins, you can also complete these checks:

- Review your Sender Policy Framework (SPF) configuration. For a quick introduction to SPF and to get it configured quickly, see [Set up SPF in Office 365 to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md). For a more in-depth understanding of how Office 365 uses SPF, or for troubleshooting or non-standard deployments such as hybrid deployments, start with [How Office 365 uses Sender Policy Framework (SPF) to prevent spoofing](how-office-365-uses-spf-to-prevent-spoofing.md).

- Review your DomainKeys Identified Mail (DKIM) configuration. You should use DKIM in addition to SPF and DMARC to help prevent spoofers from sending messages that look like they are coming from your domain. DKIM lets you add a digital signature to email messages in the message header. For information, see [Use DKIM to validate outbound email sent from your custom domain in Office 365](use-dkim-to-validate-outbound-email.md).

- Review your Domain-based Message Authentication, Reporting, and Conformance (DMARC) configuration. Implementing DMARC with SPF and DKIM provides additional protection against spoofing and phishing email. DMARC helps receiving mail systems determine what to do with messages sent from your domain that fail SPF or DKIM checks. For information, see [Use DMARC to validate email in Office 365](use-dmarc-to-validate-email.md).

- Use the [Get-PhishFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/advanced-threat-protection/get-phishfilterpolicy) cmdlet in Exchange Online PowerShell or Exchange Online Protection PowerShell to gather detailed data on spoofed senders, generate allow and block lists, and help you determine how to generate more comprehensive SPF, DKIM, and DMARC DNS records without having your legitimate email get caught in external spam filters. For more information, see [How antispoofing protection works in Office 365](https://blogs.msdn.microsoft.com/tzink/2016/02/23/how-antispoofing-protection-works-in-office-365/).

You can also use PowerShell to allow specific sender to spoof your domain:

```powershell
$file = "C:\My Documents\Summary Spoofed Internal Domains and Senders.csv"
Get-PhishFilterPolicy -Detailed -SpoofAllowBlockList -SpoofType External | Export-CSV $file
```

![Getting spoofed senders from Powershell](../../media/0e27ffcf-a5db-4c43-a19b-fa62326d5118.jpg)

In the previous image, additional line breaks have been added to make this screenshot fit. Normally, all the values would appear on a single line.

Edit the file and look for the line that corresponds to outlook.com and bing.com, and change the AllowedToSpoof entry from No to Yes:

![Setting spoof allow to Yes in Powershell](../../media/62340452-62d3-4958-9ce9-afe5275a870d.jpg)

Save the file, and then run:

```powershell
$UpdateSpoofedSenders = Get-Content -Raw "C:\My Documents\Spoofed Senders.csv"
Set-PhishFilterPolicy -Identity Default -SpoofAllowBlockList $UpdateSpoofedSenders
```

This will now allow bing.com to send unauthenticated email from \*.outlook.com.
