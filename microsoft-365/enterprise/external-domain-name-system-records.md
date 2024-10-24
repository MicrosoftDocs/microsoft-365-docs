---
title: "External Domain Name System records for Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 10/24/2024
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: high
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- must-keep
f1.keywords:
- CSH
ms.custom:
 - Adm_O365
 - seo-marvel-apr2020
search.appverid:
- MET150
- MOE150
- BCS160
ms.assetid: c0531a6f-9e25-4f2d-ad0e-a70bfef09ac0

description: A reference list of external Domain Name System records to use when planning a Microsoft 365 deployment.
---

# External Domain Name System records for Microsoft 365

![Domain.](../media/e05b1c78-1df0-4200-ba40-6e26b7ead68f.png)

**Want to see a customized list of DNS records for your Microsoft 365 organization?** You can [find the info you need to create Microsoft 365 DNS records](../admin/get-help-with-domains/information-for-dns-records.md) for your domain in Microsoft 365.

**Need step-by-step help to add these records at your domain's DNS host, such as GoDaddy or eNom?** [Find links to step-by-step instructions for many popular DNS hosts](../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md).

**Sticking around to use the reference list for your own custom deployment?** The following list should be used as a reference for your custom Microsoft 365 deployment. You need to select which records apply to your organization and fill in the appropriate values.

**Go back to** [Network planning and performance tuning for Microsoft 365](./network-planning-and-performance.md).

Often the SPF and MX records are the hardest to figure out. We've updated our SPF records guidance at the end of this article. The important thing to remember is that _you can only have a single SPF record for your domain_. You can have multiple MX records; however, that can cause problems for mail delivery. Having a single MX record that directs email to one mail system removes many potential problems.

The following sections are organized by service in Microsoft 365. To see a customized list of the Microsoft 365 DNS records for your domain, sign in to Microsoft 365 and [Gather the information you need to create Microsoft 365 DNS records](https://support.office.com/article/77f90d4a-dc7f-4f09-8972-c1b03ea85a67).

## External DNS records required for Microsoft 365 (core services)
<a name="BKMK_ReqdCore"> </a>

The TXT record is needed to prove that you own the domain and is required for all customers.

The CNAME record is only required for customers using [Microsoft 365 operated by 21Vianet](/microsoft-365/admin/services-in-china/services-in-china). It ensures that Microsoft 365 can direct workstations to authenticate with the appropriate identity platform.

|DNS record|Purpose|Value to use|Applies to|
|---|---|---|---|
|**TXT** <br/> **(Domain verification)**|Used by Microsoft 365 to verify only that you own your domain. It doesn't affect anything else.|**Host:** @ (or, for some DNS hosting providers, your domain name) <br/> **TXT Value:** _A text string provided by_ Microsoft 365 <br/> The Microsoft 365 **domain setup wizard** provides the values that you use to create this record.|All customers|
|**CNAME** <br/> **(Suite)**|Used by Microsoft 365 to direct authentication to the correct identity platform. [More information](../admin/services-in-china/purpose-of-cname.md?viewFallbackFrom=o365-worldwide) <br/> **Note** that this CNAME only applies to Microsoft 365 operated by 21Vianet. If present and your Microsoft 365 isn't operated by 21Vianet, users on your custom domain get a "*custom domain* isn't in our system" error and aren't able to activate their Microsoft 365 license. [More information](/office365/servicedescriptions/office-365-platform-service-description/office-365-operated-by-21vianet) |**Alias:** msoid <br/> **Target:** clientconfig.partner.microsoftonline-p.net.cn| 21Vianet customers only|

## External DNS records required for email in Microsoft 365 (Exchange Online)
<a name="BKMK_ReqdCore"> </a>

Email in Microsoft 365 requires several different records. The three primary records that all customers should use are the Autodiscover, MX, and SPF records.

- **The Autodiscover record** allows client computers to automatically find Exchange and configure the client properly.

- **The MX record** tells other mail systems where to send email for your domain. **Note:** When you change your email to Microsoft 365, by updating your domain's MX record, ALL email sent to that domain starts coming to Microsoft 365.
Do you just want to switch a few email addresses to Microsoft 365? You can [Pilot Microsoft 365 with a few email addresses on your custom domain](https://support.office.com/article/39cee536-6a03-40cf-b9c1-f301bb6001d7).

- **The TXT record for SPF** is used by recipient email systems to validate that the server sending your email is one that you approve. This helps prevent problems like email spoofing and phishing. See the [External DNS records required for SPF](external-domain-name-system-records.md#BKMK_SPFrecords) in this article to help you understand what to include in your record.

Email customers who are using Exchange Federation need the extra CNAME and TXT record listed at the bottom of the table.

|DNS record|Purpose|Value to use|
|---|---|---|
|**CNAME** <br/> **(Exchange Online)**|Helps Outlook clients to easily connect to the Exchange Online service by using the Autodiscover service. Autodiscover automatically finds the correct Exchange Server host and configures Outlook for users.|**Alias:** Autodiscover <br/> **Target:** autodiscover.outlook.com|
|**MX** <br/> **(Exchange Online)**|Sends incoming mail for your domain to the Exchange Online service in Microsoft 365. <br/> **Note:** Once email is flowing to Exchange Online, you should remove the MX records that are pointing to your old system. |**Domain:** For example, contoso.com <br/> **Target email server:**\<MX token\>.mail.protection.outlook.com <br/> **Time To Live (TTL) Value:** 3600 <br/> **Preference/Priority:** Lower than any other MX records (this ensures mail is delivered to Exchange Online) - for example 1 or 'low' <br/> Find your \<MX token\> by following these steps: <br/> Sign in to Microsoft 365, go to Microsoft 365 admin \> Domains. <br/> In the Action column for your domain, choose Fix issues. <br/> In the MX records section, choose What do I fix? <br/> Follow the directions on this page to update your MX record. <br/> [What is MX priority?](../admin/setup/domains-faq.yml)|
|**SPF (TXT)** <br/> **(Exchange Online)**|Helps to prevent other people from using your domain to send spam or other malicious email. Sender policy framework (SPF) records work by identifying the servers that are authorized to send email from your domain.|[External DNS records required for SPF](external-domain-name-system-records.md#BKMK_SPFrecords)|
|**TXT** <br/> **(Exchange federation)**|Used for Exchange federation for hybrid deployment.|**TXT record 1:** For example, contoso.com and associated custom-generated, domain-proof hash text (for example, Y96nu89138789315669824) <br/> **TXT record 2:** For example, exchangedelegation.contoso.com and associated custom-generated, domain-proof hash text (for example, Y3259071352452626169)|
|**CNAME** <br/> **(Exchange federation)**|Helps Outlook clients to easily connect to the Exchange Online service by using the Autodiscover service when your company is using Exchange federation. Autodiscover automatically finds the correct Exchange Server host and configures Outlook for your users.|**Alias:** For example, Autodiscover.service.contoso.com <br/> **Target:** autodiscover.outlook.com|

## External DNS records required for Teams
<a name="BKMK_ReqdCore"> </a>

There are specific steps to take when you use [Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md) to make sure your network is configured correctly.

These DNS records apply only to tenants in Teams-only mode, for hybrid tenants, see [DNS implications for on-premises organizations that become hybrid](/skypeforbusiness/hybrid/configure-hybrid-connectivity#dns-implications-for-on-premises-organizations-that-become-hybrid).

|DNS record|Purpose|Value to use|
|---|---|---|
|**SRV** <br/> **(Federation)**|Allows your Microsoft 365 domain to share instant messaging (IM) features with external clients by enabling SIP federation.|**Domain:** \<domain> <br/> **Service:** sipfederationtls <br/> **Protocol:** TCP <br/> **Priority:** 100 <br/> **Weight:** 1 <br/> **Port:** 5061 <br/> **Target:** sipfed.online.lync.com <br/> **Note:** If the firewall or proxy server blocks SRV lookups on an external DNS, you should add this record to the internal DNS record. |

## External DNS records required for Microsoft 365 Single Sign-On
<a name="BKMK_ReqdCore"> </a>

|DNS record|Purpose|Value to use|
|---|---|---|
|**Host (A)**|Used for single sign-on (SSO). It provides the endpoint for your off-premises users (and on-premises users, if you like) to connect to your Active Directory Federation Services (AD FS) federation server proxies or load-balanced virtual IP (VIP).|**Target:** For example, sts.contoso.com|

## External DNS records required for SPF
<a name="BKMK_SPFrecords"> </a>

> [!IMPORTANT]
> SPF is designed to help prevent spoofing, but there are spoofing techniques that SPF cannot protect against. In order to protect against these, once you have set up SPF, you should also configure DKIM and DMARC for Microsoft 365. To get started, see [Use DKIM to validate outbound email sent from your domain in Microsoft 365](../security/office-365-security/email-authentication-dkim-configure.md). Next, see [Use DMARC to validate email in Microsoft 365](../security/office-365-security/email-authentication-dmarc-configure.md).

SPF records are TXT records that help to prevent other people from using your domain to send spam or other malicious email. Sender policy framework (SPF) records work by identifying the servers that are authorized to send email from your domain.

You can only have one SPF record (that is, a TXT record that defines SPF) for your domain. That single record can have a few different inclusions but the total DNS lookups that result can't be more than 10 (this helps prevent denial of service attacks). See the table and other examples below to help you create or update the right SPF record values for your environment.

### Structure of an SPF record

All SPF records contain three parts: the declaration that it's an SPF record, the domains, and IP addresses that should be sending email, and an enforcement rule. You need all three in a valid SPF record. Here's an example of a common SPF record for Microsoft 365 when you use only Exchange Online email:

``` dns
TXT Name @
Values: v=spf1 include:spf.protection.outlook.com -all
```

An email system that receives an email from your domain looks at the SPF record. If the email server that sent the message was a Microsoft 365 server, the message is accepted. If the server that sent the message was your old mail system or a malicious system on the Internet, for example, the SPF check might fail and the message wouldn't be delivered. Checks like this help to prevent spoofing and phishing messages.

### Choose the SPF record structure you need

For scenarios where you're not just using Exchange Online email for Microsoft 365 (for example, when you use email originating from SharePoint Online as well), use the following table to determine what to include in the value of the record.

> [!NOTE]
> If you have a complicated scenario that includes, for example, edge email servers for managing email traffic across your firewall, you'll have a more detailed SPF record to set up. For more information, see [Set up SPF records in Microsoft 365 to help prevent spoofing](../security/office-365-security/email-authentication-spf-configure.md).

|Number|If you're using...|Purpose|Add these includes|
|---|---|---|---|
|1|All email systems (required)|All SPF records start with this value|v=spf1|
|2|Exchange Online (common)|Use with just Exchange Online|include:spf.protection.outlook.com|
|3|Third-party email system (less common)||include:\<email system like mail.contoso.com\>|
|4|On-premises mail system (less common)|Use if you're using Exchange Online Protection or Exchange Online plus another mail system|`ip4:<0.0.0.0>` <br/> `ip6:< : : >` <br/> include:\<mail.contoso.com\> <br/> The value in brackets (\<\>) should be other mail systems that send email for your domain.|
|5|All email systems (required)||-all|

### Example: Adding to an existing SPF record
<a name="bkmk_addtospf"> </a>

If you already have an SPF record, you need to add or update values for Microsoft 365. For example, say your existing SPF record for contoso.com is the following:

``` dns
TXT Name @
Values: v=spf1 ip4:60.200.100.30 include:smtp.adatum.com -all
```

Now you're updating your SPF record for Microsoft 365. You edit your current record so you have an SPF record that includes the values that you need. For Microsoft 365, "spf.protection.outlook.com".

Correct:

``` dns
TXT Name @
Values: v=spf1 ip4:60.200.100.30 include:spf.protection.outlook.com include:smtp.adatum.com -all
```

Incorrect:

``` dns
Record 1:
TXT Name @
Values: v=spf1 ip4:60.200.100.30 include:smtp.adatum.com -all
Record 2:
Values: v=spf1 include:spf.protection.outlook.com -all
```

### More examples of common SPF values
<a name="bkmk_addtospf"> </a>

If you're using the full Microsoft 365 suite and are using MailChimp to send marketing emails on your behalf, your SPF record at contoso.com might look like the following, which uses rows 1, 3, and 5 from the preceding table. Remember, rows 1 and 5 are required.

``` dns
TXT Name @
Values: v=spf1 include:spf.protection.outlook.com include:servers.mcsv.net -all
```

Alternatively, if you have an Exchange Hybrid configuration where email is sent from both Microsoft 365 and your on-premises mail system, your SPF record at contoso.com might look like this:

``` dns
TXT Name @
Values: v=spf1 include:spf.protection.outlook.com include:mail.contoso.com -all
```

These are some common examples that can help you adapt your existing SPF record when you add your domain to Microsoft 365 for email. If you have a complicated scenario that includes, for example, edge email servers for managing email traffic across your firewall, you have a more detailed SPF record to set up. Learn how: [Set up SPF records in Microsoft 365 to help prevent spoofing](../security/office-365-security/email-authentication-spf-configure.md).

Here's a short link you can use to come back: <https://aka.ms/o365edns>
