---
title: "External Domain Name System records for Office 365"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 10/21/2019
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Priority
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
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

description: A reference list of external Domain Name System records to use when planning an Office 365 deployment.
---

# External Domain Name System records for Office 365

![Domain](../media/e05b1c78-1df0-4200-ba40-6e26b7ead68f.png)

**Want to see a customized list of DNS records for your Office 365 organization?** You can [find the info you need to create Office 365 DNS records](https://support.office.microsoft.com/article/Gather-the-information-you-need-to-create-Office-365-DNS-records-77f90d4a-dc7f-4f09-8972-c1b03ea85a67) for your domain in Office 365.

**Need step-by-step help to add these records at your domain's DNS host, such as GoDaddy or eNom?** [Find links to step-by-step instructions for many popular DNS hosts](../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md).

**Sticking around to use the reference list for your own custom deployment?** The below list should be used as a reference for your custom Office 365 deployment. You will need to select which records apply to your organization and fill in the appropriate values.

**Go back to** [Network planning and performance tuning for Office 365](./network-planning-and-performance.md).

Often the SPF and MX records are the hardest to figure out. We've updated our SPF records guidance at the end of this article. The important thing to remember is that _you can only have a single SPF record for your domain_. You can have multiple MX records; however, that can cause problems for mail delivery. Having a single MX record that directs email to one mail system removes many potential problems.
  
The sections below are organized by service in Office 365. To see a customized list of the Office 365 DNS records for your domain, sign in to Office 365 and [Gather the information you need to create Office 365 DNS records](https://support.office.com/article/77f90d4a-dc7f-4f09-8972-c1b03ea85a67).
  
## External DNS records required for Office 365 (core services)
<a name="BKMK_ReqdCore"> </a>

Every Office 365 customer needs to add two records to their external DNS. The first CNAME record ensures that Office 365 can direct workstations to authenticate with the appropriate identity platform. The second required record is to prove you own your domain name.
  
|**DNS record** <br/> |**Purpose** <br/> |**Value to use** <br/> |
|----------|-----------|------------|
|**CNAME** <br/> **(Suite)** <br/> |Used by Office 365 to direct authentication to the correct identity platform. [More information](../admin/services-in-china/purpose-of-cname.md?viewFallbackFrom=o365-worldwide) <br/> **Note:** This CNAME only applies to Office 365 operated by 21Vianet. [More information](/office365/servicedescriptions/office-365-platform-service-description/office-365-operated-by-21vianet)  |**Alias:** msoid  <br/> **Target:** clientconfig.partner.microsoftonline-p.net.cn  <br/> |
|**TXT** <br/> **(Domain verification)** <br/> |Used by Office 365 to verify only that you own your domain. It doesn't affect anything else.  <br/> |**Host:** @ (or, for some DNS hosting providers, your domain name)  <br/> **TXT Value:** _A text string provided by_ Office 365  <br/> The Office 365 **domain setup wizard** provides the values that you use to create this record.  <br/> |


## External DNS records required for email in Office 365 (Exchange Online)
<a name="BKMK_ReqdCore"> </a>

Email in Office 365 requires several different records. The three primary records that all customers should use are the Autodiscover, MX, and SPF records.
  
- **The Autodiscover record** allows client computers to automatically find Exchange and configure the client properly.

- **The MX record** tells other mail systems where to send email for your domain. **Note:** When you change your email to Office 365, by updating your domain's MX record, ALL email sent to that domain will start coming to Office 365.  
Do you just want to switch a few email addresses to Office 365? You can [Pilot Office 365 with a few email addresses on your custom domain](https://support.office.com/article/39cee536-6a03-40cf-b9c1-f301bb6001d7).

- **The TXT record for SPF** is used by recipient email systems to validate that the server sending your email is one that you approve. This helps prevent problems like email spoofing and phishing. See the [External DNS records required for SPF](external-domain-name-system-records.md#BKMK_SPFrecords) in this article to help you understand what to include in your record.

Email customers who are using Exchange Federation will also need the additional CNAME and TXT record listed at the bottom of the table.
  
|**DNS record** <br/> |**Purpose** <br/> |**Value to use** <br/> |
|----------|-----------|------------|
|**CNAME** <br/> **(Exchange Online)** <br/> |Helps Outlook clients to easily connect to the Exchange Online service by using the Autodiscover service. Autodiscover automatically finds the correct Exchange Server host and configures Outlook for users.  <br/> |**Alias:** Autodiscover  <br/> **Target:** autodiscover.outlook.com  <br/> |
|**MX** <br/> **(Exchange Online)** <br/> |Sends incoming mail for your domain to the Exchange Online service in Office 365.  <br/> [!NOTE] Once email is flowing to Exchange Online, you should remove the MX records that are pointing to your old system.   |**Domain:** For example, contoso.com  <br/> **Target email server:**\<MX token\>.mail.protection.outlook.com  <br/> **Preference/Priority:** Lower than any other MX records (this ensures mail is delivered to Exchange Online) - for example 1 or 'low'  <br/>  Find your \<MX token\> by following these steps:  <br/>  Sign in to Office 365, go to Office 365 admin \> Domains.  <br/>  In the Action column for your domain, choose Fix issues.  <br/>  In the MX records section, choose What do I fix?  <br/>  Follow the directions on this page to update your MX record.  <br/> [What is MX priority?](../admin/setup/domains-faq.yml) <br/> |
|**SPF (TXT)** <br/> **(Exchange Online)**  <br/> |Helps to prevent other people from using your domain to send spam or other malicious email. Sender policy framework (SPF) records work by identifying the servers that are authorized to send email from your domain.  <br/> |[External DNS records required for SPF](external-domain-name-system-records.md#BKMK_SPFrecords) <br/> |
|**TXT** <br/> **(Exchange federation)** <br/> |Used for Exchange federation for hybrid deployment.  <br/> |**TXT record 1:** For example, contoso.com and associated custom-generated, domain-proof hash text (for example, Y96nu89138789315669824)  <br/> **TXT record 2:** For example, exchangedelegation.contoso.com and associated custom-generated, domain-proof hash text (for example, Y3259071352452626169)  <br/> |
|**CNAME** <br/> **(Exchange federation)** <br/> |Helps Outlook clients to easily connect to the Exchange Online service by using the Autodiscover service when your company is using Exchange federation. Autodiscover automatically finds the correct Exchange Server host and configures Outlook for your users.  <br/> |**Alias:** For example, Autodiscover.service.contoso.com  <br/> **Target:** autodiscover.outlook.com  <br/> |


## External DNS records required for Skype for Business Online
<a name="BKMK_ReqdCore"> </a>

There are specific steps to take when you use  [Office 365 URLs and IP address ranges](https://support.office.com/article/8548a211-3fe7-47cb-abb1-355ea5aa88a2#BKMK_LYO) to make sure your network is configured correctly.

> [!NOTE]
> These DNS records also apply to Teams, especially in a hybrid Teams and Skype for Business scenario, where certain federation issues could arise.
  
|**DNS record** <br/> |**Purpose** <br/> |**Value to use** <br/> |
|----------|-----------|------------|
|**SRV** <br/> **(Skype for Business Online)** <br/> |Allows your Office 365 domain to share instant messaging (IM) features with external clients by enabling SIP federation. Read more about [Office 365 URLs and IP address ranges](https://support.office.com/article/8548a211-3fe7-47cb-abb1-355ea5aa88a2#BKMK_LYO).  <br/> |**Service:** sipfederationtls  <br/> **Protocol:** TCP  <br/> **Priority:** 100  <br/> **Weight:** 1  <br/> **Port:** 5061  <br/> **Target:** sipfed.online.lync.com  <br/> **Note:** If the firewall or proxy server blocks SRV lookups on an external DNS, you should add this record to the internal DNS record.   |
|**SRV** <br/> **(Skype for Business Online)** <br/> |Used by Skype for Business to coordinate the flow of information between Lync clients.  <br/> |**Service:** sip  <br/> **Protocol:** TLS  <br/> **Priority:** 100  <br/> **Weight:** 1  <br/> **Port:** 443  <br/> **Target:** sipdir.online.lync.com  <br/> |
|**CNAME** <br/> **(Skype for Business Online)** <br/> |Used by the Lync client to help find the Skype for Business Online service and sign in.  <br/> |**Alias:** sip  <br/> **Target:** sipdir.online.lync.com  <br/> For more information, see [Office 365 URLs and IP address ranges](https://support.office.com/article/8548a211-3fe7-47cb-abb1-355ea5aa88a2#BKMK_LYO).  <br/> |
|**CNAME** <br/> **(Skype for Business Online)** <br/> |Used by the Lync mobile client to help find the Skype for Business Online service and sign in.  <br/> |**Alias:** lyncdiscover  <br/> **Target:** webdir.online.lync.com  <br/> |

## External DNS records required for Office 365 Single Sign-On
<a name="BKMK_ReqdCore"> </a>

|**DNS record** <br/> |**Purpose** <br/> |**Value to use** <br/> |
|----------|-----------|------------|
|**Host (A)** <br/> |Used for single sign-on (SSO). It provides the endpoint for your off-premises users (and on-premises users, if you like) to connect to your Active Directory Federation Services (AD FS) federation server proxies or load-balanced virtual IP (VIP).  <br/> |**Target:** For example, sts.contoso.com  <br/> |

## External DNS records required for SPF
<a name="BKMK_SPFrecords"> </a>

> [!IMPORTANT]
> SPF is designed to help prevent spoofing, but there are spoofing techniques that SPF cannot protect against. In order to protect against these, once you have set up SPF, you should also configure DKIM and DMARC for Office 365. To get started, see [Use DKIM to validate outbound email sent from your domain in Office 365](../security/office-365-security/use-dkim-to-validate-outbound-email.md). Next, see [Use DMARC to validate email in Office 365](../security/office-365-security/use-dmarc-to-validate-email.md).
  
SPF records are TXT records that help to prevent other people from using your domain to send spam or other malicious email. Sender policy framework (SPF) records work by identifying the servers that are authorized to send email from your domain.
  
You can only have one SPF record (that is, a TXT record that defines SPF) for your domain. That single record can have a few different inclusions but the total DNS lookups that result can't be more than 10 (this helps prevent denial of service attacks). See the table and other examples below to help you create or update the right SPF record values for your environment.
  
### Structure of an SPF record

All SPF records contain three parts: the declaration that it is an SPF record, the domains, and IP addresses that should be sending email, and an enforcement rule. You need all three in a valid SPF record. Here's an example of a common SPF record for Office 365 when you use only Exchange Online email:
  
``` dns
TXT Name @
Values: v=spf1 include:spf.protection.outlook.com -all
```

An email system that receives an email from your domain looks at the SPF record, and if the email server that sent the message was an Office 365 server, the message is accepted. If the server that sent the message was your old mail system or a malicious system on the Internet, for example, the SPF check might fail and the message wouldn't be delivered. Checks like this help to prevent spoofing and phishing messages.
  
### Choose the SPF record structure you need

For scenarios where you're not just using Exchange Online email for Office 365 (for example, when you use email originating from SharePoint Online as well), use the following table to determine what to include in the value of the record.
  
> [!NOTE]
> If you have a complicated scenario that includes, for example, edge email servers for managing email traffic across your firewall, you'll have a more detailed SPF record to set up. Learn how: [Set up SPF records in Office 365 to help prevent spoofing](../security/office-365-security/set-up-spf-in-office-365-to-help-prevent-spoofing.md). You can also learn much more about how SPF works with Office 365 by reading [How Office 365 uses Sender Policy Framework (SPF) to help prevent spoofing](../security/office-365-security/how-office-365-uses-spf-to-prevent-spoofing.md).
  
| Number|If you're using…  <br/> |Purpose  <br/> |Add these includes  <br/> |
|:-----|:-----|:-----|:-----|
|1  <br/> |All email systems (required)  <br/> |All SPF records start with this value  <br/> |v=spf1  <br/> |
|2  <br/> |Exchange Online (common)  <br/> |Use with just Exchange Online  <br/> |include:spf.protection.outlook.com  <br/> |
|3  <br/> |Third-party email system (less common)  <br/> ||include:\<email system like mail.contoso.com\>  <br/> |
|4  <br/> |On-premises mail system (less common)  <br/> |Use if you're using Exchange Online Protection or Exchange Online plus another mail system  <br/> |ip4:\<0.0.0.0\>  <br/> ip6:\< : : \>  <br/> include:\<mail.contoso.com\>  <br/> The value in brackets (\<\>) should be other mail systems that will send email for your domain.  <br/> |
|5  <br/> |All email systems (required)  <br/> ||-all  <br/> |

### Example: Adding to an existing SPF record
<a name="bkmk_addtospf"> </a>

If you already have an SPF record, you'll need to add or update values for Office 365. For example, say your existing SPF record for contoso.com is this:
  
``` dns
TXT Name @
Values: v=spf1 ip4:60.200.100.30 include:smtp.adatum.com -all
```

Now you're updating your SPF record for Office 365. You'll edit your current record so you have an SPF record that includes the values that you need. For Office 365, "spf.protection.outlook.com".
  
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

If you are using the full Office 365 suite and are using MailChimp to send marketing emails on your behalf, your SPF record at contoso.com might look like the following, which uses rows 1, 3, and 5 from the table above. Remember, rows 1 and 5 are required.
  
``` dns
TXT Name @
Values: v=spf1 include:spf.protection.outlook.com include:servers.mcsv.net -all
```

Alternatively, if you have an Exchange Hybrid configuration where email will be sent from both Office 365 and your on-premises mail system, your SPF record at contoso.com might look like this:
  
``` dns
TXT Name @
Values: v=spf1 include:spf.protection.outlook.com include:mail.contoso.com -all
```

These are some common examples that can help you adapt your existing SPF record when you add your domain to Office 365 for email. If you have a complicated scenario that includes, for example, edge email servers for managing email traffic across your firewall, you'll have a more detailed SPF record to set up. Learn how: [Set up SPF records in Office 365 to help prevent spoofing](../security/office-365-security/set-up-spf-in-office-365-to-help-prevent-spoofing.md).
  
Here's a short link you can use to come back: [https://aka.ms/o365edns]()
