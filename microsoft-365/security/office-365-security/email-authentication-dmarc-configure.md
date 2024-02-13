---
title: Use DMARC to validate email, setup steps
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: ITPro
ms.topic: conceptual
ms.date: 1/29/2024
ms.localizationpriority: high
search.appverid:
  - MET150
ms.assetid: 4a05898c-b8e4-4eab-bd70-ee912e349737
ms.collection:
  - m365-security
  - tier1
description: Learn how to configure Domain-based Message Authentication, Reporting, and Conformance (DMARC) to validate messages sent from your organization.
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Set up DMARC to validate the From address domain for senders in Microsoft 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Domain-based Message Authentication, Reporting and Conformance (DMARC) is a method of [email authentication](email-authentication-about.md) that helps validate mail sent from your Microsoft 365 organization to prevent spoofed senders that are used in business email compromise (BEC), ransomware, and other phishing attacks.

You enable DMARC for a domain by creating a TXT record in DNS. DMARC validation of an email message involves the following elements:

- **Verify the domains in the MAIL FROM and FROM addresses align**: [SPF](email-authentication-spf-configure.md) and [DKIM](email-authentication-dkim-configure.md) don't require the domains in the following email addresses to "align" (match):
  - **The MAIL FROM address**: The email address that's used in the transmission of the message between SMTP email servers. This address is also known as the `5321.MailFrom` address, P1 sender, or envelope sender.
  - **The From address**: The email address in the **From** header field that's shown as the message sender in email clients. This address is also known as the `5322.From` address or P2 sender.

   For more information about how these email addresses can be in different domains and used for spoofing, see [Why internet email needs authentication](email-authentication-about.md#why-internet-email-needs-authentication).

  - DMARC uses the result from SPF to verify both of the following conditions:
    - The message came from an authorized source for the domain that's used in the MAIL FROM address (the basic requirement of SPF).
    - The domains in the MAIL FROM and From addresses in the message are aligned. This result effectively requires that valid sources for the message must be in the From address domain.

  - DMARC uses the result from DKIM to verify the domain that signed the message (the **d=** value in a **DKIM-Signature** header field as validated by the **s=** selector value) aligns with the domain in the From address.

  A message passes DMARC if one or both of the described SPF or DKIM checks pass. A message fails DMARC if both of the described SPF or DKIM checks fail.

- **DMARC policy**: Specifies what to do with messages that fail DMARC (reject, quarantine, or no instruction).

- **DMARC reports**: Specifies where to send Aggregate reports (a periodic summary of positive and negative DMARC results) and Forensic reports (also known as _Failure reports_; nearly immediate DMARC failure results similar to a non-delivery report or bounce message).

Before we get started, here's what you need to know about DMARC in Microsoft 365 based on your email domain:

- **If you use only the Microsoft Online Email Routing Address (MOERA) domain for email (for example, contoso.onmicrosoft.com)**: Although SPF and DKIM are already configured for your \*.onmicrosoft.com domain, you need to create the DMARC TXT record for the \*.onmicrosoft.com domain in the Microsoft 365 admin center. For instructions, see [this section](#use-the-microsoft-365-admin-center-to-add-dmarc-txt-records-for-onmicrosoftcom-domains-in-microsoft-365) later in this article. For more information about \*.onmicrosoft.com domains, see [Why do I have an "onmicrosoft.com" domain?](/microsoft-365/admin/setup/domains-faq#why-do-i-have-an--onmicrosoft-com--domain).

- **If you use one or more custom domains for email (for example, contoso.com)**: If you haven't already, you need to configure SPF for all custom domains and subdomains that you use for email. You also need to configure DKIM signing using the custom domain or subdomain so the domain that's used to sign the message aligns with the domain in the From address. For instructions, see the following articles:
  - [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md)
  - [Use DKIM to validate outbound mail from your custom domain](email-authentication-dkim-configure.md)

  After that, you also need to configure the DMARC TXT records for your custom domains as described in this article. You also have the following considerations:

  - **Subdomains**:
    - For email services that aren't under your direct control (for example, bulk email services), we recommend using a subdomain (for example, marketing.contoso.com) instead of your main email domain (for example, contoso.com). You don't want issues with mail sent from those email services to affect the reputation of mail sent by employees in your main email domain. For more information about adding subdomains, see [Can I add custom subdomains or multiple domains to Microsoft 365?](/microsoft-365/admin/setup/domains-faq#can-i-add-custom-subdomains-or-multiple-domains-to-microsoft-365).
    - Unlike SPF and DKIM, the DMARC TXT record for a domain automatically covers all subdomains (including nonexistent subdomains) that don't have their own DMARC TXT record. In other words, you can disrupt the inheritance of DMARC on a subdomain by creating a DMARC TXT record in that subdomain. But, each subdomain requires an SPF and DKIM record for DMARC.

  - **If you own registered but unused domains**: If you own registered domains that aren't used for email or anything at all (also known as _parked domains_), configure the DMARC TXT records in those domains to specify that no email should ever come from those domains. **This directive includes the \*.onmicrosoft.com domain if you aren't using it for email**.

- **DMARC checks for _inbound_ mail might need help**: If you use an email service that modifies messages in transit before delivery into Microsoft 365, you can identify the service as a trusted ARC sealer so the modified messages don't automatically fail DMARC checks. For more information, see the [Next Steps](#next-steps) section at the end of this article.

The rest of this article describes the DMARC TXT record that you need to create for domains in Microsoft 365, the best way to gradually and safely set up DMARC for custom domains in Microsoft 365, and how Microsoft 365 uses DMARC on _inbound_ mail.

> [!TIP]
> To create the DMARC TXT record for your **\*.onmicrosoft.com domain** in the Microsoft 365 admin center, see [this section](#use-the-microsoft-365-admin-center-to-add-dmarc-txt-records-for-onmicrosoftcom-domains-in-microsoft-365) later in this article.
>
> There are no admin portals or PowerShell cmdlets in Microsoft 365 for you to manage DMARC TXT records in your **custom** domains. Instead, you create the DMARC TXT record at your domain registrar or DNS hosting service (often the same company).
>
> We provide instructions to create the proof of domain ownership TXT record for Microsoft 365 at many domain registrars. You can use these instructions as a starting point to create DMARC TXT records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).
>
> If you're unfamiliar with DNS configuration, contact your domain registrar and ask for help.

## Syntax for DMARC TXT records

DMARC TXT records are exhaustively described in [RFC 7489](https://datatracker.ietf.org/doc/html/rfc7489).

The basic syntax of the DMARC TXT record for a domain in Microsoft 365 is:

**Hostname**: `_dmarc`<br/>
**TXT value**: `v=DMARC1; <DMARC policy>; <Percentage of DMARC failed mail subject to DMARC policy>; <DMARC reports>`

Or

**Hostname**: `_dmarc`<br/>
**TXT value**: `v=DMARC1; p=<reject | quarantine | none>; pct=<0-100>; rua=mailto:<DMARCAggregateReportURI>; ruf=mailto:<DMARCForensicReportURI>`

For example:

**Hostname**: `_dmarc`<br/>
**TXT value**: `v=DMARC1; p=reject; pct=100; rua=mailto:rua@contoso.com; ruf=mailto:ruf@contoso.com`

- The hostname value `_dmarc` is required.

- `v=DMARC1;` identifies the TXT record as a DMARC TXT record.

- **DMARC policy**: Tells the destination email system what to with messages that fail DMARC as described earlier in this article:
  - `p=reject`: The messages should be rejected. What actually happens to the message depends on the destination email system, but the messages are typically discarded.
  - `p=quarantine`: The messages should be accepted but marked. What actually happens to the message depends on the destination email system. For example, the message might be quarantined as spam, delivered to the Junk Email folder, or delivered to the Inbox with an identifier added to the Subject or message body.
  - `p=none`: No suggested action for messages that fail DMARC. What happens to the message depends on the email protection features in the destination email system. You use this value for [testing and tuning of the DMARC policy](#set-up-dmarc-for-active-custom-domains-in-microsoft-365) as described later in this article.

  > [!TIP]
  > Outbound mail from domains in Microsoft 365 that fail DMARC checks by the destination email service is routed through the [High-risk delivery pool for outbound messages](outbound-spam-high-risk-delivery-pool-about.md) if the DMARC policy for the domain is `p=reject` or `p=quarantine`. There's no override for this behavior.

- **Percentage of failed DMARC mail subject to DMARC policy**: Tells the destination email system how many messages that fail DMARC (percentage) get the DMARC policy applied to them. For example, `pct=100` means all messages that fail DMARC get the DMARC policy applied to them. You use values less than 100 for [testing and tuning of the DMARC policy](#set-up-dmarc-for-active-custom-domains-in-microsoft-365) as described later in this article. If you don't use `pct=`, the default value is `pct=100`.

- **DMARC reports**:
  - **DMARC Aggregate report URI**: The `rua=mailto:` value identifies where to send the DMARC Aggregate report. The Aggregate report has the following properties:
    - The email messages that contain the Aggregate report are typically sent once per day (the report contains the DMARC results from the previous day). The Subject line contains the destination domain that sent the report (Submitter) and the source domain for the DMARC results (Report Domain).
    - The DMARC data is in an XML email attachment that's likely GZIP compressed. The XML schema is defined in [Appendix C of RFC 7489](https://datatracker.ietf.org/doc/html/rfc7489#appendix-C). The report contains the following information:
      - The IP addresses of servers or services that send mail using your domain.
      - Whether the servers or services pass or fail DMARC authentication.
      - The actions that DMARC takes on mail that fails DMARC authentication (based on the DMARC policy).

    > [!TIP]
    > The information in the Aggregate report can be vast and difficult to parse. To help make sense of the data, you can use the following options for DMARC reporting:
    >
    > - Create automation using PowerShell or Microsoft Power BI.
    > - Use an external service. For a list of services, search for DMARC in the Microsoft Intelligent Security Association (MISA) Catalog at <https://www.microsoft.com/misapartnercatalog>. The DMARC reporting services describe any custom values that are required in the DMARC TXT record.

  - **DMARC Forensic report URI**: The `ruf=mailto:` value identifies where to send the DMARC Forensic report (also known as the DMARC Failure report). The report is generated and sent immediately after a DMARC failure like a non-delivery report (also known as an NDR or bounce message).

  > [!TIP]
  > You should regularly review the DMARC Aggregate reports to monitor where email from your domains is coming from, and to check for unintentional DMARC failures (false positives).
  >
  > Individual destination email systems are responsible for sending DMARC reports back to you. The amount and variety of DMARC reports varies in the same way that the volume and variety of mail sent from your organization varies. For example, expect lower mail volume during holidays, and higher mail volume during organizational events. It's best to designate specific people to monitor DMARC reports, and to use a specific mailbox or Microsoft 365 Group to receive the DMARC reports (don't deliver the reports to a user's mailbox).

For more information about DMARC, use the following resources:

- The [DMARC Training Series](https://www.m3aawg.org/activities/training/dmarc-training-series) from M<sup>3</sup>AAWG (Messaging, Malware, Mobile Anti-Abuse Working Group).
- The checklist at [dmarcian](https://space.dmarcian.com/deployment/).
- Information at [DMARC.org](https://dmarc.org).

## Use the Microsoft 365 admin center to add DMARC TXT records for \*.onmicrosoft.com domains in Microsoft 365

1. In the Microsoft 365 admin center at <https://admin.microsoft.com>, select **Show all** \> **Settings** \> **Domains**. Or, to go directly to the **Domains** page, use <https://admin.microsoft.com/Adminportal/Home#/Domains>.

2. On the **Domains** page, select the \*.onmicrosoft.com domain from the list by clicking anywhere in the row other than the check box next to the domain name.

3. On the domain details page that opens, select the **DNS records** tab.

4. On the **DNS records** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add record**.

5. On the **Add a custom DNS record** flyout that opens, configure the following settings:
   - **Type**: Verify that **TXT (Text)** is selected.
   - **TXT name**: Enter `_dmarc`.
   - **TXT value**: Enter `v=DMARC1; p=reject`.

     > [!TIP]
     > To specify destinations for the DMARC Aggregate and DMARC Forensic reports, use the syntax `v=DMARC1; p=reject rua=mailto:<emailaddress>; ruf=mailto:<emailaddress>`. For example, `v=DMARC1; p=reject rua=mailto:rua@contoso.onmicrosoft.com; ruf=mailto:ruf@contoso.onmicrosoft.com`.
     >
     > DMARC reporting vendors in the MISA Catalog at <https://www.microsoft.com/misapartnercatalog> make it easier to view and interpret DMARC results.

   - **TTL**: Verify that **1 hour** is selected.

   When you're finished on the **Add a custom DNS record** flyout, select **Save**.

## Set up DMARC for active custom domains in Microsoft 365

> [!TIP]
> As mentioned previously in this article, you need to [create SPF TXT records](email-authentication-spf-configure.md#spf-txt-records-for-custom-domains-in-microsoft-365) and [configure DKIM signing](email-authentication-dkim-configure.md#use-the-defender-portal-to-enable-dkim-signing-of-outbound-messages-using-a-custom-domain) for all custom domains and subdomains that you use to send email in Microsoft 365 _before_ you configure DMARC for custom domains or subdomains.

We recommend a gradual approach to setting up DMARC for your Microsoft 365 domains. The goal is to get to a `p=reject` DMARC policy for all of your custom domains and subdomains, but you need to test and verify along the way to prevent destination email systems from rejecting good mail because of unintentional DMARC failures.

Your DMARC roll-out plan should use the following steps. Start with a domain or subdomain with low mail volume and/or fewer potential email sources (less chance of legitimate mail from unknown sources being blocked):

1. Start with a DMARC policy of `p=none` and monitor the results for the domain. For example:

   **DMARC TXT record for marketing.contoso.com**:

   **Hostname**: `_dmarc`<br/>
   **TXT value**: `v=DMARC1; p=none; pct=100; rua=mailto:rua@marketing.contoso.com; ruf=mailto:ruf@marketing.contoso.com`

   The DMARC Aggregate and DMARC Forensic reports give the numbers and sources of messages that pass and fail DMARC checks. You can see how much of your legitimate mail traffic is or isn't covered by DMARC, and troubleshoot any problems. You can also see how many fraudulent messages are being sent, and where they're sent from.

2. Increase the DMARC policy to `p=quarantine` and monitor the results for the domain.

   After enough time monitoring the effects of `p=none`, you can increase the DMARC policy to `p=quarantine` for the domain. For example:

   **DMARC TXT record for marketing.contoso.com**:

   **Hostname**: `_dmarc`<br/>
   **TXT value**: `v=DMARC1; p=quarantine; pct=100; rua=mailto:rua@marketing.contoso.com; ruf=mailto:ruf@marketing.contoso.com`

   You can also use the `pct=` value to gradually affect more messages and verify the results. For example, you can move in the following increments:

   - `pct=10`
   - `pct=25`
   - `pct=50`
   - `pct=75`
   - `pct=100`

3. Increase the DMARC policy to `p=reject` and monitor the results for the domain.

   After enough time monitoring the effects of `p=quarantine`, you can increase the DMARC policy to `p=reject` for the domain. For example:

   **DMARC TXT record for marketing.contoso.com**:

   **Hostname**: `_dmarc`<br/>
   **TXT value**: `v=DMARC1; p=reject; pct=100; rua=mailto:rua@marketing.contoso.com; ruf=mailto:ruf@marketing.contoso.com`

   You can also use the `pct=` value to gradually affect more messages and verify the results.

4. Repeat the previous three steps for the remaining subdomains of increasing volume and/or complexity, saving the parent domain for last.

   > [!TIP]
   > Blocking legitimate email in any significant volume is unacceptable to users, but it's almost inevitable that you're going to get some false positives. Go slowly and methodically deal with issues that are revealed in DMARC reporting. DMARC reporting vendors in the MISA Catalog at <https://www.microsoft.com/misapartnercatalog> make it easier to view and interpret the DMARC results.

5. As described earlier, subdomains inherit the DMARC TXT record settings of the parent domain, which can be overridden by a separate DMARC TXT record in the subdomain. When you're finished setting up DMARC in a domain and all subdomains, and the DMARC settings are effectively identical for the parent domain and all subdomains, you can eliminate the DMARC TXT records in the subdomains and rely on the single DMARC TXT record in the parent domain.

## DMARC TXT records for parked domains in Microsoft 365

> [!TIP]
> The recommended SPF TXT record for parked domains that don't send mail is described in [SPF TXT records for custom domains in Microsoft 365](email-authentication-spf-configure.md#spf-txt-records-for-custom-domains-in-microsoft-365). As described in [Set up DKIM to sign mail from your Microsoft 365 domain](email-authentication-dkim-configure.md), we don't recommend DKIM CNAME records for parked domains.

1. If you have registered domains that no one on the internet should expect to receive mail from, create the following DMARC TXT record at the domain registrar for the domain:

   **Hostname**: `_dmarc`<br/>
   **TXT value**: `v=DMARC1; p=reject;`

   - The `pct=` value isn't included, because the default value is `pct=100`.
   - The `rua=mailto:` and `ruf=mailto:` values are arguably not needed in this scenario, because no valid mail should ever come from senders in the domain.

2. If you don't use the \*.onmicrosoft.com domain to send mail, you also need to [add the DMARC TXT record for your \*.onmicrosoft.com domain](#use-the-microsoft-365-admin-center-to-add-dmarc-txt-records-for-onmicrosoftcom-domains-in-microsoft-365).

## DMARC for inbound mail into Microsoft 365

- DMARC checks on mail coming into Microsoft 365 are affected by the following features in Exchange Online Protection (EOP):
  - Whether [spoof intelligence](anti-phishing-policies-about.md#spoof-settings) is enabled or disabled in the anti-phishing policy that checked the message. Disabling spoof intelligence disables _implicit_ spoofing protection from [composite authentication](email-authentication-about.md#composite-authentication) checks only.
  - Whether the **Honor DMARC record policy when the message is detected as spoof** setting is enabled or disabled in the anti-phishing policy that checked the message, and the specified actions based on the DMARC policy of the source domain (`p=quarantine`, or `p=reject` in the DMARC TXT record).

  For complete information, see [Spoof protection and sender DMARC policies](anti-phishing-policies-about.md#spoof-protection-and-sender-dmarc-policies).

  To see the default values for these settings in anti-phishing policies, check the setting values in the table at [EOP anti-phishing policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-phishing-policy-settings).

- Microsoft 365 doesn't send DMARC Forensic reports (also known as DMARC Failure reports), even if a valid `ruf=mailto:` address exists in the DMARC TXT record of the source domain.

- Microsoft 365 sends DMARC Aggregate reports to all domains with a valid `rua=mailto:` address in the DMARC TXT records, as long as the MX record for the Microsoft 365 domain points directly to Microsoft 365.

  If mail from the internet is routed through a third-party service or device before delivery to Microsoft 365 (the MX record points somewhere other than Microsoft 365), DMARC Aggregate reports aren't sent. This limitation includes hybrid or standalone EOP scenarios where mail is delivered to the on-premises environment before being routed to Microsoft 365 using a connector.

  > [!TIP]
  > When a third-party service or device sits in front of mail flowing into Microsoft 365, [Enhanced Filtering for Connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors) (also known as _skip listing_) correctly identifies the source of internet messages for SPF, DKIM (if the service modifies messages), and DMARC validation.

## Troubleshooting DMARC

You can use the following graphic to help troubleshoot DMARC authentication issues.

:::image type="content" source="../../media/Tp_DMARCTroublehoot.png" alt-text="A troubleshooting graphic for DMARC" lightbox="../../media/Tp_DMARCTroublehoot.png":::

## Next steps

For mail coming _into_ Microsoft 365, you might also need to configure trusted ARC sealers if you use services that modify messages in transit before delivery to your organization. For more information, see [Configure trusted ARC sealers](/microsoft-365/security/office-365-security/email-authentication-arc-configure).
