---
title: "Set up SPF to help prevent spoofing"
f1.keywords:
- CSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 11/21/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.assetid: 71373291-83d2-466f-86ea-fc61493743a6
ms.collection:
- M365-security-compliance
ms.custom:
- seo-marvel-apr2020
description: "Learn how to update a Domain Name Service (DNS) record to use Sender Policy Framework (SPF) with your custom domain in Office 365."
---

# Set up SPF to help prevent spoofing

 **Summary:** This article describes how to update a Domain Name Service (DNS) record so that you can use Sender Policy Framework (SPF) with your custom domain in Office 365. Using SPF helps to validate outbound email sent from your custom domain.

In order to use a custom domain, Office 365 requires that you add a Sender Policy Framework (SPF) TXT record to your DNS record to help prevent spoofing. SPF identifies which mail servers are allowed to send mail on your behalf. Basically, SPF, along with DKIM, DMARC, and other technologies supported by Office 365, help prevent spoofing and phishing. SPF is added as a TXT record that is used by DNS to identify which mail servers can send mail on behalf of your custom domain. Recipient mail systems refer to the SPF TXT record to determine whether a message from your custom domain comes from an authorized messaging server.

For example, let's say that your custom domain contoso.com uses Office 365. You add an SPF TXT record that lists the Office 365 messaging servers as legitimate mail servers for your domain. When the receiving messaging server gets a message from joe@contoso.com, the server looks up the SPF TXT record for contoso.com and finds out whether the message is valid. If the receiving server finds out that the message comes from a server other than the Office 365 messaging servers listed in the SPF record, the receiving mail server can choose to reject the message as spam.

Also, if your custom domain does not have an SPF TXT record, some receiving servers may reject the message outright. This is because the receiving server cannot validate that the message comes from an authorized messaging server.

If you've already set up mail for Office 365, then you have already included Microsoft's messaging servers in DNS as an SPF TXT record. However, there are some cases where you may need to update your SPF TXT record in DNS. For example:

- Previously, you had to add a different SPF TXT record to your custom domain if you were using SharePoint Online. This is no longer required. This change should reduce the risk of SharePoint Online notification messages ending up in the Junk Email folder. Update your SPF TXT record if you are hitting the 10 lookup limit and receiving errors that say things like, "exceeded the lookup limit" and "too many hops".

- If you have a hybrid environment with Office 365 and Exchange on-premises.

- You intend to set up DKIM and DMARC (recommended).

## Updating your SPF TXT record for Office 365

Before you update the TXT record in DNS, you need to gather some information and determine the format of the record. This will help prevent you from generating DNS errors. For advanced examples and a more detailed discussion about supported SPF syntax, see [How SPF works to prevent spoofing and phishing in Office 365](how-office-365-uses-spf-to-prevent-spoofing.md#HowSPFWorks).

Gather this information:

- The current SPF TXT record for your custom domain. For instructions, see [Gather the information you need to create Office 365 DNS records](https://docs.microsoft.com/microsoft-365/admin/get-help-with-domains/information-for-dns-records).

- External IP addresses of all on-premises messaging servers. For example, **131.107.2.200**.

- Domain names to use for all third-party domains that you need to include in your SPF TXT record. Some bulk mail providers have set up subdomains to use for their customers. For example, the company MailChimp has set up **servers.mcsv.net**.

- Determine what enforcement rule you want to use for your SPF TXT record. We recommend **-all**. For detailed information about other syntax options, see [SPF TXT record syntax for Office 365](how-office-365-uses-spf-to-prevent-spoofing.md#SPFSyntaxO365).

### To add or update your SPF TXT record

1. Ensure that you're familiar with the SPF syntax in the following table.

   ****

   |<!-- -->|If you're using...|Common for customers?|Add this...|
   |---|---|---|---|
   |1|Any email system (required)|Common. All SPF TXT records start with this value|v=spf1|
   |2|Exchange Online|Common|include:spf.protection.outlook.com|
   |3|Exchange Online dedicated only|Not common|ip4:23.103.224.0/19 ip4:206.191.224.0/19 ip4:40.103.0.0/16 include:spf.protection.outlook.com|
   |4|Office 365 Germany, Microsoft Cloud Germany only|Not common|include:spf.protection.outlook.de|
   |5|Third-party email system|Not common|include:\<domain name\>  <br/> Where domain name is the domain name of the third party email system.|
   |6|On-premises mail system. For example, Exchange Online Protection plus another mail system|Not common| Use one of these for each additional mail system: <br> ip4:\<_IP address_\>  <br/>  ip6:\<_IP address_\>  <br/>  include:\<_domain name_\>  <br/>  Where the value for \<_IP address_\> is the IP address of the other mail system and \<_domain name_\> is the domain name of the other mail system that sends mail on behalf of your domain.|
   |7|Any email system (required)|Common. All SPF TXT records end with this value|\<_enforcement rule_\>  <br/> This can be one of several values. We recommend that you use **-all**.|
   |

2. If you haven't already done so, form your SPF TXT record by using the syntax from the table:

   For example, if you are fully-hosted in Office 365, that is, you have no on-premises mail servers, your SPF TXT record would include rows 1, 2, and 7 and would look like this:

   `v=spf1 include:spf.protection.outlook.com -all`

   This is the most common SPF TXT record. This record works for just about everyone, regardless of whether your Microsoft datacenter is located in the United States, or in Europe (including Germany), or in another location.

   However, if you have purchased Office 365 Germany, part of Microsoft Cloud Germany, you should use the include statement from line 4 instead of line 2. For example, if you are fully-hosted in Office 365 Germany, that is, you have no on-premises mail servers, your SPF TXT record would include rows 1, 4, and 7 and would look like this:

   `v=spf1 include:spf.protection.outlook.de -all`

   If you're already deployed in Office 365 and have set up your SPF TXT records for your custom domain, and you're migrating to Office 365 Germany, you need to update your SPF TXT record. To do this, change **include:spf.protection.outlook.com** to **include:spf.protection.outlook.de**.

3. Once you have formed your SPF TXT record, you need to update the record in DNS. You can only have one SPF TXT record for a domain. If an SPF TXT record exists, instead of adding a new record, you need to update the existing record. Go to [Create DNS records for Office 365](https://docs.microsoft.com/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider), and then click the link for your DNS host.

4. Test your SPF TXT record.

## How to handle subdomains?

It is important to note that you need to create a separate record for each subdomain as subdomains don't inherit the SPF record of their top level domain.

An additional wildcard SPF record (`*.`) is required for every domain and subdomain to prevent attackers from sending email claiming to be from non-existent subdomains. For example:

```console
*.subdomain.contoso.com. IN TXT "v=spf1 –all"
```

## More information about SPF

For advanced examples, a more detailed discussion about supported SPF syntax, spoofing, troubleshooting, and how Office 365 supports SPF, see [How SPF works to prevent spoofing and phishing in Office 365](how-office-365-uses-spf-to-prevent-spoofing.md#HowSPFWorks).

## Next steps: After you set up SPF for Office 365

Having trouble with your SPF TXT record? Read [Troubleshooting: Best practices for SPF in Office 365](how-office-365-uses-spf-to-prevent-spoofing.md#SPFTroubleshoot).

 SPF is designed to help prevent spoofing, but there are spoofing techniques that SPF cannot protect against. In order to protect against these, once you have set up SPF, you should also configure DKIM and DMARC for Office 365. To get started, see [Use DKIM to validate outbound email sent from your custom domain in Office 365](use-dkim-to-validate-outbound-email.md). Next, see [Use DMARC to validate email in Office 365](use-dmarc-to-validate-email.md).
